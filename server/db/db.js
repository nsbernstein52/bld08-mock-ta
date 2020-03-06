// server/db/db.js
// pg
// functions:
//   addAnimal, tbd
//   deleteAnimal, tbd
//   getAllAnimals, tbd
//   getAnimal, tbd
//   getAnimalByLocation, tbd
//   getAnimalByType, tbd
//   updateAnimalLocation tbd

const { Pool } = require('pg');

const pool = new Pool({
  database: 'farm',
  user: 'postgres',
  password: 'Psa2020s'
});

console.log('db: Entering');

//   addAnimal, tbd

//   deleteAnimal, tbd

//   getAllAnimals, tbd

//   getAnimal, tbd

//   getAnimalByLocation, tbd

//   getAnimalByType, tbd

//   updateAnimalLocation tbd

console.log('db: Exiting');

module.exports = {
  addAnimal,
  deleteAnimal,
  getAllAnimals,
  getAnimal,
  getAnimalByLocation,
  getAnimalByType,
  updateAnimalLocation
} 

// //// original code
// const { Pool } = require('pg');
