//
//  Font+Header.swift
//  FontsKit
//
//  Created by Umut Sever on 30.03.2025.
//

import SwiftUI

@available(iOS 15.0, *)
public extension View {
    func headerFont(_ size: HeaderSizeTypes, _ weight: HeaderWeightTypes, foregroundStyle: Color) -> some View {
        self
            .font(.system(size: size.rawValue, weight: weight.types))
            .foregroundStyle(foregroundStyle)
    }
}

@available(iOS 15.0, *)
public enum HeaderWeightTypes {
    case highlighted, medium, regular, light, subtitle, display
    
    public var types: Font.Weight  {
        switch self {
        case .highlighted, .display: return .bold
        case .medium: return .semibold
        case .regular, .subtitle: return .regular
        case .light: return .light
        }
    }
}

public enum HeaderSizeTypes: CGFloat {
    case h1 = 28
    case h2 = 24
    case h3 = 22
    case h4 = 20
    case h5 = 17
    case h6 = 15
    case h5Subtitle = 13
    case h6Subtitle = 11
    case xLarge = 58
    case large = 40
}
