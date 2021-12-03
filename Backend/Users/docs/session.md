# API User

Ator: Aplicação Web, Mobile ou qualquer outro front

<!-- Ajudar o dev a implementar as funcionalidades da api de user
na rota session de acordo com as expectativas das requisiçoes
que a gente já testou

Temos o direito de opinar e ajudar na qualidade do projeto -->

## Sessions

### Login do Usuário

`Dado que o usuário submeteu o formulário de login com dados corretos`
`Quando faço uma requisição POST para a rota /sessions`
`Entao o status code deve ser igual a 200`
`E deve retornar um token jwt na resposta`
`E esse token deve exprirar em 10 dias`

### Senha Incorreta

`Dado que o usuário submeteu o formulário de login com senha inválida`
`Quando faço uma requisição POST para a rota /sessions`
`Entao o status code deve ser igual a 401`
`E deve retornar a mensagem Unauthorized`

### Usuário Não Existe

`Dado que o usuário submeteu o formulário de login com email não cadastrado`
`Quando faço uma requisição POST para a rota /sessions`
`Entao o status code deve ser igual a 401`
`E deve retornar a mensagem Unauthorized`

### Email no Formato Incorreto

`Dado que o usuário submeteu o formulário de login com email no formato incorreto`
`Quando faço uma requisição POST para a rota /sessions`
`Entao o status code deve ser igual a 400`
`E deve retornar a mensagem Unauthorized`

### Email em Branco

`Dado que o usuário submeteu o formulário de login com email em branco`
`Quando faço uma requisição POST para a rota /sessions`
`Entao o status code deve ser igual a 400`
`E deve retornar a mensagem Required email`

### Sem o Campo Email

`Dado que o usuário submeteu o formulário de login sem o campo email`
`Quando faço uma requisição POST para a rota /sessions`
`Entao o status code deve ser igual a 400`
`E deve retornar a mensagem Required email`

### Senha em Branco

`Dado que o usuário submeteu o formulário de login com a senha em branco`
`Quando faço uma requisição POST para a rota /sessions`
`Entao o status code deve ser igual a 400`
`E deve retornar a mensagem Required pass`

### Sem o Campo Senha

`Dado que o usuário submeteu o formulário de login sem o campo senha`
`Quando faço uma requisição POST para a rota /sessions`
`Entao o status code deve ser igual a 400`
`E deve retornar a mensagem Required pass`