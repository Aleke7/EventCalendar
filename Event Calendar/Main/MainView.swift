//
//  MainView.swift
//  Event Calendar
//
//  Created by Almat Begaidarov on 05.10.2023.
//

import UIKit
import SnapKit

final class MainView: UIView {
    
    // MARK: UI
    lazy var calendarView: UICalendarView = {
        let calendarView = UICalendarView()
        let gregorianCalendar = Calendar(identifier: .gregorian)
        calendarView.calendar = gregorianCalendar
        calendarView.locale = Locale(identifier: "ru")
        calendarView.fontDesign = .rounded
        return calendarView
    }()
    
    lazy var eventTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(EventCell.self, forCellReuseIdentifier: "")
        tableView.backgroundColor = .systemGray6
        return tableView
    }()
    
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    // MARK: Setup View
    private func setupView() {
        backgroundColor = .systemBackground
        addSubview(calendarView)
        setupConstraints()
    }
    
    // MARK: Setup Constraints
    private func setupConstraints() {
        calendarView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide)
            make.leading.trailing.equalToSuperview()
        }
    }
    
    
    
}
