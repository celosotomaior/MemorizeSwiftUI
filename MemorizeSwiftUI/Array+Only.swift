//
//  Array+Only.swift
//  MemorizeSwiftUI
//
//  Created by Marcelo Sotomaior on 26/06/2020.
//  Copyright © 2020 Marcelo Sotomaior. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
