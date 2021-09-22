//
//  Extensions.swift
//  iOS_Week_1
//
//  Created by Artun Erol on 22.09.2021.
//

import Foundation

extension String {
    
    ///Reversin a string and merging it without Punctuations and spaces.
    func compactReverse(_ s: String) -> String {
        
        let reversed = String(s.reversed())
        let reversedWithoutPunctuation = reversed.components(separatedBy: .punctuationCharacters)
        let reduced = reversedWithoutPunctuation.reduce("") { $0 + $1}.replacingOccurrences(of: " ", with: "")
        
        return reduced
    }
    /// Merging a string without Punctuations and spaces.
    func mergingString(_ s: String) -> String {
       
        let withoutPunctuations = s.components(separatedBy: .punctuationCharacters)
        let reduced = withoutPunctuations.reduce("") { $0 + $1 }.replacingOccurrences(of: " ", with: "")
        
        return reduced
        
    }
    
     
}
