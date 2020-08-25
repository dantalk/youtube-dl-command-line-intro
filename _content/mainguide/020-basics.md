
## youtube-dl and command-line basics

Hopefully by now you've been able to find and open your system shell and successfully install youtube-dl. This section will run through the simplest examples of youtube-dl, which is good enough to get you 80%-99% of its total utility, depending on your everyday work and usecases. 

And then we'll go over some basic concepts of the command-line (like, what are "flags", and the importance of whitespace), which is helpful to be acquainted with before doing more complicated youtube-dl.




### Downloading a tweeted video


https://twitter.com/dancow/status/1288678874084265985

Or if you prefer White House media: https://twitter.com/WhiteHouse/status/1286065522220716032

```sh
$ youtube-dl https://twitter.com/dancow/status/1288678874084265985
```


- What the output means
- How to list/find/open the file



### Simple shell commands and concepts


> **Note:** from here on out, when I type out shell commands, I'll typically prepend them with a dollar sign `$`, which represents the system prompt – i.e. do not copy and paste the `$` at the beginning of example commands



#### Keyboard things

- tab to autocomplete
- up to go through history
- whitespace matters!

#### Simple commands

- `open .` on macOS to open a directory
- `open file.mp4` to open a file with the dedicated app

- ls to list files
- how to cd
    - cd ~ (to get home)
    - cd ~/Desktop (to get to your desktop)
- how to mkdir


#### Make a `worky` directory

```sh
$ mkdir ~/Desktop/worky
$ cd ~/Desktop/worky
```


<a id="marker-plain-text-how" name="marker-plain-text-how"></a>

### Plain text files and editors

Elsewhere in this lesson, I'll refer to creating/writing/reading a text file, e.g. `vidlist.txt`. If you're new to the command-line and also new to programming, you might not be familiar with the concept of a **plain text editor** or **plain text** files.

It's kind of complicated, but the important thing is: Rich text editors, including word processors like Microsoft Word and macOS Pages, typically *do not* create/write/read **plain text** files in a straightforward way.

If you want to use what comes with your operating system, then use: 


- **Notepad** if you're on Windows (not sure if it's part of Win10 or if you have to get it from the [store](https://www.microsoft.com/en-us/p/windows-notepad/9msmlrh6lzf3?activetab=pivot:overviewtab)) 
- **TextEdit** on **macOS** – however, you must jump through [some annoying hoops to actually save the file](https://apple.stackexchange.com/questions/342310/how-can-one-save-a-file-as-plain-text-in-textedit) as **plain text**

**However**, I highly recommend downloading and installing a dedicated code editor – like Microsoft's free, powerful, and cross-platform Visual Studio Code, which handles plain text files and does a whole lot more. You can [download it for free at Microsoft's site](https://code.visualstudio.com/download).

If I'm showing off on stream, you'll probably see me using [Sublime Text](https://www.sublimetext.com/), which is the same kind of app as Visual Studio Code (and is also free to download, at least for trial purposes)
