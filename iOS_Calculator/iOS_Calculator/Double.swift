//
//  Double.swift
//  iOS_Calculator
//
//  Created by Davin Henrik on 10/18/21.
//

import Foundation

extension Double {
    var clean: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
    
    func truncate(places: Int) -> Double {
        return Double(floor(pow(10.0, Double(places)) * self) / pow(10.0, Double(places)))
    }
}

extension String {
    func convertFromDoubleToCleanString() -> String? {
        
        if self.last == "." {
            return self
        }
        
        if let double = Double(self) {
            return double.truncate(places: 4).clean
        } else {
            return nil
        }
    }
}

