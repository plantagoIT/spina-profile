# Spina-Profile

## What is this plugin for?
This plugin allows you to create a 'Profile' page with customizable field. For instance you can add a 'Telegram' channel or multiple email addresses or so.

## How to use this plugin
1. Add the gem `spina-profile` to your `Gemfile` (with the `github:` or `path:` flag for now).
2. In your Spina theme file under `config/initializers/themes/your_theme.rb` add the following line, with all field you need.
```ruby
theme.setup_fields = %w(foo bar)
```
3. You can access the created fields using:
```ruby
Spina::Setup.instance.foo 
# => "what ever value foo stores"
```

## How this works
This plugin just creates a single instance of the `Spina::Setup` model, that dynamically get the configured values added s `jsonb` attributes. 