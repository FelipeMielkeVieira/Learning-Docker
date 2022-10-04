#Imagem que será usada de base
FROM node

#Informa o diretório padrão
WORKDIR /

#Variável de ambiente do DockerFile
ARG PORT=3000

#Variável de ambiente da aplicação
ENV PORT=$PORT

#Deixar a porta da máquina visível
EXPOSE $PORT

#Copiar os arquivos do terminal para a imagem que estamos criando
COPY ./ .

#Comando para pré-inicialização da aplicação
RUN npm install

#Comando para inicializar a aplicação
ENTRYPOINT npm start