//
//  ContentView.swift
//  SwiftUI-List
//
//  Created by Raivis on 06/04/2020.
//  Copyright © 2020 Raivis Olehno. All rights reserved.
//

import SwiftUI
struct User: Identifiable {
    //unique id
    var id: String = UUID().uuidString
    
    //username
    
    let name: String
    
    //userprofile avatar
    
    let avatar: String
    
    //init
    
    init(name:String, avatar:String){
        self.name = name
        self.avatar = avatar
    }
    
}


struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
