//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Anıl Bürcü on 7.07.2023.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
