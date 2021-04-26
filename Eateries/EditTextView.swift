////
////  EditTextView.swift
////  Milestone1
////
////  Created by Johnson Taylor on 6/4/21.
////
//
//import Foundation
//import SwiftUI
//
//    
//    
//    
//
//
//struct EditTextView: View {
//    
//    @ObservedObject var entry: Entry
//
//    
//    
//    
//    
//    var body: some View{
//        
//            VStack{
//                Form {
//                    Section{
//                        VStack{Text("Title")
//                            .font(.footnote)
//                        TextEditor(text: $entry.title)
//                            .border(Color.black, width: 1)}
//                            
//                        VStack{Text("Description")
//                            .font(.footnote)
//                        TextEditor(text: $entry.description)
//                            .border(Color.black, width: 1)}
//                        VStack{Text("Story")
//                            .font(.footnote)
//                            TextEditor(text: $entry.story)
//                                .border(Color.black, width: 1)}
//                        VStack{Text("Recipe")
//                            .font(.footnote)
//                        TextEditor(text: $entry.recipe)
//                            .border(Color.black, width: 1)}
//                        VStack{Text("Ingredients")
//                            .font(.footnote)
//                        TextEditor(text: $entry.ingredients)
//                            .border(Color.black, width: 1)}
//                        VStack{Text("ImageURL")
//                            .font(.footnote)
//                        TextEditor(text: $entry.image)
//                            .border(Color.black, width: 1)}
//                    }
//                }
//
//                
//      }
//          .navigationTitle("Edit Entry")
//      }
//}
//
//
