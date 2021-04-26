//
//  ContentView.swift
//  Milestone1
//
//  Created by Johnson Taylor on 20/3/21.
//
import Foundation
import SwiftUI



struct DetailsView: View {
    
    //Property wrapper to allow for per screen size alterations
    @Environment(\.horizontalSizeClass) var sizeClass
    @Environment(\.editMode) var editMode
//    @State private var draftEntry = Entry.default
    
//    @ObservedObject var entry: EntryC
    @Binding var entry: Entry
    
    
    
    var body: some View {

            ZStack {    //Background elements
                        Color.black
                Image(uiImage: entry.image.load())
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                 
                    .padding()
                    .opacity(0.3)
                            
                            .ignoresSafeArea()
                        // if statement covering regular size screen formating

                    if sizeClass == .regular {

                        VStack{  //Vertical Ordering and elements
                            
                            //Food Image
                            Image(uiImage: "\(entry.image)".load())
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 400, height: 300, alignment: .topLeading)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                                .padding()
                            
                            ScrollView {
                                // Food Title
                                Text("\(entry.title)")
                                    .font(.custom("Geneva", size: 35))
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 50)
                                    .frame(width: 700)
                                    .background(Color.red)
                                    .foregroundColor(.white)

                                    .lineSpacing(0.5)
                                
                                //Food Description
                                Text("\(entry.location)").italic()
                                    .padding(.horizontal, 5)
                                    .frame(width: 700)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .lineSpacing(0.5)
                                
                                //Food Story
                                Text("\(entry.notes)")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 700)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.body)
                                    .lineSpacing(0.5)
                                
                                //Food Recipe
                                Text("REVIEW")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 700)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .lineSpacing(0.5)
                                Text("\(entry.review)")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 700)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.callout)
                                    .lineSpacing(0.5)

                            }
                        }
                        
                        
                        // else encompasses all screen sizes other than regular ie: compact
                    }else{
                        
                        VStack{ //Vertical Ordering and elements
                            //Food Image
                            Image(uiImage: "\(entry.image)".load())
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 250.0, height: 200)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                            
                            ScrollView {
                                // Food Title
                                Text("\(entry.title)")
                                    .font(.custom("Geneva", size: 30))
                                    
                                    .padding(.horizontal, 20)
                                    .frame(width: 310, alignment: .topLeading)
                                    .background(Color.red)
                                    .foregroundColor(.white)

                                    .lineSpacing(0.5)
                                
                                //Food Description
                                Text("\(entry.location)").italic()
                                    .padding(.horizontal, 5)
                                    .frame(width: 310)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .lineSpacing(0.5)
                                
                                //Food Story
                                Text("\(entry.notes)")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 310)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.body)
                                    .lineSpacing(0.5)
                                
                                //Food Recipe
                                Text("REVIEW")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 310)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .lineSpacing(0.5)
                                Text("\(entry.review)")
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .frame(width: 310)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .font(.footnote)
                                    .lineSpacing(0.5)

                                
                            }
                            .navigationBarTitleDisplayMode(.inline)
                                                        
                            .navigationBarItems(trailing:
                                                    NavigationLink(destination: EditTextView(entry: $entry)) {
                                                Text("Edit Entry")})
                        
                        }
                    }
            }
    }

}
