# Pritunl

Pritunl es una VPN open-source que utiliza los protocolos OpenVPN y Wireguard para proporcionar conectividad a los clientes.
Es la mejor alternativa a productos comerciales como Pulse Secure o Aviatrix, permite crear redes VPN virtuales On-Premise o en la nube.

Pritunl proporciona las siguientes características:

* SSO con Azure AD, Google, Okta...
* E2E Encryption
* ACLs


![Pritunl Simple Infra](https://pritunl.com/img/getting_started.png)

En nuestro caso, usamos Pritunl para 2 propósitos

### Proporcionar conectividad VPN a nuestros trabajadores

Todos los trabajadores disponen acceso a través de Pritunl a la red corporativa de RuheIT, permitiendo así estar siempre conectados a los recursos internos. Todo el tráfico generado por nuestros trabajadores se enruta a través de nuestro servidor principal, por lo que así aumentamos la privacidad.

### Conectarnos con clientes

Pritunl es compatible con la mayoría de VPN utilizadas comercialmente, por lo que nos permite conectarnos con nuestros clientes desde un único nodo.


## Despliegue de Pritunl

En nuestro caso, Pritunl está desplegado en un servidor interno dentro de la infraestructura de RuheIT.