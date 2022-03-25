//
//  photosTests.swift
//  photosTests
//
//  Created by jsj on 2022/03/21.
//

import XCTest
@testable import PhotoAlbum

class photosTests: XCTestCase {

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

    func testParseDoodles() throws {
        let service = DoodleFileManager()
        let result = service.readJson()
        switch result {
        case .success(_):
            XCTAssert(true, "json 파일의 데이터를 성공적으로 변환했습니다.")
        default:
            return
        }
    }
}
