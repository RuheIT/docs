# Bitwarden

RuheIT cuenta con una aplicación desplegada en docker, la cual permite tener un gestor de contraseñas más liviano y seguro, que poder guardar contraseñas en texto plano en cualquier bloc de notas. Las ventajas que nos proporciona el servicio de Bitwarden, es, que para poder acceder al gestor de contraseñas, deberás saber el correo/usario y la "master key" de nuestro baúl. Ya que utilizando este método, las claves y accesos estarán de una forma más segura y encriptada en el servidor.

![Vault](https://i.pcmag.com/imagery/reviews/05JPSXpKxx9c5oL8wwZMAkX-27..v1622837895.png)

En nuestro caso, utilizamos la versión Open Source de Vaultwarden, disponible [aquí](https://github.com/dani-garcia/vaultwarden).


## Características de Vaultwarden

 * Soporte para organizaciones (permite compartir con organizaciones externas)
 * Adjuntos seguros

## ¿Cómo funciona Bitwarden?

* Bitwarden almacena todas las contraseñas y la información de datos en una bóveda segura y encriptada. El cifrado se mantiene seguro con hashing salado y cifrado AES-256 bit.

* Bitwarden funciona tanto en Firefox como en Google Chrome en Linux o mediante una aplicación de escritorio Linux nativa instalable.
Es posible alojar su propio servidor de contraseñas Bitwarden si no confía en el servicio en la nube configurado para manejar sus contraseñas y datos de manera predeterminada.

* Bitwarden tiene un generador de contraseñas seguro incorporado para ayudarlo a romper los malos hábitos de reutilizar contraseñas.