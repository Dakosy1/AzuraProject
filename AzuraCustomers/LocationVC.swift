//
//  LocationVC.swift
//  AzuraCustomers
//
//  Created by Alisher Tulembekov on 24.04.2024.
//
import UIKit
import GoogleMaps
import SnapKit // Убедитесь, что SnapKit подключен и настроен

class LocationVC: UIViewController {
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("View location", for: .normal)
        button.backgroundColor = .blue // Добавлено для видимости
        button.setTitleColor(.white, for: .normal) // Для лучшей видимости
        return  button
    }()
    var lblLocation: UILabel = {
        let label = UILabel()
        label.text = "Your location will appear here"
        label.backgroundColor = .black
        label.textColor = .white
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white // Устанавливаем белый цвет фона для view
        setUpView()
        setUpConstraints() // Исправлено название и вызов метода
    }
    
    func setUpView() {
        view.addSubview(button)
        view.addSubview(lblLocation)
    }
    
    func setUpConstraints() {
        button.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(100)
            make.centerX.equalToSuperview()
        }
        
        lblLocation.snp.makeConstraints { make in
            make.top.equalTo(button.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(50) // Высота для лучшей видимости
        }
    }
}
