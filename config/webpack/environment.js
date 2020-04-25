const { environment } = require('@rails/webpacker')

const webpack = require('webpack')

environment.plugins.append("Provide", new wepback.ProvidePlugin({
    $: "jquery",
    jQuery: "jquery",
    popper: ["popper.js", "default"]
}))

module.exports = environment
