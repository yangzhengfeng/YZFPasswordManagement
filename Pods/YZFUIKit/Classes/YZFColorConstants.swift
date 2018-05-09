//
//  YZFColorConstants.swift
//  Pods-YZFUIKit_Example
//
//  Created by Dylan on 2018/4/23.
//

import UIKit


/// final  关键字可以用在 class，func 或者 var 前面进行修饰，表示不允许对该内容进行继承或者重写操作。
public final class YZFColorConstants {
    
    class func kHexColor(hexValue: Int) -> (UIColor) {
        return self.kHexColor(hexValue: hexValue, alphaValue: 1.0)
    }
    
    class func kHexColor(hexValue: Int,alphaValue: CGFloat) -> (UIColor) {
        return UIColor(red: ((CGFloat)((hexValue & 0xFF0000) >> 16)) / 255.0,
                       green: ((CGFloat)((hexValue & 0xFF00) >> 8)) / 255.0,
                       blue: ((CGFloat)(hexValue & 0xFF)) / 255.0,
                       alpha: alphaValue)
    }
    
    class func kRGBColor(r:CGFloat,g:CGFloat,b:CGFloat) -> (UIColor){
        return self.kRGBColor(r: r, g: g, b: b, a: 1.0)
    }
    
    class func kRGBColor(r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat) -> (UIColor){
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }

}
