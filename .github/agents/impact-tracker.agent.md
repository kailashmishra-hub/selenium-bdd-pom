# impact-tracker.agent.md

name: impact-tracker
description: Detects which scenarios in feature files are affected by changes in step definitions.
prompts:
- "impactcheck"
  usage:
- Run `git diff --name-only HEAD~1 HEAD` to detect changed files
- For each changed `Steps.java` file:
    - Extract @Given/@When/@Then annotations
    - Match those step texts against steps in feature files
    - Report impacted scenarios with feature file + scenario name
      response_format:
- "Changed class: <file>"
- "Impacted scenarios:"
- "Feature: <feature file> | Scenario: <scenario name> | Step: <step text>"
