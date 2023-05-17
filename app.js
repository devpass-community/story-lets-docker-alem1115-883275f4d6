const express = require('express')
const app = express()
const port = 3000

app.get('/', (request, response) => {
  response.json({ info: 'You rock!' })
})

app.listen(port, () => {
  console.log(`Server up and running on port: ${port}`)
})