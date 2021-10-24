import { join } from 'path'
import AutoLoad from 'fastify-autoload'

export default async function (fastify, opts) {
  // Place here your custom code!

  // Do not touch the following lines

  // This loads all plugins defined in plugins
  // those should be support plugins that are reused
  // through your application
  fastify.register(AutoLoad, {
    dir: join(process.cwd(), 'plugins'),
    options: Object.assign({}, opts),
    maxDepth: 1,
  })

  // This loads all plugins defined in routes
  // define your routes in one of these
  fastify.register(AutoLoad, {
    dir: join(process.cwd(), 'routes'),
    options: Object.assign({}, opts),
    routeParams: true,
  })
}
