//
//  FanceScoreView.swift
//  ObsEnvProject
//
//  Created by icelkas on 15/10/2021.
//

import SwiftUI

struct FanceScoreView: View {
    
    @EnvironmentObject var counter: Counter
   // @Binding var score: Int // means this property will be sent from outside/ its better to use when use passs value only to one view ,but if you need to share some changes across the whole project ist better to use envoriment object
    
    var body: some View {
        VStack{
            Text("\(self.counter.num)") //string interpolation
            Button("Increment Value"){
                self.counter.num += 1
            }
        }
        .padding()
        .background(Color.orange)
    }
}

struct FanceScoreView_Previews: PreviewProvider {
    static var previews: some View {
        FanceScoreView()
    }
}
