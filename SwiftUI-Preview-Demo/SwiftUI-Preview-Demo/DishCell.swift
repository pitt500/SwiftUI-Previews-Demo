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
  var body: some View {
    HStack {
      
      
      Image("e1")
        .resizable()
        .frame(width: 100, height: 100, alignment: .center)
        .clipShape(Circle())
      VStack(alignment: .leading) {
        Text("DishCell")
        Text("$35")
      }
      
    }.padding(5)
  }
}


struct DishCell_Preview: PreviewProvider {
  static var previews: some View {
    Group {
      ForEach(ContentSizeCategory.allCases, id: \.hashValue) { category in
        DishCell().previewLayout(.sizeThatFits)
          .environment(\.sizeCategory, category)
      }
    }
  }
}
