import SwiftUI

struct PartData {
    let name: String
    let image: String
    let mark: String
}


func partList(_ part: PartType) -> [PartData] {
    
    switch part {
        
    case .atama:
        return [
            PartData(
                name: "ドラゴンの頭",
                image: "dragon_atama",
                mark: "kougeki"
            ),
            PartData(
                name: "ライオンの頭",
                image: "lion_atama",
                mark: "kougeki"
            ),
            PartData(
                name: "鬼の頭",
                image: "oni_atama",
                mark: "kougeki"
            )
        ]
        
        
    case .dou:
        return [
            PartData(
                name: "ムキムキの胴体",
                image: "muki_dou",
                mark: "kougeki"
            ),
            PartData(
                name: "巨人の胴体",
                image: "kyozin_dou",
                mark: "kougeki"
            ),
            PartData(
                name: "鬼の胴体",
                image: "oni_dou",
                mark: "kougeki"
            ),
            PartData(
                name: "ドラゴンの胴体",
                image: "doragon_dou",
                mark: "kougeki"
            ),
            PartData(
                name: "骨の胴体",
                image: "hone_dou",
                mark: "subayasa"
            ),
            PartData(
                name: "蛇の胴体",
                image: "hebi_dou",
                mark: "subayasa"
            ),
            PartData(
                name: "亀の胴体",
                image: "kame_dou",
                mark: "bougyo"
            ),
            PartData(
                name: "鎧の胴体",
                image: "yoroi_dou",
                mark: "bougyo"
            ),
            PartData(
                name: "岩の胴体",
                image: "iwa_dou",
                mark: "bougyo"
            ),
            PartData(
                name: "ロボットの胴体",
                image: "robo_dou",
                mark: "bougyo"
            ),
            PartData(
                name: "スライムの胴体",
                image: "suraimu_dou",
                mark: "kaihuku"
            ),
            PartData(
                name: "植物の胴体",
                image: "syokubutu_dou",
                mark: "kaihuku"
            )
        ]
        
        
    case .ude:
        return [
            PartData(
                name: "ドラゴンの腕",
                image: "dragon_ude",
                mark: "kougeki"
            ),
            PartData(
                name: "鬼の腕",
                image: "oni_ude",
                mark: "kougeki"
            ),
            PartData(
                name: "カニの腕",
                image: "kani_ude",
                mark: "bougyo"
            )
        ]
        
        
    case .ashi:
        return [
            PartData(
                name: "ドラゴンの足",
                image: "dragon_ashi",
                mark: "kougeki"
            ),
            PartData(
                name: "鬼の足",
                image: "oni_ashi",
                mark: "kougeki"
            ),
            PartData(
                name: "うさぎの足",
                image: "usagi_ashi",
                mark: "subayasa"
            )
        ]
        
        
    case .hane:
        return [
            PartData(
                name: "ドラゴンの羽",
                image: "dragon_hane",
                mark: "kougeki"
            ),
            PartData(
                name: "九尾の尻尾",
                image: "kyuubi_shippo",
                mark: "kougeki"
            ),
            PartData(
                name: "鳥の羽",
                image: "tori_hane",
                mark: "subayasa"
            )
        ]
    }
}
