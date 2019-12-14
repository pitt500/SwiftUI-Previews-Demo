//
//  ContentView.swift
//  SwiftUI-Preview-Demo
//
//  Created by projas on 12/10/19.
//  Copyright © 2019 projas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  let dishes = Dish.all()
  
  var body: some View {
    List {
      ForEach(dishes,id: \.name ) { dish in
        DishCell(dish: dish)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
