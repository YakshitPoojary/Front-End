var branchObject = {
    "Computer Science": {
      "Integral Transform and Vector Calculus": ["Laplace Transform", "Fourier Series", "Z-Transform", "Vector Differentiation","Vector Integration"],
      "Data Structure": ["Introduction to Data Structures", "Linear data structures: Linked List, Stack and Queue", "Non-linear data structures: Tree and Graph ", "Set, Map and Dictionary","Searching and Sorting"],
      "Computer Organization & Architecture": ["Structure of a Computer System", "Arithmetic and Logic Unit", "Central Processing Unit", "Memory Organization","I/O Organization","Multiprocessor Configurations"],
      "Object Oriented Programming Methodology"  :["Fundamentals of Object oriented Programming"," Class, Object, Method and Constructor","Arrays String and vectors","Inheritance and Interface","Class Diagram","Exception Handling & Packages, Multithreading"],
      "Discrete Mathematics":["Set Theory","Logic","Relations, Digraphs","Posets and Lattice","Functions and Pigeon Hole Principle","Graphs and Subgraphs","Algebraic Structures"], 
      "Probability, Statistics and Optimization Techniques":["Probability and Probability Distribution","Correlation and Regression","Sampling Theory","Optimization Techniques","Queuing Theory"], 
      "Analysis of Algorithms":["Introduction to analysis of algorithm","Greedy Technique","String Matching Algorithms","Non-deterministic Polynomial Algorithms"], 
      "Relational Database Management Systems":["Introduction To RDBMS","Data Modeling: Enhanced-Entity-Relationship Model and Relational Data Model","Relational Algebra and Structured Query Language (SQL)","Query Processing and optimization","Relational–Database Design","Transaction Management, Concurrency control and Recovery protocols"], 
      "Theory of Automata with Compiler Design":["Finite Automata","Regular Languages","Context Free Grammars","Push Down Automata","Turing Machine","Un-decidability and Recursively Enumerable Languages"], 
      "Honours":["Module 1","Module 2","Module 3","Module 4","Module 5","Module 6"]
      
      

    },
    "Information Technology": {
      "Discrete and Applied Mathematics": ["Laplace Transform", "Fourier Series", "Relations and Functions","Algebraic Structure","Graph Theory"],
      "Data Structure": ["Introduction to Data Structures", "Linear data structures: Linked List, Stack and Queue", "Non-linear data structures: Tree and Graph ", "Set, Map and Dictionary","Searching and Sorting"],
      "Database Management Systems":["Database concepts and Systems","Database Models and SQL","Relational Database Design","Indexing, Hashing , Query processing and Optimization","Transactions, Concurrency control and Recovery system"], 
      "Digital Systems":["Number Systems, Codes, Logic gates and Simplification Techniques","Combinational Logic Design","Sequential Logic Design","Functional Units of Digital Systems","Introduction to Microprocessors"],
      "Data Communication and Networking":["Introduction to DCN","The Application Layer","The Transport Layer","The Network Layer","The Data Dink Layer & Physical layer (Host layer)"],
      "Probability, Statistics and Optimization Techniques":["Probability and Probability Distribution","Correlation and Regression","Sampling Theory","Optimization Techniques","Queuing Theory"], 
      "Information Theory and Coding":["Basics of Information Theory","Source Codes","Error Control Code :Linear block code","Error Control Code: Cyclic code and Convolution code","Basics of Number Theory and Cryptography"],
      "Analysis of Algorithms":["Introduction to Algorithms","Analysis of Basic Algorithms","Greedy Algorithms and Dynamic Programming","Backtracking and Branch and Bound Algorithms","Computability Theory"],
      "Advanced Databases":["Parallel and Distributed Databases","Object Based, Spatial Databases and NOSQL Databases","Introduction to Data Warehousing and multi-dimensional Modeling","ETL Process","Online analytical processing (OLAP)"],
      "Competitive Programming Laboratory":["Best practices for Competitive programing","Optimization of Data Structures and Algorithms","Strings, Arithmetic and Algebra operations","Graphs","Computational Geometry"],
      "Web Programming Laboratory":["Introduction to web technologies","Web Page Creation with HTML 5 and CSS3","Introduction to XML","Working with JavaScript and JSON","Introduction to ReactJS"],
    },

    "Electronics":{
      "":["","","","",""],
      "":["","","","",""],
      "":["","","","",""],
      "":["","","","",""],
      "":["","","","",""],
      "":["","","","",""],
      "":["","","","",""],
      "":["","","","",""],
      "":["","","","",""],

    },
    "Mechanical":{
      "":["","","","",""],
      "":["","","","",""],
      "":["","","","",""],
      "":["","","","",""],
      "":["","","","",""],
      "":["","","","",""],
      "":["","","","",""],
      "":["","","","",""],


    },
    "Electronics And Telecommunication":{
      "Mathematics for Communication Engineering - I":["Laplace Transform","Fourier Series","Bessel Functions","Vector Differentiation","Vector Integration"],
      "Basic Electronic Circuits":["Diode Applications","Bipolar Junction Transistor (BJT)","Field Effect Transistors (FET)","BJT Amplifiers","FET Amplifiers"],
      "Digital Logic Design":["Fundamentals of digital design","Combinational Logic Circuits","Sequential Logic Circuits","Finite state Machines","Data Convertors"],
      "Microprocessor and Microcontroller":["Architecture of 8086","Instruction set and programming of 8086","8051 Microcontroller","Timers, Serial Communication and Interrupts","8051 peripheral interfacing"],
      "Electrical Network Theory":["Network Analysis","Transient response of R-L, R-C, R-L-C circuits","Two port networks (Z,Y.ABCD and Hybrid Parameters)","Network functions and Synthesis","Passive Filters"],
      "Data Structures and Analysis of Algorithms Laboratory":["Introduction","Linked Lists","Stack and Queue","Non-linear Data Structures","Search and sort"],
   
      "Mathematics for Communication Engineering - II":["Linear algebra: Vector Spaces","Complex Integration","Probability and Statistics","Optimization Techniques"],
      "Analog Electronics":["Frequency Response of BJT and MOSFET Amplifiers","Biasing Techniques for Integrated Circuits","Fundamentals of Operational Amplifier","BJT Power amplifier","Oscillator Circuits"],
      "Communication Systems":["Fundamentals of Electronic Communication Systems","Amplitude Modulation and Demodulation","Basic Features of Angle Modulation and Demodulation","Radio Receivers","Pulse Modulation and Demodulation"],
      "Signals and Systems":["Continuous Time (CT) and Discrete Time (DT) Signals","Time Domain Analysis of Continuous Time and Discrete Time Systems","Random Signals","Signal Representation in Frequency Domain","System Representation in Frequency Domain"],
      "Electromagnetic Field Theory":["Electrostatics","Magnetostatics","Maxwell’s equations","Electromagnetic Wave","Applications"],
      "Hardware Description Language Laboratory":["Introduction to programmable logic Devices","Introduction to VHDL / Verilog","Combinational Circuits","Sequential Circuits","Finite State Machines"],

    }
  }
  window.onload = function() {
    var branchSel = document.getElementById("branch");
    var subjectSel = document.getElementById("subject");
    var moduleSel = document.getElementById("module");
    for (var x in branchObject) {
      branchSel.options[branchSel.options.length] = new Option(x, x);
    }
    branchSel.onchange = function() {
    //empty Chapters- and Topics- dropdowns
    moduleSel.length = 1;
    subjectSel.length = 1;
      //display correct values
      for (var y in branchObject[this.value]) {
        subjectSel.options[subjectSel.options.length] = new Option(y, y);
      }
    }
    subjectSel.onchange = function() {
    //empty Chapters dropdown
     moduleSel.length = 1;
      //display correct values
      var z = branchObject[branchSel.value][this.value];
      for (var i = 0; i < z.length; i++) {
        moduleSel.options[moduleSel.options.length] = new Option(z[i], z[i]);
      }
    }
  }