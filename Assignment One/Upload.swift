//
//  Upload.swift
//  Assignment One
//
//  Created by Hayden hofmann on 1/25/22.
//

import SwiftUI

struct Upload: View {
    var body: some View {
        
        VStack {
            Text("Choose an Option").font(.title)
        HStack {
            VStack{
                Text("Record").padding()
                Button(action: {}) {
                    Label("", systemImage: "record.circle").foregroundColor(Color.red)
                }.imageScale(.large)
            }.padding()
            VStack{
                Text("File Upload").padding()
                Button(action: {}) {
                    Label("", systemImage: "square.and.arrow.up").foregroundColor(Color.blue)
                }.imageScale(.large)
            }
        }
        }
        
    }
}

struct Upload_Previews: PreviewProvider {
    static var previews: some View {
        Upload()
    }
}
