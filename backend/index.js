const express = require('express');
const app = express();
const mongoose = require('mongoose');
const dotenv = require('dotenv');

dotenv.config(); // Load environment variables from .env file

const PORT = process.env.PORT || 4000;

// MongoDB URI from environment or fallback to local MongoDB
const MONGO_URI = process.env.MONGO_URI || 'mongodb://p1-router-1-1:27017,p1-router-2-1:27017/mydatabase?retryWrites=true';

// Connect to MongoDB
mongoose.connect(MONGO_URI, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
})
.then(() => console.log('Connected to MongoDB sharded cluster'))
.catch(err => console.error('Failed to connect to MongoDB', err));

const db = mongoose.connection;

// Example API endpoint
app.get('/api/data', (req, res) => {
    res.json({ message: 'Rahul application2 is running' });
});

app.listen(PORT, () => {
    console.log(`Backend server listening on port ${PORT}`);
});
