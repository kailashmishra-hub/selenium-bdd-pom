Class: org.example.App
======================

Source
------
- Path: src/main/java/org/example/App.java

Purpose
-------
A minimal Java application entry point. Prints "Hello World!" to standard output.

Constructors
------------
- (implicit) public App() - default no-arg constructor (not explicitly defined in source)

Methods
-------
- public static void main(String[] args)
  - Signature: public static void main(java.lang.String[] args)
  - Description: Program entry point. Prints a single line to stdout.
  - Example usage from command line after building the project:
    - mvn package
    - java -cp target/GHCP-1.0-SNAPSHOT.jar org.example.App

Source snippet
--------------
public class App {
    public static void main( String[] args ) {
        System.out.println( "Hello World!" );
    }
}

Notes
-----
- This class is suitable as a placeholder for demo purposes. Replace or extend it to implement real application logic.
- No external dependencies are required for this class beyond the JDK.
