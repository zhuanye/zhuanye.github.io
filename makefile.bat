git checkout blog
git add -A
git commit -m "blog"
rm -r ../tmp/*
cp -r _site/* ../tmp/
git checkout master
rm -r ./*
cp -r ../tmp/* ./
git add -A
git commit -m "master"