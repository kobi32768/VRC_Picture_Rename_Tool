# VRC Picture Rename Tool

VRChat 2022.3.1 (build 1236; Open Beta) から VRChat で撮影した写真やスクリーンショットの命名規則が変わりました。
しかしながら新規に撮影されたもののみが新しい命名規則に従い、今までに撮られたものは古い命名規則のままです。
本ツールは過去に撮影された写真のファイル名を新しい命名規則に従うように変更します。

この新しい命名規則は Open Beta 時点でのものであり、VRChat の仕様変更により命名規則が変わる可能性があります。

ご意見, ご要望, 不具合, 不明な点などありましたら Booth や Twitter などからご連絡ください。

## 仕様

`VRChat_RESOLUTION_DATE_TIME.png` に一致する写真のファイル名を  
`VRChat_DATE_TIME_RESOLUTION.png` に変更します。

拡張子が `.png` でない場合や、余分な文字が含まれている場合にはファイル名は変更しません。

PowerShell を使用しているため Windows のみ対応です。
動作確認は Windows 10 で行いました。

## 使用方法

VRChat の写真が置いてあるフォルダに bat ファイルと ps1 ファイルを配置して bat ファイルをダブルクリックで実行、または右クリックして "開く" を押してください。
ウィンドウが開いて進行度が表示されるので 100% になったら任意のキーを押すとウィンドウが閉じます。

VRChat の写真はデフォルトで `C:\Users\USERNAME\Pictures\VRChat` に保存されています。  
フォルダに分けて整理されていても問題ありません。

## 内容物

- picture_rename_tool.bat (ソースコード)
- picture_rename_tool.ps1 (ソースコード)
- LICENSE (ライセンスファイル)
- README.md (説明書)

同一の内容を GitHub でも配布しています。  
<https://github.com/kobi32768/VRC_Picture_Rename_Tool>

## 利用規約

本ソフトウェアは [MIT License](https://github.com/kobi32768/VRC_Picture_Rename_Tool/blob/master/LICENSE) にて提供されます。  
効力は英語原文により発生しますが、要約すると個人利用, 商用利用, 改変, 再配布は自由で著作者は一切の責任を負わないというものです。
また、改変の有無にかかわらず再配布の際にはライセンスファイルを同梱し、権利表示 (Copyright (c) 2022 kobi32768) を付ける必要があります。

## 更新履歴

2022-09-09 v1.0.0 リリース
