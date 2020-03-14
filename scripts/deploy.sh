#以前のバージョンのクリーンアップ
rm -rf __deployme
mkdir __deployme

#ビルド
sh scripts/build.sh

#javascriptのミニファイ
uglify -s bundle.js -o __deployme/bundle.js
#cssのミニファイ
cssshrink bundle.css > __deployme/bundle.css
#HTMLと画像をコピー
cp index.html __deployme/index.html
cp -r images/ __deployme/images/
