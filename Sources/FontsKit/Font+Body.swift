//
//  Font+Body.swift
//  FontsKit
//
//  Created by Umut Sever on 30.03.2025.
//

import SwiftUI

@available(iOS 15.0, *)
public extension View {
    func bodyFont(_ size: BodySizeTypes, _ weight: BodyWeightTypes, foregroundStyle: Color) -> some View {
        self
            .font(.system(size: size.rawValue, weight: weight.types))
            .foregroundStyle(foregroundStyle)
    }
}

@available(iOS 15.0, *)
public enum BodyWeightTypes {
    case highlighted, semibold, regular, light
    
    public var types: Font.Weight  {
        switch self {
        case .highlighted: return .bold
        case .semibold: return .semibold
        case .regular: return .regular
        case .light: return .light
        }
    }
}

public enum BodySizeTypes: CGFloat {
    case `default` = 16
    case medium = 14
    case small = 12
    case xSmall = 10
}
