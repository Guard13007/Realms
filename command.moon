lapis = require "lapis"
csrf = require "lapis.csrf"

Users = require "models.Users"

class extends lapis.Application
  @path: "/command"

  @before_filter =>
    if @session.id
      @user = Users\find id: @session.id
    else
      return layout: false, "You must log in."

  [command: ""]: =>
    return layout: false, "FUCK YEA"
