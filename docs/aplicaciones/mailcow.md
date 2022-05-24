# Mailcow

Mailcow es el servidor de correo interno de RuheIT, se trata un sistema de mail compuesto por los siguientes aplicativos:

### ACME

ACME, Automatic Certificate Management Environment, es un protocolo de comunicaciones que permite la interacción entre entidades certificaciones.
Es un protocolo normalmente usado para la renovación y gestión de certificados, usado por Mailcow (y muchas otras aplicaciones) para gestionar los certificados.
Los certificados en el apartado del mail-delivery son bastante importantes, ya que es necesario que los mensajes estén firmados de manera correcta para no ser rechazados por los servidores de correo del destinatario. 

![ACME](../img/apps/ACME.png)


### ClamAV

ClamAV es un motor antivirus de código abierto que permite detectar troyanos, virus, malware y otro tipo de amenazas. ClamAV fue comprada por Cisco, ahora es mantenida por Cisco y su base es usada, en parte, por los firewalls de correo Cisco Ironport.

ClamAV está diseñado especialmente para escanear correos en servidores de correo, funciona multi-threaded y destaca por las siguientes características:

* Escaneo de ficheros y texto de manera rápida.
* Protección en tiempo real.
* Detección de virus en macros de office, malwares de móviles...
* Escaneo de ficheros:
    * Zip (también SFX)
    * RAR (con la mayoría de versiones de SFX)
    * 7Zip (.7z)
    * ARJ (including SFX)
    * Tar
    * CPIO
    * Gzip
    * Bzip2
    * DMG
    * IMG
    * ISO 9660
    * PKG
    * HFS+ partition
    * HFSX partition
    * APM disk image
    * GPT disk image
    * MBR disk image
    * XAR
    * XZ
    * Microsoft OLE2 (Office)
    * Microsoft OOXML (Office)
    * Microsoft Cabinet Files (SFX)
    * Microsoft CHM (Compiled HTML)
    * Microsoft SZDD compression format
    * HWP (Hangul Word Processor documents)
    * BinHex
    * SIS (SymbianOS)
    * AutoIt
    * InstallShield
    * ESTsoft EGG

<center>
![ClamAV](../img/apps/ClamAV.png)
</center>

### Dovecot

Dovecot es un servidor de IMAP y POP3 de código abierto, pued trabajar con los estándares mbox, Maildir...
Dovecot es esencial para un servidor de correo, ya que permite a los MUAs (Mail User Agents) recuperar el correo del servidor y almacenar los correos recibidos por el LDA (Local Delivery Agent).


### MariaDB

MariaDB es uno de los servidores de bases de datos más popular y robusto. Desarrollado por los desarrolladores originales de MySQL, es un servidor desarrollado de manera opensource que permite guardar bases de datos MySQL en servidores Windows y Linux.

MariaDB es utilizado por empresas como Alibaba, Tencent, Microsoft, ServiceNow, Intel e IBM.

### Memcached

Memcached es un sistema de almacenamiento de caché en memoria que permite guardar pequeños bloques de datos en memoria (strings, objetos), siendo estos el resultado de llamadas a la base de datos, API, o incluso el renderizado de páginas web.

En este caso, en Mailcow se utiliza Memcached para mejor performance en el uso del correo, lo que permite, con un único host, conseguir un buen rendimiento.

### Postfix

Postfix es el mail transfer agent utilizado por Mailcow, que permite enrutar y entregar el correo al correcto destinatario. Igual que Dovecot, es una de las partes esenciales de un servidor de correo, ya que se trata de una funcionalidad básica necesaria.

### Redis

Redis, en conjunto con memcached, es utilizado por Mailcow como sistema de caché en la base de datos, permitiendo así poder optimizar el tiempo de respuesta. La principal diferencia con memcached, es que Redis soporta más tipos de datos.

***

Mailcow está compuesto de varias otras tecnologías, que pueden ser vistas en su [página web](https://mailcow.github.io/mailcow-dockerized-docs/#overview).

Mailcow nos permite enviar correos desde un subdominio de ruheit.xyz o desde un dominio proveido por el cliente. 
Esto nos permite poder asegurarnos de la delivery del email hacia el destinatario, permitiéndonos ademas gestionar mediante cuotas.

Una de las grandes ventajas de Mailcow respecto a otros bundles de correo, es que, al estar desplegado en Docker, es posible desplegarlo en un clúster, lo que permite que pueda ser escalable en caso de necesitarlo.

También facilita los backups, ya que al estar desplegado en Docker podemos utilizar soluciones de backup convencionales como Veeam.
## API

Mailcow puede gestionarse a través de una API expuesta en [mail.ruheit.xyz/api](https://mail.ruheit.xyz/api), mediante esta api podemos efectuar cambios automáticos.

La API de mailcow permite hacer lo siguiente:

* Gestionar dominios
* Gestionar políticas antispam
* Gestionar buzones de correo
* Gestionar alias
* Sync jobs
* Reenvio de correos 
* Revisar logs
* Gestionar las colas (cuando hay un gran flujo de correos)
* Gestionar los correos en cuarentena
* Gestionar Fail2Ban
* Gestionar DKIM

Otra de las ventajas de usar mailcow, es que centraliza la administración de los diferentes componentes en un único aplicativo, facilitando así la gestión y la integración con otro tipo de sistemas.

