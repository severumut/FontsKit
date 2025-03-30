//
//  Font+Button.swift
//  FontsKit
//
//  Created by Umut Sever on 30.03.2025.
//

import SwiftUI

@available(iOS 15.0, *)
public extension View {
    func buttonsFont(_ size: ButtonsSizeTypes, _ weight: ButtonsWeightTypes, foregroundStyle: Color) -> some View {
        self
            .font(.system(size: size.rawValue, weight: weight.types))
            .foregroundStyle(foregroundStyle)
    }
}

@available(iOS 15.0, *)
public enum ButtonsWeightTypes {
    case label
    
    public var types: Font.Weight  {
        switch self {
        case .label: return .semibold
        }
    }
}

public enum ButtonsSizeTypes: CGFloat {
    case large = 16
    case `default` = 15
    case small = 13
}
