//
//  DataModule.swift
//  ThinkUp DrinkUp
//
//  Created by Adam McBride on 6/28/18.
//  Copyright © 2018 Adam McBride Studios. All rights reserved.
//

import Foundation

var roundNumber = 0
var questionNumber = 0
var answerPicked = 0
var currentSubjectIndex = 0
var currentPlayerIndex = 1


// player name array

var playerNames:[String] = ["Player 1", "Player 2", "Player 3", "Player 4"]

// player answers

var playerAnswers:[String] = ["Answer 1", "Answer 2", "Answer 3", "Answer 4"]

// questions array

var questions:[String] = [
    "" + playerNames[currentSubjectIndex] + " is given a ridiculous superpower. What is it?",
    "If " + playerNames[currentSubjectIndex] + " won the lottery, what would be the first thing they would buy?",
    "What is " + playerNames[currentSubjectIndex] + "'s secret weapon?",
    "" + playerNames[currentSubjectIndex] + " is on Jeopardy!, but all the categories are ridiculous subjects. What’s his/her best-performing category?",
    "What do you think is " + playerNames[currentSubjectIndex] + "’s greatest fear?",
    "Was " + playerNames[currentSubjectIndex] + " a ‘licker’, a ‘biter’, or a ‘picker’ as a child?",
    "What do you think is " + playerNames[currentSubjectIndex] + "’s best skill or talent?",
    "If " + playerNames[currentSubjectIndex] + " was going to have sex in public, where would it be?",
    "What is the most embarrassing thing you know about " + playerNames[currentSubjectIndex] + "?",
    "What is the most inappropriate thing you’ve seen " + playerNames[currentSubjectIndex] + " do?",
    "At what type of competition would " + playerNames[currentSubjectIndex] + " excel?",
    "What fictional character is " + playerNames[currentSubjectIndex] + " most like?",
    "You and " + playerNames[currentSubjectIndex] + " decide to skip school for the day. What do you go do?",
    "If " + playerNames[currentSubjectIndex] + " were a Bond villain, which one would they be?",
    "If you were a waiter and " + playerNames[currentSubjectIndex] + " was rude to you, what would you do to their food?",
    "You and " + playerNames[currentSubjectIndex] + " get pulled over, and the cop finds a bag of weed in the center console. Do you own own up to it, or do you blame it on " + playerNames[currentSubjectIndex] + "?",
    "What terrible band do you think " + playerNames[currentSubjectIndex] + " secretly likes?",
    "If " + playerNames[currentSubjectIndex] + " was a Game of Thrones character, which one would they be?",
    "" + playerNames[currentSubjectIndex] + ": Star Trek or Star Wars?",
    "What is " + playerNames[currentSubjectIndex] + "'s disgusting guilty pleasure?",
    "If " + playerNames[currentSubjectIndex] + " was at a TSA checkpoint and found they had a small bag of weed in their pocket right before going through the X-Ray machine, what would they do?",
    "What its " + playerNames[currentSubjectIndex] + "’s secret fetish?",
    "You and " + playerNames[currentSubjectIndex] + " are stranded on a desert island. You find a huge coconut. Do you share it or hoard it?",
    "" + playerNames[currentSubjectIndex] + " accidentally texts a nude pic to his/her boss. What's their next text?",
    "The Joker has kidnapped " + playerNames[currentSubjectIndex] + ". Which Batman would you want to save him/her? West, Keaton, Kilmer, Clooney, Bale, or Affleck?"
]
