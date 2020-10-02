//
//  ViewController.swift
//  Magic Ball
//
//  Created by Macbook Air 13 on 01.10.2020.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageBall: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    let massenges = [ "Це точно."," Це рішуче."," Без сумніву.","Так - однозначно.","Ви можете покластися на це."," Як я бачу, так."," Швидше за все."," Перспектива хороша."," Так."," Знаки вказують на так."," Відповідайте туманно, спробуйте ще раз."," Запитайте ще раз пізніше."," Краще не говорити тобі зараз."," Неможливо передбачити зараз.","Не розраховуйте на це."," Моя відповідь - ні.","Мої джерела стверджують, що ні."," Outlook не дуже хороший."," Дуже сумнівний.", "Відкривай Паузу!","Відчуваю ти набухаєшся","Так - як цигарка після сексу!", "не рекомендую","Ніколи не пізно","Та ще встигнеш!","Чувааак...!","Та за нех.й!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = ""
        
    }
    
    @IBAction func actionToBall(_ sender: UIButton) { 
        animationLabel()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            animationLabel()
        }
    }
    
    func animationLabel(){
        let selectedMassege = massenges.randomElement()
        UIView.transition(with: descriptionLabel,
                          duration: 0.75,
                          options: .transitionCrossDissolve,
                          animations: { [weak self] in
                            self?.descriptionLabel.text = selectedMassege
                          }, completion: nil)
    }
    
}
