require('dotenv').config();

const express = require('express')

const port = process.env.port
const app = express()

const ArmyController = require('./controllers/armyController')

army = new ArmyController()

app.use(express.json())

// CORS
app.use((req, res, next) => {
	// Website you wish to allow to connect
	res.setHeader('Access-Control-Allow-Origin', 'http://localhost:4200');
	// Request methods you wish to allow
	res.setHeader(
		'Access-Control-Allow-Methods',
		'GET, POST, OPTIONS, PUT, PATCH, DELETE',
	);
	// Request headers you wish to allow
	res.setHeader(
		'Access-Control-Allow-Headers',
		'X-Requested-With, content-type, Authorization, Content-Type',
	);
	// Set to true if you need the website to include cookies in the requests sent
	// to the API (e.g. in case you use sessions)
	res.setHeader('Access-Control-Allow-Credentials', true);
	// Pass to next layer of middleware
	next();
});

app.get('/fetchFactionList', function (req, res) {
	army.getFactionList(function (err, result) {
		if (err) {
			console.log(err.message)
		}

		res.status(200)
		res.type('json')
		res.send(JSON.stringify(result))
	})
})

app.post('/fetchUnitList', function (req, res) {
	let faction = req.body.faction
	let role = req.body.role
	army.getUnitList(faction, role, function (err, result) {
		if (err) {
			console.log(err.message)
		}
		res.status(200)
		res.type('json')
		res.send(JSON.stringify(result))
	})
})

app.post('/fetchSubfactions', function (req, res) {
	let faction = req.body.faction

	army.getSubfactions(faction, function (err, result) {
		if (err) {
			console.log(err.message)
		}
		res.status(200)
		res.type('json')
		res.send(JSON.stringify(result))
	})
})

app.post('/fetchUnit', function (req, res) {
	var unit = req.body.unit

	army.getUnitDetails(unit, function (err, result) {
		if (err) {
			console.log(err.message)
		}
		res.status(200)
		res.type('json')
		res.send(JSON.stringify(result))
	})
})

app.post('/fetchUnitStats', function (req, res) {
	var unit = req.body.unit

	console.log(unit)

	army.getModelStats(unit, function (err, result) {
		if (err) {
			console.log(err.message)
		}
		res.status(200)
		res.type('json')
		res.send(JSON.stringify(result))
	})
})

app.post('/fetchUnitWoundTrack', function (req, res) {
	var unit = req.body.unit

	army.getModelWoundTrack(unit, function (err, result) {
		if (err) {
			console.log(err.message)
		}
		res.status(200)
		res.type('json')
		res.send(JSON.stringify(result))
	})
})

app.post("/fetchArmy", function (req, res) {
	army.getArmy(function (err, result) {
		if (err) {
			console.log(err.message)
		}
		res.status(200)
		res.type('json')
		res.send(JSON.stringify(result))
	})
})

app.post("/fetchStratagems", function (req, res) {
	army.getStratagems(function(err, result) {
		if (err) {
			console.log(err.message)
		}
		res.status(200)
		res.type("json")
		res.send(JSON.stringify(result))	
	})
})

app.post("/fetchStratagemDetails", function (req, res) {
	let stratagemID = req.body.stratagemID

	army.getStratagemDetails(stratagemID, function (err, result) {
		if (err) {
			console.log(err.message)
		}
		res.status(200)
		res.type("json")
		res.send(JSON.stringify(result))
	})
})

app.post('/createUnit', function (req, res) {
	var unit = req.body.unit
	var dynasty = req.body.subfaction
	army.createUnit(unit, dynasty)
	
	res.status(200)
	res.send()
})

app.post("/removeUnit", function (req, res) {
	var id = req.body.id
	army.removeUnit(id)

	res.status(200)
	res.send()
})

app.listen(port, function () {
	console.log("Warhammer server is listening on port " + port + "!")
})
