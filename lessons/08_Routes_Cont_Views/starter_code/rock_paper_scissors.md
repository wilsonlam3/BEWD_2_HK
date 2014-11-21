![GeneralAssemb.ly](http://studio.generalassemb.ly/GA_Slide_Assets/Exercise_icon_md.png)

#Rock Paper Scissors
##Activity Type: Pair Programming
###Time: 30 min

####Instructions
Add the game Rock, Paper, Scissors to the "Games on Rails" app. We will use some simplified rules to start. As a bonus, you can implement the real RPS.

* Create a `RockPaperScissorsController` similar to the `SecretNumberController`
* Use `params[:id]` as the user's throw number
* Calculate the throw (rock, paper, scissors) based on the throw number (0, 1, 2)
* Your `RockPaperScissorsController` should generate its own random throw
* Compare the two throws! If the user's throw matches the app's throw, the user wins. If both are same, show a tie. Otherwise, show a loss message
* __Bonus__: Modify the application so that it uses the real [rules of rock paper scissors](http://en.wikipedia.org/wiki/Rock-paper-scissors)

Here are two screen shots to help you arrange the views.

![screen shot 1](../../assets/rails/lesson_8_final_screen_shot.png)

![screen shot 2](../../assets/rails/throw_choice.png)
