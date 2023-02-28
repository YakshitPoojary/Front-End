var branchObject = {
    "Computer Science": {
      "Integral Transform and Vector Calculus": ["Laplace Transform", "Fourier Series", "Z-Transform", "Vector Differentiation","Vector Integration"],
      "Data Structure": ["Introduction to Data Structures", "Linear data structures: Linked List, Stack and Queue", "Non-linear data structures: Tree and Graph ", "Set, Map and Dictionary","Searching and Sorting"],
      "Computer Organization & Architecture": ["Structure of a Computer System", "Arithmetic and Logic Unit", "Central Processing Unit", "Memory Organization","I/O Organization","Multiprocessor Configurations"],
      "Object Oriented Programming Methodology"  :[],
      "Discrete Mathematics":[], 
      "Probability, Statistics and Optimization Techniques":[], 
      "Analysis of Algorithms":[], 
      "Relational Database Management Systems":[], 
      "Theory of Automata with Compiler Design":[], 
      "Mini Project":[], 
      

    },
    "Information Technology": {
      "PHP": ["Variables", "Strings", "Arrays"],
      "SQL": ["SELECT", "UPDATE", "DELETE"],
      "":[], 
      "":[], 
    },
    "Mechanical":{

    },
    "Electronics":{

    },
    "Telecommunication":{

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