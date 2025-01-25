const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.status(200).jsonp({ data: 'Hello world v5' })
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})