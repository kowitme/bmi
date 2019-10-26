//
//  BMI.swift
//  ios 13xxxxxx week10 project2
//
//  Created by Kowit Meboon on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

//import Foundation

import UIKit

//struct ย่อมาจาก structure แปลว่าโครงสร้าง โครงกระดูก
//ใช้สำหรับการจัดกลุ่มข้อมูลเป็นชุดๆ ที่ใช้เหมือนๆ กัน
struct BMI {
    let value: Float // ex. 22.22
    let advice: String //คำแนะนำ ex. "กินน้อยลง"
    let color: UIColor //สีของ Background แยกสีเพื่อให้เห็นความต่าง เป็นชนิด UIColor
}
