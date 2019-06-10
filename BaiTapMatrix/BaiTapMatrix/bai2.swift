//
//  bai2.swift
//  BaiTapMatrix
//
//  Created by Tung on 6/8/19.
//  Copyright © 2019 Tung. All rights reserved.
//

import Foundation
func bai2(){
    print("Nhap so hang:")
    let numRow = Int(readLine()!)!
    
    print("Nhap so cot")
    let numColumn = Int(readLine()!)!
    var dem = 0
    
    var matrix: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: numColumn), count: numRow)
    
    for i in 0..<numRow{
        var a = numColumn
        if i % 2 == 0{
            
            for j in 0..<numColumn{
                dem += 1
                matrix[i][j] = dem            }
        }
        else{
            while a >= 1{
                a -= 1
                dem += 1
                matrix[i][a] = dem
            }
        }
    }
    for i in 0..<numRow{
        for j in 0..<numColumn{
            print(matrix[i][j], terminator: " ")
        }
        print()
    }
    
}
