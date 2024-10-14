using { vest.Models }
using { vest.Modules }

sample_test_device := class(test_device_base):
  Tests<override>(): []i_testable =
    return array {
      sample_test{}
    }

sample_test := class(i_testable):
  Description<override>(): string := "Sample Test"

  Test<override>(): logic =
    value := 1
    return 1.ToBe(1)