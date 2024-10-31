//
//  RegisterView.swift
//  ACE Family App
//
//  Created by Linh Dang on 10/29/24.
//

import SwiftUI

struct RegisterView: View {
    @Binding var current: Int

    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var graduationYear: Int = Calendar.current.component(.year, from: Date()) // Set to current year
    
    @State private var college = "CC"
        
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            Button { // back button
                withAnimation {
                    current = 0
                }
            } label: {
                Text("\(Image(systemName: "chevron.left"))")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .font(.system(size: 30))
            }
            .offset(x: -160, y: -350)
            
            VStack {
                Image("VSALogoGold")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 90, maxHeight: 90)
                
                CustomTextField(value: $fullName, label: "Full Name")
                CustomTextField(value: $email, label: "Email")
                CustomTextField(value: $password, label: "Password")
            
                CollegePicker(college: $college)
                GraduationPicker(graduationYear: $graduationYear)
                
                Button(action: {
                    print("Register")
                }) {
                    Group {
                        ZStack {
                            RoundedRectangle(cornerRadius: 100)
                                .fill(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color("VSARed"), Color("VSAGold")]),
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .frame(maxWidth: UIScreen.main.bounds.width * 0.8, maxHeight: 45) // Set width to 80% of screen
                            
                            Text("Register")
                                .foregroundColor(.white)
                                .frame(maxWidth: UIScreen.main.bounds.width * 0.8)
                                .font(.system(size: 20))
                                .bold()
                        }
                        
                    }
                    .frame(maxWidth: UIScreen.main.bounds.width * 0.8)
                }
            }
        }
    }
}



struct CustomTextField: View {
    @Binding var value: String
    var label: String
    
    var body: some View {
        Group {
            Text(label)
                .foregroundColor(.white)
                .frame(maxWidth: UIScreen.main.bounds.width * 0.8, alignment: .leading)
                .font(.system(size: 20))
                .bold()
                .padding(.top, 10)
            
            ZStack(alignment: .bottom) {
                TextField("Full Name", text: $value)
                    .padding(.leading, 20)
                    .foregroundColor(.white) // Sets the text color to white
                    .font(.system(size: 22))
                    .padding(.bottom, 10) // Add some padding above the bottom line
                
                RoundedRectangle(cornerRadius: 100)
                    .stroke(Color.white, lineWidth: 1)
                    .frame(maxWidth: UIScreen.main.bounds.width * 0.8, maxHeight: 45) // Set width to 80% of screen
            }
            .frame(maxWidth: UIScreen.main.bounds.width * 0.8)
        }
    }
}

struct CollegePicker: View {
    @Binding var college: String
    let colleges = ["CC", "SEAS", "GS", "Barnard", "Graduate Program"]

    var body: some View {
        HStack {
            Text("College:")
                .foregroundColor(.white)
                .font(.system(size: 20))
                .bold()
            
            Picker("Select Graduation Year", selection: $college) {
                ForEach(colleges, id: \.self) { college in
                    Text(String(college))
                }
            }
            .pickerStyle(MenuPickerStyle())
            .accentColor(.white)
            
            Spacer()
        }
        .frame(maxWidth: UIScreen.main.bounds.width * 0.8)
        .padding(.top, 10)
        
    }
}
struct GraduationPicker: View {
    @Binding var graduationYear: Int
    
    let years = Array(Calendar.current.component(.year, from: Date())...Calendar.current.component(.year, from: Date()) + 7)

    var body: some View {
        HStack {
            Text("Graduation Year:")
                .foregroundColor(.white)
                .font(.system(size: 20))
                .bold()
            
            Picker("Select Graduation Year", selection: $graduationYear) {
                ForEach(years, id: \.self) { year in
                    Text(String(year))
                }
            }
            .pickerStyle(MenuPickerStyle())
            .accentColor(.white)
            
            Spacer()
        }
        .frame(maxWidth: UIScreen.main.bounds.width * 0.8)
    }
}

#Preview {
    RegisterView(current: .constant(1))
}
