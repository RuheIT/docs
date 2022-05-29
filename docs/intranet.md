# Intranet

## ¿Qué es una intranet?

## ¿Por qué necesitas una intranet en tu empresa?

## Introducción a nuestra intranet

La intranet de Ruhe IT es una aplicación interna destinada a ser usada por los empleados para solicitar vacaciones, solicitar días de baja y consultar sus correspondientes datos localizados en su perfil.

Está alojada en los servidores de la empresa, pero cualquiera puede acceder a ella mediante la URL [intranet.ruheit.xyz](https://intranet.ruheit.xyz). 


<center>
![Intranet Login](img/IntranetLogin.png)
</center>

En esta URL lo primero que encontramos es el logo de Ruhe IT, seguido por el inicio de sesión a la Intranet donde se pueden ver 2 tipos de inicio de sesión, el primero, usando unas credenciales válidas (usuario y una contraseña) previamente proporcionadas por el equipo directivo, y el segundo, mediante OAuth2 usando una cuenta oficial de Microsoft con el dominio de Ruhe IT previamente proporcionada por el equipo directivo.

Una vez iniciada la sesión, lo primero que vemos es un menú, el cual el contenido del mismo dependerá de si el usuario que ha iniciado sesión tiene un rol administrativo o de trabajador común.

![Intranet Navbar](img/IntranetNav.png)

### Navbar de administrador

#### Management

Esta opción aparecerá únicamente para usuarios con rol administrativo, contiene las siguientes páginas:

* Requests
* User lists
* User creation

##### User List

Es un acceso a la lista de usuarios donde se podrán modificar los datos de los distintos usuarios.

![Intranet User List](./img/IntranetUserList.png)

Dentro de cada usuario podemos editar sus propiedades

![Intranet User Edit](./img/IntranetUserEdit.png)
##### Requests

![Intranet Requests](./img/IntranetRequests.png)

Es un acceso a las distintas peticiones tanto de vacaciones como de días de baja y podrán aceptar o declinar aquellas cuyo estado este "On Hold" (En espera) dando una razón en caso de ser necesario. También se podrán ver las peticiones ya cerradas.

##### User creation

Permite a un usuario administrador crear un usuario y añadirlo a la base de datos.

![Intranet User Creation](./img/IntranetUserCreation.png)

El formulario de "Sign Up" consta de la siguiente función que se encarga de crear una contraseña segura juntando mayúsculas, minúsculas, números y carácteres especiales.

```javascript title="Generador password segura, show/hide de password y alert para copiar password."
function generatePassword() {
    var length = 15,
    charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!#$%&()*+,-./:;=?@^_`{|}~",
    retVal = "";
    for (var i = 0, n = charset.length; i < length; ++i) {
        retVal += charset.charAt(Math.floor(Math.random() * n));
    }
    document.getElementById("password").value = retVal;
}
function changeType() {
    var x = document.getElementById("password");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
function passwordCopy(){
    var password = document.getElementById('password').value; 
    alert('Be sure of copying the password: ' + password);
}
```

En la opción de “Applications”, las opciones “Gophish”, “PwnDoc”, “CodiMD” y “Nessus” són exclusivas para aquellos con rol administrativo. Éstas opciones, contienen un acceso directo hacia la ubicación de dichas herramientas usadas para el correcto funcionamiento de la empresa.

![Intranet Applications](./img/IntranetApplications.png)

****
### Navbar para trabajadores 

El trabajador común se encontrará con una barra de navegación más limitada en cuanto a opciones se refiere, las opciones de esta barra de navegación estarán en todos los usuarios.

![Intranet Nav Worker](./img/IntranetNavWorker.png)

#### 

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



