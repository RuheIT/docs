# Grafana

Grafana es una herramienta multiplataforma de log analytics, permite mostrar de manera clara datos de diferentes datasources, creando Dashboards adecuados a los datos que se necesiten mostrar.

Grafana es Open Source y permite desarrollar plugins para conectar diferentes aplicaciones y poder mostrar los d

## ¿Quién utiliza Grafana ?

Grafana es usado por la mayoría de empresas que tienen implementado un sistema de DevOps y SysOps como: eBay, Paypal, Intel...

## ¿Cuáles son sus puntos fuertes?

Grafana tiene muchos puntos fuertes, como por ejemplo:

* **Posibilidad de despliegue On Premise y despliegue en la nube:** uno de los grandes puntos fuertes de Grafana es la posibilidad de elegir el modelo de despliegue. Es posible elegir entre dos tipos de modelo:
    * Despliegue On Premise: ideal para empresas que necesiten tener sus datos controlados o en repositorios internos para cumplir normativas o certificaciones como PCI DSS, ISO...
    * Despliegue Cloud: es posible desplegar Grafana en la mayoría de CSPs (Azure, AWS, Oracle Cloud), por lo que esto permite a las empresas desplegar sus sistemas de Grafana para que sean accesibles a través de internet.

* **Integración de SSO:** Grafana permite integrar la mayoría de proveedores de SSO para garantizar la seguridad del acceso a los datos. SSO puede ser desplegado tanto en un modelo On Premise como en un modelo cloud. 

* **Control del dato:** gracias a las herramientas que nos proporciona Grafana podemos tener controlada la ingesta de datos, permitiéndonos así poder mirar mediante un visor intuitivo y avanzado los datos recopilados. Estos datos pueden ser "plasmados" en dashboards o analizados de manera "plana".


## ¿Qué es un datasource?

Un datasource u origen de datos es el nombre técnico de la conexión una base de datos. Grafana permite conectarse a múltiples datasources, entre ellos:

* InfluxDB: ideal para datos en tiempo real, ya que su latencia y uso es bastante rápido.
* Prometheus: sistema opensource que permite, además de recoger datos en tiempo real, enviar alertas cuando algo pase.
* Loki: sistema de colección de logs desarrollado por Grafana Labs (empresa mantenedora de Grafana), funciona con la mayoría de SOs y es usado normalmente para el análisis y la correlación de logs.
* Elasticsearch: sistema de colección de logs estándar en la industria, permite un despliegue a medida del cliete. Es uno de los motores de logs más potentes del mercado y permite recopilar todos los datos necesarios para una buena correlación y almacenaje.

A parte de poder conectarse a datasources modernos, también puede conectarse a:

* MySQL
* PostgreSQL
* Microsoft SQL Server

La capacidad de conexión a estos datasource permite integrar los logs o datos de entornos empresariales desarrollados en estas tecnologías (la mayoría).

Por otra parte, Grafana puede recibir logs de la mayoría de Cloud Providers:

* Google Cloud (GCP): a través de Google Cloud Monitoring
* CloudWatch: Datasource de AWS
* Azure Monitor: puede obtener datos de recursos o aplicaciones en Azure y mostrarlos.

Otro de los puntos fuertes, es que recientemente, gracias a un desarrollo open source, Grafana puede conectarse con la mayoría de aplicaciones empresariales top del mercado:

* Splunk
* ServiceNow
* Salesforce
* SAP HANA
* Gitlab
* Dynatrace
* Datadog
## ¿Qué es un dashboard de Grafana?

Los dashboards de Grafana contienen la información recopilada de los diferentes datasources.

Gracias a los Dashboards de Grafana podemos combinar, correlacionar y mostrar los datos de una manera sencilla y útil al cliente.

Los Dashboards pueden ser utilizados para:


* Mostrar métricas en tiempo real
* Generación de reportes e informes
* Alerting

### Alerting

Grafana permite alertar mediante:

* Teams (WebHooks)

