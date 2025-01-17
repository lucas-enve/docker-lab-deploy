# Usar la imagen oficial de Nginx como base
FROM nginx:latest

# Copiar los archivos de configuración o contenido de la web al contenedor
COPY ./index.html /usr/share/nginx/html/index.html

# Exponer el puerto 80 (por defecto de Nginx)
EXPOSE 80

# Iniciar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
