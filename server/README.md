# Node

Node Package Manager (NPM)[https://npmjs.com/]

Process Manager 2 (PM2)[https://npmjs.com/package/pm2] is an enterprise node daemonizer that can handle load balancing for node servers, and has a feature of restarting if node app crashes

(Express)[https://npmjs.com/package/express] is a lightweight server that handles routing better than node native http library

Node has a callback style of putting errors first then the results in the next params
```js
ex: Class.function(input, (err, result) => {
	if (err) throw err;
	console.log(result);
});
```

TIP: If there's a problem with callbacks in a pyramid of doom, you can probably solve using Promises
