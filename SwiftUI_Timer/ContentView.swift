//
//  ContentView.swift
//  SwiftUI_Timer
//
//  Created by 林定佑 on 2020/4/28.
//  Copyright © 2020 Gearraido. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var timer: Timer?
    @State var timeflag = false
    
    var body: some View {
        VStack {
            Text("Hello, World!")
            Button(action: {
                if self.timeflag == false {
                    self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { timer in
                        print("run timer")
                    })
                } else {
                    self.timer?.invalidate()
                    print("stop")
                }
                self.timeflag.toggle()
            }) {
                Text(self.timeflag ? "stop timer": "start timer")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
