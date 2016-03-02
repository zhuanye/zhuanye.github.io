git checkout blog
git add -A
git commit -m "deploy blog"
cp -r _site/ ../tmp/
git checkout master
rm -r ./*
cp -r ../tmp/_site/* ./
git add -A
git commit -m "deploy blog"
git push origin master
git checkout blog
echo "deploy succeed"