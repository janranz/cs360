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
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var singleButton1: UIButton!
    @IBOutlet var singleButton2: UIButton!
    @IBOutlet var singleButton3: UIButton!
    @IBOutlet var singleButton4: UIButton!
    @IBOutlet var questionProgressView: UIProgressView!
    
    @IBSegueAction func showResults(_ coder: NSCoder) -> ResultsViewController? {
        return ResultsViewController(coder: coder, responses: answersChosen)
    }
    var questionIndex = 0;
    var answersChosen: [Answer] = []
    var questions:[Question] = [
        Question(
            text: "Which food do you like the most?",
            type: .single,
            answers: [
                Answer(text: "Pizza", type:.pizza),
                Answer(text: "Eggplant", type:.eggplant),
                Answer(text: "Sushi", type:.sushi),
                Answer(text: "Baguette", type:.baguette)
            ]
        )
    ];
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender{
        case singleButton1:
            answersChosen.append(currentAnswers[0])
        case singleButton2:
            answersChosen.append(currentAnswers[1])
        case singleButton3:
            answersChosen.append(currentAnswers[2])
        case singleButton4:
            answersChosen.append(currentAnswers[3])
        default:
            break;
        }
        nextQuestion()
    }
    
    func nextQuestion(){
        questionIndex += 1
        if(questionIndex < questions.count)
        {
            updateUI()
        }else{
            performSegue(withIdentifier: "Results", sender: nil)
        }
    }
    
    func updateUI()
    {
        singleStackView.isHidden = true;
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Question #\(questionIndex+1)"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        func updateSingleStack(using answers: [Answer])
        {
            singleStackView.isHidden = false
            singleButton1.setTitle(answers[0].text, for: .normal)
            singleButton2.setTitle(answers[1].text, for: .normal)
            singleButton3.setTitle(answers[2].text, for: .normal)
            singleButton4.setTitle(answers[3].text, for: .normal)
        }
        //        switch currentQuestion.type{
        //        case .single:
        //            singleStackView.isHidden = true;
        //        }
        if(currentQuestion.type == .single){
//            singleStackView.isHidden = false;
           updateSingleStack(using: currentAnswers)
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
