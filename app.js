require('dotenv').config();

const express = require('express')

const port = process.env.port
const app = express()

const CodexController = require('./controllers/codexController')

codex = new CodexController()

app.use(express.json())

// CORS
app.use((req, res, next) => {
	// Website you wish to allow to connect
	res.setHeader('Access-Control-Allow-Origin', '*');
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

app.get('/getFactionList', async function (req, res) {
	res.setHeader("Content-Type", "application/json")
	try {
		let factions = await codex.getFactionList();

		res.status(200);
		res.send(factions);
	}
	catch (error) {
		console.log(error);
		res.status(500);
		res.send(error.message);
	}
})

app.get('/getDetachmentList', async function (req, res) {
	res.setHeader("Content-Type", "application/json");
	try {
		let detachments = await codex.getDetachmentList();

		res.status(200);
		res.send(detachments);
	}
	catch (error) {
		console.log(error);
		res.status(500);
		res.send(error.message);
	}
})

app.get('/getDetachmentSlots', async function (req, res) {
	res.setHeader("Content-Type", "application/json");

	let detachmentId = req.query.detachmentId;

	try {
		let detachmentSlots = await codex.getDetachmentSlots(detachmentId);

		res.status(200);
		res.send(detachmentSlots);
	}
	catch (error) {
		console.log(error);
		res.status(500);
		res.send(error.message);
	}
})

app.get('/getRoleList', async function (req, res) {
	res.setHeader("Content-Type", "application/json");

	try {
		let roles = await codex.getRoleList();

		res.status(200);
		res.send(roles);
	}
	catch (error) {
		console.log(error);
		res.status(500);
		res.send(error.message);
	}
})

app.get('/getUnitList', async function (req, res) {
	res.setHeader("Content-Type", "application/json");

	let factionId = req.query.factionId
	let roleId = req.query.roleId

	try {
		let units = await codex.getUnitList(factionId, roleId);

		res.status(200);
		res.send(units);
	}
	catch (error) {
		console.log(error);
		res.status(500);
		res.send(error.message);
	}
})

app.get('/getSubfactionList', async function (req, res) {
	res.setHeader("Content-Type", "application/json");

	let factionId = req.query.factionId

	try {
		let subfactions = await codex.getSubfactions(factionId);

		res.status(200);
		res.send(subfactions);
	}
	catch (error) {
		console.log(error);
		res.status(500);
		res.send(error.message);
	}
})

app.get('/getUnitDetails', async function (req, res) {
	res.setHeader("Content-Type", "application/json");

	var unitId = req.query.unitId

	try {
		let unit = await codex.getUnitDetails(unitId);

		res.status(200);
		res.send(unit);
	}
	catch (error) {
		console.log(error);
		res.status(500);
		res.send(error.message);
	}
})

app.get('/getModels', async function (req, res) {
	res.setHeader("Content-Type", "application/json");

	let unitId = req.query.unitId;

	try {
		let models = await codex.getModels(unitId);

		res.status(200);
		res.send(models);
	}
	catch (error) {
		console.log(error);
		res.status(500);
		res.send(error.message);
	}
})

app.get('/getModelStats', async function (req, res) {
	res.setHeader("Content-Type", "application/json");

	let modelId = req.query.modelId;

	try {
		let modelStats = await codex.getModelStats(modelId);

		res.status(200);
		res.send(modelStats);
	}
	catch (error) {
		console.log(error);
		res.status(500);
		res.send(error.message);
	}
})

app.get('/getWoundTrack', async function (req, res) {
	res.setHeader("Content-Type", "application/json");

	let modelId = req.query.modelId;

	try {
		let woundTrack = await codex.getWoundTrack(modelId);

		res.status(200);
		res.send(woundTrack);
	}
	catch (error) {
		console.log(error);
		res.status(500);
		res.send(error.message);
	}
})

app.post('/fetchUnitStats', function (req, res) {
	var unit = req.body.unit

	console.log(unit)

	codex.getModelStats(unit, function (err, result) {
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

	codex.getModelWoundTrack(unit, function (err, result) {
		if (err) {
			console.log(err.message)
		}
		res.status(200)
		res.type('json')
		res.send(JSON.stringify(result))
	})
})

app.post("/fetchArmy", function (req, res) {
	codex.getArmy(function (err, result) {
		if (err) {
			console.log(err.message)
		}
		res.status(200)
		res.type('json')
		res.send(JSON.stringify(result))
	})
})

app.post("/fetchStratagems", function (req, res) {
	codex.getStratagems(function (err, result) {
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

	codex.getStratagemDetails(stratagemID, function (err, result) {
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
	codex.createUnit(unit, dynasty)

	res.status(200)
	res.send()
})

app.post("/removeUnit", function (req, res) {
	var id = req.body.id
	codex.removeUnit(id)

	res.status(200)
	res.send()
})

app.listen(port, function () {
	console.log("Warhammer server is listening on port " + port + "!")
})
