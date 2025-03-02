# Usando uma imagem base do Python
FROM python:3.9

# Definindo o diretório de trabalho no container
WORKDIR /app

# Copiando o requirements.txt para instalar dependências
COPY requirements.txt .

# Instalando as dependências do Python
RUN pip install -r requirements.txt

# Copiando o restante do código da aplicação para o container
COPY . .

# Expondo a porta 5000 para acessar a aplicação
EXPOSE 5000

# Comando para rodar a aplicação quando o container iniciar
CMD ["python", "app.py"]
