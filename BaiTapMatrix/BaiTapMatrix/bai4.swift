//
//  bai4.swift
//  BaiTapMatrix
//
//  Created by Tung on 6/9/19.
//  Copyright © 2019 Tung. All rights reserved.
//

import Foundation
func bai4(){
    var NumColumns = 3
    var NumRows = 3
    var matrix:[[Int]] = [[Int]](repeating:[Int](repeating:0, count: NumColumns), count:NumRows)
    
    for i in 0..<NumRows{
        for j in 0..<NumColumns{
            matrix[i][j] = Int.random(in: 1...100)
            print(matrix[i][j], terminator: " ")
        }
        print("")
    }
    //delCol(arr: &matrix, col: 1)
    //delRow(arr: &matrix, row: 1)
//    for i in 0..<matrix.count{
//        for j in 0..<matrix[i].count{
//            print(matrix[i][j], terminator: " ")
//        }
//        print("")
//    }
    // tinhs tổng phần tử trên biên
    func sumBien(){
        var total = 0
        for i in 0..<NumColumns{
            total += matrix[0][i]
            total += matrix[NumRows-1][i]
        }
        for j in 0..<NumRows {
            total += matrix[j][0]
            total += matrix[j][NumColumns-1]
        }
        print("tong bien la:\(total)")
    }
    sumBien()
    
    //tíh tổng các phần từ đường chéo chính
    func sumCheo(){
        var total = 0
        for i in 0..<NumRows{
            total += matrix[i][i]
        }
        print( "tong duong cheo chinh:\(total)")
    }
    sumCheo()
    
    //kiểm tra matrix đối xứng
    func checkMatrix(){
        if NumRows == NumColumns {
            for i in 0..<NumRows-1{
                for j in (i + 1)..<NumRows{
                    matrix[j][i] = matrix[i][j]

                }
                
            }
           
        }
       
    }
    checkMatrix()
    
}
func delCol( arr: inout [[Int]], col: Int){
    for i in 0..<arr.count{
        arr[i].remove(at: col)
    }
}
func delRow( arr: inout [[Int]], row: Int){
    arr[row].removeAll()
}


