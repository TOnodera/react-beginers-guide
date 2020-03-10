#javascriptのトランスコンパイル
babel --preset react,es2015 js/source -d js/build
#javascriptのパッケージング
browserify js/build/app.js -o bundle.js
#cssのパッケージング
cat css/*/* css/*.css | sed 's/..\/..\/images/images/g' > bundle.css
#完了
date; echo;