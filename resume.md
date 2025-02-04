% Curriculum Vitae

## Experience

### Principal Software Development Engineer @ Microsoft

Jan 2025 - Now\
Remote

- Member of the Diagnostic Imaging Team at Microsoft Research - Health Futures
- Developing new stream-oriented medical image reconstruction framework and related infrastructure


### Senior Research Engineer @ Microsoft

Oct 2023 - Dec 2024\
Remote - Contracted by Aquent

- Member of the Biomedical Signal Processing team at Microsoft Research - Health Futures
- Contributed major features to [Yardl](https://microsoft.github.io/yardl):
    - Designed the [Schema Evolution feature](https://microsoft.github.io/yardl/cpp/evolution.html) for stream-oriented data models
    - Added full support for MATLAB code generation
- Built and released the next generation of the Magnetic Resonance Data (MRD) standard and SDKs


### Lead Engineer @ Grier Forensics

Apr 2020 - Sep 2023\
Owings Mills, MD

- 3-year tenure as member of the senior leadership team, responsible for company-wide operational initiatives and strategy
- Secured 6+ US defense contract awards as lead of Origination: Grier's research, design, and proposal development team
- Led teams of software engineers across multiple customer projects, including
    - Large-scale web data analytics
    - Tactical airborne cyber defense
    - Forensic Intelligence using AI/ML
    - Automated IoT and Industrial Control System security
    - Geospatial applications of Transfer Learning.
    - Modern email security
- Developed engineering processes and facilitated firm-wide adoption
- Planned, scheduled, designed, and implemented special projects, both internal and customer-facing


### Senior Software Engineer @ Grier Forensics

Jan 2016 - Mar 2020\
Owings Mills, MD

- Developed a large-scale (600 TB) web data collection and analysis platform
    - Designed and implemented in Scala a framework for storing and analyzing billions of web resources
    - Designed and built a distributed, high-performance web crawler using Apache Spark
- Developed components of an airborne cyber defense solution for tactical IP networks
- Developed [Great DANE](https://greatdane.io), a collection of DANE SMIMEA tools
  enabling email privacy and security using S/MIME
- Orchestrated software demos for Army, Air Force, SOCOM, and industry stakeholders


### Software Developer @ the Functional MRI Facility (NIMH/NIH)

Sep 2011 – Dec 2015\
Bethesda, MD

- Developed the [ISMRM Raw Data format](http://ismrmrd.github.io):
    - Designed and implemented unit tests for the core C/C++ library
    - Developed Python, Java, and Golang implementations/bindings of the ISMRMRD specification
    - Deployed a continuous integration solution using Travis-CI and Github
- Contributed to the [Gadgetron](http://gadgetron.github.io) Medical Image Reconstruction Framework
    - Added DICOM image generation support
    - Developed continuous integration system, tests, and scripts for retrieving test data
    - Developed methods of interoperability with Python using Boost
- Designed and implemented an image archiving application indexing 1.2 billion  MRI DICOM images
- Refactored QA analysis and visualization software for five MRI scanners using Python
- Constructed a C library for creating vendor-neutral ISMRMRD files from proprietary MRI data files
- Deployed secure, collaborative project environments using NFSv4, Kerberos and POSIX ACLs on Linux VMs


## Education

M.S. in Computer Science
:    Georgia Institute of Technology, Fall 2018


B.S. in Computer Engineering
:   University of Maryland, College Park, Summer 2011


## Publications

1. Inati, S. J., Naegele, J. D., Zwart, N. R., Roopchansingh, V., Lizak, M. J., Hansen, D. C., Liu, C.-Y., Atkinson, D., Kellman, P., Kozerke, S., Xue, H., Campbell-Washburn, A. E., Sørensen, T. S. and Hansen, M. S.
(2017). **ISMRM Raw data format: A proposed standard for MRI raw datasets.**.
Magnetic Resonance in Medicine Vol. 77(1), 411-421. doi: 10.1002/mrm.26089


## Awards

2016 Orloff Innovations Award
:   National Heart, Lung, and Blood Institute (NHLBI)

    *For developing image reconstruction software that enables deployment of high-performance MRI techniques in a clinical setting.*

2015 Distinguished Achievement Award
:   Kelly Government Solutions

    *For computing environment improvements and contributions to ISMRMRD and Gadgetron.*

2013 Distinguished Achievement Award
:   Kelly Government Solutions

    *For technical skill, enthusiasm, capacity for learning, and completion of several complex projects.*


## Projects

### Open Source Projects

I have served as a maintainer of the following projects:

- [Pingvin](https://github.com/gadgetron/pingvin):  A new, stream-oriented medical image reconstruction framework.
- [MRD2](https://ismrmrd.github.io/mrd/): The next generation Magnetic Resonance Data format.
- [Yardl](https://microsoft.github.io/yardl/): A schema language and command-line tool that generates domain types and serialization code.
- [Gadgetron](https://gadgetron.github.io/): An open source framework for medical image reconstruction.
- [ISMRMRD](https://ismrmrd.readthedocs.io/en/latest/): SDKs for the Magnetic Resonance Data (MRD) format, a vendor neutral standard for describing data from MR acquisitions and reconstructions.


### Hobby Projects From the Past

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
