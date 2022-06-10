//
//  ViewController.swift
//  ViewWithDynamicHeight
//
//  Created by Ghadirian, Hamed, HSE24 DE on 09.06.22.
//

import UIKit

class ViewController: UIViewController {
    let viewWithDynamicHeight = ViewWithDynamicHeight(frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(viewWithDynamicHeight)
        viewWithDynamicHeight.setText("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")

        viewWithDynamicHeight.translatesAutoresizingMaskIntoConstraints = false

//        viewWithDynamicHeight.centerYAnchor.constraint(
//            equalTo: self.view.centerYAnchor
//        ).isActive = true
//        viewWithDynamicHeight.centerXAnchor.constraint(
//            equalTo: self.view.centerXAnchor
//        ).isActive = true

        let margin = CGFloat(16)

        viewWithDynamicHeight.topAnchor.constraint(
            equalTo: self.view.topAnchor, constant: CGFloat(100)
        ).isActive = true

        viewWithDynamicHeight.leadingAnchor.constraint(
            equalTo: self.view.leadingAnchor, constant: margin
        ).isActive = true
        viewWithDynamicHeight.trailingAnchor.constraint(
            equalTo: self.view.trailingAnchor, constant: -margin
        ).isActive = true
    }
}

