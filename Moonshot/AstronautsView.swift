//
//  AstronautsView.swift
//  Moonshot
//
//  Created by Federico Cipriani on 29/09/22.
//

import SwiftUI

struct AstronautsView: View {
    
    let astronaut: Astronaut
    
    var body: some View {
        
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astronaut.description)
                    .padding()
                
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AstronautsView_Previews: PreviewProvider {
    
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        AstronautsView(astronaut: astronauts["aldrin"]!)
            .preferredColorScheme(.dark)
    }
}
