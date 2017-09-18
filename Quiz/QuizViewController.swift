//
//  QuizViewController.swift
//  Quiz
//

import UIKit
//import Spring

class QuizViewController: UIViewController {
    
    var quizArray = [[Any]]()   //クイズを格納する配列
    var mondai: Int = 0 //問題数
    var correctAnswer: Int = 0  //正解数
    var answer = String()   //答え ex.アルドース
    var answer1: Int = 0    //答えの数字　５
    
    //クイズを表示するTextView
    @IBOutlet var quizTextView: UITextView!
    //問題の数を表示するLabel
    @IBOutlet var mondaiLabel: UILabel!
    //正解数を表示するLabel
    @IBOutlet var quizLabel: UILabel!
    //選択肢のボタン
    @IBOutlet var choiceButtons1: SpringButton!
    @IBOutlet var choiceButtons2: SpringButton!
    @IBOutlet var choiceButtons3: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quizTextView.layer.cornerRadius = 10    //クイズの角のR設定
        quizTextView.layer.masksToBounds = true
        
        choiceButtons1.layer.cornerRadius = 10    //ボタンの角のR設定
        choiceButtons1.layer.masksToBounds = true
        
        choiceButtons2.layer.cornerRadius = 10    //ボタンの角のR設定
        choiceButtons2.layer.masksToBounds = true
        
        choiceButtons3.layer.cornerRadius = 10    //ボタンの角のR設定
        choiceButtons3.layer.masksToBounds = true
        
        
        
        var tmpArray = [[Any]]()
        
        //------------------------ここから下にクイズを書く------------------------//
        
        //tmpArray.append(["問題文", "選択肢1", "選択肢2", "選択肢3", 1])
        
        //Lの領域のアルドース
        tmpArray.append(["L-グロース", "アルドース", "ケトース", "ポリオール", 1])
        tmpArray.append(["L-イドース", "アルドース", "ケトース", "ポリオール", 1])
        tmpArray.append(["L-ガラクトース", "アルドース", "ケトース", "ポリオール", 1])
        tmpArray.append(["L-タロース", "アルドース", "ケトース", "ポリオール", 1])
        tmpArray.append(["L-アルトロース", "アルドース", "ケトース", "ポリオール", 1])
        tmpArray.append(["L-アロース", "アルドース", "ケトース", "ポリオール", 1])
        tmpArray.append(["L-マンノース", "アルドース", "ケトース", "ポリオール", 1])
        tmpArray.append(["L-グルコース", "アルドース", "ケトース", "ポリオール", 1])
        //Dの領域のアルドース
        tmpArray.append(["D-グロース", "アルドース", "ケトース", "ポリオール", 1])
        tmpArray.append(["D-イドース", "アルドース", "ケトース", "ポリオール", 1])
        tmpArray.append(["D-ガラクトース", "アルドース", "ケトース", "ポリオール", 1])
        tmpArray.append(["D-タロース", "アルドース", "ケトース", "ポリオール", 1])
        tmpArray.append(["D-アルトロース", "アルドース", "ケトース", "ポリオール", 1])
        tmpArray.append(["D-アロース", "アルドース", "ケトース", "ポリオール", 1])
        tmpArray.append(["D-マンノース", "アルドース", "ケトース", "ポリオール", 1])
        tmpArray.append(["D-グルコース", "アルドース", "ケトース", "ポリオール", 1])
        //Lの領域のケトース
        tmpArray.append(["L-ソルボース", "アルドース", "ケトース", "ポリオール", 2])
        tmpArray.append(["L-タガトース", "アルドース", "ケトース", "ポリオール", 2])
        tmpArray.append(["L-プシコース", "アルドース", "ケトース", "ポリオール", 2])
        tmpArray.append(["L-フラクトース", "アルドース", "ケトース", "ポリオール", 2])
        //Dの領域のケトース
        tmpArray.append(["D-ソルボース", "アルドース", "ケトース", "ポリオール", 2])
        tmpArray.append(["D-タガトース", "アルドース", "ケトース", "ポリオール", 2])
        tmpArray.append(["D-プシコース", "アルドース", "ケトース", "ポリオール", 2])
        tmpArray.append(["D-フラクトース", "アルドース", "ケトース", "ポリオール", 2])
        //Lの領域のポリオール
        tmpArray.append(["L-イディトール", "アルドース", "ケトース", "ポリオール", 3])
        tmpArray.append(["L-タリトール", "アルドース", "ケトース", "ポリオール", 3])
        tmpArray.append(["L-アルトリトール", "アルドース", "ケトース", "ポリオール", 3])
        tmpArray.append(["L-マンニトール", "アルドース", "ケトース", "ポリオール", 3])
        //Dの領域のポリオール
        tmpArray.append(["L-イディトール", "アルドース", "ケトース", "ポリオール", 3])
        tmpArray.append(["L-タリトール", "アルドース", "ケトース", "ポリオール", 3])
        tmpArray.append(["L-アルトリトール", "アルドース", "ケトース", "ポリオール", 3])
        tmpArray.append(["L-マンニトール", "アルドース", "ケトース", "ポリオール", 3])
        //DLの領域
        tmpArray.append(["D-グルシトール", "アルドース", "ケトース", "ポリオール", 3])
        tmpArray.append(["L-グリトール", "アルドース", "ケトース", "ポリオール", 3])
        tmpArray.append(["ガラクチトール", "アルドース", "ケトース", "ポリオール", 3])
        tmpArray.append(["アリトール", "アルドース", "ケトース", "ポリオール", 3])
        tmpArray.append(["L-グルシトール", "アルドース", "ケトース", "ポリオール", 3])
        tmpArray.append(["D-グリトール", "アルドース", "ケトース", "ポリオール", 3])
        
        //------------------------ここから上にクイズを書く------------------------//
        
        // 問題をシャッフルしてquizArrayに格納する
        while (tmpArray.count > 0) {
            let index = Int(arc4random_uniform(UInt32(tmpArray.count)))
            quizArray.append(tmpArray[index])
            tmpArray.remove(at: index)
        }
        choiceQuiz()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func choiceQuiz() {
        quizTextView.text = quizArray[0][0] as! String
        
        //選択肢のボタンにそれぞれ選択肢のテキストをセット
        choiceButtons1.setTitle(quizArray[0][1] as? String, for: .normal)
        choiceButtons2.setTitle(quizArray[0][2] as? String, for: .normal)
        choiceButtons3.setTitle(quizArray[0][3] as? String, for: .normal)
        
        mondai = mondai + 1
        mondaiLabel.text = String("\(mondai)" + "/38")

        
    }
    
    //ボタン押した時の動き
    
    @IBAction func choiceButton1(){
        choiceButtons1.animation = "pop"
        choiceButtons1.animate()

    }
    @IBAction func choiceButton2(){
        choiceButtons2.animation = "pop"
        choiceButtons2.animate()
        
    }
    @IBAction func choiceButton3(){
        choiceButtons3.animation = "pop"
        choiceButtons3.animate()
        
    }
    @IBAction func choiceAnswer(sender: UIButton) {
       
        answer1 = quizArray[0][4] as! Int
        answer = quizArray[0][answer1] as! String
        
        
        
        if quizArray[0][4] as! Int == sender.tag {
            //正解数を増やす
            correctAnswer+=1
            quizLabel.text = String("\(correctAnswer)" + "/38")
        }
        
        quizArray.remove(at: 0)
        //解いた問題数の合計が予め設定していた問題数に達したら結果画面へ
        if quizArray.count == 0 {
            let alertController = UIAlertController(title: "答え",message: answer, preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default){ (action: UIAlertAction) in
                //OKがクリックされた時の処理
                self.performSegueToResult()
            }
            
            alertController.addAction(okAction)
            present(alertController,animated: true,completion: nil)
            
        } else {
        let alertController = UIAlertController(title: "答え",message: answer, preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default){ (action: UIAlertAction) in
                //OKがクリックされた時の処理
            }
            alertController.addAction(okAction)
            present(alertController,animated: true,completion: nil)
            
            print(mondai)
            
            choiceQuiz()
        }
    }
    
    func performSegueToResult() {
        performSegue(withIdentifier: "toResultView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toResultView") {
            
            let resultView = segue.destination as! ResultViewController
            resultView.correctAnswer = self.correctAnswer
        }
    }
    
  }
