# Setting up your environment

[Ruby/Sinatra](#webapp-using-ruby-and-sinatra)

---

## Database-enabled Webapp using Ruby, Sinatra and PSQL. Testing framework is RSpec/Capybara

[Link to complete file syntax](#complete-file-syntax)

### Initial setup

Run the following code in the command line to initialise a Gemfile:

```bash
bundle init
```

---

### Gems

In the Gemfile:

```ruby
source 'https://rubygems.org

gem 'sinatra'
gem 'coveralls'
gem 'capybara', group: test
gem 'rspec', group: test
gem 'rubocop', require: false
gem 'simplecov' require: false, group: test
gem 'pg'

```

Run bundle's installer to install all of the gems:

```bash
bundle install
```

#### Sinatra

Sinatra is a tool that creates simple web applications in Ruby.

#### RSpec

This is the Ruby test program.

#### Capybara

Capybara is a tool that sits on top of RSpec, letting us test web apps built using Ruby.

#### Rubocop

This is a code linter.

#### SimpleCov

This measures test coverage.

#### PostgreSQL

This gem allows connection to and querying of PostgreSQL.

---

### Setting up RSpec

Run the following command to set up an RSpec structure:

```bash
rspec --init
```

---

### Setting up Sinatra and Rack

Execute the following commands in the project root folder:

```bash
touch app.rb
```

```bash
touch config.ru
```

app.rb is the web application file, while config.ru lets us run the application using rackup.

In app.rb:

```ruby
require 'sinatra/base'

class [insert name of app here (in camelcase)] < Sinatra::Base
  enable :method_override
  

  run! if app_file == $0
end
```

We enable method_override to create an application that properly replicates the database CRUD commands in a RESTful manner. We need to add the following code to the config.ru file:

```ruby
use Rack::MethodOverride
```

In config.ru:

```ruby
require_relative "./app"

run [insert name of app here]
```

---

### Setting up Capybara

We need to adjust our test configuration; we can do this in the spec_helper.rb file. To do this we need to:

1. Set the environment to test.
2. Bring in the contents of our app.rb file.
3. Require all of the testing gems; capybara and rspec are the testing gems, and capybara/rspec is the gem that allows them to talk to each other.
4. Tell Capybara hat any instructions like visit '/' should be directed at our application.

```ruby
ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'

Capybara.app = BookmarkManager
```

---

### Setting up SimpleCov

The following code needs to be added to the very top of the spec_helper.rb file:

```ruby
require 'simplecov'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start
```

To add a coveralls badge to the readme, add the following to the spec_helper.rb file:

```ruby
require 'coveralls'
Coveralls.wear!
```

Then add the repo at [the coveralls website](https://coveralls.io/).

SimpleCov must be running in the process that you want the code coverage analysis to happen on. When testing a server process (e.g. a JSON API endpoint) via a separate test process (e.g. when using Selenium) where you want to see all code executed by the rails server, and not just code executed in your actual test files, you need to require SimpleCov in the server process. For rails for instance, you'll want to add something like this to the top of bin/rails, but below the "shebang" line (#! /usr/bin/env ruby) and after config/boot is required:

```ruby
if ENV['RAILS_ENV'] == 'test'
  require 'simplecov'
  SimpleCov.start 'rails'
  puts "required simplecov"
end
```

To see code coverage stats, type in the following in terminal:

```bash
open coverage/index.html
```

---

### Setting up Rubocop

If you want to stick with the default settings then all we need to do is require the gem in the gemfile and install using bundle.

There are optional badges that can be added to the readme (see [complete file syntax](#complete-file-syntax) below).

---

### Setting up PostgreSQL

First, the gem needs to be required in the gemfile.

Set up your development and test databases.

Then, we need to tell the test suite to pick the test database. In the spec_helper.rb file:

```ruby
ENV['ENVIRONMENT'] = 'test'
```

We need to set up and clear the test database. In spec/setup_test_database.rb:

```ruby
require 'pg'

connection = PG.connect(dbname: 'bookmark_manager_test')

connection.exec("TRUNCATE bookmarks;")
```

We need to run the above command before each test, so in spec_helper.rb:

```ruby
require_relative './setup_test_database'

ENV['ENVIRONMENT'] = 'test'

RSpec.configure do |config|
  config.before(:each) do
    setup_test_database
  end
end
```

Finally, we need to require PG in our spec_helper file.

---

### Complete File Syntax

Remember to add the repo at [Code Climate](https://codeclimate.com/profile/github_link) and [Coveralls](https://coveralls.io/).

Gemfile

```ruby
source 'https://rubygems.org

gem 'sinatra'
gem 'coveralls'
gem 'pg'
gem 'capybara', group: test
gem 'rspec', group: test
gem 'rubocop', require: false
gem 'simplecov', require: false, group: test
```

app.rb

```ruby
require 'sinatra/base'

class [insert name of app here (in camelcase)] < Sinatra::Base
  enable :method_override
  

  run! if app_file == $0
end
```

config.ru

```ruby
require_relative "./app"

use Rack::MethodOverride

run [insert name of app here]
```

spec_helper.rb

```ruby
require 'simplecov'
require 'coveralls'
Coveralls.wear!

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

ENV['RACK_ENV'] = 'test'
ENV['ENVIRONMENT'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'pg'

require_relative './setup_test_database'

Capybara.app = [insert name of app here]

RSpec.configure do |config|
  config.before(:each) do
    setup_test_database
  end
end
```

.gitignore

```bash
echo "coverage" >> .gitignore
```

spec/setup_test_database.rb

```ruby
require 'pg'

connection = PG.connect(dbname: 'bookmark_manager_test')

connection.exec("TRUNCATE bookmarks;")
```

README.md

| [![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop) | [![Ruby Style Guide](https://img.shields.io/badge/code_style-community-brightgreen.svg)](https://rubystyle.guide) |
