//> using dep org.scalameta::munit:1.1.0
import myapi.MyApi

class TestApiSutie extends munit.FunSuite {
  test("should greet") {
    assertEquals(MyApi.greet("user"), "Hello user")
  }
}
