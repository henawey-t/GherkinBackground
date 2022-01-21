//
//  BackgroundEnvironmentSetupViewController.swift
//  GherkinBackground
//
//  Created by Ahmed Henawey on 21/01/2022.
//

import UIKit
import SnapKit

final class BackgroundEnvironmentSetupViewController: UIViewController {

    private lazy var scenariosStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            scenario1Button,
            scenario2Button
        ])
        stackView.axis = .vertical
        return stackView
    }()

    private lazy var scenario1Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Dr. Bill posts to his own blog", for: .normal)
        button.accessibilityIdentifier = "Dr. Bill posts to his own blog"
        if #available(iOS 14.0, *) {
            button.addAction(UIAction(handler: { [weak self] _ in

                let background = BackgroundEnvironment.loadFromPasteboard()
                
                let viewController = ViewController(
                    globalAdministratorName: background.globalAdministratorName,
                    blogName: background.blogName,
                    customerName: background.customerName)
                self?.show(viewController, sender: self)
            }), for: .touchUpInside)
        } else {
            // Fallback on earlier versions
        }
        return button
    }()

    private lazy var scenario2Button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Dr. Bill tries to post to somebody else's blog, and fails", for: .normal)
        button.accessibilityIdentifier = "Dr. Bill tries to post to somebody else's blog, and fails"
        if #available(iOS 14.0, *) {
            button.addAction(UIAction(handler: { [weak self] _ in

                let background = BackgroundEnvironment.loadFromPasteboard()

                let viewController = ViewController(
                    globalAdministratorName: background.globalAdministratorName,
                    blogName: background.blogName,
                    customerName: background.customerName)
                self?.show(viewController, sender: self)
            }), for: .touchUpInside)
        } else {
            // Fallback on earlier versions
        }
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }

    func setup() {
        view.addSubview(scenariosStackView)
        scenariosStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

