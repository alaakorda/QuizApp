import 'package:flutter/material.dart';

List database = [
  {
    "categoryName": "Sport test",
    "color": Color(0xFF1A3464),
    "data": [
      {
        "question":
            "What is the name of the footballer who has won the most Ballon d'Or?",
        "answers": [
          {"ans": "messi", "score": 1},
          {"ans": "ronaldo", "score": 0},
          {"ans": "neymar", "score": 0},
          {"ans": "mbappe", "score": 0}
        ]
      },
      {
        "question": "who is the best footballer in the world?",
        "answers": [
          {"ans": "messi", "score": 0},
          {"ans": "ronaldo", "score": 0},
          {"ans": "neymar", "score": 1},
          {"ans": "mbappe", "score": 0}
        ]
      },
      {
        "question":
            "how many times has the brazilian national team won the world cup?",
        "answers": [
          {"ans": "5", "score": 1},
          {"ans": "6", "score": 0},
          {"ans": "7", "score": 0},
          {"ans": "8", "score": 0}
        ]
      },
    ],
  },
  {
    "categoryName": "History Test",
    "color": Color(0xFF1A3464),
    "data": [
      {
        "question": "Who was the first President of the United States?",
        "answers": [
          {"ans": "George Washington", "score": 1},
          {"ans": "Thomas Jefferson", "score": 0},
          {"ans": "Abraham Lincoln", "score": 0},
          {"ans": "John Adams", "score": 0}
        ]
      },
      {
        "question":
            "What event marked the beginning of World War I, and in which year did it occur?",
        "answers": [
          {
            "ans": "The assassination of Archduke Franz Ferdinand in 1914",
            "score": 1
          },
          {"ans": "The bombing of Pearl Harbor in 1941", "score": 0},
          {
            "ans": "The signing of the Treaty of Versailles in 1919",
            "score": 0
          },
          {"ans": "The Battle of Stalingrad in 1942", "score": 0}
        ]
      },
      {
        "question":
            "Who was the leader of the Soviet Union during the Cuban Missile Crisis?",
        "answers": [
          {"ans": "Nikita Khrushchev", "score": 1},
          {"ans": "Joseph Stalin", "score": 0},
          {"ans": "Vladimir Putin", "score": 0},
          {"ans": "Mikhail Gorbachev", "score": 0}
        ]
      }
    ]
  },
  {
    "categoryName": "IQ Test",
    "color": Color(0xFF1A3464),
    "data": [
      {
        "question":
            "If a red house is made from red bricks, a blue house is made from blue bricks, and a yellow house is made from yellow bricks, what is a green house made from?",
        "answers": [
          {"ans": "Glass", "score": 0},
          {"ans": "Green bricks", "score": 0},
          {"ans": "Plants", "score": 1},
          {"ans": "Wood", "score": 0}
        ]
      },
      {
        "question":
            "Which number comes next in this sequence: 2, 4, 6, 8, ___?",
        "answers": [
          {"ans": "10", "score": 1},
          {"ans": "12", "score": 0},
          {"ans": "14", "score": 0},
          {"ans": "16", "score": 0}
        ]
      },
      {
        "question":
            "If you rearrange the letters 'CIFAIPC,' you would get the name of a:",
        "answers": [
          {"ans": "City", "score": 0},
          {"ans": "Animal", "score": 0},
          {"ans": "Ocean", "score": 1},
          {"ans": "Planet", "score": 0}
        ]
      }
    ]
  },
  {
  "categoryName": "Programming Quiz",
  "color": Color(0xFF1A3464),
  "data": [
    {
      "question": "What does HTML stand for?",
      "answers": [
        {"ans": "Hypertext Markup Language", "score": 1},
        {"ans": "Highly Technical Markup Language", "score": 0},
        {"ans": "Hyperlink and Text Markup Language", "score": 0},
        {"ans": "Hyper Transfer Markup Language", "score": 0}
      ]
    },
    {
      "question": "Which programming language is known for its use in machine learning and data analysis?",
      "answers": [
        {"ans": "Java", "score": 0},
        {"ans": "Python", "score": 1},
        {"ans": "C++", "score": 0},
        {"ans": "JavaScript", "score": 0}
      ]
    },
    {
      "question": "What is the result of 5 + 3 in JavaScript?",
      "answers": [
        {"ans": "7", "score": 1},
        {"ans": "8", "score": 0},
        {"ans": "53", "score": 0},
        {"ans": "NaN", "score": 0}
      ]
    }
  ]
},
{
  "categoryName": "Math Quiz",
  "color": Color(0xFF1A3464),
  "data": [
    {
      "question": "What is the result of 5 + 7?",
      "answers": [
        {"ans": "12", "score": 1},
        {"ans": "10", "score": 0},
        {"ans": "14", "score": 0},
        {"ans": "8", "score": 0}
      ]
    },
    {
      "question": "What is the square root of 16?",
      "answers": [
        {"ans": "2", "score": 1},
        {"ans": "4", "score": 0},
        {"ans": "8", "score": 0},
        {"ans": "64", "score": 0}
      ]
    },
    {
      "question": "What is the value of 'pi' (π) to two decimal places?",
      "answers": [
        {"ans": "3.14", "score": 1},
        {"ans": "3.1416", "score": 0},
        {"ans": "3.142", "score": 0},
        {"ans": "3.14159", "score": 0}
      ]
    }
  ]
},
{
  "categoryName": "Science Quiz",
  "color": Color(0xFF1A3464),
  "data": [
    {
      "question": "What is the chemical symbol for water?",
      "answers": [
        {"ans": "H2O", "score": 1},
        {"ans": "CO2", "score": 0},
        {"ans": "O2", "score": 0},
        {"ans": "NaCl", "score": 0}
      ]
    },
    {
      "question": "Which programming language is often used in scientific computing and data analysis?",
      "answers": [
        {"ans": "Java", "score": 0},
        {"ans": "Python", "score": 1},
        {"ans": "C++", "score": 0},
        {"ans": "R", "score": 0}
      ]
    },
    {
      "question": "What is the boiling point of water in Celsius?",
      "answers": [
        {"ans": "0°C", "score": 0},
        {"ans": "100°C", "score": 1},
        {"ans": "-10°C", "score": 0},
        {"ans": "25°C", "score": 0}
      ]
    }
  ]
},

];
TextEditingController userNameController = TextEditingController();

 