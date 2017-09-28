% Resume

## Experience

Senior Software Engineer | Jan 2016 - Now | Grier Forensics, LLC | Garrison, MD

- Developed a large-scale (80 TB) web data collection and analysis platform
- Developed [Great DANE](https://greatdane.io), a collection of DANE SMIMEA tools
  enabling email privacy and security using S/MIME.
    - Cross-platform integration server (Great DANE Engine)
    - Thunderbird Add-On (Great DANE for Thunderbird)
    - Identity-Management and DNS integration (Great DANE Connector)
- Brought an in-house advanced forensics acceleration system to market

Software Developer | Sep 2011 – Dec 2015 | Functional MRI Facility (NIMH/NIH) | Bethesda, MD

- Developed the [ISMRM Raw Data format](http://ismrmrd.github.io):
    - Wrote unit tests for the core C/C++ library
    - Developed Python, Java, and Golang implementations/bindings of the ISMRMRD specification
    - Deployed a continuous integration solution using Travis-CI and Github
- Contributed to [Gadgetron](http://gadgetron.github.io), an open source medical image reconstruction framework:
    - Added support for creation of DICOM images
    - Developed integration tests and scripts for retrieving test data
    - Maintained Buildbot continuous integration servers
    - Developed methods of interoperability with Python using Boost
    - Contributed to API documentation
- Designed and implemented an image archiving application which currently indexes 1.2 billion online MRI DICOM images
- Refactored QA analysis and visualization software for five MRI scanners, primarily using Python
- Wrote a C library to interface with a proprietary MRI raw data file format in order to create vendor-neutral ISMRMRD files
- Deployed secure, shared project environments using NFSv4, Kerberos and POSIX ACLs on Linux VMs

## Education

M.S. in Computer Science | Georgia Institute of Technology | Current

> Focus on high-performance computing and information security

B.S. in Computer Engineering | University of Maryland, College Park | Summer 2011

> Focus on operating systems and embedded development

## Publications

Inati, S. J., Naegele, J. D., Zwart, N. R., Roopchansingh, V., Lizak, M. J., Hansen, D. C., Liu, C.-Y., Atkinson, D., Kellman, P., Kozerke, S., Xue, H., Campbell-Washburn, A. E., Sørensen, T. S. and Hansen, M. S.
(2016), **ISMRM Raw data format: A proposed standard for MRI raw datasets.**
Magn Reson Med. doi: 10.1002/mrm.26089


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
