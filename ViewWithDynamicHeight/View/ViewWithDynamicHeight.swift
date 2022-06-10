//
//  ViewWithDynamicHeight.swift
//  ViewWithDynamicHeight
//
//  Created by Ghadirian, Hamed, HSE24 DE on 09.06.22.
//

import UIKit

public extension UIView {
    func loadXib() {
        let bundle = Bundle(for: type(of: self))
        let name = String(describing: type(of: self))
        bundle.loadNibNamed(name, owner: self, options: nil)
    }

    func pinToEdges(of container: UIView, constant: AnchorConstant = AnchorConstant()) {
        translatesAutoresizingMaskIntoConstraints = false
        frame = container.frame
        container.addSubview(self)
        self.leftAnchor.constraint(equalTo: container.leftAnchor, constant: constant.left).isActive = true
        self.rightAnchor.constraint(equalTo: container.rightAnchor, constant: constant.right).isActive = true
        self.topAnchor.constraint(equalTo: container.topAnchor, constant: constant.top).isActive = true
        self.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: constant.bottom).isActive = true
    }

    /// Struct to pass the anchor constants. By default it is `0`
    struct AnchorConstant {
        let left: CGFloat
        let right: CGFloat
        let top: CGFloat
        let bottom: CGFloat

        public init(left: CGFloat = 0, right: CGFloat = 0, top: CGFloat = 0, bottom: CGFloat = 0) {
            self.left = left
            self.right = right
            self.top = top
            self.bottom = bottom
        }
    }
}

class ViewWithDynamicHeight: UIView {
    @IBOutlet private var contentView: UIView!

    @IBOutlet weak var label: UILabel!
    func setText(_ text: String) {
        label.text = text
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialize()
    }

    private func initialize() {
        loadXib()
        contentView.pinToEdges(of: self)
    }
}
