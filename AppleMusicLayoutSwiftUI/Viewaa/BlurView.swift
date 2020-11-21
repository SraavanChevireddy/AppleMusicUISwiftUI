//
//  BlurView.swift
//  AppleMusicLayoutSwiftUI
//
//  Created by Sraavan Chevireddy on 11/21/20.
//

import SwiftUI

struct BlurView : UIViewRepresentable{
    
    func makeUIView(context: Context) -> some UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterial))
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        print("There is not use of this method!")
    }
}
