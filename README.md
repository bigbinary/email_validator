# Introduction

This is an email validator for Rails 3.

I know it is a simple validator and I like simplicity. I just want to keep `john @msn.com` and `john@msncom` away.

Also it is not RFC compliant but that is okay with me.

## Usage

Add following lines to your `Gemfile`.

    gem 'email_validator', :git => "git://github.com/bigbinary/email_validator.git"

In model add following lines of code

    validates :email, :email => true

Outside models

    EmailValidator.regex # returns the regex
    EmailValidator.valid?('sam@example.com') 
## Test

    cd test
    ruby email_test.rb
