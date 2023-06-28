//
//  SecondView.swift
//  Practice_2
//
//  Created by Taijaun Pitt on 28/06/2023.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var swapNumbersViewModel: SwapNumbersViewModel
    
    var body: some View {
        VStack {
            Button {
                swapNumbersViewModel.swapNumbers()
            } label: {
                Text("Swap Numbers")
            }
            
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
