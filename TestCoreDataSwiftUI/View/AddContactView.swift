//
//  AddContactView.swift
//  TestCoreDataSwiftUI
//
//  Created by Sidney MALEO on 27/05/2024.
//

import SwiftUI

struct AddContactView: View {
    
    @State var firstName = ""
    @State var name = ""
    @State var email = ""
    @State var numeroString = ""
    @State var profileImage: UIImage?
    
    @State var showAlert = false
    var width:CGFloat = 125
    
    var body: some View {
        NavigationView {
            List {
                Section("Image") {
                    if profileImage == nil {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: width, height: width, alignment: .center)
                            .foregroundStyle(.secondary)
                    } else {
                        Image(uiImage: profileImage!)
                            .resizable()
                            .frame(width: width, height: width, alignment: .center)
                            .clipShape(Circle())
                    }
                    Button {
                       // Alerte
                        self.showAlert = true
                    } label: {
                        Text("Prendre une photo")
                    }
                }
                Section("Identité") {
                    TextFieldView(field: $firstName, value: "FirstName", type: .default)
                    TextFieldView(field: $name, value: "Name", type: .default)
                }
                Section("Contact") {
                    TextFieldView(field: $numeroString, value: "Numéro de télephone", type: .numberPad)
                    TextFieldView(field: $email, value: "Adresse Mail", type: .emailAddress)
                }
            }
            .navigationTitle("Ajouter un nouveau contact")
            .navigationBarTitleDisplayMode(.inline)
            .alert("Choisir le type de Media",isPresented: $showAlert) {
                Button("Caméra") {
                    
                }
                Button("Librairie") {
                    
                }
            }
        }
    }
}

#Preview {
    AddContactView()
}
