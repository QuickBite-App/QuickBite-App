//
//  NavigationTab.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 28/04/2023.
//

import SwiftUI

struct NavigationTab: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            MenuListView()
                .tabItem {
                    Label("Favourite", systemImage: "heart")
                }

            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart.fill")
                }

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
        .accentColor(Color.red)
        
    }
}

struct NavigationTab_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTab()
    }
}
