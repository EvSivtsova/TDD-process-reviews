# Makers 

The company is making academic math easier to read. They are using the tool scanning through papers looking for sums, which include summation, subtraction, multiplication, division. The tool extract a sum as a string and evaluates it.

We need to create a method to evalute the sum and return an array, which will consist of the sum and its resulting value. The input will be provided as a string, one at a time. The order of operations is from left to right.
<br>
<br>

| Input | Output |
| :--- | :--- |
| "1" | ["1", 1] |
| "1 + 1" | ["1 + 1", 2] |
| "1 - 1" | ["1 - 1", 0] |
| "2 / 1" | ["2 / 1", 2] |
| "2 * 2" | ["2 * 2", 4] |
| "1.5 + 1.5" | ["1.5 + 1.5", 3] |
| "-1 + 1" | ["-1 + 1", 0] |
| "1 + 1 + 1" | ["1 + 1 + 1", 3] |
| "1 + 1 * 2" | ["1 + 1 * 1", 4] |
| 1 + 1 | Argument error |
| [ 1 + 1 ] | Argument error |
| "A + 1" | A value error |
| "1 % 1" | A value error |
