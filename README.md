# SkyprepRubySDK

The SkyPrep Ruby SDK is a wrapper on top of the HTTP SkyPrep API(https://skyprep.com/api). All JSON responses are automatically converted to similar Ruby Objects(hashes).

All API calls are mapped to a corresponding method. For example, get_all_users is mapped to api.get_users.

The wrapper uses some metaprogramming so that any new methods that are added to the API should work automatically in the SDK.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'skyprep_rubySDK'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install skyprep_rubySDK

## Usage

First and foremost you need to include the module SkyprepRubySDK where you want to use it. So write 

		include SkyprepRubySDK

then initialize your own instance of the api by passing in your skyprep api key and account key. 
		
		your_api = SkyPrepApi.new('*api_key*', '*acct_key*')

Then if you want to find a user with the get_user method from the api, just call the method on your api instance(methods all have the same names as call from the api). So get a user will be your_api.get_user({params}). i.e.

		your_api.get_user({"user_id" => "*ID*"})

		#sample response {
			"id" : 32,
			"first_name" : "John",
			"last_name" : "Doe"
			...
		}

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/zhangmyihua/skyprep_rubySDK.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

