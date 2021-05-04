//
//  Question.swift
//  PersonalityQuiz
//
//  Created by David W. on 4/8/21.
//

import Foundation
import PersonalityQuiz

struct Question
{
    var text:String;
    var type:ResponseType;
    var answers:[Answer];

};

enum ResponseType
{
    case single
};

struct Answer
{
    var text:String;
    var type: FoodType;
};

enum FoodType:Character
{
    case pizza = "🍕", eggplant = "🍆", sushi = "🍱";

    var definition:String
    {
        switch self{
        case .pizza:
            return "You are a dog";
        case .eggplant:
            return "You like eggplant";
        case .sushi:
            return "You like sushi";
        }
    }
};

