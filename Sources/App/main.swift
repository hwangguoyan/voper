import Vapor

let drop = Droplet()
drop.get {_ in

    return try JSON(node:[
        "message": "hello"
        ])

}
drop.get("helloa","there") { requset in
    
    return try JSON(node:[
        "message": "hello vapor"
        ])
    
}
drop.get("WWDC17") { requset in
    
    return try JSON(node: [
        "message": "hello WWDC17"
        ])
    
}

drop.run()
