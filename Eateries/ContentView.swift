//
//  File.swift
//  Milestone1
//
//  Created by Johnson Taylor on 31/3/21.
//

import Foundation
import SwiftUI

extension String {
    func load() -> UIImage {
        // function that allows for URL to image conversion
        do {
            // convert string to URL
            guard let url = URL(string: self)
                else{
            //return empty image if URL is invalid
                return UIImage()
                
            }
            let data: Data = try
                Data(contentsOf: url)
            
            return UIImage(data: data)
                ?? UIImage()
            
        } catch {
            
        }
        
        return UIImage()
    }
}

struct ContentView: View {
    @Binding var entries: [Entry]
    var body: some View {
        NavigationView {
            MasterView(entries: $entries)
                .navigationBarItems(leading: EditButton(), trailing: Button("+", action: { entries.append(Entry(title: "New", location: "New", notes: "New", review: ["New"], author: ["New"], image: "New"))}))
        }
    }
}

struct MasterView: View {
    @Binding var entries: [Entry]
    var body: some View {
        List {
            // looping through Entry objects
            ForEach(entries) {
                DetailView(entry: $entries[identifiedBy: $0])

            }.onMove {
                //onMove function, which allows moving of entries in EditMode
                entries.move(fromOffsets: $0, toOffset: $1)
                EntryApp.save()
            }.onDelete {
                //onDelete function, which allows for entries to be deleted in EditMode
                entries.remove(atOffsets: $0)
                EntryApp.save()
            }
        }
    }
}

struct DetailView: View {
    @Binding var entry: Entry
    var body: some View {
        NavigationLink(
            destination: DetailsView(entry: $entry), label: {
                HStack{
                    Image(uiImage: entry.image.load())
                        // Image paramters
                        .resizable()
                        .frame (width:75, height:50)
                        .scaledToFit()
                    VStack(alignment: .leading){


                        Text(entry.title)
                            // Title parameters
                            .padding(.horizontal, 10)
                            .padding(.vertical, 10)
                            .font(.system(size: 20))


                        Text(entry.location)
                            // Location paramters
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 10)
                            .font(.footnote)
                            .lineSpacing(0.5)

                    }
                }
            })
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(entries: Binding(get: {
            EntryApp.model
        }, set: { newValue in
            EntryApp.model = newValue
        }))
    }
}
