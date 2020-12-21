# Band Pass Filter

Company makes digital audio workstation plugins
- Musicians use filter to change how music sounds
- Musicians will specify low pass & high pass filters
- If array is empty - throw an error
- If nil in input array - throw an error
- Default values: low pass: 40, high pass: 1000

Input: array of integers representing frequency, low pass filter, high pass filter
Output: array of integers - below low pass filter set to low integer & above high pass filter set to high figure

INPUT                                 | OUTPUT
[10, 20, 30, 40, 50, 60, 70], 30, 60  | [30, 30, 30, 40, 50, 60, 60]
[20, 40, 60], 20, 60                  | [20, 40, 60]
[20, 40, 60], 30, 60                  | [30, 40, 60]
[20, 40, 60], 20, 50                  | [20, 40, 50]
[20, 40, 60], 30, 50                  | [30, 40, 50]
[20, 40, nil], 30, 50                 | throw an error
[]                                    | throw an error
