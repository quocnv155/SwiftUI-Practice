//
//  BlurView.swift
//  AppleMusicAnimationsApp
//
//  Created by QuocNV on 10/02/2023.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterial))

        return view
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        //
    }
}
