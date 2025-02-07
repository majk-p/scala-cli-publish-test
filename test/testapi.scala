package myapi.test

import myapi.MyApi

object MyTestApi {
  def printGreet(name: String) = println(MyApi.greet(name))
}
