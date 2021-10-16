//
//  ContentView.swift
//  ObsEnvProject
//
//  Created by icelkas on 15/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var counter: Counter
    
    
    var body: some View {
        VStack{
            Text("\(self.counter.num)")
                .font(.largeTitle)
                .padding()
            Button("Increment"){
                self.counter.num += 1
            }
            
            FanceScoreView() // $ - bindable property that i am passing /  self.$counter.num to send value
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Counter())
    }
}
