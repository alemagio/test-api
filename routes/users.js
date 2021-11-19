import SQL from '@nearform/sql'

export default async function (fastify, opts) {
  fastify.get('/users', async function (request, reply) {
    const query = SQL`SELECT id, lastName, firstName, username FROM users` // INSERIRE QUI LA QUERY

    const [rows] = await fastify.pool.query(query)
    return rows
  })

  fastify.get('/users/:id', async function (request, reply) {
    const query = SQL`SELECT id, lastName, firstName, username FROM users WHERE id = ${request.params.id}` // INSERIRE QUI LA QUERY

    const [rows] = await fastify.pool.query(query)
    return rows[0]
  })
}
