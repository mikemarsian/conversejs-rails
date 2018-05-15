# conversejs-rails

conversejs-rails wraps the [Converse.js](https://conversejs.org) library in a rails
engine for simple use with the asset pipeline provided by Rails 3.1 and higher.
The gem includes the development (non-minified) source for ease of exploration.
The asset pipeline will minify it in production.

Converse.js is a web based XMPP/Jabber instant messaging client. It enables you to add chat functionality to your website, independent of any specific backend. You will however need an XMPP server to connect to, either your own, or a public one.


## Usage

Add the following to your Gemfile:

    gem 'conversejs-rails'

Add the following directive to your Javascript manifest file (application.js):

    //= require converse
    
If you receive javascript errors [like these](https://github.com/requirejs/almond#incorrect-module-build-no-module-name), try adding _converse.js_ and _converse.css_ manually in your layout file, after all other javascripts:

    <html>
        <head>
            <!-- all of your js and css files here -->
            <!--            .....                  -->
            <%= stylesheet_link_tag "converse" %>
            <%= javascript_include_tag "converse" %>
        </head>
    ...

## Versioning

conversejs-rails 3.3.4 == Converse.js 3.3.4

Every attempt is made to mirror the currently shipping Converse.js version number
wherever possible. The major, minor, and patch version numbers will always
represent the Converse.js version. Should a gem bug be discovered, a 4th version
identifier will be added and incremented.
