using { /Fortnite.com/Devices }
using { /Verse.org/Colors }

i_testable<public> := interface:
  Description<public>(): string
  Test<public>(): logic

i_testable_device<public> := class(creative_device, i_testable):
  Description<override>(): string := "Testable Device"
  Test<override>(): logic := true

test_device_base<public> := class(creative_device):
  OnBegin<override>(): void =
    DoTests()

  DoTests(): void =
    Print("Running Tests", ?Color := NamedColors.Blue)
    TargetTests := Tests()
    for(Test: TargetTests):
      spawn { ExecuteTests(Test) }

  ExecuteTests(Test: i_testable)<suspends>: void =
    Result := Test.Test()
    if(Result = true):
      Print("Passed: {Test.Description()}", ?Duration := 5.0, ?Color := NamedColors.Green)
    else:
      Print("Failed: {Test.Description()}", ?Duration := 5.0, ?Color := NamedColors.Red)

  Tests<public>(): []i_testable =
    return array {}