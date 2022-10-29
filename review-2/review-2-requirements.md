# Bandpass filter

The company produces plugins for digital audio work stations - filters for musicians.

We need to develop a bandpass filter.

| Input | Output |
| :--- | :--- |
| 1. music track - array of frequencies<br>2. lower limit - single number  - saves the lower freq to the lower limit<br> 3. upper limit - single number - saves the upper freq to the lower limit | an array of adjusted frequencies |
| [60, 10, 45, 60, 1500], 20, 50 | [50, 20, 45, 50, 50] |
| positive non whole numbers | rounds to the closest integer (assumption) |
| negative numbers | raises errors (assumption)| 
