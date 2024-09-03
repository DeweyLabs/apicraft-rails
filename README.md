# APICraft Rails
🚀 Accelerates your development by 2-3x with an API Design First approach. Seamlessly integrates with your Rails application server — no fancy tooling or expenses required.

![APICraft Rails Logo](assets/apicraft_rails.jpg)

## ✨ Features
- 🗂 **Simplified Files Management** - Management of `openapi` specifications from within `app/contracts` directory.

- 🧑‍💻️ **Dynamic Mock Data Generation** - Detects the specifications and instantly mounts working routes with mock responses. No extra configuration required.

- ⚙️ **Customizable Mock Responses** - Tailor mock responses to simulate different scenarios and edge cases, helping your team prepare for real-world conditions right from the start.

- 🔍 **Enhanced API Validation** - Validate API Requests based on the specifications. Easy configurable to turn it on or off.

- 📺 **Documentation Out of the Box** - Documentation is available at `/apicraft` using `SwaggerDoc` and `Redoc` both with "Try it out" feature.


## 🪄 Works Like Magic

Once you’ve installed the gem, getting started is a breeze. Simply create your OpenAPI contracts within the `app/contracts` directory of your Rails application. You’re free to organize this directory in a way that aligns with your project's standards and preferences. That’s it—your APIs will be up and running with mock responses, ready for development without any additional setup. It's as effortless as it sounds!

## 🕊 API Design First Philosophy

![APICraft Rails Logo](assets/api_first_workflow.jpg)

The API Design First philosophy is at the heart of APICraft Rails, and it’s a game-changer for development speed and efficiency:

- 🔄 **Parallel Development:** By designing your APIs upfront, both frontend and backend teams can work simultaneously using mock APIs, eliminating bottlenecks and reducing wait times.

- 📜 **Clear Contracts:** OpenAPI contracts serve as a single source of truth, ensuring that all teams are aligned on how the API should behave, reducing misunderstandings and rework.

- ⚙️ **Early Testing:** Mock APIs allow QA to begin testing earlier in the development cycle, catching issues before they become costly to fix.

- 🔍 **Faster Feedback Loop:** Immediate feedback on API design helps you iterate quickly, refining your API based on real usage scenarios, ultimately leading to a more robust product.

- 🚀 **Reduced Integration Time:** With consistent API contracts in place, integrating various components becomes smoother and faster, cutting down on the time required to bring everything together.

By adopting an API Design First approach with APICraft Rails, you can accelerate your development process by 2-3x, delivering high-quality APIs faster and with fewer headaches.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apicraft'
```

And then execute:

    $ bundle install

After the installation in your rails project, you can start adding contracts in the `app/contracts` directory. This can have any internal directory structure based on your API versions, standards, etc.

Add the APICraft Middleware into your Rails application, via the `config/application.rb`

```ruby
# config/application.rb
module App
  class Application < Rails::Application
    # Rest of the configuration
    config.middleware.use Apicraft::Middleware
  end
end
```

```ruby
# config/routes.rb
# frozen_string_literal: true

Rails.application.routes.draw do
  # Rest of the routes
  mount Apicraft::Web::App, at: "/apicraft"
end
```

Now every API in the specification has a functional version. If a path isn't implemented, APICraft serves a mock response; otherwise, it forwards the request to your application as usual.

## Usage

All API paths or resources, not yet implemented can be interacted with.

Example


## Configuration

## Development


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/apicraft. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/apicraft/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Apicraft project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/apicraft/blob/main/CODE_OF_CONDUCT.md).
