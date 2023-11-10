//
//  ThreadsAppIcon.swift
//  ThreadClone
//
//  Created by Kay on 10/11/2023.
//

import SwiftUI

struct ThreadsAppIcon: View {
    var body: some View {
        Image("threads-app-icon")
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .padding()
        
    }
}

#Preview {
    ThreadsAppIcon()
}
