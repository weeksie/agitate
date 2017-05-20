exports.config = {
  // See http://brunch.io/#documentation for docs.
  files: {
    javascripts: {
      entryPoints: {
        "js/agitate/app.js": "js/agitate/app.js",
        "js/developer-api/app.js": "js/developer-api/app.js"
      }
    },
    stylesheets: {
      joinTo: "css/app.css",
      order: {
        after: ["css/app.css"] // concat app.css last
      }
    },
    templates: {
      joinTo: "js/app.js"
    }
  },

  conventions: {
    // This option sets where we should place non-css and non-js assets in.
    // By default, we set this to "/web/static/assets". Files in this directory
    // will be copied to `paths.public`, which is "priv/static" by default.
    assets: /^(static)/
  },

  // Phoenix paths configuration
  paths: {
    // Dependencies and current project directories to watch
    watched: [
      "static",
      "css",
      "js",
      "vendor"
    ],

    // Where to compile files to
    public: "../priv/static"
  },

  // Configure your plugins
  plugins: {
    sass: {
      mode: "native"
    },
    babel: {
      presets: [ "es2015", "react" ],
      // Do not use ES6 compiler in vendor code
      ignore: [/vendor/]
    }
  },

  modules: {
    autoRequire: {
      "js/app.js": ["js/app"]
    }
  },

  npm: {
    enabled: true,
    styles: {
      leaflet: ['dist/leaflet.css']
    }
  }
}
