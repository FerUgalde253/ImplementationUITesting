//
//  ImplementationUITestingUITests.swift
//  ImplementationUITestingUITests
//
//  Created by Fernando Ugalde on 20/10/23.
//

import XCTest

final class ImplementationUITestingUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
 
    }
    
    func testTipCal_WhenTreeBumbersAreGiven_AndButtonPress_ShouldPass(){
        let app = XCUIApplication()
        app.launch()

        let totalDeLaCuentaTextField = app.textFields[" Total de la cuenta? "]
        XCTAssertTrue(totalDeLaCuentaTextField.exists, "This textField is necesary") //Verify if exist
        totalDeLaCuentaTextField.tap()
        totalDeLaCuentaTextField.typeText("2500")
        
        let NumDePersonasTextField = app.textFields[" # de personas? "]
        XCTAssertTrue(NumDePersonasTextField.exists, "Texfielf needed to add the number of persons")
        NumDePersonasTextField.tap()
        NumDePersonasTextField.typeText("2")
        
        let NumDePropinaTextField = app.textFields[" % de propina?"]
        XCTAssertTrue(NumDePropinaTextField.exists,"textFlield needed to add the tip amount")
        NumDePropinaTextField.tap()
        NumDePropinaTextField.typeText("15")
        
        let calcularStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["Calcular"]/*[[".buttons[\"Calcular\"].staticTexts[\"Calcular\"]",".staticTexts[\"Calcular\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssertTrue(calcularStaticText.exists, "Button needed to calculate the individual tiket")
        calcularStaticText.tap()
        
        let titleStaticText = app.staticTexts["TIP CALCULATOR"]
        XCTAssertTrue(titleStaticText.exists, "Look if Title exist")
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
/*
 let totalDeLaCuentaTextField = app.textFields[" Total de la cuenta? "]
 totalDeLaCuentaTextField.tap()
 totalDeLaCuentaTextField.tap()
 
 let dePersonasTextField = app.textFields[" # de personas? "]
 dePersonasTextField.tap()
 dePersonasTextField.tap()
 dePersonasTextField.tap()
 
 let dePropinaTextField = app.textFields[" % de propina?"]
 dePropinaTextField.tap()
 dePropinaTextField.tap()
 dePropinaTextField.tap()
 
 let calcularStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["Calcular"]/*[[".buttons[\"Calcular\"].staticTexts[\"Calcular\"]",".staticTexts[\"Calcular\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
 calcularStaticText.tap()*/
