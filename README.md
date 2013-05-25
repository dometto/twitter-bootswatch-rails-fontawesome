# Twitter Bootswatch Rails Font Awesome gem

  - Use to extend your [Twitter Bootswatch Rails](https://github.com/scottvrosenthal/twitter-bootswatch-rails) project with Font Awesome
  - Integrates Font Awesome less into the Rails 3.1+ Asset Pipeline
  - Easily override Font Awesome variables per bootswatch theme

## Installation

```ruby
group :assets do
  # rails default gems
  ...

  # just put after rails asset defaults
  gem 'twitter-bootswatch-rails', '~> 2.3.2.0'
  gem 'twitter-bootswatch-rails-fontawesome'
end

# View Helpers Gem can go outside the assets group
gem 'twitter-bootswatch-rails-helpers', '>= 2.3.1'
```

or you can install from latest build;

```ruby
gem 'twitter-bootswatch-rails-fontawesome', :git => 'git://github.com/scottvrosenthal/twitter-bootswatch-rails-fontawesome.git'
```

Run bundle from command line

    bundle


## Usage defaults

To add Font Awesome to your [Twitter Bootswatch Rails](https://github.com/scottvrosenthal/twitter-bootswatch-rails) project:

In application.css or [theme_name] css file just do the following:

```css
/*
 *= require_self
 *= require [theme_name]/loader
 *= require [theme_name or font-awesome]/font-awesome
*/
```

If you need the ie7 fix:

```css
/*
 *= require_self
 *= require [theme_name]/loader
 *= require [theme_name or font-awesome]/font-awesome
 *= require font-awesome/font-awesome-ie7
*/
```

## Usage for theme_name customization

If you don't provide a [theme_name] the value defaults to **bootswatch** and adds directives to your application.css files.


Usage:


    rails g bootswatch:fontawesome:install [theme_name]

Example:


    rails g bootswatch:fontawesome:install admin
    rails g bootswatch:fontawesome:install storefront


Any of the above commands create a [theme_name]/font-awesome.less file for the passed in [theme_name].

If you had an existing admin bootswatch theme here's the contents:


```ruby
class ApplicationController < ActionController::Base
  # ...
  layout 'cyborg'
end
```

## Changelog

  - v3.1.1.0
    * Initial release
    * Updated to use Font Awesome v3.1.1