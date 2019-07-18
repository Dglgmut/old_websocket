# Old Websocket key value project
Check out the new one here: `https://github.com/Dglgmut/new_websocket`

## using in production
You can test this app at `https://www.websocket.org/echo.html`
This server is available for use at the URL: `wss://keyvaluecloudwalk.herokuapp.com/keyvalue`

To send a message, first subscribe to the main ActionCable channel with the following json:
`{  "command"  :   "subscribe",   "identifier" : "{ \"channel\" : \"KeyValueChannel\" }"}`

Afterwards, you can send the "key value" requests: 
`{  "command"  :   "message",  "identifier": "{ \"channel\" : \"KeyValueChannel\" }", "data" : "{ \"key\" : \"1\" }"}`
