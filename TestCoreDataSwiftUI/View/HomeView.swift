//
//  HomeView.swift
//  TestCoreDataSwiftUI
//
//  Created by Sidney MALEO on 27/05/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State var showAdd = false
    
    var body: some View {
        NavigationView {
            Text("Home View")
                .sheet(
                    isPresented: $showAdd,
                    onDismiss: {
                        // A voir plus tard
                    },
                    content: {
                        AddContactView()
                    })
                .navigationTitle("Contacts")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            self.showAdd = true
                        }
                        label: {
                            Image(systemName: "plus")
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        EditButton()
                    }
                }
        }
    }
}

#Preview {
    HomeView()
}
