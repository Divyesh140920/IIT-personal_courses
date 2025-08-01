# Review Questions - Chapter 07

1. What are the two main representatives of stream editors?  
   a. gedit and kate  
   b. Nano and Joe   
   c. vi and Nano  
   **d. vi and Emacs √**  

2. Which family of editors came first?  
   a. Screen editors  
   b. Butterfly editors  
   c. GUI editors  
   **d. Stream Editors √**  
3. What type of editor is GNU Nano?  
   a. stream  
   **b. text √**  
   c. A small one  
   d. file  

4. Who created the vi editor?  
   a. Richard Stallman, 1984  
   b. Brian Fox, 1989  
   **c. Bill Joy, 1979 √**  
   d. Bill Joy, 1983  
   e. Brian Fox, 1979  

5. Which of the following sequences of the history of vi is correct?  
   a. Emacs -> ed -> ex -> vi  
   **b. ed -> em -> ex -> vi -> vim √**  
   c. em -> ex -> vi  
   d. em -> ed -> vi -> vim  

6. What are the three modes in vi?  
   1. COMMAND mode
   2. INSERT mode
   3. EX mode

7. What is the key you use in vi to transition between COMMAND MODE and INSERT mode?  
   * ESC used to transition from COMMAND mode to INSERT mode. Clicking both ESC and one of the text modification commands will automatically take you to INSERT mode.

8. What command sequence (key) in vi will add text to the right of the current cursor position?  (just the letter)
   * a 

9. What command sequence (key) in vi will move you to the beginning of the next word? (just the letter)
   * w

10. What command sequence in vi will delete a single line based on the current cursor position? (just the letters)
   * dd

11. What command sequence in vi will delete 10 lines from the current cursor position? (just the numbers and letters)
   * 10dd

12. Which command in ex mode (vi) will save the current file you are working on and exit the vi editor? (include the ":")
   * :wq

13. In the log file u_ex150911.log what would be the ex command to search forward for occurrences of YandexBot? (include the forward slash)
   * /xmlrpc\.php

14. Assuming your pwd is Linux-text-book-part-I and you have loaded Chapter-02 > chapter-02.md into vi, what would be the ex mode command to replace all occurrences of linux with Linux?
   * :%s/linux/Linux/g

15. Assuming your pwd is Linux-text-book-part-I and you have loaded Chapter-02 > chapter-02.md into vi, what would be the ex mode command to replace all occurrences of Linux with GNU/Linux? (remember to escape the /)
   * :%s/Linux/GNU\/Linux/g

16. Assuming the your pwd is Linux-text-book-part-I and you have loaded Chapter-02 > chapter-02.md into vi, what would be the ex mode command to remove all occurrences of the word Windows?
   * :%s/Windows//g

17. Assuming a file name topsecret.sh has a permission of 644 - what is the shortcut to give just the owner of the file additional permissions to execute the script?
   * chmod u+x topsecret.sh

18. Assuming a file named moretopsecret.sh has a permission of 757 - what is the shortcut to remove all permissions from the **other** group?
   * chmod o-rwx moretopsecret.sh

19. What is the correct command sequence to save or write out a file in GNU Nano?  
    a. ^6  
    b. ^X  
    **c. ^O √**  
    d. :wq 

20. What is the command to display the contents of the PATH system variable on the command line?  
    a. echo PATH  
    **b. echo $PATH √**  
    c. echo path   
    d. $PATH  
