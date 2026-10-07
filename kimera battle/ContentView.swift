import SwiftUI


struct ContentView: View {
    
    @State private var erabu: PartType?
    
    @State private var atama = ""
    @State private var dou = ""
    @State private var ude = ""
    @State private var ashi = ""
    @State private var hane = ""
    
    var body: some View {
        
        GeometryReader { geo in
            
            ZStack {
                
                // MARK: - 背景
                
                Image("bac")
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width: geo.size.width,
                        height: geo.size.height
                    )
                    .clipped()
                
                
                // MARK: - 頭
                
                Button {
                    withAnimation(.easeOut(duration: 0.3)) {
                        erabu = .atama
                    }
                } label: {
                    maruImage(atama)
                }
                .position(
                    x: geo.size.width * 0.5,
                    y: geo.size.height * 0.27
                )
                
                
                // MARK: - 腕
                
                Button {
                    withAnimation(.easeOut(duration: 0.3)) {
                        erabu = .ude
                    }
                } label: {
                    maruImage(ude)
                }
                .position(
                    x: geo.size.width * 0.18,
                    y: geo.size.height * 0.43
                )
                
                
                // MARK: - 羽・尻尾
                
                Button {
                    withAnimation(.easeOut(duration: 0.3)) {
                        erabu = .hane
                    }
                } label: {
                    maruImage(hane)
                }
                .position(
                    x: geo.size.width * 0.83,
                    y: geo.size.height * 0.43
                )
                
                
                // MARK: - 足
                
                Button {
                    withAnimation(.easeOut(duration: 0.3)) {
                        erabu = .ashi
                    }
                } label: {
                    maruImage(ashi)
                }
                .position(
                    x: geo.size.width * 0.3,
                    y: geo.size.height * 0.63
                )
                
                
                // MARK: - 胴体
                
                Button {
                    withAnimation(.easeOut(duration: 0.3)) {
                        erabu = .dou
                    }
                } label: {
                    maruImage(dou)
                }
                .position(
                    x: geo.size.width * 0.7,
                    y: geo.size.height * 0.63
                )
                
                
                // MARK: - パーツ選択
                
                if let part = erabu {
                    
                    VStack(spacing: 10) {
                        
                        // 上のタイトル
                        HStack(spacing: 10) {
                            
                            Rectangle()
                                .fill(.cyan)
                                .frame(width: 35, height: 2)
                            
                            Text(part.title)
                                .font(.system(
                                    size: 18,
                                    weight: .black,
                                    design: .rounded
                                ))
                                .foregroundStyle(.white)
                                .tracking(2)
                            
                            Rectangle()
                                .fill(.cyan)
                                .frame(width: 35, height: 2)
                        }
                        
                        
                        Text("SELECT PART")
                            .font(.system(
                                size: 10,
                                weight: .bold,
                                design: .monospaced
                            ))
                            .foregroundStyle(.cyan)
                            .tracking(3)
                        
                        
                        // パーツカード
                        ScrollView(
                            .horizontal,
                            showsIndicators: false
                        ) {
                            
                            HStack(spacing: 16) {
                                
                                ForEach(
                                    partList(part),
                                    id: \.name
                                ) { p in
                                    
                                    Button {
                                        
                                        partSelect(
                                            p.image,
                                            part
                                        )
                                        
                                        withAnimation(
                                            .easeIn(duration: 0.25)
                                        ) {
                                            erabu = nil
                                        }
                                        
                                    } label: {
                                        
                                        VStack(spacing: 0) {
                                            
                                            // パーツ画像
                                            ZStack(alignment: .topTrailing) {
                                                
                                                Image(p.image)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(
                                                        width: 135,
                                                        height: 105
                                                    )
                                                
                                                
                                                // マーク
                                                Image(p.mark)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(
                                                        width: 40,
                                                        height: 40
                                                    )
                                                    .clipShape(Circle())
                                                    .padding(7)
                                            }
                                            .frame(
                                                width: 145,
                                                height: 105
                                            )
                                            
                                            
                                            // 区切り線
                                            Rectangle()
                                                .fill(.cyan.opacity(0.7))
                                                .frame(
                                                    width: 145,
                                                    height: 1
                                                )
                                            
                                            
                                            // 名前
                                            Text(p.name)
                                                .font(.system(
                                                    size: 14,
                                                    weight: .bold,
                                                    design: .rounded
                                                ))
                                                .foregroundStyle(.white)
                                                .multilineTextAlignment(.center)
                                                .lineLimit(2)
                                                .frame(
                                                    width: 145,
                                                    height: 48
                                                )
                                        }
                                        .frame(
                                            width: 145,
                                            height: 154
                                        )
                                        .background(
                                            LinearGradient(
                                                colors: [
                                                    .black.opacity(0.85),
                                                    .blue.opacity(0.25)
                                                ],
                                                startPoint: .top,
                                                endPoint: .bottom
                                            )
                                        )
                                        .clipShape(
                                            RoundedRectangle(
                                                cornerRadius: 14
                                            )
                                        )
                                        .overlay {
                                            RoundedRectangle(
                                                cornerRadius: 14
                                            )
                                            .stroke(
                                                .cyan.opacity(0.8),
                                                lineWidth: 2
                                            )
                                        }
                                        .shadow(
                                            color: .cyan.opacity(0.35),
                                            radius: 8
                                        )
                                    }
                                }
                            }
                            .padding(.horizontal, 18)
                        }
                    }
                    .padding(.top, 15)
                    .padding(.bottom, 18)
                    .frame(
                        width: geo.size.width - 16,
                        height: 245
                    )
                    .background(
                        ZStack {
                            
                            RoundedRectangle(
                                cornerRadius: 28
                            )
                            .fill(.black.opacity(0.82))
                            
                            RoundedRectangle(
                                cornerRadius: 28
                            )
                            .stroke(
                                .cyan.opacity(0.8),
                                lineWidth: 2
                            )
                            
                            // 上の光
                            VStack {
                                Rectangle()
                                    .fill(.cyan.opacity(0.7))
                                    .frame(height: 2)
                                
                                Spacer()
                            }
                            .clipShape(
                                RoundedRectangle(
                                    cornerRadius: 28
                                )
                            )
                        }
                    )
                    .shadow(
                        color: .cyan.opacity(0.35),
                        radius: 15
                    )
                    .padding(.horizontal, 8)
                    .transition(
                        .move(edge: .bottom)
                        .combined(with: .opacity)
                    )
                    .position(
                        x: geo.size.width / 2,
                        y: geo.size.height - 122
                    )
                }
            }
        }
        .ignoresSafeArea()
    }
    
    
    // MARK: - 丸
    
    func maruImage(_ name: String) -> some View {
        Color.clear
            .frame(width: 120, height: 120)
            .overlay {
                if !name.isEmpty {
                    Image(name)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
            }
            .contentShape(Circle())
    }
    // MARK: - パーツを選択
    
    func partSelect(
        _ image: String,
        _ part: PartType
    ) {
        
        switch part {
            
        case .atama:
            atama = image
            
        case .dou:
            dou = image
            
        case .ude:
            ude = image
            
        case .ashi:
            ashi = image
            
        case .hane:
            hane = image
        }
    }
}




// MARK: - パーツの種類


enum PartType: String {
    
    case atama = "頭"
    case dou = "胴体"
    case ude = "腕"
    case ashi = "足"
    case hane = "羽・尻尾"
    
    
    var title: String {
        
        switch self {
        case .atama:
            return "頭のパーツ"
            
        case .dou:
            return "胴体のパーツ"
            
        case .ude:
            return "腕のパーツ"
            
        case .ashi:
            return "足のパーツ"
            
        case .hane:
            return "羽or尻尾のパーツ"
        }
    }
}




#Preview {
    ContentView()
}

