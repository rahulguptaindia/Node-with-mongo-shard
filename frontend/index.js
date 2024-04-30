const express = require('express');
const app = express();
const axios = require('axios');

const PORT = 3000;

// Example API request to backend
app.get('/', async (req, res) => {
  try {
    const response = await axios.get('http://backend:4000/api/data'); // Assuming backend is running on port 4000
    res.send(response.data);
  } catch (error) {
    console.error(error);
    res.status(500).send('Error fetching data from backend');
  }
});

app.listen(PORT, () => {
  console.log(`Frontend server listening on port ${PORT}`);
});

