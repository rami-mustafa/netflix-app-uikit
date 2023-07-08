//
//  Extensions.swift
//  netflix clone
//
//  Created by Ghaiath Alhereh on 08.07.23.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
