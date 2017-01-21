const App	= require('express')();
const http 	= require('http').Server(App); 
const socket	= require('socket.io')(http);
const schema	= require('express-jsonschema');


const PORT	= 3000;

App.get('/', (req, res) => {
	return res.json({
		title: 'port-hack'
	});
});

var loginSchema = {
	type: 'object',
	properties: {
		
	}
};

App.post('/user', (req, res) => {

});

http.listen(PORT, (err) => {
	if (err) throw err;
	console.log('listening to port:', PORT);
});
