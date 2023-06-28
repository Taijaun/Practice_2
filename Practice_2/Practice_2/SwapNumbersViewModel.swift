//
//  SwapNumbersViewModel.swift
//  Practice_2
//
//  Created by Taijaun Pitt on 28/06/2023.
//

import Foundation

class SwapNumbersViewModel: ObservableObject {
    @Published var first: Int = 8
    @Published var second: Int = 689
    
    func swapNumbers() {
        (first, second) = (second, first)
    }
}
