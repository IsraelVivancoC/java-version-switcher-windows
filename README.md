# Java Version Switcher for Windows

This repository provides a clean and safe way to work with multiple
Java (JDK) versions on Windows using `JAVA_HOME` and `PATH`.

It is designed for developers who need to switch Java versions
frequently without reinstalling Java or modifying system-wide
environment variables.

---

## Problem

Different projects require different Java versions:

- Legacy projects → Java 8  
- Modern backend services → Java 17  
- Latest features and experiments → Java 21  

Reinstalling Java or using virtual machines just to change the JDK
is inefficient and error-prone.

---

## Solution

- Install multiple JDKs side by side
- Use `JAVA_HOME` and `PATH` correctly
- Switch Java versions **per terminal session**
- Avoid breaking other projects or IDEs

This repository provides simple scripts to do exactly that.

---

## Requirements

- Windows 10 / 11
- `winget` package manager
- Java JDKs installed (recommended: Eclipse Temurin)

---

## Installing JDKs (one-time setup)

This project uses **Eclipse Temurin (OpenJDK)**.

Install Java 8, 17 and 21 using `winget`:

```bat
winget install --id EclipseAdoptium.Temurin.8.JDK -e
winget install --id EclipseAdoptium.Temurin.17.JDK -e
winget install --id EclipseAdoptium.Temurin.21.JDK -e

Usage

Switch to Java 17 for the current terminal session:

scripts\use-java-17.bat


Verify the active version:

java -version


Switch to another version at any time:

scripts\use-java-8.bat
scripts\use-java-21.bat


Each script overrides the previous Java version only in the current terminal.

Closing the terminal restores the original environment.

Why not use setx?

This project intentionally avoids using setx to change JAVA_HOME.

set vs setx on Windows
Using set
set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-17.0.x


Affects only the current terminal session

Changes are temporary

Does not modify system-wide variables

Safe for daily development

Does not impact other projects or IDEs

Using setx
setx JAVA_HOME "C:\Program Files\Eclipse Adoptium\jdk-17.0.x" /M


Modifies system-wide environment variables

Affects all terminals and projects

Requires administrator privileges

Changes apply only after opening a new terminal

Can cause unexpected issues with builds or IDEs

Real-world example

Imagine working on two projects:

Project A → Java 8

Project B → Java 17

Running:

setx JAVA_HOME C:\Program Files\Eclipse Adoptium\jdk-17.0.x


May result in:

Project A failing to compile

Maven or Gradle build errors

IDEs using the wrong JDK

Hard-to-debug environment issues

This scenario is common in real development environments.

Engineering mindset

Global environments should remain stable.
Development changes should be local and reversible.

For this reason:

set is recommended for daily development

setx should be used only when a permanent system change is fully intentional

Notes

Scripts assume standard installation paths

Adjust JDK folder names if your versions differ

Only JDKs are supported (not JRE)
