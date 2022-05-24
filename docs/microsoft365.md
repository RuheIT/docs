# Microsoft 365 y Azure

En RuheIT utilizamos la suite de Microsoft 365 para desarollar nuestro negocio, utilizamos las diferentes herramientas proporcionadas por Microsoft para colaborar.

## ¿Qué es un tenant?


## Federación y sincronización de usuarios

Como podemos ver en el esquema de infraestructura, en RuheIT disponemos de un servidor Windows con los servicios de dominio de Windows (AD DS) instalados, en conjunto, tenemos instalado el conector de Microsoft AD Connect, que permite sincronizar usuarios con Azure AD.

Una vez sincronizados los usuarios con Azure AD, estos usuarios se crean en Microsoft 365. En la siguiente imagen, podemos ver como funciona la sincronización de usuarios.

![Azure AD Connect](img/m365/AADConnect.png)

### Grupos creados


| Nombre del Grupo                     | Descripción                                                                                                      |
|:-------------------------------:|:----------------------------------------------------------------------------------------------------------------:|
| DnsUpdateProxy                  | DNS clients who are permitted to perform dynamic updates on behalf of some other clients (such as DHCP servers). |
| RGS_TicketingAdmin              | Grants access to ticketing system as admin                                                                       |
| WP_Comunicacion                 | Grants access to ruheit.xyz Wordpress as Writer via Azure AD App                                                 |
| Comit&#233; de Direcci&#243;n   | Comit&#233; de Direcci&#243;n de RuheIT                                                                          |
| M365BackupUsers                 | Users that get backed up with Veeam                                                                              |
| VPN_Users                       | Users that can tunnel via VPN                                                                                           |
| CTF_USERS                       |                                                                                                                  |
| Monitoring_Admin                | Grant acces to monitoring system as admin                                                                        |
| CTF_VPN                         | CTF Users via Azure AD APP                                                                                                  |
| RuheIT Internal IT              | RuheIT Internal IT Team                                                                                              |
| ADSyncOperators                 | ADSyncOperators                                                                                                  |
| RuheIT                          | All RuheIT Internal Users                                                                                        |
| All Company                     | This is the default group for everyone in the network (not used)                                                           |
| ADSyncBrowse                    | ADSyncBrowse                                                                                                     |
| AAD_CodiMD                      | Enables access to CodiMD via AAD SSO                                                                             |
| IT_FULLADMIN                    | Enterprise Admins (grants Enterprise Admin privileges)                                                                                               |
| O365_E5_Users                   | Office 365 E5 License (assigns licenses)                                                                                           |
| ADSyncAdmins                    | ADSyncAdmins                                                                                                     |
| RuheIT Interns                  | Usuarios en prácticas                                                                                       |
| WP_Admin                        | Grants access to ruheit.xyz Wordpress as Administrator via Azure AD App                                          |
| RUHE_EXTERNAL_USERS             | External Company Users                                                                                           |
| Azure ATP ruheit Viewers        |                                                                                                   |
| RGS_Ticketing                   | Grants access to ticketing system                                                                                |
| VDI_Users                       | Grants access to VDI Infrastructure                                                                              |
| WIKI_Users                      | Grants access to the Wiki                                                                                        |
| RuheIT Development Team         | RuheIT Development Team                                                                                          |
| ADSyncPasswordSet               | ADSyncPasswordSet                                                                                                |
| WPAlerts                        |                                                                                                   |
| Marketing                       | Marketing Distribution List                                                                                      |
| INT_Intranet_Users              | Grants access to intranet                                                                                        |
| AAD_GlobalAdmin                 |                                                                                                   |
| IT                              | IT Distribution List                                                                                             |
| O365_GlobalAdmin                | Global Admin Role on Office 365                                                                                  |
| Azure ATP ruheit Users          |                                                                                                   |
| Ruhe Global Helpdesk            | Global Helpdesk Team (Unified Delivery)                                                                          |
| Monitoring_Users                | Grants access to monitoring system                                                                               |
| DnsAdmins                       | DNS Administrators Group                                                                                         |
| AAD_Passwordless                | Users that can use passwordless authentication in AAD                                                            |
| SCCM_APPS                       | Access to all SCCM APPS                                                                                          |
| Azure ATP ruheit Administrators |                                                                                                   |



## Microsoft Teams

En RuheIT utilizamos Microsoft Teams para la comunicación interna, creando así varios equipos para fomentar la colaboración de los empleados en la empresa.

Los equipos de Teams también son utilizados para guardar información. Cada equipo tiene Canales, que permiten informar y guardar archivos de manera ordenada.

Cada canal está linkeado a un sitio de Sharepoint.

![MS Teams](img/m365/MSTeams01.png)

Los canales de Microsoft Teams también son usados para notificar eventos, cambios... cada departamento dispone de su canal de Teams.

## Aplicaciones de Azure