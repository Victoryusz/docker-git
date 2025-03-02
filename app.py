from flask import Flask, render_template

# Criando a aplicação Flask
app = Flask(__name__)

# Definindo uma rota para a página inicial
@app.route('/')
def hello_world():
    return render_template('index.html')

# Iniciando o servidor na porta 5000
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
