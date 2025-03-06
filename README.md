# Crear y arrancar infraestructura
Para crear y arrancar toda la infraestructura por primera vez:
```bash
docker compose up -d
```

# VirtualHost (dominios)
Recuerda añadir al archivo `hosts` los dominios del frontend y backend:
```bash
<ip_maquina_anfitrión> peliculas.com
<ip_maquina_anfitrión> peliculas.api.com
```
# Otras acciones
Arrancar o parar entorno
```bash
docker compose start/stop
```

Limpiar entorno (elimina contendores, volúmene, redes e imágenes)
```bash
docker compose down -v --rmi all
```