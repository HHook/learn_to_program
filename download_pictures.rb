Downloading pictures
Anyway, I could search for all JPEGs with Dir['*.jpg']. Actually, since these are
case-sensitive searches, I should probably include the all-caps version as
well, Dir['*.{JPG,jpg}'], which roughly means “Find me all files starting with
whatever and ending with a dot and either JPG or jpg.” Of course, that searches
for JPEGs only in the current working directory, which (unless you change it)
is the directory you ran the program from. To search in the parent directory,
you’d want something like Dir['../*.{JPG,jpg}']. If you wanted to search in the
current directory and all subdirectories (a recursive search), you’d want
something like Dir['**/*.{JPG,jpg}'].
And remember I said you could change your current working directory? You
do that with Dir.chdir; just pass in the path to your new working directory.

We’ll also be using File.rename. It should be fairly obvious how it works. I have
one thing to say about renaming, though. According to your computer, moving
a file and renaming a file are really the same task.

# This is where she stores her pictures before
# she gets her YAML on and moves them to the server.
# Just for my own convenience, I'll go there now.
Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'
# First we find all of the pictures to be moved.
pic_names = Dir['F:/**/*.jpg']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
# This will be our counter. We'll start at 1 today,
# though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
print '.' # This is our "progress bar".
new_name = if pic_number < 10
"#{batch_name}0#{pic_number}.jpg"
else
"#{batch_name}#{pic_number}.jpg"
end
report erratum • discuss
Renaming Your Photos • 91
Prepared exclusively for Helena Hook
# This renames the picture, but since "name"
# has a big long path on it, and "new_name"
# doesn't, it also moves the file to the
# current working directory, which is now
# Katy's PictureInbox folder.
# Since it's a *move*, this effectively
# downloads and deletes the originals.
# And since this is a memory card, not a
# hard drive, each of these takes a second
# or so; hence, the little dots let her
# know that my program didn't hose her machine.
# (Some marriage advice from your favorite
# author/programmer: it's all about the
# little things.)
The first time I wrote
this program, I forgot
that little line that
increments the
counter. What
happened? It copied
every picture to the
same new filename…
over the previous
picture! This
effectively deleted
every picture except
for the last one to be
copied. Good thing I
always, always,
always make
backups. Because,
you know, the thing
about computers….
# Now where were we? Oh, yeah...
File.rename name, new_name
# Finally, we increment the counter.
pic_number = pic_number + 1
end
puts # This is so we aren't on progress bar line.
puts 'Done, cutie!'