//
//  AstronautsOverviewView.swift
//  Moonshot
//
//  Created by Federico Cipriani on 30/09/22.
//

import SwiftUI

struct AstronautsOverviewView: View {
    
    let crew: [MissionView.CrewMember]
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { crewMember in
                    NavigationLink {
                        AstronautsView(astronaut: crewMember.astronaut)
                    } label: {
                        HStack {
                            Image(crewMember.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(Capsule())
                                .overlay(
                                    Capsule()
                                        .strokeBorder(.white, lineWidth: 1)
                                )
                            
                            VStack(alignment: .leading) {
                                Text(crewMember.astronaut.name)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                
                                Text(crewMember.role)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct AstronautsOverviewView_Previews: PreviewProvider {
    
    static var previews: some View {
        AstronautsOverviewView(crew: [])
    }
}
