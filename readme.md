Pré-requisitos
Docker Desktop para Windows instalado: https://www.docker.com/products/docker-desktop

Este Dockerfile usa a imagem oficial do PHP 7.4 e do Apache como imagem base, instala as extensões necessárias do PHP para suporte ao MySQL, copia o conteúdo do diretório atual para o diretório /var/www/html dentro do contêiner, instala o cliente do MySQL, define as variáveis de ambiente para a conexão com o banco de dados MySQL, copia o arquivo index.php para o diretório /var/www/html e expõe a porta 80 para o servidor web Apache.

1 - Abra o terminal (PowerShell ou CMD) e navegue até o diretório onde você salvou o Dockerfile e o arquivo index.php. Em seguida, execute o seguinte comando para construir a imagem Docker:
docker build -t php74-mysql .

2 - Agora que você tem uma imagem Docker criada, execute o seguinte comando para iniciar um contêiner a partir da imagem:
docker run -p 80:80 -e MYSQL_HOST=localhost -e MYSQL_DATABASE=mydatabase -e MYSQL_USER=myuser -e MYSQL_PASSWORD=mypassword php74-mysql

Este comando inicia um contêiner a partir da imagem php74-mysql, mapeia a porta 80 do contêiner para a porta 80 do host e define as variáveis de ambiente necessárias para a conexão com o banco de dados MySQL.

3 - Abra um navegador e digite o endereço http://localhost na barra de endereço. Você deve ver a mensagem "Docker file criado por João Paulo" exibida na página.