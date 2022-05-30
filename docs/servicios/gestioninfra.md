# Gestión de Infraestructura

En RuheIT ofrecemos la gestión de la infraestructura para los clientes, gestionamos infraestructura cloud, infraestructura On-Premise e Infraestructura Híbrida.

Ofrecemos los siguientes servicios:

* Active Directory
* Azure Active Directory (AAD)
* Microsoft Endpoint Configuration Manager (MECM/SCCM)
* Microsoft SQL Server (MSSQL)
* Monitorización de servidores y servicios

## Active Directory

En RuheIT podemos administrar su Active Directory siguiendo las prácticas recomendadas por Microsoft/

Active Directory es una parte crucial de una empresa, un lugar donde los logins se unen y pueden ser sincronizados a la plataforma que necesite el cliente.

Es posible administrar todo tipo de dominios, configurar relaciones de confianza entre diferentes organizaciones... incluso configurar sitios y subsitios para el cliente.

Disponer de un Active Directory limpio y bien gestionado es algo crucial para una empresa, ya que este es uno de los mayores agujeros de seguridad si no está bien configurado. En conjunto con AD podemos gestionar los permisos de los usuarios dentro de el directorio, aplicando la política Zero Trust.

![AD Deployment](https://docs.microsoft.com/en-us/windows-server/identity/ad-ds/deploy/media/install-a-new-windows-server-2012-active-directory-child-or-tree-domain--level-200-/adds_childtreedeploy_beta1.png)

Es importante disponer de unos permisos adecuados a las necesidades del cliente para garantizar la seguridad y la escalabilidad de futuro (crecimiento de empresa, posibles colaboraciones...)
## Azure Active Directory

En conjunto con Active Directory, podemos gestionar tanto directorios sincronizados como directorios cloud, proporcionando así una convergencia entre entornos.

![AAD](https://docs.microsoft.com/en-us/azure/active-directory-domain-services/media/csp/csp_direct_deployment_model.png)

## MECM/SCCM

Con SCCM podemos generar una instalación de cualquier software y distribuirlo a todos los equipos de nuestra organización de una forma clara y ordenada. Podemos programar instalaciones silenciosas para que se instalen a una hora predeterminada e incluso encender las máquinas si estuvieran apagadas.

System Center Configuration Manager se basa en una única infraestructura, con el objetivo de unificar clientes físicos y virtuales bajo un mismo paraguas. SCCM también agrega herramientas para ayudar a los administradores de TI con el control de acceso. SCCM descubre servidores, equipos de escritorio y dispositivos móviles conectados a una red a través de Active Directory e instala el software del cliente en cada nodo. Luego administra las implementaciones y actualizaciones de aplicaciones por dispositivo o grupo, lo que permite la aplicación de parches automatizados con Windows Server Update Services y la aplicación de políticas con Network Access Protection. System Center Endpoint Protection Manager está integrado en System Center Configuration Manager para proteger los datos almacenados en esos dispositivos.

### Características principales de Microsoft SCCM

Algunas de las características principales de Microsoft System Center Configuration Manager incluyen:

* Administración de Windows: para mantenerse al día con las actualizaciones de Windows 10.
* Protección de endpoints: para proporcionar identificación y protección contra malware.
* Informes: para presentar información sobre usuarios, hardware, software, aplicaciones y actualizaciones de software.
* Implementación de sistema operativo (SO): para distribuir sistemas operativos a los dispositivos de una empresa.
* Gestión de actualizaciones de software, que permite a los administradores de los usuarios entregar y gestionar actualizaciones a los dispositivos de una empresa.
* Entrega de aplicaciones: lo que permite a los administradores entregar una aplicación a todos los dispositivos de una empresa.
* Supervisión del estado: muestra las actividades y el estado del cliente en la consola, y puede alertar a los usuarios si las estadísticas de salud disminuyen más allá de un * nivel específico.

## Monitorización de servidores y servicios

En RuheIT podemos monitorizar servicios via las siguientes herramientas

* Zabbix
* Grafana (ver [Grafana](../aplicaciones/grafana.html))
