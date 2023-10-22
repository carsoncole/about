# ABOUT

Personal portfolio Ruby on Rails application, highlighting some of the newest features in Rails.

Some of the new features (Rails 7.0+) utilized are:

- Encrypted database fields (user email addresses) (Rails 7)
- Health check at /up (Rails 7)
- Multi-environment credentials (Rails 6)
- Kamal web app deployment tool (Released Sept 2023)
- Tailwindcss (optional, but increasingly popular)

## Installation

User sign-up is open when first running the app. Once you've registered yourself as the primary user, you'll want to change the `clearance.rb` initializer to no longer permit signups.

```
  config.allow_sign_up = false
```

### Docker

`Dockerfile` is configured to create a Docker image.

### Kamal

Configured for deployment via Kamal. See `config/deploy.yml` for the Kamal configuration. Read more at https://github.com/basecamp/kamal.


## Image

You'll need to customize the included image of myself. Replace with your own photo at `assets/images/profile_photo.jpeg`.


## Testing

About uses Minitest for its test coverage. Inside the root app directory you can run tests with:

    
    % rails test


## Copyright

Copyright (c) 2023 [Carson Cole](https://carsonrcole.com). See [LICENSE](/LICENSE) for details.
