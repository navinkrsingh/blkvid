//
//  Player.swift
//  HackShorts
//
//  Created by Singh, Navin on 19/03/23.
//

import AVKit
import SwiftUI

struct Player: View {
    
//    let weburl = URL(string: "https://www.pexels.com/video/time-lapse-video-of-the-city-8243574/")
    let localurl = Bundle.main.url(forResource: "sample", withExtension: "mp4")
    
    let player = AVPlayer(url: Bundle.main.url(forResource: "sample", withExtension: "mp4")!)
    let videoEnded = NotificationCenter.default.publisher(for: NSNotification.Name.AVPlayerItemDidPlayToEndTime)
    
    var body: some View {
        VStack {
            Text("Welcome to Hackathon 2023")
                .font(.title3)
            VideoPlayer(player: player)
        }.onAppear {
            player.play()
        }.onReceive(videoEnded) { _ in
            player.seek(to: .zero)
            player.play()
        }
    }
}
