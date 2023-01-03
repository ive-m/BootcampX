const { Pool } = require('pg');
const process = require('process');
const arg =process.argv;

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'labber'
});



pool.query(`
SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name='${arg[2]}'
LIMIT ${arg[3]};
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
  })
});



