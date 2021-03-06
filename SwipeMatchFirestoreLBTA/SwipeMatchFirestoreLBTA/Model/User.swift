//
//  User.swift
//  SwipeMatchFirestoreLBTA
//
//  Created by member on 2020/05/19.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

struct User {
    // definig our properties for our model layer
    let name: String
    let age: Int
    let profession: String
    let imageName: String

    func toCardViewModel() -> CardViewModel {

        let attributedText = NSMutableAttributedString(string: name, attributes: [.font: UIFont.systemFont(ofSize: 32, weight: .heavy)])
        attributedText.append(NSAttributedString(string: "  \(age)", attributes: [.font: UIFont.systemFont(ofSize: 24, weight: .regular)]))

        attributedText.append(NSAttributedString(string: "\n\(profession)", attributes: [.font: UIFont.systemFont(ofSize: 20, weight: .regular)]))

        return CardViewModel(imageName: imageName, attributedString: attributedText, textAlignment: .left)
    }
}
