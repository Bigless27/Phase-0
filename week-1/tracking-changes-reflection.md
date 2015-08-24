## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?
    Tracking and adding changes makes developers live eaiser becasue it gives you a check point to go back to if the changes that you added are bugged. This prevents you from having to start your code over from scratch to debug it.


- What is a commit?
	Commit is a command in Git that takes a "Sceenshot" of your work. You are then able to give it a header and eaisly revert back and forth between your commits.

- What are the best practices for commit messages?
	The first line of the commit mesage should  be a short description of what you have done. This should be worded in an imperative, present tense form. The body of the commit message should also be in the imperative, present tense form and includes motivation for the change while contrasing the previous work.

- What does the HEAD^ argument mean?
	It is the previous commit that you made. It helps you identify which one of your commits you are working on if you decided to backtrack through previous git.


- What are the 3 stages of a git change and how do you move a file from one stage to the other?
	Untracked, ready to be commited, and commited. When you creat a file it is labled under untracked under git status, use the command git add to move the file from the untracked stage to the ready to be commited stage. Finally, use git commit to commit that file 

- Write a handy cheatsheet of the commands you need to commit your changes?
	git status
	git add
	git commit 
	git status



- What is a pull request and how do you create and merge one?
	It lets you show other people your changes made before you add that brancht to your master. 

- Why are pull requests preferred when working with teams?
	It gives other people a chance to review your work before you submitt it so you can be sure that there are no bugs in youe code.

<!-- Add your reflection here. Remove the comment markers -->
