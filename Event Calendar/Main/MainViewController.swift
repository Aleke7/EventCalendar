//
//  ViewController.swift
//  Event Calendar
//
//  Created by Almat Begaidarov on 05.10.2023.
//

import UIKit

final class MainViewController: UIViewController, UICalendarViewDelegate {
    
    private var rootView: MainView {
        view as! MainView
    }
    
    
    
    // MARK: Lifecycle
    override func loadView() {
        super.loadView()
        let mainView = MainView()
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        rootView.calendarView.backgroundColor = .red
    }
    
    
    
}

