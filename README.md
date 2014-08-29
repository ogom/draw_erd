# Draw ERD

[![Build Status](https://travis-ci.org/ogom/draw_erd.png?branch=master)](https://travis-ci.org/ogom/draw_erd)

Drawing the Entity-Relationship Diagram of Rails.

## Installation

Add this line to your application's Gemfile:

```
gem 'draw_erd'
```

And then execute:

```
$ bundle
```

## Usage

Add this line to your config/routes.rb:

```
mount DrawErd::Engine, at: '/rails/info/schemas'
```

## License

* MIT
