## Aplicação de Agentes


# Api Web Local
Para executar a aplicação é necessário rodar um json-server utilizando um banco de dados de agents que está em api/agents_db.json.
Dentro da pasta api rodar o seguinte comando: 
`npm install i`
`npx json-server db.json`

# Baixar os pacotes do flutter
`pub get`

# Criação de classes do modelo com frezzed
Ao mexer em classes privadas que tenham _$ deve rodar o seguinte comando para que seja gerado outra classe com as parte privadas:
`dart run build_runner build --delete-conflicting-outputs`
é necessário que tenha o seguinte import na classe que precisar ser gerada:
`part 'nome_do_arquivo.g.dart';`

