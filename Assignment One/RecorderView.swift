//
//  RecorderView.swift
//  Assignment One
//
//  Created by Hayden hofmann on 2/2/22.
//

import SwiftUI

struct RecorderView: View {
    @ObservedObject var audioRecorder: AudioRecorder
        
        var body: some View {
            NavigationView {
            VStack {
                RecordingsList(audioRecorder: audioRecorder)
                if audioRecorder.recording == false {
                    Button(action: {self.audioRecorder.startRecording()}) {
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 100, height: 100)
                                        .clipped()
                                        .foregroundColor(.red)
                                        .padding(.bottom, 40)
                                }
                            } else {
                                Button(action: {self.audioRecorder.stopRecording()}) {
                                    Image(systemName: "stop.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 100, height: 100)
                                        .clipped()
                                        .foregroundColor(.red)
                                        .padding(.bottom, 40)
                                }
                            }
                        
            } .navigationBarTitle("Voice Recorder").navigationBarTitle("Voice recorder")
                    .navigationBarItems(trailing: EditButton())
        }
        }
}

struct RecorderView_Previews: PreviewProvider {
    static var previews: some View {
        RecorderView(audioRecorder: AudioRecorder())
    }
}
