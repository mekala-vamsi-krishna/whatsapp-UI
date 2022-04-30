//
//  ContentView.swift
//  WhatsappSample
//
//  Created by Mekala Vamsi Krishna on 15/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SettingsView()
                
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }.tag(0)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    HStack {
                        Image("ProfilePic")
                            .resizable()
                            .frame(width: 60, height: 60, alignment: .center)
                            .cornerRadius(5)
                            .padding(5)
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Mekala Vamsi Krishna")
                            Text("iOS Developer")
                        }.padding(.leading, 5)
                    }.padding(.leading, -10)
                }
                Section {
                    HStack {
                        Image(systemName: "star")
                        Text("Starred Messages")
                            .padding()
                    }.frame(height: 40)
                    HStack {
                        Image(systemName: "desktopcomputer")
                        Text("Whatsapp Web/Desktop")
                            .padding()
                    }.frame(height: 40)
                }
                Section {
                    HStack {
                        Image(systemName: "person")
                        Text("Account")
                            .padding()
                    }.frame(height: 40)
                    HStack {
                        Image(systemName: "bubble.left.and.bubble.right")
                        Text("Chats")
                            .padding()
                    }.frame(height: 40)
                    HStack {
                        Image(systemName: "bell")
                        Text("Notification")
                            .padding()
                    }.frame(height: 40)
                    HStack {
                        Image(systemName: "arrow.up.arrow.down")
                        Text("Data and storge usage")
                            .padding()
                    }.frame(height: 40)
                }
                Section {
                    HStack {
                        Image(systemName: "info.circle")
                        Text("Help")
                            .padding()
                    }.frame(height: 40)
                    HStack {
                        Image(systemName: "suit.heart")
                        Text("Tell a friend")
                            .padding()
                    }.frame(height: 40)
                }
            }
            .navigationTitle("Settings")
                .navigationBarItems(trailing:
                        Button(action: {
                            print("Tapped")
                        }, label: {
                        Image(systemName: "qrcode")
                            .font(.title)
                        })
                )
        }
    }
}
