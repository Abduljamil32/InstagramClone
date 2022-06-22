//
//  ContentView.swift
//  InstagramClone
//
//  Created by Avaz Mukhitdinov on 15/05/22.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var tabSelection = 0
    
    var body: some View {
       
            TabView(){
                MainScreen()
                    .tabItem({Image(systemName: "house")})
                SearchScreen()
                    .tabItem({Image(systemName: "magnifyingglass")})
               
                PublishScreen()
                    .tabItem({Image(systemName: "plus.square")})
               
                MessageScreen()
                    .tabItem({Image(systemName: "suit.heart")})
                ProfileScreen()
                    .tabItem({Image(systemName: "person")})
                
            }
            
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
