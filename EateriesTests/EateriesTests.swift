//
//  EateriesTests.swift
//  EateriesTests
//
//  Created by Johnson Taylor on 27/4/21.
//

import XCTest
@testable import Eateries

class EateriesTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testEntry() throws {
        let title = "food"
        let location = "yum"
        let notes = "delicious"
        let author = ["stuff"]
        let review = ["step1"]
        let image = "dish"
        let entryTest = Entry(title: title, location: location, notes: notes, review: review, author: author, image: image)
        XCTAssertEqual(entryTest.title, "food")
        XCTAssertEqual(entryTest.location, "yum")
        XCTAssertEqual(entryTest.notes, "delicious")
        XCTAssertEqual(entryTest.review, ["step1"])
        XCTAssertEqual(entryTest.author, ["stuff"])
        XCTAssertEqual(entryTest.image, "dish")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testTitle() throws {
        let title = "food"
        let entryTest = Entry(title: title, location: "location", notes: "notes", review: ["review"], author: ["author"], image: "image")
        XCTAssertEqual(entryTest.title, "food")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testLocation() throws {
        let location = "food"
        let entryTest = Entry(title: "title", location: location, notes: "notes", review: ["review"], author: ["author"], image: "image")
        XCTAssertEqual(entryTest.location, "food")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testNotes() throws {
        let notes = "food"
        let entryTest = Entry(title: "title", location: "location", notes: notes, review: ["review"], author: ["author"], image: "image")
        XCTAssertEqual(entryTest.notes, "food")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testAuthor() throws {
        let author = ["food"]
        let entryTest = Entry(title: "title", location: "location", notes: "notes", review: ["review"], author: author, image: "image")
        XCTAssertEqual(entryTest.author, ["food"])
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testReview() throws {
        let review = ["food"]
        let entryTest = Entry(title: "title", location: "location", notes: "notes", review: review, author: ["author"], image: "image")
        XCTAssertEqual(entryTest.review, ["food"])
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testImage() throws {
        let image = "food"
        let entryTest = Entry(title: "title", location: "location", notes: "notes", review: ["review"], author: ["author"], image: image)
        XCTAssertEqual(entryTest.image, "food")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    


}
