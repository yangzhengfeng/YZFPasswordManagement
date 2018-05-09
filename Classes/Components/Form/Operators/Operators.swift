////
////  Operators.swift
////  YZFPasswordManagement
////
////  Created by Dylan on 2018/5/8.
////  Copyright © 2018年 Dylan. All rights reserved.
////
//
//import Foundation
//
//
//precedencegroup FormPrecedence {
//    associativity: left
//    higherThan: LogicalConjunctionPrecedence
//}
//
//precedencegroup SectionPrecedence {
//    associativity: left
//    higherThan: FormPrecedence
//}
//
//infix operator +++ : FormPrecedence
//
///**
// Appends a section to a form
//
// - parameter left:  the form
// - parameter right: the section to be appended
//
// - returns: the updated form
// */
//@discardableResult
//public func +++ (left: Form, right: Section) -> Form {
//    left.append(right)
//    return left
//}
//
///**
// Appends a row to the last section of a form
//
// - parameter left:  the form
// - parameter right: the row
// */
//@discardableResult
//public func +++ (left: Form, right: BaseRow) -> Form {
//    let section = Section()
//    let _ =  left +++ section <<< right
//    return left
//}
//
///**
// Creates a form with two sections
//
// - parameter left:  the first section
// - parameter right: the second section
//
// - returns: the created form
// */
//@discardableResult
//public func +++ (left: Section, right: Section) -> Form {
//    let form = Form()
//    let _ =  form +++ left +++ right
//    return form
//}
//
///**
// Appends the row wrapped in a new section
// 
// - parameter left: a section of the form
// - parameter right: a row to be appended
//
// - returns: the form
// */
//@discardableResult
//public func +++ (left: Section, right: BaseRow) -> Form {
//    let section = Section()
//    section <<< right
//    return left +++ section
//}
//
///**
// Creates a form with two sections, each containing one row.
//
// - parameter left:  The row for the first section
// - parameter right: The row for the second section
//
// - returns: the created form
// */
//@discardableResult
//public func +++ (left: BaseRow, right: BaseRow) -> Form {
//    let form = Section() <<< left +++ Section() <<< right
//    return form
//}
