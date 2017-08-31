Criar um Bot no Telegram

Adicionar o usuário @BotFather para a sua conta do telegram ou acessar o endereço https://telegram.me/BotFather
e seguir os passos abaixo:
- /newbot - criar um novo bot
- Digitar um nome para o bot. Exemplo: Bolinha123 Bot
- Digitar um nome de uusário para o bot. Precisar terminar com 'bot' Exemplo: (Bolinha123_Bot)
- Digitar /setprivacy para liberar a permissão para leitura completa do grupo
Exemplo
	/setprivacy
	@bolinha123_bot
	Disable

Anotar a chave da API (API KEY):
403651792:AAF8ftpFLE3dfGvvjlC_DA7bP9xsdwo8YQY

Substituir na url com a chave da API
https://api.telegram.org/bot${API_KEY}/getUpdates
https://api.telegram.org/bot403651792:AAF8ftpFLE3dfGvvjlC_DA7bP9xsdwo8YQY/getUpdates

Adicionar o usuario ao grupo ou conversar com ele para seja possivel pegar o ID.

Abrir o browser e colar a URL. Você vai receber uma saída no formato JSON, pegar o valor do 'id'.

{"ok":true,"result":[{"update_id":538387455,
"message":{"message_id":1,"from":{"id":92768898,"is_bot":false,"first_name":"Marcos","last_name":"Flavio",
"username":"Marcos","language_code":"pt-BR"},"chat":{"id":92768898,"first_name":"Marcos",
"last_name":"Flavio","username":"Marcos","type":"private"},"date":1504196712,"text":"/start",
"entities":[{"offset":0,"length":6,"type":"bot_command"}]}}]}


Exemplo:

SendMessage_telegram -mensagem "teste" -token "403651792:AAF8ftpFLE3dfGvvjlC_DA7bP9xsdwo8YQY" -idchat "92768898"