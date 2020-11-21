//
//  MiniPlayerView.swift
//  AppleMusicLayoutSwiftUI
//
//  Created by Sraavan Chevireddy on 11/21/20.
//

import SwiftUI

struct MiniPlayerView: View {
    @Binding var expand : Bool
    var animation : Namespace.ID
    var body: some View {
        VStack{
            HStack(spacing: 8){
                Image("pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .cornerRadius(10)
                
                Text("Lady Gaga")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Spacer(minLength: 0)
                
                Button(action: {
                    print("Play button tapped")
                }, label: {
                    Image(systemName: "play.fill")
                        .foregroundColor(.primary)
                        .font(.title2)
                })
                
                Button(action: {
                    print("Forward button tapped")
                }, label: {
                    Image(systemName: "forward.fill")
                        .foregroundColor(.primary)
                        .font(.title2)
                })
            }
            .padding(.horizontal)
        }
        .frame(maxHeight: expand ? .infinity : 80)
        .background(VStack(spacing: 0){
            BlurView()
            Divider()
        })
        .onTapGesture {
            
            withAnimation(.spring(), {self.expand.toggle()})
        }
        .ignoresSafeArea()
        .offset(y: expand ? 0 : -48)
    }
}

