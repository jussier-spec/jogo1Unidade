## Aplicação de Agentes


# Api Web Local
Para executar a aplicação é necessário rodar um json-server utilizando um banco de dados de agents que está em api/agents_db.json.
Dentro da pasta api rodar o seguinte comando: 
Instalar pacote: `npm install i`
Rodar a api: `npx json-server db.json`

# Para criar plataformas
flutter create --platforms=android .

# Baixar os pacotes do flutter
`flutter pub get`

# Criação de classes do modelo com frezzed
Ao mexer em classes privadas que tenham _$ deve rodar o seguinte comando para que seja gerado outra classe com as parte privadas:
`dart run build_runner build --delete-conflicting-outputs`
é necessário que tenha o seguinte import na classe que precisar ser gerada:
`part 'nome_do_arquivo.g.dart';`

