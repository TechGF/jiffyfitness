# Jiffy Fitness app - README
===
Jacob Chen, Jonathan Leibovici, Fanflor Theodore, Gary Feng

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
1. [Networking](#Networking)

## Overview
### Description
Fitness app that allow users to view collection of workouts. Users are able to personalize their own workout plan. Users are able to keep track of their workouts.

### App Evaluation
- **Category:** Fitness and wellness
- **Mobile:** Mobile only
- **Story:** People are getting lazy and need to start getting into a basic healthy workout at home since everyone is staying at home this app will teach you the way to workout with the equipment you have at home.
- **Market:** Age group: 13+
- **Habit:** Usually once or twice a day - At mininmum 3-5 times a week
- **Scope:**  Allow users to view different types of workouts based on body parts. We can expand into allowing users to post comments on videos or tips / variations of those workouts.  

## Product Spec
### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* Sign up - A page to allow a user to personally create a account(screen#1)
* Sign In - A page to allow a person to access their account (screen#2)
* Logout a logging out button(screen#3||button)
* Home Feed - Display exercises(screen#4)
* Flow - a description of the workout and how to do it correctly (screen#5)

**Optional Nice-to-have Stories**
* Invite link - User are able to share their workout with others
* Create comment section
* Allow Users to add their own workout plan
* Allow Users to keep track of their progession
* Include timer
* Customized random workout

### 2. Screen Archetypes
* Login Screen
    * User can Login 
* Sign up screen
    * User can create a new account
* Home Feed Screen
    * User can choose collection view of upper, lower, and core workout
* Upper workout
    * User can view collection view of upper workouts
* Lower workout
    * User can view collection view of lower workouts
* Core workout
    * User can view collection view of core workouts
* Individual workout screen
    * User can view how to via and description 

### 3. Navigation

**Tab Navigation** (Tab to Screen)
* Home Feed
* Workout Feed

Optional:
* Progress/tracker Feed
    * users are able to keep track of their workouts


**Flow Navigation** (Screen to Screen)

* Login
    * Home feed - Display collection view for Upper and Lower Workout
* Register - User signs up
    * Home feed
* Home Feed
    * Upper Workout - Display collection view of upper workouts
        * Chest Workout - Display collection view of chest workouts
        * Arm Workout
             * Tricep Curls - Display how to via video and description
        * Shoulder
        * Biceps 
        * Back Workout
    * Core Workout - Display collection view of Core Workouts

    * Lower Workout - Display collection view of lower workouts
        * Glutes Workout
        * Quads Workout
            * Squats - Display how to via video and description
            * Lunges - Display how to via video and description
        * Calves Workout

## Wireframes

"https://imgur.com/a/wWTugSm"
![](https://i.imgur.com/RtnIBpL.jpg)

## Networking

### Network Request Actions
|Property|Type|Description|Network Request|
|:---:|:----:|:----:|:---:|
|username|string|Hold the user account name|Create|
|password|string|Hold user password|Create|
|workoutGif|File|Gif of theworkout|Read|
|instructions|String|Description of the workout|Read|
|reps|Number|Stores the number of reps|Create|
|sets|Number|Stores the number of sets|Create|
|weights|Number|Stores the weight used|Create|

### List of network requests by screen
- Sign up Screen
   - (Create/POST)Create a new user account
- Login Screen
   -(Read/Get)the username and password
- Home Feed Screen
   -(Read/GET) Query category of workout
- Workout Screen
   - (Read/GET) Query workout image and instruction
   - (Create/POST) Create a rep, set, and weight count 
   - (Create/POST) Like or star a workout

<pre><code>
//this is to sign up
func myMethod() {
  var user = PFUser()
  user.username = "myUsername"
  user.password = "myPassword"
 // other fields can be set just like with PFObject
  user.signUpInBackground {
    (succeeded: Bool, error: Error?) -> Void in
    if let error = error {
      let errorString = error.localizedDescription
      // Show the errorString somewhere and let the user try again.
    } else {
      // Hooray! Let them use the app now.
    }
  }
}

//this is to log in
PFUser.logInWithUsername(inBackground:"myname", password:"mypass") {
  (user: PFUser?, error: Error?) -> Void in
  if user != nil {
    // Do stuff after successful login.
  } else {
    // The login failed. Check error to see why.
  }
}

//this is for update/saving in your workout
let workoutLog = PFObject(className:"user")
user["reps"] = userReps
user["sets"] = userSets
user["weight"] = userWeights
user.saveInBackground { (succeeded, error)  in
    if (succeeded) {
        // The object has been saved.
    } else {
        // There was a problem, check error.description
    }
}

//Parse network Requestion for the GIF
let gifURL : String = "link to the gif of the workout"
let imageURL = UIImage.gifImageWithURL(gifURL)
let imageView3 = UIImageView(image: imageURL)
imageView3.frame = CGRect(x: 20.0, y: 390.0, width: self.view.frame.size.width - 40, height: 150.0)
view.addSubview(imageView3)

//Example Query for Leg Workouts
let query = PFQuery(className: "Workouts")
    query.includeKey("Leg")
    query.limit = 20 
        
    query.findObjectsInBackground { (posts, error) in
        if posts != nil {
            self.workouts = workouts!
            self.tableView.reloadData()
        }
    }
</code></pre>

