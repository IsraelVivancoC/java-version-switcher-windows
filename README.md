# Java Version Switcher for Windows

This repository provides a clean and safe way to work with multiple Java (JDK) versions on Windows using JAVA_HOME and PATH. It is designed for developers who need to switch Java versions frequently without reinstalling software or modifying system-wide environment variables.

## Problem
Different projects require different Java versions:
- Legacy projects (Banking/Corporate) require Java 8.
- Modern backend services (Spring Boot 3) require Java 17.
- Latest features and experiments require Java 21.


## Solution
- Side-by-Side Installation: Keep multiple JDKs installed without conflicts.
- Session-Based Switching: Use JAVA_HOME and PATH correctly within a single terminal.
- Isolation: Switch Java versions per terminal session only.
- Stability: Avoid breaking other projects, build tools (Maven/Gradle), or IDEs.

## Requirements
- Windows 10 / 11
- winget package manager (installed by default)
- Java JDKs (Recommended: Eclipse Temurin / OpenJDK)

## Why Eclipse Temurin (Adoptium)?
You might wonder why this project uses Temurin instead of Oracle JDK or other distributions:
- Open Source and Free: It is 100% free for commercial use under the GPL license with Classpath Exception.
- High Compatibility: It passes the Java Compatibility Kit (JCK) to ensure it behaves exactly like standard Java.
- Enterprise Backing: It is managed by the Eclipse Foundation and supported by major companies like IBM, Microsoft, and Google.
- Stability: It is widely considered the most reliable "drop-in" replacement for Oracle's JDK in professional environments.

## Installing JDKs (One-time setup)
This project uses Eclipse Temurin via the Windows Package Manager. Run these commands in an Administrator terminal:

winget install --id EclipseAdoptium.Temurin.8.JDK -e
winget install --id EclipseAdoptium.Temurin.17.JDK -e
winget install --id EclipseAdoptium.Temurin.21.JDK -e

## Usage

### 1. Switch Version
Navigate to your scripts folder and run the corresponding file for your current terminal session.

#### Option A: Using PowerShell (Recommended)
Navigate to your scripts folder first:
cd "C:\path\to\your\scripts"

Run the script using dot-slash:
.\use-java.8.bat
.\use-java.17.bat
.\use-java.21.bat

#### Option B: Using Command Prompt (CMD)
Just type the name of the script:
use-java.17.bat

### 2. Verify Version
Always check the active version after switching:
java -version

Note: Closing the terminal restores your original system environment.

## Engineering Mindset: Why not use setx?
This project intentionally avoids the use of setx to prioritize environment stability.

- Using set (Current approach):
    - Affects only the current terminal session.
    - Changes are temporary and volatile.
    - Zero impact on other applications or system services.
    - Safe for daily development.

- Using setx (Global approach):
    - Modifies system-wide environment variables.
    - Changes are permanent.
    - Affects all terminals, services, and applications.
    - Can cause unexpected issues with builds and IDE configurations.

The Banking Scenario Example: Imagine working on a Legacy Bank App (Java 8) and a New Login Blueprint (Java 17) simultaneously. Using setx to switch globally might cause the legacy project to fail compilation in the background. Local control via set ensures each project environment remains isolated and correct.

## Technical Notes
- Installation Paths: Scripts assume the default installation path: C:\Program Files\Eclipse Adoptium\
- Version Matching: Adjust JDK folder names in the .bat files if your specific patch versions differ.
- JDK Only: These scripts are designed for Development Kits (JDK), not Runtime Environments (JRE).

