//
//  ViewController.swift
//  Calculator
//
//  Created by Rodrigo Eduardo Silva on 23/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    private func button(name : String ,color : UIColor)-> UIButton{
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints  = false
        button.backgroundColor = color
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        
        button.setTitle(name, for: .normal)
        button.addConstraint(NSLayoutConstraint(
                    item: button,
                    attribute: .height,
                    relatedBy: .equal,
                    toItem: button,
                    attribute: .width,
                    multiplier: 1/1, constant: 0))
        
        
       return button
        
    }
    private let Zero : UILabel = {
        let lbZero = UILabel()
        lbZero.text = "0"
        lbZero.translatesAutoresizingMaskIntoConstraints = false
        lbZero.textColor = .white
        lbZero.font  = UIFont.systemFont(ofSize: 80)
        lbZero.textAlignment = .right
        
        return lbZero
    }()
    

    
    private func newLine(_ rootStack:UIStackView)->UIStackView{
        let line = UIStackView()
        rootStack.addArrangedSubview(line)
        let margins = view.layoutMarginsGuide
        line.spacing = 2
        
        line.axis = .horizontal
        line.translatesAutoresizingMaskIntoConstraints = false
        line.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        line.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
    return line
    }
    
    lazy var acButton : UIButton = {
        button(name: "AC", color: .lightGray)
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        
        let margins = view.layoutMarginsGuide
        
        let rootStack = UIStackView()
        view.addSubview(rootStack)
        rootStack.axis = .vertical
        rootStack.spacing = 2
        rootStack.distribution = .fillEqually
        
        rootStack.translatesAutoresizingMaskIntoConstraints = false
        rootStack.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        rootStack.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        rootStack.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
        
        let line0 = newLine(rootStack)
        line0.addArrangedSubview(Zero)
        
        let line = newLine(rootStack)
               
        line.addArrangedSubview(acButton)
        line.addArrangedSubview(button(name: "±" ,color: .lightGray))
        line.addArrangedSubview(button(name: "%" ,color: .lightGray))
        line.addArrangedSubview(button(name: "÷" ,color: .orange))
        
        let line1 = newLine(rootStack)
        line1.addArrangedSubview(button(name: "7", color: .gray))
        line1.addArrangedSubview(button(name: "8", color: .gray))
        line1.addArrangedSubview(button(name: "9", color: .gray))
        line1.addArrangedSubview(button(name: "x", color: .orange))
        
        let line2 = newLine(rootStack)
        line2.addArrangedSubview(button(name: "4", color: .gray))
        line2.addArrangedSubview(button(name: "5", color: .gray))
        line2.addArrangedSubview(button(name: "6", color: .gray))
        line2.addArrangedSubview(button(name: "-", color: .orange))
                                 
        let line3 = newLine(rootStack)
        line3.addArrangedSubview(button(name: "1", color:.gray))
        line3.addArrangedSubview(button(name: "2", color: .gray))
        line3.addArrangedSubview(button(name: "3", color: .gray))
        line3.addArrangedSubview(button(name: "+", color: .orange))
        
        let line4 = newLine(rootStack)
        
        let lineLeft = UIStackView()
        line4.addArrangedSubview(lineLeft)
        lineLeft.axis = .horizontal
        lineLeft.spacing = 2
        
        let btZero = button(name: "0", color: .gray)
        btZero.removeConstraints(btZero.constraints)
        lineLeft.addArrangedSubview(btZero)
        
        let lineright = UIStackView()
        line4.addArrangedSubview(lineright)
        lineright.axis = .horizontal
        lineright.spacing = 2
        
        let comma = button(name: "," , color: .gray)
        lineright.addArrangedSubview(comma)
        lineright.addArrangedSubview(button(name: "=", color: .orange))
        
        
       
        
    }


}

