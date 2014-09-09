% Joseph Naegele

About
=====

I am a computer engineer employed by the Functional MRI Facility at the
National Institutes of Mental Health. My work consists of website development,
database design, development of medical image reconstruction software,
and construction of various end-user command-line tools.

In my spare time I  enjoy working on programming language design and runtime
implementations. I also like learning new programming languages, experimenting
with embedded systems, and customizing my shell/editor/etc.

I also enjoy day hikes with my wife and our dog.

Resume
======

Experience
----------

Computer Programmer | Sept 2011 – Now | Kelly Gov't Solutions, FMRIF/NIH | Bethesda, MD

- Contributed to the ISMRM Raw Data format (ismrmrd.sf.net)
- Contributed to the Gadgetron Medical Image Reconstruction Framework (gadgetron.sf.net)
- Re-factored QA analysis and visualization software for five MRI scanners
- Constructed an image archival application to index 1.2 billion online DICOM images
- Developed a C library to interface multiple versions of a proprietary GE file format.

Education
---------

B.S. in Computer Engineering | University of Maryland, College Park | Summer 2011

- Expanded upon the GeekOS Operating System

    Implemented background processes, signals, system calls,
    thread synchronization, virtual memory, virtual file system,
    and the GeekOS file system

- Developed a mock-weather station using a PIC microprocessor (PIC assembly)

    Reports temperature, wind velocity reporting and serial communication

Awards
------

2013 Distinguished Achievement Award – Kelly Government Solutions

> For technical skill, enthusiasm, capacity for learning, and completion of several complex projects.

Technical Qualifications
------------------------

### Languages
C, Python, C++, Go, Java, SQL, Haskell, x86/PIC/MIPS assembly

### Interests
Programming language design
:   compiler/interpreter construction, garbage collection, optimization

Operating systems
:   multitasking, scheduling, memory management, file systems

### Personal Projects

[Luci](http://josephnaegele.com/luci) – a lightweight programming language

- Imperative, dynamically-typed, bytecode-compiled
- Automatic memory management via garbage collection

[Nolli](https://github.com/naegelejd/nolli) - an embeddable, statically-typed programming language

- Fully re-entrant
- No dependencies

[DuneOS](https://github.com/naegelejd/duneOS) – simple x86 Unix-like operating system

- Multitasking with preemptive scheduling
- Virtual memory, virtual file system


Links
=====

### Programming

- [C programming tips](http://www.pgbovine.net/c-programming-tips.htm)
- [The "Clockwise/Spiral" Rule (C)](http://c-faq.com/decl/spiral.anderson.html)
- [Cello - Higher level programming in C](http://libcello.org/)
- [How to use `dlopen` in C++](http://tldp.org/HOWTO/C++-dlopen/)
- [Learn You a Haskell for Greater Good](http://learnyouahaskell.com/)
- [Real World Haskell](http://book.realworldhaskell.org/)
- [GC FAQ](http://www.iecc.com/gclist/GC-faq.html)

### Languages

- [io](http://iolanguage.org)
- [lua](http://www.lua.org)
- [julia](http://julialang.org)

### Tools

- [Graphical VIM cheatsheet](http://www.viemu.com/vi-vim-cheat-sheet.gif)
- [oh my zsh](http://ohmyz.sh/)
- [Valgrind](http://valgrind.org/docs/manual/quick-start.html)
- [GDB cheatsheet (PDF)](http://darkdust.net/files/GDB%20Cheat%20Sheet.pdf)
- [Git branching model](http://nvie.com/posts/a-successful-git-branching-model/)
- [Detach subdirectory into separate Git repository](http://stackoverflow.com/questions/359424/detach-subdirectory-into-separate-git-repository)

### OS Development

- [Bona Fide OS Developer](http://www.osdever.net/tutorials/view/writing-a-simple-c-kernel)
- [Broken Thorn OS Dev Tutorials](http://www.brokenthorn.com/Resources/OSDevIndex.html)
- [The Operating System Resource Center](http://www.nondot.org/sabre/os/articles)
- [The little book about OS development](http://littleosbook.github.io/)
- [JamesM's kernel development tutorials](http://www.jamesmolloy.co.uk/tutorial_html/index.html)

### Blogs

- [Eli Bendersky](http://eli.thegreenplace.net/)
- [Russ Cox](http://research.swtch.com/)
- [Philip J. Guo](http://www.pgbovine.net/intro.htm)

### Art

- [Khang Le](http://khang-le.com/)
- [Robh Ruppel](http://www.robhruppel.com/)
- [Dead End Thrills](http://deadendthrills.com/)

Snippets
========

C++ compilers will often spit out warnings for template errors multiple times
per header. This dumb Haskell tool filters unique warnings.

```haskell
-- Pass Clang/GCC output through this tool to find all unique warnings
import Data.List (nub)

main = interact findWarnings
    where findWarnings = unlines . nub .
              filter (\x -> elem "warning:" $ words x) . lines
```
