from flask import Flask, render_template, request, redirect
import mysql.connector
from config import DB_CONFIG


app = Flask(__name__)


def conectar():
    return mysql.connector.connect(**DB_CONFIG)


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/alunos")
def listar_alunos():
    try:
        conexao = conectar()
        cursor = conexao.cursor(dictionary=True)


        cursor.execute("SELECT * FROM aluno")
        alunos = cursor.fetchall()


        cursor.close()
        conexao.close()


        return render_template("alunos.html", alunos=alunos)


    except Exception as erro:
        return f"Erro ao listar alunos: {erro}"


