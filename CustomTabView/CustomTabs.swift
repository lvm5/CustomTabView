//
//  CustomTabs.swift
//  CustomTabView
//
//  Created by Leandro Morais on 28/07/24.
//

import SwiftUI

struct CustomTabs: View {
    
    @Binding var index : Int
    
    var body : some View {
        
        HStack{
            
            // NOTIFICATION BUTTON
            Button(action: {
                self.index = 1
            }) {
                Image(systemName: "bell.badge").font(.system(size: 24)).bold().blur(radius: 0.3)
            }
            .foregroundColor(Color.pink.opacity(self.index == 1 ? 1 : 0.2))
            .offset(y: 2)
            Spacer(minLength: 0)
            
            // SEARCH BUTTON
            Button(action: {
                self.index = 2
            }) {
                Image(systemName: "magnifyingglass").font(.system(size: 24)).bold().blur(radius: 0.3)
            }
            .foregroundColor(Color.black.opacity(self.index == 2 ? 1 : 0.2))
            .offset(y: 2)
            Spacer(minLength: 0)
            
            
            // HOME BUTTON WITH CAPSULE
            ZStack {
                Capsule()
                    .fill(Color.white) // Cor de fundo do Capsule
                    .frame(width: 90, height: 50) // Ajuste o tamanho do Capsule conforme necessário
                    .shadow(radius: 5) // Adiciona uma sombra para dar destaque
                
                //HOME BUTTON WITH CLIP SHAPE
                Button(action: {
                    self.index = 0
                }) {
                    Image(systemName: "house.fill").font(.system(size: 24)).bold()
                }
                .foregroundColor(Color.purple.opacity(self.index == 0 ? 1 : 0.2))
            }
            .offset(y: -25) // BUTTON POSITION
            
            Spacer(minLength: 0)
            
            
            // FAVORITES BUTTON
            Button(action: {
                self.index = 3
            }) {
                Image(systemName: "star.fill").font(.system(size: 24)).bold().blur(radius: 0.3)
            }
            .foregroundColor(Color.yellow.opacity(self.index == 3 ? 1 : 0.2))
            .offset(y: 2)
            Spacer(minLength: 0)
            
            // GO TO LOCATION
            Button(action: {
                self.index = 4
            }) {
                Image(systemName: "mappin.and.ellipse").font(.system(size: 24)).bold().blur(radius: 0.3)
            }
            .foregroundColor(Color.blue.opacity(self.index == 4 ? 1 : 0.2))
            .offset(y: 2)
        }
        .padding(.horizontal, 35)
        //.padding(.top, 35)
        .background(Color.white)
        //.clipShape(CShape()) // USE CLIP SHAPE OR CHANGE TO CAPSULE
    }
}


//CLIP SHAPE ROUDED TO HOME ICON
//struct CShape: Shape {
//    // Função que desenha o caminho da forma dentro de um retângulo
//    func path(in rect: CGRect) -> Path {
//        // Cria e retorna um caminho
//        return Path { path in
//            // Move o ponto inicial para (0, 0)
//            path.move(to: CGPoint(x: 0, y: 35))
//            // Adiciona uma linha do ponto atual para (0, rect.height)
//            path.addLine(to: CGPoint(x: 0, y: rect.height))
//            // Adiciona uma linha do ponto atual para (rect.width, rect.height)
//            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
//            // Adiciona uma linha do ponto atual para (rect.width, 0)
//            path.addLine(to: CGPoint(x: rect.width, y: 35))
//            
//            // Adiciona um arco com centro em (rect.width / 2, 0), raio 35, começando do ângulo 0 até 180 graus
//            path.addArc(
//                center: CGPoint(x: (rect.width / 2) - 3, y: 35),
//                radius: 35,
//                startAngle: .zero,
//                endAngle: .degrees(180),
//                clockwise: true
//            )
//        }
//    }
//}


// PREVIEW CANVAS
//struct CShape_Previews: PreviewProvider {
//    static var previews: some View {
//        // Exibe a forma na visualização de preview
//        CShape()
//            .stroke(Color.blue, lineWidth: 2) // Define a cor da borda e a largura da linha
//            .frame(width: 200, height: 200) // Define o tamanho da visualização
//            .padding() // Adiciona padding à visualização
//    }
//}
