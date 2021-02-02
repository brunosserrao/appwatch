//
//  ContentView.swift
//  App Watch WatchKit Extension
//
//  Created by Bruno Serrão on 30/01/21.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @State var aVAudioPlayer: AVAudioPlayer!
    
    let cats: [String] = ["galadriel", "gabriela", "jujuba"].shuffled()

    var body: some View {
        
        
        TabView {
            ForEach(cats, id: \.self) { cat in
                Image(cat)
                .resizable()
                .frame(width: 160.0, height: 160.0)
                .onTapGesture {
                    print("Cliquei na " + cat)
                    playCat(cat: cat)
                }
            }
        }
    }
    
    func playCat(cat: String) {
        let utterance = AVSpeechUtterance(string: cat)
        utterance.voice = AVSpeechSynthesisVoice(language: "pt-BR")
        utterance.rate = 0.1

        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
