import express from 'express';
const app = express();

const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
return "Hello World!"
});

app.listen(port, () => {
    console.log(`Server started on port ${port}`);
});

//npm start, open your browser and run localhost:port