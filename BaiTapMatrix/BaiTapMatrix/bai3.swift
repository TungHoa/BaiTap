//
//  bai3.swift
//  BaiTapMatrix
//
//  Created by Tung on 6/9/19.
//  Copyright © 2019 Tung. All rights reserved.
//

import Foundation
func bai3(){
   print("nhap so hang")
   let numRow = Int(readLine()!)!
    
    print("nhap so cot")
    let numColumn = Int(readLine()!)!
    
    var matrix: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: numColumn), count: numRow)
    
    var i = 0
    var j = 0
    
    var deltaI = 0
    var deltaJ = 1
    
    for number in 1...(numRow*numColumn) {
        matrix[i][j] = number
        
        let nextI = i + deltaI
        let nextJ = j + deltaJ
        
        
        let nextCellIsEmpty = (0..<numColumn ~= nextI) && (0..<numRow ~= nextJ) && (matrix[nextI][nextJ] == 0)
        
        
        if !nextCellIsEmpty {
            if deltaJ == 1 { deltaI = 1; deltaJ = 0; }
            else if deltaI == 1 { deltaI = 0; deltaJ = -1; }
            else if deltaJ == -1 { deltaI = -1; deltaJ = 0; }
            else if deltaI == -1 { deltaI = 0; deltaJ = 1; }
        }
        
        i += deltaI
        j += deltaJ
    }
    
    
    for a in 0..<numRow{
        for b in 0..<numColumn{
            print(matrix[a][b],terminator: " ")
        }
        print()
        
    }
    
}
