---
layout: default
title:  Overview
---

# Draw ERD

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

Add this line to your config/routes.rb:

```
mount DrawErd::Engine, at: '/rails/info/schemas'
```

Draw by selecting the schemas:

![example_erd]({{ site.baseurl }}/assets/img/example_erd.png)

## Use

* [Rails ERD](https://github.com/voormedia/rails-erd)

## License

* MIT
