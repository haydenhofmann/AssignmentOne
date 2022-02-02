//
//  RecordingsList.swift
//  Assignment One
//
//  Created by Hayden hofmann on 2/2/22.
//

import SwiftUI

struct RecordingsList: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    
    var body: some View {
        List {
                    ForEach(audioRecorder.recordings, id: \.createdAt) { recording in
                        
                        RecordingRow(audioURL: recording.fileURL)
                            
                        
                        
                    }.onDelete(perform: delete)
        }
    }
    
    func delete(at offsets: IndexSet) {
            
            var urlsToDelete = [URL]()
            for index in offsets {
                urlsToDelete.append(audioRecorder.recordings[index].fileURL)
            }
            audioRecorder.deleteRecording(urlsToDelete: urlsToDelete)
        }
}


struct RecordingRow: View {
    
    var audioURL: URL
    
        
        var body: some View {
            HStack {
                    Text("\(audioURL.lastPathComponent)")
//                    Button(action: {}) {
//                        Label("", systemImage: "trash").foregroundColor(Color.red)
//                    }
                
                Spacer()
            }
    }
}


struct RecordingsList_Previews: PreviewProvider {
    static var previews: some View {
        RecordingsList(audioRecorder: AudioRecorder())
    }
}
