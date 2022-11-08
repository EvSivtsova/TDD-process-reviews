Academic math easier to read

Scanning through papers looking for sums/subtraction/mult/div
Extracts as a string and evaluates it 
find the answer to the sum - resulting value
Outputs the sum and the result

Given "1 + 1" => ["1 + 1", 2]
Given "1 + 1 * 2" => ["1 + 1", 4]


| Input | Output |
------
| a sum / arithmetical operation | the operation and result |
| One String at a time | Array: string index 0, integer/floats |
| negatives, floating value | |
| multiple values | accepted |

| Not string | Argument error |
| if not num | A value error |
| if not accepted operations | A value error |

| "1 + 1" | ["1 + 1", 2] |
| "1 + 1 * 2" | ["1 + 1", 4] |