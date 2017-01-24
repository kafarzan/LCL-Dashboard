// libraries listed in require are pointed to node_modules folder
// and are usually installed with npm install libraryname
const App	= require('express')();
const Database 	= require('pg');


const URL 	= "postgresql://postgres@es2/postgres";
const PORT	= 3000;

App.get('/', (req, res) => {
	return res.json({
		title: 'port-hack'
	});
});

App.get('/user/:id', (req, res) => {
	const customerId = req.params.id;
	const Client = new Database.Client();
	Client.connect(err => {
		if (err) return res.json(err);
		// postgres library checks for lower case table name... Most likely that's the naming convention
		Client.query("SELECT customer_id FROM table WHERE user_id = '$1::text'", [customerId], (err, result) => {
			// Since Node is async, pyramid of doom is common but still has it's problem
			if (!result.rows.length) return res.json([]);
			Client.query("SELECT * FROM table WHERE customer_id = '$1::text'", [result.rows[0].customer_id], (err, result2) => {
				if (err) return res.json(err);
				return res.json(result2.rows);
			});
		}); 
	});
});

App.listen(PORT, (err) => {
	if (err) throw err;
	console.log('listening to port:', PORT);
});
