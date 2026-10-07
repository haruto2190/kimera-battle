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
            ),
            PartData(
                name: "プレーリードックの頭",
                image: "pureeriidoggu_atama",
                mark: "kougeki"
            ),
            
            PartData(
                name: "ガイコツの頭",
                image: "gaikotu_atama",
                mark: "subayasa"
            ),
            PartData(
                name: "鳥の頭",
                image: "tori_atama",
                mark: "subayasa"
            ),
            PartData(
                name: "犬の頭 ",
                image: "inu_atama",
                mark: "subayasa"
            ),
            PartData(
                name: "豚の頭",
                image: "buta_atama",
                mark: "bougyo"
            ),
            PartData(
                name: "ロボットの頭 ",
                image: "roboto_atama",
                mark: "bougyo"
            ),
            PartData(
                name: "ゴーレムの頭 ",
                image: "goremu_atama",
                mark: "bougyo"
            ),
            PartData(
                name: "吸血鬼の頭",
                image: "kixyuuketuki_atama",
                mark: "kaihuku"
            ),
            PartData(
                name: "魚の頭",
                image: "sakana_atama",
                mark: "kaihuku"
            ),
            PartData(
                name: "ユニコーンの頭",
                image: "yonikonn_atama",
                mark: "kaihuku"
            ),
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
                name: "ライオンの腕 ",
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
            ),
            PartData(
                name: "岩の腕  ",
                image: "dragon_ude",
                mark: "bougyo"
            ),
            PartData(
                name: "ロボットの腕 ",
                image: "dragon_ude",
                mark: "bougyo"
            ),
            PartData(
                name: "骨の腕",
                image: "dragon_ude",
                mark: "subayasa"
            ),
            PartData(
                name: "シャコの腕",
                image: "dragon_ude",
                mark: "subayasa"
            ),
            PartData(
                name: "女神の腕",
                image: "dragon_ude",
                mark: "kaihuku"
            ),
            PartData(
                name: "精霊の腕",
                image: "dragon_ude",
                mark: "kaihuku"
            ),
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
                name: "蜘蛛の足",
                image: "kumo_ashi",
                mark: "kougeki"
            ),
            PartData(
                name: "ロボットの足",
                image: "robo_ashi",
                mark: "bougyo"
            ),
            PartData(
                name: "岩の足",
                image: "iwa_ashi",
                mark: "bougyo"
            ),
            PartData(
                name: "うさぎの足",
                image: "usagi_ashi",
                mark: "subayasa"
            ),
            PartData(
                name: "幽霊の足",
                image: "yuurei_ashi",
                mark: "subayasa"
            ),
            PartData(
                name: "骨の足",
                image: "hone_ashi",
                mark: "subayasa"
            ),
            PartData(
                name: "タコの足",
                image: "tako_ashi",
                mark: "kaihuku"
            ),
            PartData(
                name: "カエルの足",
                image: "kaeru_ashi",
                mark: "kaihuku"
            ),
            
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
                name: "サソリの尻尾",
                image: "kyuubi_shippo",
                mark: "kougeki"
            ),
            PartData(
                name: "虫の羽",
                image: "kyuubi_shippo",
                mark: "subayasa"
            ),
            PartData(
                name: "鳥の羽",
                image: "tori_hane",
                mark: "subayasa"
            ),
            PartData(
                name: "コウモリの羽",
                image: "kyuubi_shippo",
                mark: "subayasa"
            ),
            PartData(
                name: "孔雀の羽",
                image: "kyuubi_shippo",
                mark: "bougyo"
            ),
            PartData(
                name: "ジェットパック",
                image: "kyuubi_shippo",
                mark: "bougyo"
            ),
            PartData(
                name: "トカゲの尻尾 ",
                image: "kyuubi_shippo",
                mark: "kaihuku"
            ),
            PartData(
                name: "天使の羽",
                image: "kyuubi_shippo",
                mark: "kaihuku"
            ),
        ]
    }
}

