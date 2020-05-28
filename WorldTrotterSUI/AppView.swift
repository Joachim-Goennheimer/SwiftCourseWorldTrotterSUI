//
//  AppView.swift
//  WorldTrotterSUI
//
//  Created by Joachim Goennheimer on 28.05.20.
//  Copyright © 2020 Joachim Goennheimer. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView() {
            ConversionView()
                .tabItem {
                    Image("ConvertIcon")
                    Text("Convert")
            }
            MapView()
                .tabItem {
                    Image("MapIcon")
                    Text("Map")
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
