% Resume

## Experience

Senior Software Engineer | Jan 2016 - Now | Grier Forensics, LLC | Garrison, MD


Software Developer | Sep 2011 – Dec 2015 | Functional MRI Facility (NIMH/NIH) | Bethesda, MD

- Contributed to the [ISMRM Raw Data format](ismrmrd.github.io):
    - Wrote unit tests for the core C/C++ library
    - Developed Python, Java, and Golang implementations/bindings of the ISMRMRD specification
    - Fixed bugs found by static analysis (Clang `scan-build`) and Valgrind
    - Deployed a continuous integration solution using Travis-CI and Github
- Contributed to [Gadgetron](gadgetron.github.io), an open source medical image reconstruction framework:
    - Added support for creation of DICOM images
    - Developed integration tests and scripts for retrieving test data
    - Maintained buildbot continuous integration servers
    - Developed methods of interoperability with Python using Boost
    - Contributed to API documentation
- Designed and implemented an image archiving application which currently indexes 1.2 billion online MRI DICOM images
- Refactored QA analysis and visualization software for five MRI scanners, primarily using Python
- Wrote a C library to interface with a proprietary MRI raw data file format in order to create vendor-neutral ISMRMRD files
- Deployed secure, shared project environments using NFSv4, Kerberos and POSIX ACLs on Linux VMs

## Education

M.S. in Computer Science | Georgia Institute of Technology | Current

B.S. in Computer Engineering | University of Maryland, College Park | Summer 2011

> Focus on operating systems and embedded development

## Awards

2013 Distinguished Achievement Award – Kelly Government Solutions

> For technical skill, enthusiasm, capacity for learning, and completion of several complex projects.

2015 Distinguished Achievement Award - Kelly Government Solutions

> For computing environment improvements and contributions to ISMRMRD and Gadgetron.

## Technical Qualifications

### Languages
C++, C, Python, Go, Scala, Java, SQL, Haskell, Rust, Javascript, HTML, x86/PIC/MIPS assembly

### Tools
Git, GCC/Clang, LLVM, CMake, Vim, IntelliJ, Eclipse, GDB, Valgrind, Bison, Flex, QEMU

### Interests
Programming language and compiler design
:   compiler/interpreter construction, garbage collection, optimization

Operating systems
:   multitasking, scheduling, memory management, file systems

Modern computing
:   distributed systems, machine learning, concurrency

### Personal Projects

[Luci](http://josephnaegele.com/luci) - a lightweight programming language

- Imperative, dynamically-typed, bytecode-compiled
- Automatic memory management via garbage collection

[DuneOS](https://github.com/naegelejd/duneOS) - simple x86 Unix-like operating system

- Multitasking with preemptive scheduling
- Virtual memory, virtual file system

[BreweryDB for Go](https://github.com/naegelejd/brewerydb) - Go library for the [BreweryDB web API](http://www.brewerydb.com)

- Fully-featured bindings to entire API
- Extensive test coverage

[Go ACLs](https://github.com/naegelejd/go-acl) - Go bindings to POSIX Access Control Lists

- Full POSIX ACL API
- Go implementations of `getfacl` and `setfacl` tools

[Nolli](https://github.com/naegelejd/nolli) - a prototype embeddable, statically-typed programming language

- Fully re-entrant
- Zero dependencies

[Thruput](https://github.com/naegelejd/thruput) - a TCP/UDP network throughput measurement tool

- Offers the ability to measure with multiple, concurrent client connections
- Linux, Windows, OS X interoperability
