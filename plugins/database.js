import { createPool } from 'mysql2/promise'
import fp from 'fastify-plugin'

export default fp(async (fastify) => {
  fastify.decorate(
    'pool',
    createPool({
      uri: process.env.DATABASE_URL,
      waitForConnections: true,
      connectionLimit: 10,
    }),
  )
})
