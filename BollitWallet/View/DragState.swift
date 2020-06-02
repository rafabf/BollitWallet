//
//  DragState.swift
//  BollitWallet
//
//  Created by Rafael Bollit on 31/05/2020.
//  Copyright © 2020 Rafael Bollit. All rights reserved.
//

import Foundation
import CoreGraphics

enum DragState {
    case none
    case pressing(idx: Int? = nil)
    case dragging(idx: Int? = nil, translation: CGSize)
    
    var idx: Int? {
        switch self {
        case .pressing(let idx), .dragging(let idx, _):
            return idx
        default:
            return nil
        }
    }
    
    
    var translation: CGSize{
        switch self {
        case .none, .pressing:
            return .zero
        case .dragging(_ , let translation):
            return translation
        }
    }
    
    var isPressing: Bool{
        switch self {
        case .pressing, .dragging:
            return true
        case .none:
            return false
        }
    }
    
    var isDragging: Bool {
        switch self {
        case .dragging:
            return true
        default:
            return false
        }
    }
    
}
