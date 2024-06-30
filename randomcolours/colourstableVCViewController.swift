//
//  colourstableVCViewController.swift
//  randomcolours
//
//  Created by Lokik Gupta on 28/06/24.
//

import UIKit

class colourstableVCViewController: UIViewController {
    
    var colors : [UIColor] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        createrandomcolors()

        // Do any additional setup after loading the view.
    }
    
    
    func createrandomcolors(){
        for _ in 0..<50{
            colors.append(createrandomclr())
        }
    }
    
    func createrandomclr() -> UIColor {
        let randomcolor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        return randomcolor
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destvc  = segue.destination as! colorsdetailsVC
        destvc.color = sender as? UIColor
    }
    

}

extension colourstableVCViewController: UITableViewDelegate , UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorcell")
        let color = colors[indexPath.row]
        cell?.backgroundColor = color
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "tocoloursdetailsvc", sender: color)
    }
    
}

