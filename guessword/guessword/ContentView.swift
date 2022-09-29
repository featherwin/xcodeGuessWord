
//  ContentView.swift
//  guessword
//
//  Created by Tomáš Beránek on 11.09.2022.
//

import SwiftUI
import UIKit

extension Color {
    static let lightShadow = Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255)
    static let darkShadow = Color(red: 163 / 255, green: 177 / 255, blue: 198 / 255)
    static let background = Color(red: 224 / 255, green: 229 / 255, blue: 236 / 255)
    static let neumorphictextColor = Color(red: 132 / 255, green: 132 / 255, blue: 132 / 255)
}

struct TextFieldsStyle: View {
    var textField: TextField<Text>
    var body: some View {
        HStack {
            textField
            }
        .frame(width: 50).cornerRadius(10)
        .frame(height: 50).cornerRadius(10)
        .background(Color.gray.opacity(0.3).cornerRadius(10))
        .foregroundColor(Color.black)
        .font(Font.system(size: 30, design: .default))
        .multilineTextAlignment(.center)
        .disabled(true)

        }
}

struct KeyboardButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 30).cornerRadius(10)
            .frame(height: 45).cornerRadius(10)
            .background(Color.gray.opacity(0.3).cornerRadius(8))
            .foregroundColor(Color.black)
            
    }
}

func returnArrayOfLetters () -> [String]{
    var textArray = [String]()
//    for char in 65...90 {
//        textArray.append(String(Character(Unicode.Scalar(char)!)))
//    }
    for _ in 1...25 {
            textArray.append(" ")
        }
    return textArray
}
func chck (myArray: [String]) -> Int {
    var num = 0
    
    for item in myArray {
        if item != " "{
            num += 1
        }
        else{
            break
        }
    }
    
    return num
}




struct ContentView: View {
    @State var textArray: [String] = returnArrayOfLetters ()
    @State var text = ""

    var body: some View {
        
        
        VStack{
            Spacer()
            Group{
                HStack{
                    TextFieldsStyle(textField: TextField("A", text: $textArray[0]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[1]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[2]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[3]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[4]))
                }
                HStack{
                    TextFieldsStyle(textField: TextField("A", text: $textArray[5]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[6]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[7]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[8]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[9]))
                }
                HStack{
                    TextFieldsStyle(textField: TextField("A", text: $textArray[10]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[11]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[12]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[13]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[14]))
                }
                HStack{
                    TextFieldsStyle(textField: TextField("A", text: $textArray[15]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[16]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[17]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[18]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[19]))
                }
                HStack{
                    TextFieldsStyle(textField: TextField("A", text: $textArray[20]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[21]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[22]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[23]))
                    TextFieldsStyle(textField: TextField("A", text: $textArray[24]))
                }
            }//Group
            Spacer()
            Group{
                //ĚŠČŘŽÝÁÍÉÚ
                //chck is a func that checks if the current field is free and a letter can be written into
                HStack{
                    Button("Ě"){textArray[chck(myArray: textArray)] = "Ě"}.buttonStyle(KeyboardButton())
                    Button("Š"){textArray[chck(myArray: textArray)] = "Š"}.buttonStyle(KeyboardButton())
                    Button("Č"){textArray[chck(myArray: textArray)] = "Č"}.buttonStyle(KeyboardButton())
                    Button("Ř"){textArray[chck(myArray: textArray)] = "Ř"}.buttonStyle(KeyboardButton())
                    Button("Ž"){textArray[chck(myArray: textArray)] = "Ž"}.buttonStyle(KeyboardButton())
                    Button("Ý"){textArray[chck(myArray: textArray)] = "Ý"}.buttonStyle(KeyboardButton())
                    Button("Á"){textArray[chck(myArray: textArray)] = "Á"}.buttonStyle(KeyboardButton())
                    Button("Í"){textArray[chck(myArray: textArray)] = "Í"}.buttonStyle(KeyboardButton())
                    Button("É"){textArray[chck(myArray: textArray)] = "É"}.buttonStyle(KeyboardButton())
                    Button("Ú"){textArray[chck(myArray: textArray)] = "Ú"}.buttonStyle(KeyboardButton())
                }//HStack
            
                //QWERTZUIOP
                HStack{
                    Button("Q"){textArray[chck(myArray: textArray)] = "Q"}.buttonStyle(KeyboardButton())
                    Button("W"){textArray[chck(myArray: textArray)] = "W"}.buttonStyle(KeyboardButton())
                    Button("E"){textArray[chck(myArray: textArray)] = "E"}.buttonStyle(KeyboardButton())
                    Button("R"){textArray[chck(myArray: textArray)] = "R"}.buttonStyle(KeyboardButton())
                    Button("T"){textArray[chck(myArray: textArray)] = "T"}.buttonStyle(KeyboardButton())
                    Button("Z"){textArray[chck(myArray: textArray)] = "Z"}.buttonStyle(KeyboardButton())
                    Button("U"){textArray[chck(myArray: textArray)] = "U"}.buttonStyle(KeyboardButton())
                    Button("I"){textArray[chck(myArray: textArray)] = "I"}.buttonStyle(KeyboardButton())
                    Button("O"){textArray[chck(myArray: textArray)] = "O"}.buttonStyle(KeyboardButton())
                    Button("P"){textArray[chck(myArray: textArray)] = "P"}.buttonStyle(KeyboardButton())
                }//HStack

                //ASDFGHJKL
                HStack{
                    Button("A"){textArray[chck(myArray: textArray)] = "A"}.buttonStyle(KeyboardButton())
                    Button("S"){textArray[chck(myArray: textArray)] = "S"}.buttonStyle(KeyboardButton())
                    Button("D"){textArray[chck(myArray: textArray)] = "D"}.buttonStyle(KeyboardButton())
                    Button("F"){textArray[chck(myArray: textArray)] = "F"}.buttonStyle(KeyboardButton())
                    Button("G"){textArray[chck(myArray: textArray)] = "G"}.buttonStyle(KeyboardButton())
                    Button("H"){textArray[chck(myArray: textArray)] = "H"}.buttonStyle(KeyboardButton())
                    Button("J"){textArray[chck(myArray: textArray)] = "J"}.buttonStyle(KeyboardButton())
                    Button("K"){textArray[chck(myArray: textArray)] = "K"}.buttonStyle(KeyboardButton())
                    Button("L"){textArray[chck(myArray: textArray)] = "L"}.buttonStyle(KeyboardButton())
                }//Hstack

                //YXCVBNM
                HStack{
                    Button("Y"){textArray[chck(myArray: textArray)] = "Y"}.buttonStyle(KeyboardButton())
                    Button("X"){textArray[chck(myArray: textArray)] = "X"}.buttonStyle(KeyboardButton())
                    Button("C"){textArray[chck(myArray: textArray)] = "C"}.buttonStyle(KeyboardButton())
                    Button("V"){textArray[chck(myArray: textArray)] = "V"}.buttonStyle(KeyboardButton())
                    Button("B"){textArray[chck(myArray: textArray)] = "B"}.buttonStyle(KeyboardButton())
                    Button("N"){textArray[chck(myArray: textArray)] = "N"}.buttonStyle(KeyboardButton())
                    Button("M"){textArray[chck(myArray: textArray)] = "M"}.buttonStyle(KeyboardButton())
                    Button("M"){textArray[chck(myArray: textArray)] = "M"}.buttonStyle(KeyboardButton())
                }//HStack
            }//Group
       
        }//VStack
    }//Body
}//struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
