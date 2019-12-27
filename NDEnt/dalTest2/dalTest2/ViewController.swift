//
//  ViewController.swift
//  dalTest2
//
//  Created by MAC on 2018. 9. 29..
//  Copyright © 2018년 SRWS. All rights reserved.
//

import UIKit
import FSCalendar

class ViewController: UIViewController, FSCalendarDataSource, FSCalendarDelegate {

    //IBOutlet 위치
    @IBOutlet weak var calendarView: FSCalendar!
    
    //let 위치
//    let selectDate = DateFormatter()
    
    //var 위치
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        calendarView.delegate = self
        calendarView.dataSource = self
        
        
    }

    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        print(date)
        let format1 = DateFormatter()

        format1.dateFormat = "yyyy-MM-dd"
        
        let selectDate = format1.string(from: date)
        
        print(selectDate)
        
        calendar.scope = .week
        calendar.scope = .month
        
    }
    @IBAction func btWeek(_ sender: Any) {

        
        
        
    }
    

    @IBAction func addButton(_ sender: UIButton) {
     
    }
    

    
}

