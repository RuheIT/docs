# CodiMD

CodiMD es un una aplicación open-soruce que permite la creación de documentos MarkDown.

CodiMD soporta CommonMark y varios lenguajes de marcas, como:

* HTML
* MathJax (se utiliza para fórmulas matemáticas)
* Mermaid y Graphviz (se utiliza para diagramas UML)

CodiMD nos permite, a través de PanDoc, exportar a:

* AsciiDoc
* ConTeXt
* EPUB
* EPUB v3
* LaTeX
* OpenOffice
* RST
* RTF
* Textile
* Word (.docx)

## Uso de CodiMD en RuheIT

En RuheIT utilizamos CodiMD como complemento a Word, normalmente se utiliza esta plataforma para crear notas rápidas y documentación técnica, tanto para clientes como para uso interno.

## Despliegue de CodiMD

CodiMD está desplegado a través de Docker, con el siguiente Docker Compose:

```yaml

version: "3"
services:
  database:
    image: postgres:11.6-alpine
    environment:
      - POSTGRES_USER=redacted
      - POSTGRES_PASSWORD=redacted
      - POSTGRES_DB=redacted
    volumes:
      - "database-data:/var/lib/postgresql/data"
    restart: always
  codimd:
    image: nabo.codimd.dev/hackmdio/hackmd:2.1.0
    environment:
      - CMD_DB_URL=postgres://codimd:redacted@database/codimd
      - CMD_USECDN=false
      - CMD_DOMAIN=md.ruheit.xyz
      - CMD_EMAIL=false
      - CMD_ALLOW_EMAIL_REGISTER=false
      - CMD_PROTOCOL_USESSL=true
      - CMD_OAUTH2_PROVIDERNAME=AzureAD
      - CMD_OAUTH2_BASEURL=https://login.microsoftonline.com/
      - CMD_OAUTH2_CLIENT_ID=redacted
      - CMD_OAUTH2_CLIENT_SECRET=redacted
      - CMD_OAUTH2_SCOPE=openid profile email user.read
      - CMD_OAUTH2_AUTHORIZATION_URL=redacted
      - CMD_OAUTH2_TOKEN_URL=redacted
      - CMD_OAUTH2_USER_PROFILE_URL=https://graph.microsoft.com/v1.0/me/
      - CMD_OAUTH2_USER_PROFILE_USERNAME_ATTR=mail
      - CMD_ALLOW_GRAVATAR=true
    depends_on:
      - database
    ports:
      - "3221:3000"
    volumes:
      - upload-data:/home/hackmd/app/public/uploads
    restart: always
volumes:
  database-data: {}
  upload-data: {}

```