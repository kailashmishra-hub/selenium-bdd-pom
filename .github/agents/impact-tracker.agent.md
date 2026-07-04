# impact-tracker.agent.md

name: impact-tracker
description: Detects which scenarios in feature files are affected by changes in any class file.
prompts:
- "impactcheck"
  usage:
- Run `git diff --name-only HEAD~1 HEAD` to detect changed files
- For each changed file:
    - If it contains @Given/@When/@Then annotations:
        - Extract step texts
        - Match against feature files
        - Report impacted scenarios
    - If it contains Selenium locators or page methods:
        - Find step definition files that reference this class
        - Extract their annotations
        - Match against feature files
        - Report impacted scenarios
    - If it is a utility/helper file:
        - Trace which Page Objects or Step Definitions import/use it
        - Cascade impact down to scenarios
          response_format:
- "Changed file: <filename>"
- "Impacted scenarios:"
- "Feature: <feature file> | Scenario: <scenario name> | Step: <step text>"
