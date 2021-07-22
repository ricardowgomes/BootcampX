const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const limit = process.argv[3] || 5;
const values = [`%${process.argv[2]}%`, limit];

const queryString = `
SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE $1
LIMIT $2;
`;

pool.query(queryString, values)
  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.name}`);

    });

    pool.end();
  })
  .catch(err => console.error('query error', err.stack));
