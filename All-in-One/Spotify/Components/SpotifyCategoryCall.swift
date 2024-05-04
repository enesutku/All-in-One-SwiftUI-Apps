// Created by Enes UTKU

import SwiftUI

struct SpotifyCategoryCall: View {
    
    var title: String = "Music"
    var isSelected: Bool = false
    
    var body: some View {
        Text(title)
            .font(.callout)
            .frame(minWidth: 35)
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .background(isSelected ? .spotifyGreen : .spotifyDarkGray)
            .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
            .clipShape(.capsule)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        VStack (spacing: 40) {
            SpotifyCategoryCall(title: "Music")
            SpotifyCategoryCall(title: "Playlist", isSelected: true)
            SpotifyCategoryCall(title: "Artist")
        }
    }
}
