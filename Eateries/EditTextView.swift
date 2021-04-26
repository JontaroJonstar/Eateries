//
//  EditTextView.swift
//  Milestone1
//
//  Created by Johnson Taylor on 6/4/21.
//

import Foundation
import SwiftUI

    
    
    


struct EditTextView: View {
    @Binding var entry: Entry
    
//    @ObservedObject var entry: Entry

    
    
    
    
    var body: some View{
        
            VStack{
                Form {
                    Section{
                        VStack{Text("Title")
                            .font(.footnote)
                        TextEditor(text: $entry.title)
                            .border(Color.black, width: 1)}
                            
                        VStack{Text("Location")
                            .font(.footnote)
                        TextEditor(text: $entry.location)
                            .border(Color.black, width: 1)}
                        VStack{Text("Notes")
                            .font(.footnote)
                            TextEditor(text: $entry.notes)
                                .border(Color.black, width: 1)}
                        VStack{Text("Author")
                            .font(.footnote)
                        TextEditor(text: $entry.review)
                            .border(Color.black, width: 1)}
                        VStack{Text("Review")
                            .font(.footnote)
                        TextEditor(text: $entry.review)
                            .border(Color.black, width: 1)}
                        VStack{Text("ImageURL")
                            .font(.footnote)
                        TextEditor(text: $entry.image)
                            .border(Color.black, width: 1)}
                    }
                }

                
      }
          .navigationTitle("Edit Entry")
      }
}


