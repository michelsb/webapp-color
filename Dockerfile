# 1 - Definir a imagem base 
FROM ubuntu 

# 2 - Atualizar o repositorio apt
RUN apt-get update && apt-get upgrade -y 

# 3 – Instalar dependencas usando o apt
RUN apt-get install python3 python3-pip -y 

# 4 - Instalar dependências do Python usando o pip
RUN pip3 install flask

# 5 - Copiar o código fonte para o diretório /opt
COPY . /opt/

# 6 - Executar o servidor web usando o comando flask
EXPOSE 8080
WORKDIR /opt
ENTRYPOINT ["python3","app.py"]
