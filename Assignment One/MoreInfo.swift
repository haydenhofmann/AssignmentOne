//
//  MoreInfo.swift
//  Assignment One
//
//  Created by Hayden hofmann on 1/25/22.
//

import SwiftUI

struct MoreInfo: View {
    var body: some View {
        VStack{
            Text("What is COVID?").font(.title)
            Text("COVID is a specific coronavirus called SARS-CoV-2 that causes mild to severe respiratory illness. It is very contagious as it can spreads through small respiratory droplets.").font(.subheadline).multilineTextAlignment(.center).padding()
            Link("CDC Isolation and Quarantine", destination: URL(string: "https://www.cdc.gov/coronavirus/2019-ncov/your-health/quarantine-isolation.html")!)
            
        }
        
    }
}

struct MoreInfo_Previews: PreviewProvider {
    static var previews: some View {
        MoreInfo()
    }
}
