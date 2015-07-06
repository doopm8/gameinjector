"Getting Zandronum, a modern source port. For other source ports, go to the other scripts"

mkdir -pv $HOME/zandronum_local/zandronum
cd $HOME/zandronum_local && \
v=$(wget -q -O - http://zandronum.com/download | \
sed -n 's/.*The latest version is <strong>\(.*\)<\/strong>.*/\1/p') && \
if [ "$(uname -m)" = "x86_64" ]; then
    a="zandronum"$v"-linux-x86_64.tar.bz2" 
else
    a="zandronum"$v"-linux-x86.tar.bz2"
fi && \
wget -nc http://zandronum.com/downloads/"$a" && \
tar -xjvf "$a" -C zandronum
cd $HOME/zandronum_local && \
if [ "$(uname -m)" = "x86_64" ]; then 
   FMODFOLDER="fmodapi42416linux64"
   FMODFILE="libfmodex64-4.24.16"
else
   FMODFOLDER="fmodapi42416linux"
   FMODFILE="libfmodex-4.24.16"
fi && \
wget -nc http://www.fmod.org/download/fmodex/api/Linux/$FMODFOLDER.tar.gz && \
tar -xvzf $FMODFOLDER.tar.gz -C zandronum --strip-components=3 \
--show-transformed-names $FMODFOLDER/api/lib/$FMODFILE.so

echo "This step only werks on debian, so change this part of the script if needed."
sudo apt-get install fluidsynth
echo "Getting the freedoom wads, you know, 'cos freedumb!"
sudo wget -P $HOME/zandronum_local/zandronum https://github.com/freedoom/freedoom/releases/download/v0.9/freedoom-0.9.zip
unzip freedoom-0.9.zip -d $HOME/zandronum_local/zandrom
rm freedoom-0.9.zip
