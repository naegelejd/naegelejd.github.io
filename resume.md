% Resume

## Experience

<!-- **Lead Engineer**\ -->

### Lead Engineer @ Grier Forensics

Apr 2020 - Now\
Owings Mills, MD

- Led a team of five software engineers across multiple customer projects, involving
    - Airborne Cyber Defense through Packet Level Non-Repdudiation (PLNR)
    - Offline, Anonymous Internet access
    - Cyber Security Appliances for Industrial Control (SCADA) Systems
    - Rapid Forensic Device Imaging
- Developed engineering processes and facilitated firm-wide adoption
- Planned, scheduled, and designed special projects, both internal and customer-facing


### Senior Software Engineer @ Grier Forensics

Jan 2016 - Mar 2020\
Owings Mills, MD

- Developed a large-scale (800 TB) web data collection and analysis platform
- Developed [Great DANE](https://greatdane.io), a collection of DANE SMIMEA tools
  enabling email privacy and security using S/MIME.
    - Cross-platform integration server (Great DANE Engine)
    - Thunderbird Add-On (Great DANE for Thunderbird)
    - Identity-Management and DNS integration (Great DANE Connector)
- Brought an in-house advanced forensics acceleration system to market


### Software Developer @ the Functional MRI Facility (NIMH/NIH)

Sep 2011 – Dec 2015\
Bethesda, MD

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

M.S. in Computer Science
:    Georgia Institute of Technology, Fall 2018

    *High-performance computing and information security focus*

B.S. in Computer Engineering
:   University of Maryland, College Park, Summer 2011

    *Operating systems and embedded development focus*

## Publications

1. Inati, S. J., Naegele, J. D., Zwart, N. R., Roopchansingh, V., Lizak, M. J., Hansen, D. C., Liu, C.-Y., Atkinson, D., Kellman, P., Kozerke, S., Xue, H., Campbell-Washburn, A. E., Sørensen, T. S. and Hansen, M. S.
(2016), **ISMRM Raw data format: A proposed standard for MRI raw datasets.**
Magn Reson Med. doi: 10.1002/mrm.26089


## Awards

Distinguished Achievement Award
:   Kelly Government Solutions, 2013

    *For technical skill, enthusiasm, capacity for learning, and completion of several complex projects.*

Distinguished Achievement Award
:   Kelly Government Solutions, 2015

    *For computing environment improvements and contributions to ISMRMRD and Gadgetron.*

## Technical Qualifications

### Languages

C++, C, Python, Go, Scala, Java, SQL, Haskell, Rust, Javascript, HTML, x86/PIC/MIPS assembly

### Tools

Git, GCC/Clang, LLVM, CMake, Vim, IntelliJ, Eclipse, GDB, Valgrind, Bison, Flex, QEMU

### Interests

Language/Compiler Design
:   Compiler/Interpreter Construction, Garbage Collection, Optimization

Operating Systems
:   Multitasking, Scheduling, Memory Management, File Systems

Modern Computing
:   Distributed Systems, Machine Learning, Concurrency

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
