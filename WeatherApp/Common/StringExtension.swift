//
//  StringExtension.swift
//  WeatherApp
//
//  Created by Martin on 26/07/2022.
//

import Foundation

extension String {
    func capitalizingFirstLetter() -> String {
      return prefix(1).uppercased() + self.lowercased().dropFirst()
    }

    mutating func capitalizeFirstLetter() {
      self = self.capitalizingFirstLetter()
    }
}

extension String {
    
    func weatherDateConvert() -> String? {
        return convertStringDateFrom("yyyy-MM-dd HH:mm:ss", toFormatDate: "dd/MM")
    }
    
    private func convertStringDateFrom(_ fromFormatDate: String, toFormatDate: String) -> String? {
        let fromFormatter = DateFormatter()
        fromFormatter.dateFormat = fromFormatDate
        if let originalDate = fromFormatter.date(from: self) {
            let toFormatter = DateFormatter()
            toFormatter.dateFormat = toFormatDate
            return toFormatter.string(from: originalDate)
        }
        return ""
    }
}
