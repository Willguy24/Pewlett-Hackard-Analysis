## Overview of the analysis
Pewlett Hackard is a large company, Bobby needs our help to find who in the company will be retiring soon and be sure there are enough workers there who will be able to train new hires. Using the data that we have, we used SQL to assist Bobby with finding this out.
<Image of ERD>
Using these datasets and their relations this is how we can find who will be retiring soon, and who can help train.

## Results 
### Deliverable 1
Deliverable 1 is about finding the number of employees that are retiring by their title. The first thing that had to be done was to find the employees who would be retiring soon. This is done by sorting the employees with their titles and birthdates, we need to find those who were born between the years 1952 and 1955 and their “to_date” being 9999-01-01 showing they are currently still with the company. After that, we need to find the employees most recent position at the company to properly show which department they are representing.
<Deliverable 1 SC>
This data is showing that:
- There is a total of 72,458 employees that will be retiring in the coming years.
- These positions are mainly high-level positions. With names like “Senior” or “Leader”.

### Deliverable 2
Deliverable 2 is about finding the employees that remain that are eligible for the mentorship program. This is determined by taking the current employees list for those who are born in the year 1965.
<Deliverable 2 SC>
This data is showing that:
- With these requirements, there are currently 1,549 employees who are elidable for the mentorship program.
- While not yet eligible for retirement, it is not far off for these employees to retire themselves.


## Summary
When the “Silver Tsunami” hits, it will leave Pewlett Hackard with 72,458 positions that need to be filled. With the current requirements for their mentorship program there are 1,549 who qualify to be mentors. If it is the company’s intention to have these mentors teach new hires one on one, this will still leave a large hole in the company that the retirees have left. To lessen the load on the company it would be beneficial to have these mentors take upon multiple new hires to assist the transition period.
![image](https://user-images.githubusercontent.com/116857936/211702549-2feb01b6-f85c-4250-905c-2e74fb468cc6.png)
