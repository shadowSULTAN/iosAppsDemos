//
//  ViewController.swift
//  QuizGame
//
//  Created by ddukk11  Akhil Surendran on 30/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var Question: UITextView!
    @IBOutlet weak var Answer: UITextField!
    let logic = quizModalClass()
    
    
    
  
   
    
    
    public var i = 0
    var mark = 0
    var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Question.text = logic.questions[i]
        Answer.text = ""
    }

    @IBAction func check(_ sender: UIButton) {
        
        print(Answer.text!)
        if( i == logic.questions.count-1)
        {
            let vc = storyboard?.instantiateViewController(withIdentifier: "congratulation") as! next
            if Answer.text! == logic.answers[i]{
                vc.s=mark+1
                present(vc,animated: true)
            }
            else{
                present(vc,animated: true)
            }
            
            
        }
        else{
            
            if Answer.text! == logic.answers[i] {
                print(logic.answers[i])
                  mark = mark+1
                  score.text = String(mark)
                  i = i+1
                  viewDidLoad()
            
            
            }else
            {
                i = i+1
                viewDidLoad()
                
            }
        
        }
    }
    
}

