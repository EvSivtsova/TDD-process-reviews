# Makers softweird spellchecker

The company produces a word processor and requested to develop a spellchecker.

The words will be evaluated against words in a word bank, which will be created by the company separately.

| Input | Output |
| :--- | :--- |
| string, single sentence at a time | same sentence with ~ on each size on a misspelled word |
| "These words are spnelt correclty" | "These words are ~spnelt~ ~correclty~" |
| empty string | empty string| 
| "" | ""| 
| word bank | represents correct spelling. no return value |
| no digits, no special symbols | no need to test for non letters |
