//
//  GrideItemView.swift
//  CollectionViewINSWiftUI
//
//  Created by Knoxpo MacBook Pro on 19/02/21.
//

import SwiftUI

struct GrideItemView: View {
    private var symbols = ["keyboard","printer.fill","tv.fill","headphones","mic","video"]
    private var colors: [Color] = [.yellow, .purple, .green]
    private var gridItemLayout = [GridItem(.adaptive(minimum: 50))]
    var body: some View {
    
        ScrollView {
        LazyVGrid(columns: gridItemLayout, spacing: 20) {
            ForEach((0..<90), id: \.self) {
                
                Image(systemName: symbols[$0 % symbols.count])
                
                    .font(.system(size: 30))
                    .frame(width: 60, height:60)
                    .background(colors[$0 % colors.count])
                
                    .cornerRadius(10)
                
                
                
                
                
            }
                
                
                
                
                
                
            }
            
            
            
            
            
            
            
            
            
            
        }
        
        
        
        
        
    }
}

struct GrideItemView_Previews: PreviewProvider {
    static var previews: some View {
        GrideItemView()
    }
}
