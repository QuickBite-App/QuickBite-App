//
//  ContentView.swift
//  Cryptox
//
//  Created by Folarin Akinloye on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("uid") var userID: String = ""
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        if userID == "" {
            OnBoardingView()
        } else {
            NavigationTab()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .accentColor(.red)
    }
}
