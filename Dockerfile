# Usa imagem leve do Nginx baseada em Alpine Linux
FROM nginx:alpine

# Remove a página padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia a one-page para o diretório padrão do Nginx
COPY index.html /usr/share/nginx/html/index.html

# Expõe a porta 80
EXPOSE 80

# Comando padrão (já definido na imagem base)
CMD ["nginx", "-g", "daemon off;"]