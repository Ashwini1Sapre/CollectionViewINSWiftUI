//
//  ContentView.swift
//  CollectionViewINSWiftUI
//
//  Created by Knoxpo MacBook Pro on 19/02/21.
//

import SwiftUI

struct DataModel: Identifiable {
    let id: String
    let name: String
    let imageName: String
    
    
}

struct ContentView: View {
    let data: [DataModel] = [
    
        .init(id: "0", name: "dooly", imageName: "1"),
        .init(id: "1", name:"Pappu" , imageName: "2"),
        .init(id: "2", name: "kiku", imageName: "3"),
        .init(id: "3", name: "heenu", imageName: "4"),
        .init(id: "4", name: "kirri", imageName: "5")
   
    ]

    var body: some View {
      
        NavigationView {
            VStack {
                List  {
                    ForEach(data) { items in
                        ForEach(0..<2) { item in
                     CollectionView(data: items)
                  
                    }
                  
                    }.navigationBarTitle("CollectionView")
                
               
            }
         
        }
        
    
    }
        
    
}

    struct CollectionView: View {
        
        let data: DataModel
        
        var body: some View {
            
            VStack {
                
                
                HStack {
                    
                    ForEach(0..<2) { items in
                        
                     Spacer()
                        
                        Image(self.data.imageName)
                            .resizable()
                            .frame(width:60, height: 60)
                            .foregroundColor(.yellow)
                            .clipShape(Circle())
                            .shadow(radius: 10)
                        Spacer()
                        
                 
                    }.padding(.bottom, 16)
                    
             
                }
                
                HStack {
                    
                    Spacer()
                    
                    Text(self.data.name)
                    
//                    Spacer()
//
//                    Text(self.data.name)
              
                }
                
                
            
            
            }
            
         
        }
     
    }

}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .light)
    }
}
