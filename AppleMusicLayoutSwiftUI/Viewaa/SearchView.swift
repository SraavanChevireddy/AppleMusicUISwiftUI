//
//  SearchView.swift
//  AppleMusicLayoutSwiftUI
//
//  Created by Sraavan Chevireddy on 11/21/20.
//

import SwiftUI

struct SearchView: View {
    @State var isSearching = false
    @State var searchText = ""
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    SearchBar(searchText: $searchText, isSearching: $isSearching)
                        .padding(.bottom)
                    LazyVGrid(columns: [
                        GridItem(.flexible(),spacing: 12),
                        GridItem(.flexible(),spacing: 12)
                    ], spacing: 10, content: {
                        ForEach(1...10,id: \.self){ index in
                            VStack{
                                Image("p\(index)")
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width/2 - 30, height: 180)
                                    .cornerRadius(10)
                            }.padding(.horizontal)
                        }
                    }).padding(.bottom,10)
                    
                    Spacer(minLength: 0)
                }.padding(.bottom,80)
            }
            .navigationTitle("Search")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
