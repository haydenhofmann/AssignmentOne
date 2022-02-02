//
//  ButtonList.swift
//  Assignment One
//
//  Created by Hayden hofmann on 1/25/22.
//

import SwiftUI

struct ButtonList: View {
    var body: some View {
        
       
        NavigationView {
            VStack {

                Text("COVID Cough Classifier").font(.title)
                Profile()
                Text("Welcome to our iOS app that classifies a cough as COVID positive or COVID negative!").font(.subheadline).multilineTextAlignment(.center).padding().padding()
            HStack {
//                NavigationLink(destination: RecorderView(audioRecorder: AudioRecorder())){
//                    Button(action: {
//
//                    }, label: {
//                        Text("Record Cough")
//
//                    }).clipShape(Capsule()).foregroundColor(Color.white).padding().background(Color.blue).cornerRadius(20)
//                }
                NavigationLink {
                    RecorderView(audioRecorder: AudioRecorder())
                } label: {
                    Text("Record Cough").font(Font.system(size:30, design: .default))
                }.clipShape(Capsule()).background(Color.blue).foregroundColor(Color.white).cornerRadius(10)
                
            
                NavigationLink {
                    MoreInfo()
                } label: {
                    Text("COVID Info").font(Font.system(size:30, design: .default))
                  
                }.clipShape(Capsule()).background(Color.blue).foregroundColor(Color.white).cornerRadius(10)
            
        }
            }.navigationTitle(Text("Back")).navigationBarHidden(true)
        }
    }
}
    
struct ButtonList_Previews: PreviewProvider {
    static var previews: some View {
        ButtonList()
    }
}
