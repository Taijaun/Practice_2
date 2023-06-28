//
//  BigView.swift
//  Practice_2
//
//  Created by Taijaun Pitt on 28/06/2023.
//

import Foundation
import SwiftUI

struct BigView: View {
    @EnvironmentObject var swapNumbersViewModel: SwapNumbersViewModel
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                FirstView()
                .frame(width: geo.size.width, height: geo.size.height * 0.7)
                .background(Color.red)
                
                SecondView()
                .frame(width: geo.size.width, height: geo.size.height * 0.3)
            }
        }
        .frame( maxWidth: .infinity, maxHeight: .infinity)
    }
}


