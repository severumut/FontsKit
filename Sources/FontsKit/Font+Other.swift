//
//  Font+Other.swift
//  FontsKit
//
//  Created by Umut Sever on 30.03.2025.
//

import SwiftUI

@available(iOS 15.0, *)
public extension View {
    func othersFont(_ size: OthersSizeTypes, _ weight: OthersWeightTypes, foregroundStyle: Color) -> some View {
        self
            .font(.system(size: size.rawValue, weight: weight.types))
            .foregroundStyle(foregroundStyle)
    }
}

@available(iOS 15.0, *)
public enum OthersWeightTypes {
    case label
    
    public var types: Font.Weight  {
        switch self {
        case .label: return .heavy
        }
    }
}

public enum OthersSizeTypes: CGFloat {
    case large = 12
    case small = 9
}
