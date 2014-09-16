# DrawERD

[![Gem Version](https://badge.fury.io/rb/draw_erd.png)](https://rubygems.org/gems/draw_erd) [![Build Status](https://travis-ci.org/ogom/draw_erd.png?branch=master)](https://travis-ci.org/ogom/draw_erd)

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

Add this line to your `config/routes.rb`:

```
mount DrawErd::Engine, at: '/rails/draw/erd'
```

Draw by selecting the models:

![example](http://ogom.github.io/draw_erd/assets/img/example.png)

## Use

* [Rails ERD](https://github.com/voormedia/rails-erd)

## License

* MIT
