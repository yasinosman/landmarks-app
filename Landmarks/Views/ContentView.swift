//
//  ContentView.swift
//  Landmarks
//
//  Created by Yasin Osman on 17.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var currentMenu: Tab = Tab.featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView {
            CategoryHome()
                .tabItem{
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem{
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
 
