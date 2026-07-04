# tag-extractor.agent.md

name: tag-extractor
description: Extracts tags from impacted scenarios in feature files and writes them to a runtime file.
prompts:
- "extracttags"
  usage:
- Input: impacted scenarios list (Feature file + Scenario name) from runtime/impacted-scenarios.txt
- For each impacted scenario:
    - Open the corresponding feature file
    - Locate the scenario definition by name
    - Collect any tags (lines starting with @) directly above the scenario
    - Report results in a structured format
      response_format:
- "Feature: <feature file>"
- "  Scenario: <scenario name>"
- "    Tag: <tagname>"
  output_style: strict_multiline
  output_file: runtime/impacted-tags.txt
