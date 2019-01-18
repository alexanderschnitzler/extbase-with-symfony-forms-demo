# Demo TYPO3 installation with symfony forms in extbase plugins

## Install

### Install packages

`composer install`

### Setup the database

Create a database, import the `dump.sql`, adjust the database credentials
in `public/typo3conf/LocalConfiguration.php`.

## Demo

Setup the site so you can browse it with a web browser.
`php -S localhost:8080 -t public` should suffice. Of course you are free
to setup apache/nginx. Your decision, your responsibility.

Once you setup the site and open a browser, you see the demo plugin
that shows a form which is powered by `symfony/form`, along with
other symfony components for validation, twig integration, csrf
support, xlf readers and so on.

## Users and password

- Backend login: `admin` -> `password`
- Install tool password: `password`

## Disclaimer
This is just a small tech demo which demonstrates that it's quite easy
to build forms with symfony components. I do not intend to create any
form extension as a competitor to any other form extension. It's just
that: If you are a developer and need a quick and solid solution for
simple forms that don't need to be managed by editors, this might
be just the right solution for you.

Again: Your decision, your responsibility. :)
