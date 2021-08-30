# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
if defined?(::ActiveAdmin)
  Rails.application.config.assets.precompile += %w[active_admin.js active_admin.css]
end

Rails.application.config.assets.precompile += %w[kit_demo_dummy/main/application.js kit_demo_dummy/main/application.css]
Rails.application.config.assets.precompile += %w[kit_demo_dummy/main/vendor.js      kit_demo_dummy/main/vendor.css]

# Handle the double manifest issue with dummy container. Adding the absolute path of the manifest doesn't work.
Rails.application.config.assets.paths << File.expand_path('../../app/assets/config', __dir__)

Rails.application.config.assets.precompile += %w[kit_demo_dummy/main/manifest.js]
