//
//  AACustomSwitchControl.swift
//  AACustomSwitchControl
//
//  Created by Arsalan Malik on 28/11/2024.
//


import SwiftUI

struct AACustomSwitchControl: View {
    enum Layout {
        case horizontal
        case vertical
    }

    enum Style {
        case gradient
        case circular
        case flat
    }

    var labelText: String
    @Binding var isOn: Bool
    var labelColor: Color = .primary
    var switchTint: Color = .blue
    var layout: Layout = .horizontal
    var style: Style = .gradient
    var animation: Animation = .spring(response: 0.5, dampingFraction: 0.6)

    var body: some View {
        Group {
            if layout == .horizontal {
                HStack {
                    label
                    Spacer()
                    switchView
                }
            } else {
                VStack {
                    label
                    switchView
                }
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 1).foregroundColor(.gray))
        .padding(.horizontal)
        .animation(animation, value: isOn)
    }

    private var label: some View {
        Text(labelText)
            .foregroundColor(labelColor)
            .font(.headline)
    }

    private var switchView: some View {
        ZStack {
            if style == .gradient {
                Capsule()
                    .fill(LinearGradient(
                        gradient: Gradient(colors: isOn ? [.blue, .green] : [.gray, .gray]),
                        startPoint: .leading,
                        endPoint: .trailing
                    ))
                    .frame(width: 60, height: 30)
                    .overlay(toggleCircle)
                    .onTapGesture {
                        isOn.toggle()
                    }
            } else if style == .circular {
                Circle()
                    .fill(isOn ? switchTint : Color.gray)
                    .frame(width: 50, height: 50)
                    .overlay(toggleIcon)
                    .onTapGesture {
                        isOn.toggle()
                    }
            } else {
                RoundedRectangle(cornerRadius: 12)
                    .fill(isOn ? switchTint : Color.gray)
                    .frame(width: 60, height: 30)
                    .overlay(toggleCircle)
                    .onTapGesture {
                        isOn.toggle()
                    }
            }
        }
    }

    private var toggleCircle: some View {
        Circle()
            .fill(Color.white)
            .frame(width: 25, height: 25)
            .offset(x: isOn ? 15 : -15)
            .shadow(radius: 3)
    }

    private var toggleIcon: some View {
        Image(systemName: isOn ? "checkmark" : "xmark")
            .foregroundColor(.white)
            .font(.title2)
    }
}
