# TextViewKeyboardCloseSample
TextFieldやTextViewのキーボードを閉じる方法をいくつか載せたサンプルのコードとなります
便利なので、気軽に使っていただければ

## returnキーで閉じる方法
```
//TextFieldはreturnキーでの改行もアリ
func textFieldShouldReturn(_ textField: UITextField) -> Bool {
textField.resignFirstResponder()
return true
}

//TextViewは改行したいので、オススメではない
func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
if (text == "\n") {
textView.resignFirstResponder()
return false
}
return true
}
```
## キーボード以外の部分をタップして、キーボードを閉じる方法
```
//Keyboard以外の部分をタップして、閉じる方法（これ一番かっこいいよね笑）
override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
self.view.endEditing(true)
}
```
