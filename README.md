# README
This is a basic scaffold for a rails 8 application running InertiaJs on Rails, React, and ShadCN on the frontend. [Inertia Rails guide](https://inertia-rails.dev/guide)

Uses AnnotateRb to annotate model files after migrations are performed. [Pagy](https://ddnexus.github.io/pagy/) is also included in the gemfile.

Rails backend uses Oj to enhance parsing JSON. Oj Serializers to serialize data for JS requests. JsRoutes generates rails-like helper paths that can be imported and used and preside in `app/frontend/lib/routes.js`. Types-from-serializer gem auto generates types and exports them to `app/frontend/lib/types` directory. Vite ruby is setup to alias `app/frontend/*` => `@/*`, 
``` 
import { Input } from "@/components/ui/input.tsx"
```

By default ShadCn components use the neutral theme with TailwindCSS and running `npx shadcn@latest add {component name}` will output the components to `app/frontend/components/ui`. [shadcn docs](https://ui.shadcn.com/docs/components/input)

The `bin/rails generate authentication` generator has already been run.

Start the dev server by running `./bin/dev` and everything else is using rails defaults.

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
3.4.1

* System dependencies
Rails ~> 8.0.2

* Configuration

* Database initialization
```
% rake db:setup && rake db:migration
```
* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
