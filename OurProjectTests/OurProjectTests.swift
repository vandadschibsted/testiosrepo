//
//  OurProjectTests.swift
//  OurProjectTests
//
//  Created by Vandad Nahavandipoor on 27/04/2016.
//  Copyright © 2016 Aftonbladet Hierta AB. All rights reserved.
//

import XCTest
@testable import OurProject

class OurProjectTests: XCTestCase {
    
    func testPersonCreation(){
        
        do{
            let _ = try Person(name: "Foo Bar")
        } catch {
            XCTFail()
        }
        
        do{
            let _ = try Person(name: "Foo")
            XCTFail()
        } catch {}
        
        do {
            let _ = try Person(name: "0123456789")
        } catch {
            XCTFail()
        }
        
    }
    
}
