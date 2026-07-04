# tag-extractor.agent.md

name: tag-extractor
description: Extracts tags from impacted scenarios in feature files and outputs them clearly.
prompts:
- "extracttags"
  usage:
- Input: impacted scenarios list (Feature file + Scenario name)
- For each impacted scenario:
    - Open the corresponding feature file
    - Locate the scenario definition
    - Collect any tags (lines starting with @) above the scenario
    - Report results in a structured format
      response_format:
- "Feature: <feature file>"
- "  Scenario: <scenario name>"
- "    Tag: <tagname>"
  output_style: multiline
