//
//  som.swift
//  teste
//
//  Created by senac2018 on 09/03/2018.
//  Copyright © 2018 senac2018. All rights reserved.
//

import Foundation
import AVFoundation

var audioButton = AVAudioPlayer()

struct SoundSettings {
    static var mute = false
    static var audioPlayer = AVAudioPlayer()
}

public func btnSound(){
let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: "btnSound", ofType: "mp3")!)

do {
    // Preperation
    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
} catch _ {
}
do {
    try AVAudioSession.sharedInstance().setActive(true)
} catch _ {
}

// Play the sound
do {
    audioButton = try AVAudioPlayer(contentsOf: alertSound)
} catch _{
}

audioButton.prepareToPlay()
audioButton.play()
}

public func bgMusic(){
    let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: "bgMusic", ofType: "mp3")!)
    
    do {
        // Preperation
        try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
    } catch _ {
    }
    do {
        try AVAudioSession.sharedInstance().setActive(true)
    } catch _ {
    }
    
    // Play the sound
    do {
        SoundSettings.audioPlayer = try AVAudioPlayer(contentsOf: alertSound)
    } catch _{
    }
    
    SoundSettings.audioPlayer.prepareToPlay()
    SoundSettings.audioPlayer.numberOfLoops = -1
    SoundSettings.audioPlayer.play()
}


