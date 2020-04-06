//
//  ContentView.swift
//  SwiftUI-List
//
//  Created by Raivis on 06/04/2020.
//  Copyright © 2020 Raivis Olehno. All rights reserved.
//

import SwiftUI

//Identificators
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

//Post method
struct  Post: Identifiable {
    
    //unique id
    var id: String = UUID().uuidString
    
    //user
    
    let user: User!
    
    //post image
    
    let image: String?
    
    //post content
    
    let content : String?
    
    //post time
    
    let time: String!
    
    //Init
    
    init(user: User, image: String?,content: String?, time: String) {
        self.user = user
        self.image = image
        self.content = content
        self.time = time
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
