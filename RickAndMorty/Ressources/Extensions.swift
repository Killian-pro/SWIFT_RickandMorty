//
//  Extensions.swift
//  RickandMorty
//
//  Created by Cluzel Killian on 11/09/2023.
//

import UIKit

extension UIView{
    func addSubviews(_ views: UIView...)
    {
        views.forEach ({
            addSubview($0)
        })
    }
}
