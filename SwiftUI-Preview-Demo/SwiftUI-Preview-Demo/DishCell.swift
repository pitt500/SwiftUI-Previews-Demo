//
//  DishCell.swift
//  SwiftUI-Preview-Demo
//
//  Created by projas on 12/13/19.
//  Copyright © 2019 projas. All rights reserved.
//

import Foundation
import SwiftUI

struct DishCell: View {
  let dish: Dish
  
  var body: some View {
    HStack {
      
      
      Image(dish.imageURL)
        .resizable()
        .frame(width: 100, height: 100, alignment: .center)
        .clipShape(Circle())
      VStack(alignment: .leading) {
        Text(dish.name)
        Text("$\(dish.price.rounded(.down))")
          .foregroundColor(Color.green)
      }
      
    }.padding(5)
  }
}


struct DishCell_Preview: PreviewProvider {
  static var previews: some View {
    Group {
      ForEach(ContentSizeCategory.allCases, id: \.hashValue) { category in
        DishCell(dish: Dish(name: "Test", price: 23, imageURL: "e1") ).previewLayout(.sizeThatFits)
          .environment(\.sizeCategory, category)
      }
    }
  }
}
