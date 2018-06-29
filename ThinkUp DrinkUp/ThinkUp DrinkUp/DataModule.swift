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
var currentSubject = String(playerNames[0])
var currentPlayerIndex = 1


// player name array

var playerNames:[String] = ["Player 1", "Player 2", "Player 3", "Player 4"]

// player answers

var playerAnswers:[String] = ["Answer 1", "Answer 2", "Answer 3", "Answer 4"]

// questions array

var questions:[String] = [
    "" + currentSubject + " is given a ridiculous superpower. What is it?",
    "If " + currentSubject + " won the lottery, what would be the first thing they would buy?",
    "What is " + currentSubject + "'s secret weapon?",
    "" + currentSubject + " is on Jeopardy!, but all the categories are ridiculous subjects. What’s his/her best-performing category?",
    "What do you think is " + currentSubject + "’s greatest fear?",
    "Was " + currentSubject + " a ‘licker’, a ‘biter’, or a ‘picker’ as a child?",
    "What do you think is " + currentSubject + "’s best skill or talent?",
    "If " + currentSubject + " was going to have sex in public, where would it be?",
    "What is the most embarrassing thing you know about " + currentSubject + "?",
    "What is the most inappropriate thing you’ve seen " + currentSubject + " do?",
    "At what type of competition would " + currentSubject + " excel?",
    "What fictional character is " + currentSubject + " most like?",
    "You and " + currentSubject + " decide to skip school for the day. What do you go do?",
    "If " + currentSubject + " were a Bond villain, which one would they be?",
    "If you were a waiter and " + currentSubject + " was rude to you, what would you do to their food?",
    "You and " + currentSubject + " get pulled over, and the cop finds a bag of weed in the center console. Do you own own up to it, or do you blame it on " + currentSubject + "?",
    "What terrible band do you think " + currentSubject + " secretly likes?",
    "If " + currentSubject + " was a Game of Thrones character, which one would they be?",
    "" + currentSubject + ": Star Trek or Star Wars?",
    "What is " + currentSubject + "'s disgusting guilty pleasure?",
    "If " + currentSubject + " was at a TSA checkpoint and found they had a small bag of weed in their pocket right before going through the X-Ray machine, what would they do?",
    "What its " + currentSubject + "’s secret fetish?",
    "You and " + currentSubject + " are stranded on a desert island. You find a huge coconut. Do you share it or hoard it?",
    "" + currentSubject + " accidentally texts a nude pic to his/her boss. What's their next text?",
    "The Joker has kidnapped " + currentSubject + ". Which Batman would you want to save him/her? West, Keaton, Kilmer, Clooney, Bale, or Affleck?"
]
