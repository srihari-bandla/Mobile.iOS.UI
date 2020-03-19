//  Copyright 2016-2019 Skyscanner Ltd
//
//  Licensed under the Apache License, Version 2.0 (the "License"); 
//  you may not use this file except in compliance with the License. You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software distributed under the License is 
//  distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and limitations under the License.

// MARK: - UITextField extension

import UIKit
import Foundation

extension UITextField {
    /// Moves the caret to the correct position by removing the trailing whitespace
    func fixCaretPosition() {
        // Moving the caret to the correct position by removing the trailing whitespace
        // http://stackoverflow.com/questions/14220187/uitextfield-has-trailing-whitespace-after-securetextentry-toggle

        let beginning = beginningOfDocument
        selectedTextRange = textRange(from: beginning, to: beginning)
        let end = endOfDocument
        selectedTextRange = textRange(from: end, to: end)
    }
}
extension SkyFloatingLabelTextField{
    override open func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        let leftBound = CGRect(x: 10, y: 15, width: 24, height: 24)
        return leftBound
    }
    
    override open func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        let leftBound = CGRect(x: self.bounds.width-34, y: 15, width: 24, height: 24)
        return leftBound
    }
}
