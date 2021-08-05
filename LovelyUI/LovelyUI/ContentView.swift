//
//  ContentView.swift
//  LovelyUI
//
//  Created by Debora Moura on 26/06/20.
//  Copyright © 2020 Debora Moura. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor.base
        UINavigationBar.appearance().tintColor = UIColor.accentColor
    }
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: WorkoutView()) {
                    Text("Show WorkoutView")
                }
                NavigationLink(destination: ExploreView()) {
                    Text("Show ExploreView")
                }
                NavigationLink(destination: WelcomeView()) {
                    Text("Show WelcomeView")
                }
            }
            .navigationBarTitle("Screens")
            .edgesIgnoringSafeArea(.top)
            .padding(.top, 1)
        }
        .background(Color.red)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//https://www.behance.net/gallery/78953297/Health-Fitness-Mobile-App-UI-UX-Kit?tracking_source=search_projects_recommended%7Cui%20kit%20app
