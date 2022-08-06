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
.previewInterfaceOrientation(.portrait)
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
                CellContent(
                    ImageContent: "data1",
                    ProfileContent: "cindy",
                    TitleContent: "Keshi Playlist (Cindy Loving)",
                    DescriptionContent: "ini adalah Lagu Terbaik",
                    DurationContent: "10:03"
                )
                
                CellContent(
                    ImageContent: "data2",
                    ProfileContent: "cindy",
                    TitleContent: "Studio Ghibli - Relaxing Piano Medly",
                    DescriptionContent: "ini adalah sebait dari ringkasan mengenai lagu ini",
                    DurationContent: "08:15"
                )
                
                CellContent(
                    ImageContent: "data3",
                    ProfileContent: "cindy",
                    TitleContent: "Positive Morning - All Monday",
                    DescriptionContent: "ini adalah sebait dari ringkasan mengenai lagu ini cocok untuk di dengar",
                    DurationContent: "10:03"
                )
                
                CellContent(
                    ImageContent: "data4",
                    ProfileContent: "cindy",
                    TitleContent: "Mac Ayres - Full Post Album",
                    DescriptionContent: "ini adalah sebait dari ringkasan mengenai lagu ini cocok untuk di dengar",
                    DurationContent: "10:03"
                )
                
            }
        }
        .listStyle(InsetListStyle())
    }
}

struct CellContent: View {

    var ImageContent: String
    var ProfileContent: String
    var TitleContent: String
    var DescriptionContent: String
    var DurationContent: String
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(ImageContent)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Text(DurationContent)
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
            DetailProfile(baseProfile: ProfileContent)
                .frame(maxWidth: 30, alignment: .leading)
            
            DetailDescription(baseTitle: TitleContent, baseDesc: DescriptionContent)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "list.bullet")
                .padding(.top, 5)
        }
    }
}

struct DetailProfile: View {
    var baseProfile: String
    var body: some View {
        Image(baseProfile)
            .renderingMode(.original)
            .resizable()
            .frame(width: 30, height: 30)
            .clipShape(Circle())
    }
}

struct DetailDescription: View {
    var baseTitle: String
    var baseDesc: String
    var body: some View {
        // alignment .leading make a content start from left
        VStack(alignment: .leading) {
            Text(baseTitle).font(.headline)
            Text(baseDesc).font(.caption)
            Spacer()
        }
    }
}
