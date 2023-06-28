//
//  FirstView.swift
//  Practice_2
//
//  Created by Taijaun Pitt on 28/06/2023.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject var swapNumbersViewModel: SwapNumbersViewModel
    var body: some View {
        VStack {
            Text("\(swapNumbersViewModel.first)")
            Text("\(swapNumbersViewModel.second)")
        }
//        .frame(width: geo.size.width, height: geo.size.height * 0.7)
//        .background(Color.red)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
