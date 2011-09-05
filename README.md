# Introduction

This is an email validator for Rails3.

I know it is a simple validator and I like simplicity. I just want to keep `john @msn.com` and `john@msncom` away.

Also it is not RFC compliant.

## Usage

Add following lines to your `Gemfile`.

    gem 'email_validator', :git => "git://github.com/neerajdotname/email_validator.rb"

In model add following lines of code

    validates :email, :email => true

## Test

    cd test
    ruby email_test.rb
