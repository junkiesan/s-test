## Setup
For it's first launch run the following command :

```
bundle install
```
```
yarn install
```

Create the db

```
rails db:create
```

Then run the migrations

```
rails db:migrate
```
Now run the seeds so you can answer quizzes

```
rails db:seed
```

## Researches

I defined the project and created a roadmap that I put on [Github project](https://github.com/junkiesan/s-test/projects/1).
Here you will find every tickets I realized and thought about. They are linked to issues, themselves linked to pull requests. Even though I worked alone, I tried to contribute to this project as if I was in a team.

### [Here is the link to the figma:](https://www.figma.com/file/1eJFbAIDZC5SWD1yLPYpcM/Quizzator?node-id=0%3A1)
* a moodboard
* Quizzator game page
* responsive design for mobile

![](quizzator_home.png)

I also thought about the database and I made this database schema.

![](quizzator_db.png)

## Guidelines
- Fork this repository
- You can add any framework, library or plugin you'd like
- In short: Do whatever you want to get the job done
- Make sure the application works out-of-the box once you're done
- Push changes to your git fork
- Add a short description on how to run your program in the Setup section above. (A person ariving new to the project should be able to follow your instructions and run it)
- Check the finished features in the Assignment and Bonus section by putting an 'X' ([X]) in between the brackets
- Quality over quantity, better half of the features 100% done, than 100% of the features half-done
- Assignment :
  - You are asked to build a simple Quizz App

## User
 [X] A user can log in with a valid username and password through a login screen

 [X] A user can see a collection of quizzes

 [X] A user can start a quizz

 [X] A user can answer 3 questions on a quizz

 [X] A user can see the scores of his quizzes


## Quizz
 [X] A quizz has a Title

 [X] A quizz has a maximum of 3 questions

 [X] A quizz is considered passed if +60% of questions are answered correctly

## Question
 [X] A question has a maximum of 4 answers

 [X] A question has only 1 possible correct answer


## Bonus
- Some nice to haves, when there is time to spare.

 [X] A quizz can have a dificulty level

 [ ] Add admin role

 [ ] A user with admin role can create and edit quizzes

 [ ] A user can come back to a started quizz at the question he stopped

 [ ] Add or improve a feature of your own choice
