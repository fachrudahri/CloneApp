//
//  ContentView.swift
//  CloneApp
//
//  Created by fachru dahri on 21/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TabView {
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Explore")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("Message")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                        Text("Collection")
                    }
            }
            .accentColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View {
        NavigationView{
            Content()
            
                .navigationBarItems(
                    leading:
                        HStack {
                            Button(action: {print("Helo")}) {
                                Image("youtube")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 90, height: 50)
                                
                            }
                    },
                    
                    trailing:
                        HStack(spacing: 5) {
                            Button(action: {print("Hello tray")}) {
                                Image(systemName: "tray.full")
                                    .foregroundColor(Color.gray)
                            }
                            
                            Button(action: {print("Hello vids")}) {
                                Image(systemName: "video.fill")
                                    .foregroundColor(Color.gray)
                            }
                            
                            Button(action: {print("Hello search")}) {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color.gray)
                            }
                            Button(action: {print("Hello sayangku ❤️")}) {
                                Image("cindy")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .clipShape(Circle())
                            }
                        }
                )
                // make a navigation no space padding top (disable to take effect)
                .navigationBarTitle("", displayMode: .inline)
        // to show navigation on ipad device
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Content: View {
    // clear border in List UITable
    init() {
        UITableView.appearance().separatorColor = .clear
    }
    var body: some View {
        List {
            VStack(spacing: 10) {
                // make a stack start from bottom right
                ZStack(alignment: .bottomTrailing) {
                    Image("data1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("10:00")
                        .font(.caption)
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                // alignment verticalAlignment. top make a flat top content
                HStack(alignment: VerticalAlignment.top) {
                    Image("cindy")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    // alignment .leading make a content start from left
                    VStack(alignment: .leading) {
                        Text("Keshi Playlist (Loving Cindy)").font(.headline)
                        Text("ini adalah sebait dari ringkasan mengenai lagu ini cocok untuk di dengar").font(.caption)
                        Spacer()
                    }
                    
                    Image(systemName: "list.bullet")
                        .padding(.top, 5)
                }
                
                ZStack(alignment: .bottomTrailing) {
                    Image("data2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("10:00")
                        .font(.caption)
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                HStack(alignment: VerticalAlignment.top) {
                    Image("cindy")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Studio Ghibli - Relaxing piano medley LoFi").font(.headline)
                        Text("ini adalah sebait dari ringkasan mengenai lagu ini cocok untuk di dengar").font(.caption)
                        Spacer()
                    }
                    
                    Image(systemName: "list.bullet")
                        .padding(.top, 5)
                }
                
                ZStack(alignment: .bottomTrailing) {
                    Image("data3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("10:00")
                        .font(.caption)
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                HStack(alignment: VerticalAlignment.top) {
                    Image("cindy")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Positif Morning - Chill & Vibes").font(.headline)
                        Text("ini adalah sebait dari ringkasan mengenai lagu ini cocok untuk di dengar").font(.caption)
                        Spacer()
                    }
                    
                    Image(systemName: "list.bullet")
                        .padding(.top, 5)
                }
                
                ZStack(alignment: .bottomTrailing) {
                    Image("data4")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("10:00")
                        .font(.caption)
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                HStack(alignment: VerticalAlignment.top) {
                    Image("cindy")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Mac Ayres - Full Album Exclv").font(.headline)
                        Text("ini adalah sebait dari ringkasan mengenai lagu ini cocok untuk di dengar").font(.caption)
                        Spacer()
                    }
                    
                    Image(systemName: "list.bullet")
                        .padding(.top, 5)
                }
                
            }
        }
        .listStyle(InsetListStyle())
    }
}
