<h1 align="center">
  <a href="https://vite-rails.netlify.app/">
    <img src="https://raw.githubusercontent.com/ElMassimo/vite_rails/main/docs/public/logo.svg" width="120px"/>
  </a>

  <br>

  <a href="https://vite-rails.netlify.app/">
    PingCRM on Vite Rails
  </a>
</h1>

[original demo]: https://github.com/ledermann/pingcrm
[vite rails]: https://github.com/ElMassimo/vite_rails
[js_from_routes]: https://github.com/ElMassimo/js_from_routes
[webpacker]: https://github.com/rails/webpacker
[vite]: http://vitejs.dev/

Unlike the [original demo], this replaces [webpacker] with [Vite Rails],
which provides a substantially faster development experience.

It also leverages [<kbd>js_from_routes</kbd>][js_from_routes] to auto-generate
API methods to effortlessly integrate with the Rails backend.

![Screenshot](screenshot.jpg)

<!-- There is a hosted installation of this demo available at https://pingcrm.ledermann.dev. Login with:

- **Username:** johndoe@example.com
- **Password:** secret

## Lighthouse performance audit

![Lighthouse audit](lighthouse.png) -->


## Installation

Clone the repo locally:

```
git clone https://github.com/ElMassimo/pingcrm-vite.git
```

Setup (install dependencies, create and seed database):

```
cd pingcrm-vite
bin/setup
```

Start it:

```
foreman start
```

You're ready to go! Visit PingCRM in your browser (http://localhost:3000), and login with:

- **Username:** johndoe@example.com
- **Password:** secret


## Running tests

To run the PingCRM tests, run:

```
rails test:system
```


## Requirements

- Ruby 2.7
- Ruby on Rails 6
- PostgreSQL


## Credits

* Original work by Jonathan Reinink (@reinink) and contributors
* Port to Ruby on Rails by Georg Ledermann (@ledermann)
* Port from Webpacker to Vite Rails (@ElMassimo)
