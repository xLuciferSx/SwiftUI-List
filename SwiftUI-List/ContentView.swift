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

//new Data

struct TestData {
    static let userTimCook = User(name: "Tim Cook", avatar: "tim")
    static let userSteveJobs = User(name: "Steeve Jobs", avatar: "steve")
    static let userCraig = User(name: "Craig Federighi", avatar: "craig")
    static let userElonMusk = User(name: "Elon Musk", avatar: "elon")
    
    //posts
    
    static func posts() -> [Post] {
        let post1 = Post(user: userTimCook, image: "mojave", content: "Cook is the chief executive officer of Apple Inc., and previously served as the company's chief operating officer under its cofounder Steve Jobs.", time: "Just Now")
        
        let post2 = Post(user: userSteveJobs, image: "iphone", content: "Steven Jobs was an American business magnate and investor. He was the chairman, chief executive officer (CEO), and co-founder of Apple Inc.", time: "1 min ago")
        
        let post3 = Post(user: userCraig, image: "catalina", content: "Craig Federighi is Apple's senior vice president of Software Engineering.", time: "30 mins ago")
        
        let post4 = Post(user: userElonMusk, image: "tesla", content: "Elon Musk FRS is a technology entrepreneur, investor, and engineer.", time: "40 mins ago")
        
        return [post1,post2,post3, post4]
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
