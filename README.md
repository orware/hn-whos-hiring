hn-whos-hiring
==============

## HN Who's Hiring Project

This project came about in early April when I was taking a look at the monthly Who's Hiring threads on Hacker News and then started to ask some questions (e.g. How many jobs of Type X have been listed in these threads over time?). 

Currently, there is a lot of unstructured, but useful data in the listing comments within these threads and I started thinking about ways that this data could be structured, and then displayed in a variety of useful ways for people.

However, in order to get to the fun "displayed in a variety of useful ways" the data would first have to go through two phases:

### Phase 1 (Basic Thread and Listing Data):

First the data would need to be extracted from the Hacker News website and cached (so that I could be a good citizen and not throttle their servers with a lot of requests). After the cached files were created I could then experiment and extract the useful information (basic thread info + the top level comments which were almost always some sort of listing) into data structures that could then be imported into a database.

This phase has already been completed and you can use the SQL files above and import the data into a MySQL database.

### Phase 2 (Extract/Associate Useful Information from Listings):

This next phase is much more difficult since it requires a lot more manual analysis/work to be done. This is the phase that allows people to ask a lot of the questions that I was wondering about. In order to facilitate this phase I created a schema for storing all of the companies, locations, job titles, and tools (programming languages, frameworks, database systems, platforms, etc.) related to a listing and then created a simple processing form for creating the individual items and then associating them with a listing.

This phase seems like it would be good to automate with something like Amazon's MTurk service, but I still need to learn more about it if I want to use that option. Initially, I was just going to open up the processing page to the community and have them help out, but then I wasn't sure if quality/consistency would be high enough (I'm pretty sure it would be, but it would be nice to have that confirmed by the community).

### Phase 3 (Come up with Creative/Fun Ways to Explore the Data):

The last phase would be building out the frontend and presenting the data in a variety of fun/useful ways for people to explore.

While this started out as my own itch I wanted to scratch, I ended up also turning it into a final project for my intro PHP/MySQL course and I wanted to go ahead and share it with the HN Community for a few reasons. One being that there are a lot of people much more talented than I on the site that can probably take the Phase 1 data and run with it and created something beautiful. And additionally, since the data was created on HN initially, it seemed like a good idea that the community should be involved with the next few phases and have access to it :-).
