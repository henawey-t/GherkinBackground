//
//  ViewController.swift
//  GherkinBackground
//
//  Created by Ahmed Henawey on 21/01/2022.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {

    private let globalAdministratorName: String?
    private let blogName: String?
    private let customerName: String?

    private lazy var valuesStackView: UIStackView = {
        var labelGenerator: (_ text: String, _ accessibilityIdentifier: String) -> UILabel = { text, accessibilityIdentifier in
            let label = UILabel()
            label.text = text
            label.accessibilityIdentifier = accessibilityIdentifier
            label.isAccessibilityElement = true
            return label
        }

        let stackView = UIStackView(arrangedSubviews: [
            labelGenerator(globalAdministratorName ?? "Global Administrator name is not available", "1"),
            labelGenerator(blogName ?? "Blog name is not available", "2"),
            labelGenerator(customerName ?? "Customer name is not available", "3")
        ])
        stackView.alignment = .top
        stackView.axis = .vertical
        return stackView
    }()

    init(globalAdministratorName: String? = nil,
         blogName: String? = nil,
         customerName: String? = nil) {
        self.globalAdministratorName = globalAdministratorName
        self.blogName = blogName
        self.customerName = customerName
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }

    func setup() {
        view.addSubview(valuesStackView)
        valuesStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
