# TitleizeBr

This gem is gives brazilians an easy way to titleize strings with our own grammar rules from ABNT.

```ruby
'o teste de titleize'.titleize
=> "O Teste De Titleize"
'o teste de titleize'.titleize_br
=> "O Teste de Titleize" 
```

- First character or word is always capitalized
- Connectives (pronouns and articles) are not capitalized unless they appear first

Please open an issue or pull request if you find a word that is not being treated correctly

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add titleize_br

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install titleize_br

## Usage

`'string'.titleize_br`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gabrielrdrguez/titleize_br.
Please use imperative commit messages: https://cbea.ms/git-commit/#imperative 

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
