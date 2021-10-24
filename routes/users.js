import SQL from '@nearform/sql'

export default async function (fastify, opts) {
  fastify.get('/users', async function (request, reply) {
    const query = SQL`` // INSERIRE QUI LA QUERY

    const [rows] = await fastify.pool.query(query)
    return rows
  })
}
