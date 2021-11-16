<h1 align="center"> Olá, Seja Bem Vindo(a) <br> ao Repositório do Gravidade Zero! Getgeeks</h1>
<h3>Eu sou Antonio Carlos, este repositório faz parte do Bootcamp Gravidade Zero - QANinja Academy!</h3>

<div align="center" >
<img alt="QANinja" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXpkbiz3NJ6zZHZOGNAeuBtPawOmEyTxkRBT5yDxbMpmgPlvY2qmkv1PWWiQ9Atq-1eEE&usqp=CAU" width="400px" />
<div>
    <br>
<div align="center">
  <a href="https://github.com/acsmcarlos">
  <img height="180em" src="https://github-readme-stats.vercel.app/api?username=acsmcarlos&show_icons=true&theme=dark&include_all_commits=true&count_private=true"/>
  <img height="180em" src="https://github-readme-stats.vercel.app/api/top-langs/?username=acsmcarlos&layout=compact&langs_count=10&theme=dark"/>
</div>

<div style="display: inline_block" align="center"> <h2> Principais Linguagens e Frameworks </h2> <br>
  <img align="center" alt="Robot Framework" height="50" width="50" src="https://cdn.icon-icons.com/icons2/2148/PNG/128/robotframework_icon_132027.png">
  <img align="center" alt="Appium" height="50" width="50" src="https://pics.freeicons.io/uploads/icons/png/2832550721536125460-512.png">
  <img align="center" alt="Selenium" height="50" width="50" src="https://icon-library.com/images/selenium-icon/selenium-icon-9.jpg">
  <img align="center" alt="Python" height="50" width="50" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg">
  <img align="center" alt="Java" height="50" width="50" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-plain.svg">
  <img align="center" alt="HTML" height="50" width="50" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/html5/html5-original.svg">
  <img align="center" alt="CSS" height="50" width="50" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/css3/css3-original.svg">
</div>

<div align="center"> <h2> Minhas Redes Sociais </h2> <br>
  <a href="https://https://www.instagram.com/acsmcarlos2" target="_blank"><img src="https://img.shields.io/badge/-Instagram-%23E4405F?style=for-the-badge&logo=instagram&logoColor=white" target="_blank"></a>
  <a href = "mailto:acsmcarlos@gmail.com"><img src="https://img.shields.io/badge/-Gmail-%23333?style=for-the-badge&logo=gmail&logoColor=white" target="_blank"></a>
  <a href="https://www.linkedin.com/in/antonio-carlos-da-silva-moreira-7ab766189" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a> 
 
  ![Snake animation](https://github.com/rafaballerini/rafaballerini/blob/output/github-contribution-grid-snake.svg)
   </div>

<div align="left">

  ## Gravidade Zero - Getgeeks
Esta automação foi elaborada para atender ao Bootcamp Gravidade Zero Pro, proposto pela QA Ninja Academy. 
A descrição do desafio consiste em:
    
  ## Cenários Automatizados
Foram identificados os principais cenários:
- Automatizando o Cadastro
- Massas de Testes
- AppActions e reúzo de código
- Campos obrigatórios
- Templates
- Suites de Testes
- Trabalhando com listas
- Formulários de Login
- Segurança na automação
- Sementes (seeds)
  
🚀 Tecnologias

  - Python
  - Robot Framework
  - Browser Library

## Instalação
***
2. **Realize o clone do repositório:**

 ```sh
 git clone git@github.com:acsmcarlos/Getgeeks-Gravidade-Zero.git
```

***
2. **Entre na pasta do projeto Getgeeks\Project e rode o seguinte comando para instalar as dependências:**

```sh
pip install -r requirements.txt
```

As dependências usadas neste projeto foram:
```
requests==2.26.0
requests-oauthlib==1.3.0
robotframework==4.1.1
robotframework-appiumlibrary==1.6.2
robotframework-assertion-engine==0.2.0
robotframework-browser==7.2.0
robotframework-databaselibrary==1.2.4
robotframework-lint==1.1
robotframework-pythonlibcore==3.0.0
robotframework-requests==0.9.1
robotframework-seleniumlibrary==5.1.3
library browser
etc...
```
***

## Rodando os testes

**Após instalar o projeto e suas dependências, dentro da pasta raiz do projeto Getgeeks\Project, execute:**

 `./Run.bat` no Windows.
    ou
 `./Run.sh` no Linux.

**Observação:** O primeiro teste pode falhar(FAIL) devido ao adormecimento da API na heroku, mas passará (PASS) na segunda tentativa do teste.
    
    
## Estrutura do Projeto
    |/PROJECT [1]  
    ├──/Resources [2]  
    │     ├─/Actions [3] 
    │     │   └─_SharedActions.robot
    │     │   └─AuthActions.robot
    │     │   └─GeekActions.robot
    │     │   └─SignupActions.robot
    │     ├─/Factories [4] 
    │     │   └─Users.py
    │     ├─Base.robot
    │     ├─Database.robot
    │     └─Helpers.robot
    ├──Tasks[5]
    │     └───Delorean.robot
    ├──Tests[6]
    │     ├─BeGeek.robot
    │     ├─Login.robot
    │     └─Login.robot
    ├──requirements.txt
    ├──Run.bat
    └──Run.sh
    
    1. Project - Pasta raiz do projeto
    2. Resources - Pasta que agrega diretórios com recursos a serem usados no projeto pelos testes, como Share, Auth, Base, Database, Helpers, etc...
    3. Actions - Pasta que contém os actions a serem usados pelos testes.
    4. Factories - Pasta que contém as nossas massas de dados.
    5. Tasks - Pasta que contém o arquivo Delorean, responsável por conectar, resetar, inserir dados e desconectar no banco de dados.
    6. Tests - Pasta que contém os arquivos onde os testes estão de fato implementados.

**Desafio implementado conforme as especifições solicitadas e documentadas no arquivo: [/docs/geek.md](https://github.com/DicoMonteiro/getgeeks-gzero/blob/master/docs/geek.md)**

Foram identificados os principais cenários:
- Sendo um visitante que deseja disponibilizar meus serviços de TI
- Posso realizar meu login
- Para que eu possa configurar meu perfil de prestadores de serviços (Geeks)
    
    
##### Cenário: Be a Geek/Ser um Geek

Dado que estou na área logada
E acesso o formulario de Geek
Quando preencho as informações
E confirmo o desejo de ser Geek
Então vejo a mensagem de sucesso:
    "Seu cadastro está na nossa lista de geeks. Agora é só ficar de olho no seu WhatsApp."

##### Cenário: Short Description/Campo Descrição Curta

Dado que estou na área logada
E acesso o formulario de Geek
Quando preencho as informações
Mas com a descrição curta
E confirmo o desejo de ser Geek
Então vejo a mensagem de alerta:
    "A descrição deve ter no minimo 80 caracteres"

##### Cenário: Campo Descrição Longo/Long Description

Dado que estou na área logada
E acesso o formulario de Geek
Quando preencho as informações
Mas com a descrição longa
E confirmo o desejo de ser Geek
Então vejo a mensagem de alerta:
    "A descrição deve ter no máximo 255 caracteres"

##### Cenário: WhatsApp Should Be Blank/WhatsApp em branco

Dado que estou na área logada
E acesso o formulario de Geek
Quando preencho as informações
Mas com o whatsapp em branco
E confirmo o desejo de ser Geek
Então vejo a mensagem de alerta:
    "O Whatsapp deve ter 11 digitos contando com o DDD"

##### Cenário: WhatsApp With Short Number/Whatsapp somente com DDD

Dado que estou na área logada
E acesso o formulario de Geek
Quando preencho as informações
Mas com o whatsapp somente com DDD
E confirmo o desejo de ser Geek
Então vejo a mensagem de alerta:
    "O Whatsapp deve ter 11 digitos contando com o DDD"

##### Cenário: WhatsApp With Short Number/Whatsapp somente com 10 dígitos

Dado que estou na área logada
E acesso o formulario de Geek
Quando preencho as informações
Mas com o whatsapp somente com 10 dígitos
E confirmo o desejo de ser Geek
Então vejo a mensagem de alerta:
    "O Whatsapp deve ter 11 digitos contando com o DDD"

##### Cenário: Description Should Be Blank/Descrição em branco

Dado que estou na área logada
E acesso o formulario de Geek
Quando preencho as informações
Mas com a descrição em branco
E confirmo o desejo de ser Geek
Então vejo a mensagem de alerta:
    "Informe a descrição do seu trabalho"

##### Cenário: Hour Should Be Blank/Valor da hora em branco

Dado que estou na área logada
E acesso o formulario de Geek
Quando preencho as informações
Mas com o valor em branco
E confirmo o desejo de ser Geek
Então vejo a mensagem de alerta:
    "Valor hora deve ser numérico"

##### Cenário: Incorrect Hour Format/Valor da hora contendo alfanumerico

Dado que estou na área logada
E acesso o formulario de Geek
Quando preencho as informações
Mas com o valor contendo alfanumerico
E confirmo o desejo de ser Geek
Então vejo a mensagem de alerta:
    "Valor hora deve ser numérico"

##### Cenário: Incorrect Hour Format/Valor da hora contendo letras

Dado que estou na área logada
E acesso o formulario de Geek
Quando preencho as informações
Mas com o valor contendo letras
E confirmo o desejo de ser Geek
Então vejo a mensagem de alerta:
    "Valor hora deve ser numérico"

##### Cenário: Incorrect Hour Format/Valor da hora contendo caracteres especiais

Dado que estou na área logada
E acesso o formulario de Geek
Quando preencho as informações
Mas com o valor contendo caracteres especiais
E confirmo o desejo de ser Geek
Então vejo a mensagem de alerta:
    "Valor hora deve ser numérico"

##### Cenário: Print Repair Should Be Blank/Conserta impressora em branco

Dado que estou na área logada
E acesso o formulario de Geek
Quando preencho as informações
Mas com o conserta impressora em branco
E confirmo o desejo de ser Geek
Então vejo a mensagem de alerta:
    "Por favor, informe se você é um Geek Supremo"

##### Cenário: Work Should Be Blank/Modelo de trabalho em branco

Dado que estou na área logada
E acesso o formulario de Geek
Quando preencho as informações
Mas com o modelo de trabalho em branco
E confirmo o desejo de ser Geek
Então vejo a mensagem de alerta:
    "Por favor, selecione o modelo de trabalho"


### Resumo do Desafio Final Módulo PRO###

1 - whatsapp em branco; - OK <br>
2 - whatsapp somente DDD; - OK <br>
3 - whatsapp com 10 dígitos; - OK <br>
4 - descricao em branco; - OK <br>
5 - valor hora em branco; - OK <br>
6 - valor hora com alfanumerico; - OK <br>
7 - valor hora com letras; - OK <br>
8 - valor hora com caracteres especiais; - OK <br>
EXTRAS:
    <br>
9 - conserta impressora em branco; - OK <br>
10 - modelo de trabalho em branco; - OK <br>

Dica 1: Usa o modelo de template de teste <br>
Dica 2: O login ficará melhor se for executado uma única vez para todos os comportamentos.
    
   

