# Intranet

## ¿Qué es una intranet?

## ¿Por qué necesitas una intranet en tu empresa?

## Introducción a nuestra intranet


## ¿Por qué usamos Oauth2?

### ¿Cómo integramos Oauth2?

Primero creamos una aplicación en el Azure Active Directory para la Intranet. Una vez creada la aplicación, obtenemos los datos que posteriormente el código proporcionado por la documentación oficial de Microsoft nos pedirá para establecer una conexión con nuestra aplicación de Azure Active Directory. Estos datos son, el Id de la Aplicación, el Id de la Instancia de Cloud, y el Tenant Id. También será necesario un código secreto de cliente, éste se crea accediendo al panel de administración de la aplicación previamente creada en el Azure Active Directory, en la opción Certificados y Secretos. 
Una vez obtenidos todos los datos necesarios para la configuración de la conexión de la intranet con la aplicación creada en Azure Active Directory, accedemos a la documentación oficial de Microsoft, puesto que nos proporciona el código necesario para poder establecer dicha conexión.


Código para instalar los paquetes necesarios para integrar la OAuth2.0:

```nodejsrepl
npm install --save @azure/msal-node
```

Código que importa las funciones necesarias para el proceso y las almacena en la constante msal:

```nodejsrepl
const msal = require('@azure/msal-node');
```

Código que almacena la configuración de la conexión a la aplicación ubicada en el Azure Active Directory y la almacena en la constante config:

```nodejsrepl
const config = {
        auth: {
            clientId: "Id de la Aplicación",
            authority: "Id de la Instancia de Cloud/Tenant Id",
            clientSecret: "Código Secreto de Cliente"
        },
        system: {
            loggerOptions: {
                loggerCallback(loglevel, message, containsPii) {
                    console.log(message);
                },
         	   piiLoggingEnabled: false,
         	   logLevel: msal.LogLevel.Verbose,
            }
        }
    };
```

Código que establece la conexión entre la Intranet y la aplicación de Azure Active Directory:

```nodejsrepl
// Create msal application object
    const cca = new msal.ConfidentialClientApplication(config);
    app.get('/', (req, res) => {
        const authCodeUrlParameters = {
            scopes: ["user.read"],
            redirectUri: "URL de redirección",
        };

        // get url to sign user in and consent to scopes needed for application
        cca.getAuthCodeUrl(authCodeUrlParameters).then((response) => {
            res.redirect(response);
        }).catch((error) => console.log(JSON.stringify(error)));
    });

    app.get('/redirect', (req, res) => {
        const tokenRequest = {
            code: req.query.code,
            scopes: ["user.read"],
            redirectUri: "URL de redirección",
        };

        cca.acquireTokenByCode(tokenRequest).then((response) => {
            console.log("\nResponse: \n:", response);
            const email = response.account.username;
        	const accessToken = response.accessToken;
        	res.render('email', {email});

        }).catch((error) => {
            console.log(error);
            res.status(500).send(error);
        });
    });

```



