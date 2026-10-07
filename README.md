PROLOG LAB

A collection of Prolog programs developed as part of Artificial Intelligence and Prolog laboratory exercises. This repository demonstrates the use of declarative programming, logical reasoning, recursion, backtracking, list processing, search algorithms, and state-space problem solving using SWI-Prolog.


ABOUT THE REPOSITORY

Prolog is a logic programming language widely used in Artificial Intelligence for knowledge representation, automated reasoning, and problem solving. Instead of specifying every step of a solution, Prolog programs describe facts, rules, relationships, and constraints, allowing the Prolog inference engine to derive solutions through unification and backtracking.

This repository contains a set of practical Prolog programs that demonstrate fundamental concepts and classical Artificial Intelligence problems.


OBJECTIVES

• To understand the fundamentals of Prolog programming.
• To represent knowledge using facts and rules.
• To understand logical inference and querying.
• To practice recursion and backtracking.
• To work with lists and nested lists.
• To implement graph traversal techniques.
• To solve classical Artificial Intelligence problems.
• To understand state-space representation and search.
• To apply constraint-based problem solving using Prolog.


EXPERIMENTS


1. FAMILY RELATIONSHIP

FILE: family.pl

This program represents family relationships using Prolog facts and rules. It demonstrates how relationships can be represented as knowledge and how Prolog can infer new relationships from existing facts and rules.

CONCEPTS COVERED:

• Facts
• Rules
• Variables
• Logical relationships
• Query processing
• Inference


2. BREADTH-FIRST SEARCH

FILE: bfs.pl

This program implements Breadth-First Search (BFS) to find a path between nodes in a graph. BFS explores nodes level by level and is useful for finding paths in an unweighted graph.

CONCEPTS COVERED:

• Graph representation
• Breadth-First Search
• Queue-based traversal
• Path finding
• Search strategies


3. DEPTH-FIRST SEARCH

FILE: dfs.pl

This program implements Depth-First Search (DFS) for traversing a graph and finding paths between nodes. DFS explores one branch as deeply as possible before backtracking.

CONCEPTS COVERED:

• Graph traversal
• Depth-First Search
• Recursion
• Backtracking
• Path finding


4. FLATTEN A LIST

FILE: Flatten.pl

This program converts a nested list into a single-level list. It demonstrates recursive list processing and the use of list operations in Prolog.

EXAMPLE:

Input:

[1,[2,3],[4,[5,6]]]

Output:

[1,2,3,4,5,6]

CONCEPTS COVERED:

• Lists
• Nested lists
• Recursion
• List processing
• append/3
• Pattern matching


5. MONKEY AND BANANA PROBLEM

FILE: monkeybanana.pl

The Monkey and Banana problem is a classical Artificial Intelligence problem. The program represents different states of the environment and determines a sequence of actions that allows the monkey to obtain the bananas.

The problem demonstrates how an AI system can represent states and move from one state to another using predefined rules.

CONCEPTS COVERED:

• State-space representation
• Artificial Intelligence problem solving
• State transitions
• Rules
• Logical reasoning
• Search


6. N-QUEENS PROBLEM

FILE: nqueens.pl

The N-Queens problem involves placing N queens on an N × N chessboard so that no two queens attack each other.

The Prolog implementation uses logical constraints and backtracking to find valid arrangements of queens.

CONCEPTS COVERED:

• Constraint solving
• Backtracking
• Recursion
• Lists
• Logical constraints
• Combinatorial problem solving


7. WATER JUG PROBLEM

FILE: waterjug.pl

The Water Jug problem is a classical state-space search problem. The program represents different states of the water jugs and applies valid operations to reach the required goal state.

CONCEPTS COVERED:

• State-space search
• State representation
• Logical rules
• Search
• Problem solving
• Backtracking


8. PROLOG PROJECT

FILE: project.pl

This file contains the Prolog-based project developed as part of the laboratory work. It demonstrates the application of Prolog concepts to an Artificial Intelligence problem.

CONCEPTS COVERED:

• Knowledge representation
• Facts and rules
• Logical inference
• Query processing
• Problem solving


TECHNOLOGIES USED

• Prolog
• SWI-Prolog
• Visual Studio Code
• Git
• GitHub


PROLOG CONCEPTS DEMONSTRATED

The programs in this repository cover several important Prolog concepts.

FACTS

Facts represent information that is known to be true.

Example:

parent(john, mary).


RULES

Rules define relationships or conditions based on existing facts.

Example:

grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).


QUERIES

Queries are used to ask Prolog questions about the knowledge base.

Example:

parent(john, mary).


VARIABLES

Variables allow Prolog to find unknown values.

Example:

parent(X, mary).


RECURSION

Recursion is used in several programs for repeatedly processing data or solving problems.


BACKTRACKING

Prolog automatically explores alternative solutions when a previous solution fails or when more solutions are requested.


LISTS

Lists are used extensively for storing and processing collections of values.

Example:

[apple, banana, orange]


UNIFICATION

Unification allows Prolog terms and variables to be matched to determine whether they can represent the same structure.


SEARCH

Search techniques such as BFS and DFS are used to explore possible paths and states.


REPOSITORY STRUCTURE

prolog-lab/
│
├── Flatten.pl
├── bfs.pl
├── dfs.pl
├── family.pl
├── monkeybanana.pl
├── nqueens.pl
├── project.pl
├── waterjug.pl
└── README.md


HOW TO RUN

STEP 1: INSTALL SWI-PROLOG

Install SWI-Prolog on your system.


STEP 2: OPEN THE PROJECT FOLDER

Open the repository folder in Visual Studio Code or navigate to it using the terminal.

Example:

C:\Users\princ\prolog


STEP 3: START SWI-PROLOG

Open SWI-Prolog from the terminal or application.


STEP 4: LOAD A PROGRAM

A Prolog file can be loaded using:

[filename].

For example:

[bfs].

Alternatively:

consult('bfs.pl').


STEP 5: EXECUTE A QUERY

After loading the file, execute the appropriate predicate defined in that program.

For example:

bfs(a, z, Path).

The exact query depends on the implementation of each experiment.


USEFUL SWI-PROLOG COMMANDS

LOAD A FILE

[filename].


CONSULT A FILE

consult('filename.pl').


DISPLAY A PREDICATE

listing(predicate).

Example:

listing(bfs).


FIND MORE SOLUTIONS

Use:

;

after a result to ask Prolog for another possible solution.


EXIT SWI-PROLOG

halt.


LEARNING OUTCOMES

By completing these programs, the following skills and concepts are developed:

• Understanding logic programming
• Writing Prolog facts and rules
• Creating and executing queries
• Working with variables and predicates
• Processing lists
• Using recursion
• Understanding backtracking
• Applying unification
• Implementing search algorithms
• Representing problems using states
• Solving classical Artificial Intelligence problems
• Understanding constraint-based problem solving
• Developing logical reasoning skills


APPLICATIONS

The concepts demonstrated in this repository are useful in areas such as:

• Artificial Intelligence
• Knowledge Representation
• Expert Systems
• Automated Reasoning
• Natural Language Processing
• Constraint Solving
• Search and Optimization
• Symbolic Computation
• Intelligent Problem Solving


DEVELOPMENT ENVIRONMENT

LANGUAGE: Prolog

INTERPRETER: SWI-Prolog

IDE/EDITOR: Visual Studio Code

VERSION CONTROL: Git and GitHub

OPERATING SYSTEM: Windows

REPOSITORY PURPOSE

This repository is maintained as a collection of academic Prolog laboratory exercises and practical implementations. It provides examples of fundamental Prolog programming techniques and demonstrates how logical reasoning and search can be applied to Artificial Intelligence problems

