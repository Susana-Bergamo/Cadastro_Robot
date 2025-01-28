import pathlib
from faker import Faker

HOME_EMAIL_CADASTRAR = Faker().email(domain='outlook.com')

HOME_EMAIL_CADASTRADO = "ana2a.bsi@outlook.com"
HOME_SENHA_CADASTRO = "123456"
HOME_SENHA_INVALIDA = "789456"

NOME_CANDIDATO = "Susana"
TELEFONE_CANDIDATO = "1198533-8770"
LINK = "https://github.com/Susana-Berga"
NOME_RECRUITE = "Kelly"

PHOTO_PATH = f'{pathlib.Path(__file__).parent.resolve()}\imagem-de-perfil-teste.jpg'

print(PHOTO_PATH)