//
//  bai1.swift
//  BaiTapMatrix
//
//  Created by Tung on 6/8/19.
//  Copyright © 2019 Tung. All rights reserved.
//

import Foundation
func bai1(){
    func matrix(){
        let numberColumns = 3
        let numberRows = 3
        var array = [[Int]]()
        
        var sum = 0
        var sumPow = 0.0
        for i in 0..<numberRows{
            var columnArray = Array<Int>()
            for j in 0..<numberColumns{
                columnArray.append(Int.random(in: 0...100))
                
            }
            array.append(columnArray)
        }
        for item in array{
            for a in item{
                print(  "\(a)",terminator:" ")
            }
            print()
        }
        //tính tổng các số ch
        for item in array{
            for a in item{
                if a % 2 == 0{
                   sum += a
                }
            }
        }
        print("tong cac so chan \(sum)")
        
        // tính tổng bình phương các số chẵn
        for item in array{
            for a in item{
                if a % 2 == 0 {
                    sumPow += pow(Double(a),2)
                }
            }
        }
        print("tong binh phuong cac so chan: \(sumPow)")
        
        // in ra số nguyên tố
        for item in array{
            for a in item {
                var dem = 0
                if a > 1 {
                    for b in 2..<a{
                        if a % b == 0{
                            dem += 1
                        }
                    }
                    if dem == 0 {
                        print("so nguyen to la : \(a)")
                    }
                }
                
                
            }
        }
        // in ra số chính phương
        for item in array{
            for a in item{
                for c in 0...a{
                    if c * c == a{
                        print("so chinh phuong la: \(a)")
                    }
                }
            }
        }
        // in ra số hoàn hảo
        for item in array{
            for a in item{
                var total = 0
                for d in 1..<a {
                    if a % d == 0{
                        total += d
                    }
                }
                if total == a{
                    print("so hoan hao la: \(a)")
                }
                
            }
        }
        
 
    }
    matrix()
   
    
}
