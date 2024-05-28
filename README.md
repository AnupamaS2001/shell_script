# shell_script
## Automated Readability Index (ARI) 

Creating an Automated Readability Index (ARI) program in a shell script is a fascinating journey into the world of text analysis.The Automated Readability Index (ARI) is a tool used to measure how easy it is to understand a piece of text.The formula for ARI is as follows:

$$ ARI = 4.71 \times (\text{characters per word}) + 0.5 \times (\text{words per sentence}) - 21.43 $$

The goal is to calculate the ARI based on the input text file and categorize the readability level according to the score.

### Step-by-Step Creation of the ARI Program

1. *Reading the File*: The script starts by accepting a filename as an argument. This filename is used to read the content for which the readability index will be calculated.

2. *Calculating Word Count*: Using `wc -w`, the script counts the number of words in the file.

3. *Calculating Character Count*: Similarly, `wc -m` helps in counting the number of characters.

4. *Counting Sentences*: A sentence is identified by the punctuation marks like a period, exclamation, or question mark. The script uses `grep` to count these.

5. *Calculating Characters per Word*: This is done by dividing the character count by the word count. The `bc` command is used for this calculation as it handles floating-point arithmetic.

6. *Calculating Words per Sentence*: The script divides the word count by the sentence count to get this metric.

7. *Computing the ARI*: The script then applies the ARI formula using the `bc` command.

### Challenges Faced

The main challenge encountered was the shell's inability to handle floating-point numbers in arithmetic operations within the test command used for comparison in the conditional statements. The shell script initially failed to perform the necessary comparisons to categorize the readability level.

### Solution Implemented

To overcome this, the script was modified to include the `printf "%.0f"` command. This command converts the floating-point ARI result into an integer by rounding it off. This integer value can then be used in the test command for comparison without any issues.

### Conclusion

The process of writing this ARI program in shell script highlights the importance of understanding the capabilities and limitations of the shell environment. It also showcases the necessity of creative problem-solving when dealing with programming challenges, such as handling floating-point arithmetic in a shell that primarily supports integer arithmetic. The final script is a testament to the adaptability and ingenuity required in coding. It's a simple yet powerful tool for analyzing the readability of text files, making it a valuable asset for writers, educators, and anyone interested in text analysis.`
