//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by David W. on 4/8/21.
//

import UIKit


class QuestionViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI();
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var singleStackView: UIStackView!
    
    var questions:[Question] = [
        Question(
            text: "Which food do you like the most?",
            type: .single,
            answers: [
                Answer(text: "Pizza", type:.pizza),
                Answer(text: "Eggplant", type:.eggplant),
                Answer(text: "Sushi", type:.sushi),
            ]
        )
    ];
    var questionIndex = 0;
    
    func updateUI()
    {
        singleStackView.isHidden = true;
        
        navigationItem.title = "Question #\(questionIndex+1)"
        
        let currentQuestion = questions[questionIndex]
        
        switch currentQuestion.type{
        case .single:
            singleStackView.isHidden = false;
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
