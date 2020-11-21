//
//  TabBarStructure.swift
//  AppleMusicLayoutSwiftUI
//
//  Created by Sraavan Chevireddy on 11/21/20.
//

import SwiftUI

struct TabBarStructure: View {
    
    /// Selected tab bar index is 2
    @State var selectedIndex = 2
    
    /// Miniplayer properties
    @State var expand = false
    @Namespace var animation
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            TabView(selection: $selectedIndex){
                Text("Library")
                    .tag(0)
                    .tabItem {
                        Image(systemName: "rectangle.stack.person.crop.fill")
                            Text("Library")
                    }
                
                Text("Radio")
                    .tag(1)
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                            Text("Library")
                    }
                
                SearchView()
                    .tag(2)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                            Text("Library")
                    }
            }
            MiniPlayerView(expand: $expand, animation: animation)

        })
                
    }
}

struct TabBarStructure_Previews: PreviewProvider {
    static var previews: some View {
        TabBarStructure()
    }
}
