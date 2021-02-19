//
//  DessertsCollectionView.swift
//  CollectionViewINSWiftUI
//
//  Created by Knoxpo MacBook Pro on 19/02/21.
//

import SwiftUI

struct DessertsCollectionView: View {
    //let dataD2: [DessertModel]
    
    var body: some View {
        Home()
    }
}

struct DessertsCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        DessertsCollectionView()
    }
}

struct Home : View {
    
    @State var selected = "row"
   // let dataD: [DessertModel]
    
    var body : some View {
        VStack {
            
            ZStack{
                HStack {
                    Button(action: {
                    
                        
                    }) {
                        
                        Image("setting").resizable().frame(width: 20, height: 30).foregroundColor(Color.red)
                        
                        
                        
                        
                    }.offset(y: -30)
                    
                    Spacer()
                    
                    Button(action : {
                    
                        
                    }) {
                        
                        Image("Search").resizable().frame(width: 30, height: 40).foregroundColor(Color.black)
                    }.offset(y: -30)
                    
                
                }
                
                HStack {
                    
                    Button(action : {
                        
                        self.selected = "row"
                        
                        
                    }) {
                        VStack{
                            Image("row").resizable().frame(width: 25 ,height: 25).foregroundColor( self.selected == "row" ? Color.pink : Color.black.opacity(0.3))
                            
                            Circle().fill(self.selected == "row" ? Color.pink : Color.black).frame(width: 5,height: 5).padding(.vertical,4)
                       
                        }
                     
                    }
                    
                    
                    Button (action : {
                        
                        self.selected = "grid"
                        
                    })
                    {
                        VStack{
                            Image("grid").resizable().frame(width: 25, height: 25).foregroundColor(self.selected == "grid" ?  Color.pink : Color.black.opacity(0.3))
                            
                            Circle().fill(self.selected == "grid" ? Color.pink : Color.clear).frame(width: 5 , height: 5).padding(.vertical,4)
                         
                        }
                   
                        
                    }
                    
                  
               
                }
                
                
                
                
                
                
                
                
                
                
                
            }.padding([.top,.horizontal])
            .background(Color.white)
            
            ScrollView(.vertical,showsIndicators: false)
                {
                
                
                if self.selected == "row" {
                    
                    RowView()
                }
                else
                {
                    
                    
                    GridView()
                }
                
                
                
                
            }
            
            
            
        }.background(Color("Color"))
        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
        .padding(.bottom,10)
        
        
     
    }
    
   
}


struct RowView: View{
    
  //  let dataD1: [DessertModel]
    var body: some View {
        
        VStack(spacing: 10) {
            ForEach(rowData) { i in
                VStack(spacing: 20){
                    
                    Image(i.pic).resizable().frame(height:80)
                    
                    HStack {
                        
                        Text(i.name).font(.title)
                        
                        Spacer()
                        
                        Text(i.likes)
                        
                        Button(action: {
                            
                            
                        })
                        {
                            Image("heart").renderingMode(.original)
                        }
                    }.padding([.horizontal,.bottom])
                    
                    
                }.background(Color.white)
               // .CornerRadius(30)
                
                
             
            }
            
            
        }.padding()
        
   
    }
   
    
}

struct GridView: View {
 
    //let gridData1: [DessertModel]
    var body: some View {
        
        VStack(spacing: 20){
            
            ForEach(gridData){i in
                
                
                HStack(spacing: 20) {
                    
                    ForEach(i.rows){j in
                        VStack {
                            Image(j.pic).resizable().frame(width: 50, height: 50)
                           
                            
                            HStack {
                                
                                Text(j.pic).font(.title)
                                
                            Spacer()
                                
                                Text(j.likes)
                                
                                Button(action: {
                                    
                                    
                                    
                                })
                                
                                { Image("heart").renderingMode(.original)
                                }
                                
                            }.padding([.horizontal,.bottom])
                            
                          
                        }.background(Color.white)
                       // .CornerRadius(10)
                        
                              
                     
                        
                    }
                    
                  
                }.padding()
                
                
                
                
                
                
            }
            
            
            
            
            
            
            
            
        }
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
}



struct DataType: Identifiable {
    
    
    
    var id : Int
    var rows : [row]
    
}


struct row : Identifiable {
    
    
    var id : Int
    var name : String
    var pic : String
    var likes : String
}


//sample Data

var gridData = [

 DataType(id: 0, rows:
            [row(id: 0, name: "Matcha Raspberry", pic: "r11", likes: "190"), row(id: 1, name: "Red Velvet", pic: "r12", likes: "100")]),
    
    DataType(id: 1, rows: [row(id: 0, name: "CUPCakes with cream and Berries", pic: "r21", likes: "300"), row(id: 1, name: "Pistanchio Macarons", pic: "r22", likes: "20")]),
    DataType(id: 2, rows:
                [row(id: 0, name: "Creamy Strawberry Tart", pic: "r31", likes: "32"), row(id: 1, name: "Delisious ChesseCake", pic: "r32", likes: "200")])

]

var rowData = [


    row(id: 0, name: "Matcha Raspberry", pic: "r11", likes: "190"),
    row(id: 1, name: "Red Velvet", pic: "r12", likes: "100"),

    row(id: 2, name: "CUPCakes with cream and Berries", pic: "r21", likes: "300"),
    row(id: 3, name: "Pistanchio Macarons", pic: "r22", likes: "20"),
    row(id: 4, name: "Creamy Strawberry Tart", pic: "r31", likes: "32"),
    row(id: 5, name: "Delisious ChesseCake", pic: "r32", likes: "200")

]


