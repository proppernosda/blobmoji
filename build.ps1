emoji_builder.exe --offline -v -o Blobmoji.ttf -t .\tables\ --emoji-test .\emoji-test.txt --flags .\third_party\region-flags\svg blobmoji -w -a .\emoji_aliases.txt --ttx-tmpl .\NotoColorEmoji.tmpl.ttx.tmpl --palette .\Blobmoji.gpl --font_files .\ComicNeue --default_font "Comic Neue" 
# Rename the Windows-compatible file
rm fonts\BlobmojiWindows.ttf 
rm fonts\BlobmojiWindowsDefaultReplacement.ttf
mv fonts\Blobmoji_win.ttf fonts\BlobmojiWindows.ttf
mv fonts\Blobmoji_win_default.ttf fonts\BlobmojiWindowsDefaultReplacement.ttf
# Build EmojiCompat (will be integrated at some point)
cd ..\emojicompat\noto-fonts\emoji-compat
python .\createfont.py ..\..\..\blobmoji\fonts\Blobmoji.ttf ..\..\unicode\ 
cp .\font\NotoColorEmojiCompat.ttf ..\..\..\blobmoji\fonts\BlobmojiCompat.ttf
cd ..\..\..\blobmoji
git add fonts