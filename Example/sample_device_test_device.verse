using { vest.Modules }
using { /Fortnite.com }
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { Models }

sample_device_test_device := class(test_device_base):
  @editable
  Device: sample_device = sample_device{}

  Tests<override>(): []i_testable =
    return array {
      sample_device_test{ Device := Device }
    }

sample_device_test := class(i_testable):
  Device<public>: sample_device

  Description<override>(): string := "Sample Device Test"

  Test<override>(): logic =
    return Device.SampleMethod().ToBe(1)

sample_device := class(creative_device):
  SampleMethod<public>(): int =
    return 1