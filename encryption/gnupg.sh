#!/bin/bash


#bash gettext.sh

sudo apt-get install libpth-dev libassuan-dev libgcrypt20-dev libksba-dev pinentry-qt4 libgpg-error-dev pinentry-qt4 # texinfo

curl https://www.gnupg.org/ftp/gcrypt/gnupg/gnupg-2.0.29.tar.bz2 | tar xvj
pushd gnupg-2.0.29

./configure --prefix=/usr \
            --enable-symcryptrun \
            --docdir=/usr/share/doc/gnupg-2.1.7
make
makeinfo --html --no-split \
         -o doc/gnupg_nochunks.html doc/gnupg.texi &&
makeinfo --plaintext       \
         -o doc/gnupg.txt           doc/gnupg.texi
         
 
# Additional formats, require texlive       
# make -C doc pdf ps html

sudo make install
sudo install -v -m755 -d /usr/share/doc/gnupg-2.1.7/html            &&
sudo install -v -m644    doc/gnupg_nochunks.html \
                    /usr/share/doc/gnupg-2.1.7/html/gnupg.html &&
sudo install -v -m644    doc/*.texi doc/gnupg.txt \
                    /usr/share/doc/gnupg-2.1.7

# We recommend the creation of symlinks for compatibility with the first version of GnuPG, because some programs or scripts need them:
for f in gpg gpgv
do
  ln -svf ${f}2.1 /usr/share/man/man1/$f.1 &&
  ln -svf ${f}2   /usr/bin/$f
done
unset f

# Additional formats, require texlive (see above)
# install -v -m644 doc/gnupg.html/* \
#                 /usr/share/doc/gnupg-2.1.7/html &&
# install -v -m644 doc/gnupg.{pdf,dvi,ps} \
#                 /usr/share/doc/gnupg-2.1.7
popd
rm -r gnupg-2.0.29
