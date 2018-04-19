//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by Mandy Rogers on 4/19/18.
//  Copyright © 2018 Mandy Rogers. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorPicker: UIPickerView!
    
    var color = array[0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.colorPicker.dataSource = self
        self.colorPicker.delegate = self
        
        colorLabel.text = color.color
        view.backgroundColor = color.style
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row].color
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        updateColor(for: row)
    }
    
    func updateColor(for row: Int) {
        color = array[row]
        
        colorLabel.text = color.color
        view.backgroundColor = color.style
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
