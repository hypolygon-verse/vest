# VEST
Verse testing library for UEFN.

# DEMO
- Example/vest_example
 
# Features
- シンプルなテストランナー
- 非同期関数に対応
- デバイスのテストに対応

# Installation
リポジトリをクローンもしくはダウンロードしたものをプロジェクトに展開してください。

ルートディレクトリに外部ライブラリ用のディレクトリを作成するのをおすすめします。

# Usage
 
### シンプルなテストデバイス。
テストを実行するtest_device_baseを継承したデバイスクラスを作成し、Tests関数をオーバライドします（テストケースクラスの配列を返します）

```rust
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
```

### デバイスをテストするケース
```rust
# テストランナー
sample_device_test_device := class(test_device_base):
  @editable
  Device: sample_device = sample_device{}

  Tests<override>(): []i_testable =
    return array {
      sample_device_test{ Device := Device },
      sample_testable_device{}
    }

# デバイスのテストをするためのクラス
sample_device_test := class(i_testable):
  Device<public>: sample_device

  Description<override>(): string := "Sample Device Test"

  Test<override>(): logic =
    return Device.SampleMethod().ToBe(1)

# テストをしたいデバイス
sample_device := class(creative_device):
  SampleMethod<public>(): int =
    return 1
```
 
# Note
テストコードをしっかり書いて保守運用がしやすい開発ができるように作りました。

ライブラリの開発時にテストコードを書く目的で使うため一旦は機能が少ないですが機能のリクエストはIssueを立てていただけますと幸いです。

# Author
むーつん([@mutuntun](https://x.com/mutuntun))


# License
MITライセンスに準拠します。
ライセンスの表記をお願いします

"vest" is under [MIT license](https://en.wikipedia.org/wiki/MIT_License).
