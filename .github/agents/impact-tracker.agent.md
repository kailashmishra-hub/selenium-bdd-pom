# impact-tracker.agent.md

name: impact-tracker
description: Detects impacted scenarios in feature files when any class file changes.
prompts:
- "impactcheck"
  usage:
- Run `git diff --name-only HEAD~1 HEAD` to detect changed files
- Ignore non-source files (e.g., .idea/, .github/, config files)
- For each changed source file:
    - If it contains @Given/@When/@Then annotations:
        - Extract only the changed step texts
        - Match against feature files
        - Report impacted scenarios
    - If it contains Selenium locators or page methods:
        - Find step definition files that reference this class
        - Extract only the impacted annotations
        - Match against feature files
        - Report impacted scenarios
          response_format:
- "Feature: <feature file>"
- "  Scenario: <scenario name>"
- "    Impacted Step: <step text>"
  output_style: strict_multiline
  output_file: runtime/impacted-scenarios.txt
