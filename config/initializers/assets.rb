# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( outer.js )
Rails.application.config.assets.paths << Rails.root.join('app', 'assets')
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'stylesheets', 'outer')
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'javascripts','outer')
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'stylesheets', 'inner')
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'javascripts','inner')
Rails.application.config.assets.precompile += %w( bootstrap.min.css )


# run this command after modifying this file 
# rails assets: precompile