//
//  Practice_2App.swift
//  Practice_2
//
//  Created by Taijaun Pitt on 28/06/2023.
//

import SwiftUI

@main
struct Practice_2App: App {
    var body: some Scene {
        WindowGroup {
            BigView().environmentObject(SwapNumbersViewModel())
        }
    }
}
