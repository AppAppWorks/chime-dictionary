//
//  Phoneme.swift
//  Canto
//
//  Created by Resonance on 7/1/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//

import BaseDictionary

public typealias CantoPhoneticInfo = PhoneticInfo
public typealias CantoSyllable = Syllable

public struct PhoneticInfo {
//    public enum TradSimp {
//        public struct Traditional {
//            public let pronunciations: [[Syllable]]
//        }
//        public struct Simplified {
//            public enum Reference {
//                case traditionalDirect(terms: [String])
//                case traditionalIndirect(termIdx: [Int])
//            }
//
//            public let pronunciations: [[Syllable]]
//            public let reference: Reference
//        }
//
//        case none
//        case traditional(content: Traditional)
//        case simplified(content: Simplified)
//        case tradSimp(traditional: Traditional, simplified: Simplified)
//    }
//
//    public let tradSimp: TradSimp
    public let pronunciations: [[Syllable]]
    public let offsetPairs: [(termOffset: Range<Int>, syllableOffset: Range<Int>)]
    
//    public init(tradSimp: TradSimp,
//                offsetPairs: [(termOffset: Range<Int>, syllableOffset: Range<Int>)]) {
//        self.tradSimp = tradSimp
    public init(pronunciations: [[Syllable]], offsetPairs: [(termOffset: Range<Int>, syllableOffset: Range<Int>)]) {
        self.pronunciations = pronunciations

        self.offsetPairs = offsetPairs
    }
}

public enum Syllable : Int, CaseIterable {
    case aa1
    case aa2
    case aa3
    case aa4
    case aa5
    case aa6
    case aai1
    case aai2
    case aai3
    case aai4
    case aai5
    case aai6
    case aak1
    case aak2
    case aak3
    case aak6
    case aam1
    case aam4
    case aan2
    case aan3
    case aan4
    case aan5
    case aan6
    case aang1
    case aang2
    case aang6
    case aap2
    case aap3
    case aat1
    case aat2
    case aat3
    case aat6
    case aau1
    case aau2
    case aau3
    case aau4
    case aau5
    case aau6
    case ai1
    case ai2
    case ai3
    case ai4
    case ai5
    case ai6
    case ak1
    case am1
    case am2
    case am3
    case am4
    case am5
    case am6
    case an1
    case an2
    case an3
    case an4
    case an6
    case ang1
    case ang2
    case ang3
    case ap1
    case ap6
    case at1
    case at6
    case au1
    case au2
    case au3
    case au4
    case au5
    case au6
    case baa1
    case baa2
    case baa3
    case baa4
    case baa6
    case baai1
    case baai2
    case baai3
    case baai6
    case baak1
    case baak2
    case baak3
    case baak6
    case baan1
    case baan2
    case baan3
    case baan6
    case baang1
    case baang4
    case baang6
    case baat2
    case baat3
    case baat6
    case baau1
    case baau2
    case baau3
    case baau6
    case bai1
    case bai2
    case bai3
    case bai6
    case bak1
    case bam1
    case ban1
    case ban2
    case ban3
    case ban6
    case bang1
    case bang2
    case bang6
    case bat1
    case bat3
    case bat6
    case bau2
    case bau6
    case be1
    case be4
    case be6
    case bei1
    case bei2
    case bei3
    case bei4
    case bei6
    case bek3
    case ben1
    case beng2
    case beng3
    case beng6
    case bi1
    case bi4
    case bik1
    case bik3
    case bik6
    case bin1
    case bin2
    case bin3
    case bin6
    case bing1
    case bing2
    case bing3
    case bing4
    case bing6
    case bit1
    case bit3
    case bit6
    case biu1
    case biu2
    case biu3
    case biu6
    case bo1
    case bo2
    case bo3
    case bok1
    case bok2
    case bok3
    case bok6
    case bong1
    case bong2
    case bong3
    case bong4
    case bong6
    case bou1
    case bou2
    case bou3
    case bou6
    case bui1
    case bui2
    case bui3
    case bui6
    case buk1
    case buk6
    case bun1
    case bun2
    case bun3
    case bun5
    case bun6
    case bung2
    case bung3
    case bung6
    case but1
    case but2
    case but3
    case but6
    case caa1
    case caa2
    case caa3
    case caa4
    case caa5
    case caai1
    case caai2
    case caai3
    case caai4
    case caak1
    case caak2
    case caak3
    case caak6
    case caam1
    case caam2
    case caam3
    case caam4
    case caam5
    case caan1
    case caan2
    case caan3
    case caan4
    case caang1
    case caang2
    case caang3
    case caang4
    case caap2
    case caap3
    case caat1
    case caat2
    case caat3
    case caau1
    case caau2
    case caau3
    case caau4
    case cai1
    case cai2
    case cai3
    case cai4
    case cai5
    case cak1
    case cam1
    case cam2
    case cam3
    case cam4
    case cam5
    case can1
    case can2
    case can3
    case can4
    case cang1
    case cang3
    case cang4
    case cap1
    case cat1
    case cat6
    case cau1
    case cau2
    case cau3
    case cau4
    case ce1
    case ce2
    case ce3
    case ce4
    case ce5
    case ce6
    case cek1
    case cek2
    case cek3
    case ceng1
    case ceng2
    case ceng4
    case ceoi1
    case ceoi2
    case ceoi3
    case ceoi4
    case ceon1
    case ceon2
    case ceon4
    case ceot1
    case ci1
    case ci2
    case ci3
    case ci4
    case ci5
    case cik1
    case cik3
    case cim1
    case cim2
    case cim3
    case cim4
    case cim5
    case cin1
    case cin2
    case cin3
    case cin4
    case cin5
    case cing1
    case cing2
    case cing3
    case cing4
    case cip1
    case cip3
    case cit1
    case cit3
    case ciu1
    case ciu2
    case ciu3
    case ciu4
    case ciu5
    case ciu6
    case co1
    case co2
    case co3
    case co4
    case co5
    case coek3
    case coeng1
    case coeng2
    case coeng3
    case coeng4
    case coi1
    case coi2
    case coi3
    case coi4
    case cok3
    case cong1
    case cong2
    case cong3
    case cong4
    case cou1
    case cou2
    case cou3
    case cou4
    case cou5
    case cuk1
    case cuk6
    case cung1
    case cung2
    case cung3
    case cung4
    case cung5
    case cyu2
    case cyu3
    case cyu4
    case cyu5
    case cyun1
    case cyun2
    case cyun3
    case cyun4
    case cyut1
    case cyut3
    case cyut6
    case daa1
    case daa2
    case daai1
    case daai2
    case daai3
    case daai6
    case daak1
    case daam1
    case daam2
    case daam3
    case daam5
    case daam6
    case daan1
    case daan2
    case daan3
    case daan5
    case daan6
    case daap1
    case daap3
    case daap6
    case daat3
    case daat6
    case dai1
    case dai2
    case dai3
    case dai4
    case dai6
    case dak1
    case dak6
    case dam1
    case dam2
    case dam3
    case dam4
    case dam6
    case dan1
    case dan2
    case dan3
    case dan6
    case dang1
    case dang2
    case dang3
    case dang6
    case dap1
    case dap6
    case dat1
    case dat6
    case dau1
    case dau2
    case dau3
    case dau4
    case dau6
    case de1
    case de2
    case de4
    case dei2
    case dei6
    case dek2
    case dek3
    case dek6
    case deng1
    case deng2
    case deng3
    case deng6
    case deoi1
    case deoi2
    case deoi3
    case deoi6
    case deon1
    case deon2
    case deon6
    case deot1
    case deu6
    case di1
    case di2
    case di4
    case dik1
    case dik6
    case dim1
    case dim2
    case dim3
    case dim6
    case din1
    case din2
    case din3
    case din6
    case ding1
    case ding2
    case ding3
    case ding6
    case dip2
    case dip3
    case dip6
    case dit1
    case dit3
    case dit6
    case diu1
    case diu2
    case diu3
    case diu4
    case diu6
    case do1
    case do2
    case do3
    case do6
    case doe2
    case doe3
    case doe4
    case doe6
    case doek1
    case doek3
    case doeng1
    case doi2
    case doi6
    case dok6
    case dong1
    case dong2
    case dong3
    case dong6
    case dou1
    case dou2
    case dou3
    case dou6
    case du1
    case duk1
    case duk2
    case duk6
    case dung1
    case dung2
    case dung3
    case dung6
    case dut1
    case dyun1
    case dyun2
    case dyun3
    case dyun6
    case dyut1
    case dyut3
    case dyut6
    case e4
    case e6
    case ei1
    case ei3
    case ei6
    case em1
    case en1
    case eot1
    case eu4
    case faa1
    case faa2
    case faa3
    case faa4
    case faai1
    case faai2
    case faai3
    case faak3
    case faan1
    case faan2
    case faan3
    case faan4
    case faan5
    case faan6
    case faat2
    case faat3
    case fai1
    case fai2
    case fai3
    case fai6
    case fan1
    case fan2
    case fan3
    case fan4
    case fan5
    case fan6
    case fang4
    case fang6
    case fat1
    case fat6
    case fau1
    case fau2
    case fau4
    case fau6
    case fe1
    case fe3
    case fe4
    case fei1
    case fei2
    case fei4
    case fei6
    case fen1
    case fet1
    case fi1
    case fik1
    case fing3
    case fing6
    case fit1
    case fiu1
    case fiu3
    case fo1
    case fo2
    case fo3
    case fok3
    case fong1
    case fong2
    case fong3
    case fong4
    case fong6
    case fu1
    case fu2
    case fu3
    case fu4
    case fu5
    case fu6
    case fui1
    case fui2
    case fui3
    case fuk1
    case fuk2
    case fuk6
    case fun1
    case fun2
    case fung1
    case fung2
    case fung3
    case fung4
    case fung6
    case fut3
    case gaa1
    case gaa2
    case gaa3
    case gaa4
    case gaa5
    case gaai1
    case gaai2
    case gaai3
    case gaak2
    case gaak3
    case gaam1
    case gaam2
    case gaam3
    case gaan1
    case gaan2
    case gaan3
    case gaang1
    case gaang3
    case gaap2
    case gaap3
    case gaat3
    case gaat6
    case gaau1
    case gaau2
    case gaau3
    case gaau4
    case gai1
    case gai2
    case gai3
    case gai6
    case gak1
    case gam1
    case gam2
    case gam3
    case gam6
    case gan1
    case gan2
    case gan3
    case gan6
    case gang1
    case gang2
    case gang3
    case gap1
    case gap2
    case gap3
    case gap6
    case gat1
    case gat3
    case gat6
    case gau1
    case gau2
    case gau3
    case gau6
    case ge2
    case ge3
    case gei1
    case gei2
    case gei3
    case gei6
    case gek1
    case geng1
    case geng2
    case geng3
    case geng6
    case geoi1
    case geoi2
    case geoi3
    case geoi6
    case gep1
    case gep6
    case gi1
    case gik1
    case gik6
    case gim1
    case gim2
    case gim3
    case gim6
    case gin1
    case gin2
    case gin3
    case gin6
    case ging1
    case ging2
    case ging3
    case ging6
    case gip1
    case gip2
    case gip3
    case gip6
    case git3
    case git6
    case giu1
    case giu2
    case giu3
    case giu4
    case giu6
    case go1
    case go2
    case go3
    case go4
    case go6
    case goe1
    case goe3
    case goe4
    case goek2
    case goek3
    case goeng1
    case goeng2
    case goeng6
    case goi1
    case goi2
    case goi3
    case gok1
    case gok2
    case gok3
    case gok6
    case gon1
    case gon2
    case gon3
    case gong1
    case gong2
    case gong3
    case gong6
    case got2
    case got3
    case gou1
    case gou2
    case gou3
    case gu1
    case gu2
    case gu3
    case gu4
    case gui3
    case gui6
    case guk1
    case guk2
    case guk6
    case gun1
    case gun2
    case gun3
    case gung1
    case gung2
    case gung3
    case gung4
    case gung6
    case gut2
    case gut3
    case gut4
    case gut6
    case gwaa1
    case gwaa2
    case gwaa3
    case gwaai1
    case gwaai2
    case gwaai3
    case gwaak3
    case gwaan1
    case gwaan3
    case gwaang2
    case gwaang6
    case gwaat2
    case gwaat3
    case gwai1
    case gwai2
    case gwai3
    case gwai6
    case gwan1
    case gwan2
    case gwan3
    case gwan6
    case gwang1
    case gwang2
    case gwat1
    case gwat6
    case gwe1
    case gwik1
    case gwing1
    case gwing2
    case gwing3
    case gwit1
    case gwit3
    case gwo1
    case gwo2
    case gwo3
    case gwok3
    case gwong1
    case gwong2
    case gwong3
    case gwu1
    case gwu2
    case gwu3
    case gwui3
    case gwui6
    case gwun1
    case gwun2
    case gwun3
    case gwut2
    case gwut3
    case gwut4
    case gwut6
    case gyun1
    case gyun2
    case gyun3
    case gyun6
    case gyut3
    case gyut6
    case haa1
    case haa2
    case haa3
    case haa4
    case haa5
    case haa6
    case haai1
    case haai2
    case haai3
    case haai4
    case haai5
    case haai6
    case haak1
    case haak2
    case haak3
    case haak6
    case haam1
    case haam2
    case haam3
    case haam4
    case haam5
    case haam6
    case haan1
    case haan2
    case haan4
    case haan5
    case haan6
    case haang1
    case haang2
    case haang4
    case haap3
    case haap6
    case haau1
    case haau2
    case haau3
    case haau4
    case haau6
    case hai1
    case hai2
    case hai3
    case hai4
    case hai5
    case hai6
    case hak1
    case ham1
    case ham2
    case ham3
    case ham4
    case ham5
    case ham6
    case han2
    case han4
    case han6
    case hang1
    case hang2
    case hang4
    case hang5
    case hang6
    case hap1
    case hap2
    case hap6
    case hat1
    case hat6
    case hau1
    case hau2
    case hau3
    case hau4
    case hau5
    case hau6
    case he2
    case he3
    case hei1
    case hei2
    case hei3
    case hek3
    case heng1
    case heng6
    case heoi1
    case heoi2
    case heoi3
    case heoi5
    case hi1
    case hik1
    case him1
    case him2
    case him3
    case hin1
    case hin2
    case hin3
    case hing1
    case hing2
    case hing3
    case hing5
    case hip3
    case hip6
    case hit3
    case hiu1
    case hiu2
    case hiu3
    case hiu4
    case hm1
    case hm6
    case hng6
    case ho1
    case ho2
    case ho3
    case ho4
    case ho6
    case hoe1
    case hoe4
    case hoeng1
    case hoeng2
    case hoeng3
    case hoi1
    case hoi2
    case hoi3
    case hoi4
    case hoi5
    case hoi6
    case hok2
    case hok3
    case hok6
    case hon1
    case hon2
    case hon3
    case hon4
    case hon5
    case hon6
    case hong1
    case hong2
    case hong3
    case hong4
    case hong5
    case hong6
    case hot3
    case hot6
    case hou1
    case hou2
    case hou3
    case hou4
    case hou6
    case huk1
    case huk6
    case hung1
    case hung2
    case hung3
    case hung4
    case hung6
    case hyun1
    case hyun2
    case hyun3
    case hyut3
    case ik1
    case it6
    case jaa1
    case jaa2
    case jaa3
    case jaa4
    case jaa5
    case jaa6
    case jaai2
    case jaai5
    case jaak3
    case jaang3
    case jaap3
    case jaau1
    case jai1
    case jai4
    case jai5
    case jai6
    case jam1
    case jam2
    case jam3
    case jam4
    case jam5
    case jam6
    case jan1
    case jan2
    case jan3
    case jan4
    case jan5
    case jan6
    case jap1
    case jap6
    case jat1
    case jat2
    case jat6
    case jau1
    case jau2
    case jau3
    case jau4
    case jau5
    case jau6
    case je1
    case je2
    case je4
    case je5
    case je6
    case jeng4
    case jeoi1
    case jeoi4
    case jeoi5
    case jeoi6
    case jeon2
    case jeon6
    case ji1
    case ji2
    case ji3
    case ji4
    case ji5
    case ji6
    case jik1
    case jik2
    case jik6
    case jim1
    case jim2
    case jim3
    case jim4
    case jim5
    case jim6
    case jin1
    case jin2
    case jin3
    case jin4
    case jin5
    case jin6
    case jing1
    case jing2
    case jing3
    case jing4
    case jing5
    case jing6
    case jip2
    case jip3
    case jip6
    case jit2
    case jit3
    case jit6
    case jiu1
    case jiu2
    case jiu3
    case jiu4
    case jiu5
    case jiu6
    case jo1
    case joek2
    case joek3
    case joek6
    case joeng1
    case joeng2
    case joeng3
    case joeng4
    case joeng5
    case joeng6
    case juk1
    case juk2
    case juk6
    case jung1
    case jung2
    case jung4
    case jung5
    case jung6
    case jyu1
    case jyu2
    case jyu3
    case jyu4
    case jyu5
    case jyu6
    case jyun1
    case jyun2
    case jyun3
    case jyun4
    case jyun5
    case jyun6
    case jyut2
    case jyut3
    case jyut6
    case kaa1
    case kaa2
    case kaa3
    case kaa4
    case kaai2
    case kaai3
    case kaai5
    case kaak1
    case kaak3
    case kaam5
    case kaang1
    case kaat1
    case kaat3
    case kaau3
    case kai1
    case kai2
    case kai3
    case kak1
    case kam1
    case kam2
    case kam4
    case kam5
    case kam6
    case kan2
    case kan4
    case kan5
    case kang1
    case kang2
    case kang3
    case kap1
    case kap6
    case kat1
    case kau1
    case kau2
    case kau3
    case kau4
    case kau5
    case ke1
    case ke2
    case ke4
    case kei1
    case kei2
    case kei3
    case kei4
    case kei5
    case kek1
    case kek6
    case kem1
    case ken1
    case keng1
    case keoi1
    case keoi2
    case keoi4
    case keoi5
    case kep1
    case ki1
    case kik1
    case kim2
    case kim4
    case kin2
    case kin4
    case king1
    case king2
    case king4
    case kip1
    case kit3
    case kiu1
    case kiu2
    case kiu3
    case kiu4
    case kiu5
    case ko1
    case koe1
    case koe4
    case koek3
    case koek6
    case koeng2
    case koeng4
    case koeng5
    case koeng6
    case koi2
    case koi3
    case kok1
    case kok3
    case kon1
    case kon3
    case kong1
    case kong2
    case kong3
    case kong4
    case ku1
    case kui2
    case kui3
    case kuk1
    case kung4
    case kut3
    case kwaa1
    case kwaa2
    case kwaa3
    case kwaai3
    case kwaai5
    case kwaak1
    case kwaak3
    case kwaang1
    case kwaang3
    case kwaat1
    case kwai1
    case kwai2
    case kwai3
    case kwai4
    case kwai5
    case kwan1
    case kwan2
    case kwan3
    case kwan4
    case kwan5
    case kwang1
    case kwang3
    case kwik1
    case kwok3
    case kwong1
    case kwong2
    case kwong3
    case kwong4
    case kwu1
    case kwui2
    case kwui3
    case kwut3
    case kyun2
    case kyun4
    case kyut3
    case kyut6
    case laa1
    case laa2
    case laa3
    case laa4
    case laa5
    case laa6
    case laai1
    case laai2
    case laai3
    case laai4
    case laai5
    case laai6
    case laak1
    case laak3
    case laak6
    case laam2
    case laam3
    case laam4
    case laam5
    case laam6
    case laan1
    case laan2
    case laan4
    case laan5
    case laan6
    case laang1
    case laang4
    case laang5
    case laang6
    case laap2
    case laap3
    case laap6
    case laat1
    case laat2
    case laat3
    case laat6
    case laau1
    case laau2
    case laau4
    case laau5
    case laau6
    case lai2
    case lai4
    case lai5
    case lai6
    case lak6
    case lam1
    case lam2
    case lam3
    case lam4
    case lam5
    case lam6
    case lan2
    case lan4
    case lang1
    case lang3
    case lang4
    case lang6
    case lap1
    case lap2
    case lap6
    case lat1
    case lat6
    case lau1
    case lau2
    case lau3
    case lau4
    case lau5
    case lau6
    case le1
    case le2
    case le3
    case le4
    case le5
    case le6
    case lei1
    case lei2
    case lei4
    case lei5
    case lei6
    case lek1
    case lek6
    case lem2
    case leng1
    case leng2
    case leng3
    case leng4
    case leng5
    case leoi1
    case leoi2
    case leoi3
    case leoi4
    case leoi5
    case leoi6
    case leon1
    case leon2
    case leon4
    case leon5
    case leon6
    case leot2
    case leot3
    case leot6
    case li1
    case li2
    case li4
    case lik1
    case lik6
    case lim1
    case lim2
    case lim3
    case lim4
    case lim5
    case lim6
    case lin1
    case lin2
    case lin4
    case lin5
    case lin6
    case ling1
    case ling2
    case ling3
    case ling4
    case ling5
    case ling6
    case lip1
    case lip6
    case lit3
    case lit6
    case liu1
    case liu2
    case liu4
    case liu5
    case liu6
    case lo1
    case lo2
    case lo3
    case lo4
    case lo5
    case lo6
    case loe1
    case loe2
    case loek1
    case loek2
    case loek6
    case loeng2
    case loeng4
    case loeng5
    case loeng6
    case loi1
    case loi2
    case loi4
    case loi5
    case loi6
    case lok1
    case lok2
    case lok3
    case lok6
    case long1
    case long2
    case long3
    case long4
    case long5
    case long6
    case lou1
    case lou2
    case lou4
    case lou5
    case lou6
    case lu1
    case luk1
    case luk2
    case luk6
    case lung1
    case lung2
    case lung4
    case lung5
    case lung6
    case lyun1
    case lyun2
    case lyun4
    case lyun5
    case lyun6
    case lyut1
    case lyut3
    case lyut6
    case m2
    case m4
    case m5
    case m6
    case maa1
    case maa2
    case maa3
    case maa4
    case maa5
    case maa6
    case maai2
    case maai4
    case maai5
    case maai6
    case maak1
    case maak3
    case maak6
    case maan1
    case maan2
    case maan4
    case maan5
    case maan6
    case maang1
    case maang2
    case maang4
    case maang5
    case maang6
    case maat3
    case maat6
    case maau1
    case maau4
    case maau5
    case maau6
    case mai1
    case mai2
    case mai4
    case mai5
    case mai6
    case mak1
    case mak2
    case mak6
    case mam1
    case man1
    case man2
    case man3
    case man4
    case man5
    case man6
    case mang1
    case mang2
    case mang3
    case mang4
    case mang6
    case mat1
    case mat2
    case mat6
    case mau1
    case mau4
    case mau5
    case mau6
    case me1
    case me2
    case me5
    case me6
    case mei1
    case mei2
    case mei4
    case mei5
    case mei6
    case men1
    case meng2
    case meng4
    case meng6
    case mi1
    case mi4
    case mik6
    case min1
    case min2
    case min4
    case min5
    case min6
    case ming1
    case ming2
    case ming4
    case ming5
    case ming6
    case mit1
    case mit6
    case miu1
    case miu2
    case miu4
    case miu5
    case miu6
    case mo1
    case mo2
    case mo4
    case mo5
    case mo6
    case mok1
    case mok2
    case mok6
    case mong1
    case mong2
    case mong4
    case mong5
    case mong6
    case mou1
    case mou2
    case mou4
    case mou5
    case mou6
    case mui1
    case mui2
    case mui4
    case mui5
    case mui6
    case muk1
    case muk6
    case mun1
    case mun2
    case mun4
    case mun5
    case mun6
    case mung1
    case mung2
    case mung4
    case mung5
    case mung6
    case mut1
    case mut2
    case mut3
    case mut6
    case naa1
    case naa2
    case naa3
    case naa4
    case naa5
    case naa6
    case naai1
    case naai2
    case naai3
    case naai4
    case naai5
    case naai6
    case naam2
    case naam3
    case naam4
    case naam5
    case naam6
    case naan2
    case naan3
    case naan4
    case naan5
    case naan6
    case naap2
    case naap6
    case naat3
    case naat6
    case naau1
    case naau2
    case naau4
    case naau5
    case naau6
    case nai2
    case nai4
    case nai5
    case nai6
    case nak1
    case nak6
    case nam2
    case nam4
    case nam5
    case nam6
    case nan2
    case nan4
    case nang3
    case nang4
    case nap1
    case nap6
    case nat6
    case nau1
    case nau2
    case nau4
    case nau5
    case nau6
    case ne1
    case ne6
    case nei1
    case nei2
    case nei4
    case nei5
    case nei6
    case neoi2
    case neoi4
    case neoi5
    case neoi6
    case neot6
    case ng2
    case ng4
    case ng5
    case ng6
    case ngaa1
    case ngaa2
    case ngaa3
    case ngaa4
    case ngaa5
    case ngaa6
    case ngaai1
    case ngaai2
    case ngaai3
    case ngaai4
    case ngaai5
    case ngaai6
    case ngaak1
    case ngaak2
    case ngaak3
    case ngaak6
    case ngaam1
    case ngaam4
    case ngaan2
    case ngaan3
    case ngaan4
    case ngaan5
    case ngaan6
    case ngaang1
    case ngaang2
    case ngaang6
    case ngaap2
    case ngaap3
    case ngaat1
    case ngaat2
    case ngaat3
    case ngaat6
    case ngaau1
    case ngaau2
    case ngaau3
    case ngaau4
    case ngaau5
    case ngaau6
    case ngai1
    case ngai2
    case ngai3
    case ngai4
    case ngai5
    case ngai6
    case ngak1
    case ngam1
    case ngam2
    case ngam3
    case ngam4
    case ngam5
    case ngam6
    case ngan1
    case ngan2
    case ngan3
    case ngan4
    case ngan6
    case ngang1
    case ngang2
    case ngang3
    case ngap1
    case ngap6
    case ngat1
    case ngat6
    case ngau1
    case ngau2
    case ngau3
    case ngau4
    case ngau5
    case ngau6
    case nge4
    case nge6
    case ngei1
    case ngei3
    case ngei6
    case ngi1
    case ngit6
    case ngm2
    case ngm4
    case ngm6
    case ngo1
    case ngo2
    case ngo4
    case ngo5
    case ngo6
    case ngoi1
    case ngoi2
    case ngoi3
    case ngoi4
    case ngoi6
    case ngok2
    case ngok3
    case ngok6
    case ngon1
    case ngon2
    case ngon3
    case ngon4
    case ngon6
    case ngong1
    case ngong2
    case ngong3
    case ngong4
    case ngong5
    case ngong6
    case ngot6
    case ngou1
    case ngou2
    case ngou3
    case ngou4
    case ngou6
    case nguk1
    case ngung1
    case ngung2
    case ngung3
    case ni1
    case nik1
    case nik6
    case nim1
    case nim2
    case nim3
    case nim4
    case nim5
    case nim6
    case nin1
    case nin2
    case nin4
    case nin5
    case nin6
    case ning1
    case ning2
    case ning4
    case ning5
    case ning6
    case nip1
    case nip6
    case nit6
    case niu1
    case niu2
    case niu5
    case niu6
    case no1
    case no2
    case no4
    case no5
    case no6
    case noek6
    case noeng2
    case noeng4
    case noeng6
    case noi1
    case noi2
    case noi4
    case noi5
    case noi6
    case nok6
    case nong1
    case nong2
    case nong4
    case nong5
    case nong6
    case nou4
    case nou5
    case nou6
    case nuk6
    case nung1
    case nung4
    case nung5
    case nung6
    case nyun2
    case nyun4
    case nyun5
    case nyun6
    case o1
    case o2
    case o4
    case o5
    case o6
    case oi1
    case oi2
    case oi3
    case oi4
    case oi6
    case ok2
    case ok3
    case ok6
    case on1
    case on2
    case on3
    case on4
    case on6
    case ong1
    case ong2
    case ong3
    case ong4
    case ong5
    case ong6
    case ot6
    case ou1
    case ou2
    case ou3
    case ou4
    case ou6
    case paa1
    case paa2
    case paa3
    case paa4
    case paai1
    case paai2
    case paai3
    case paai4
    case paak1
    case paak2
    case paak3
    case paak4
    case paak6
    case paan1
    case paan3
    case paang1
    case paang2
    case paang4
    case paang5
    case paang6
    case paat1
    case paat3
    case paat6
    case paau1
    case paau2
    case paau3
    case paau4
    case pai1
    case pai2
    case pai3
    case pai5
    case pai6
    case pan1
    case pan3
    case pan4
    case pan5
    case pang2
    case pang3
    case pang4
    case pat1
    case pat6
    case pau1
    case pau2
    case pau3
    case pau4
    case pe1
    case pe5
    case pei1
    case pei2
    case pei3
    case pei4
    case pei5
    case pei6
    case pek1
    case pek3
    case pek6
    case pen1
    case peng1
    case peng2
    case peng4
    case pet1
    case pet6
    case pi1
    case pik1
    case pin1
    case pin2
    case pin3
    case pin4
    case pin5
    case ping1
    case ping2
    case ping3
    case ping4
    case pit3
    case piu1
    case piu2
    case piu3
    case piu4
    case piu5
    case po1
    case po2
    case po3
    case po4
    case pok1
    case pok2
    case pok3
    case pong1
    case pong2
    case pong3
    case pong4
    case pong5
    case pot1
    case pou1
    case pou2
    case pou3
    case pou4
    case pou5
    case pou6
    case pui1
    case pui2
    case pui3
    case pui4
    case pui5
    case pui6
    case puk1
    case puk3
    case puk6
    case pun1
    case pun2
    case pun3
    case pun4
    case pun5
    case pun6
    case pung1
    case pung2
    case pung3
    case pung4
    case put3
    case put6
    case saa1
    case saa2
    case saa3
    case saa4
    case saai1
    case saai2
    case saai3
    case saai4
    case saai5
    case saak3
    case saam1
    case saam2
    case saam3
    case saam4
    case saan1
    case saan2
    case saan3
    case saan4
    case saang1
    case saang2
    case saap1
    case saap3
    case saap6
    case saat2
    case saat3
    case saau1
    case saau2
    case saau3
    case saau4
    case sai1
    case sai2
    case sai3
    case sai4
    case sai6
    case sak1
    case sam1
    case sam2
    case sam3
    case sam4
    case sam6
    case san1
    case san2
    case san3
    case san4
    case san5
    case san6
    case sang1
    case sang3
    case sap1
    case sap6
    case sat1
    case sat6
    case sau1
    case sau2
    case sau3
    case sau4
    case sau6
    case se1
    case se2
    case se3
    case se4
    case se5
    case se6
    case sei2
    case sei3
    case sek2
    case sek3
    case sek6
    case sen1
    case seng1
    case seng2
    case seng3
    case seng4
    case seoi1
    case seoi2
    case seoi3
    case seoi4
    case seoi5
    case seoi6
    case seon1
    case seon2
    case seon3
    case seon4
    case seon5
    case seon6
    case seot1
    case seot2
    case seot6
    case set1
    case seu1
    case si1
    case si2
    case si3
    case si4
    case si5
    case si6
    case sik1
    case sik2
    case sik3
    case sik6
    case sim1
    case sim2
    case sim3
    case sim4
    case sim6
    case sin1
    case sin2
    case sin3
    case sin4
    case sin5
    case sin6
    case sing1
    case sing2
    case sing3
    case sing4
    case sing6
    case sip3
    case sit3
    case sit6
    case siu1
    case siu2
    case siu3
    case siu4
    case siu6
    case so1
    case so2
    case so3
    case so4
    case soe4
    case soek3
    case soeng1
    case soeng2
    case soeng3
    case soeng4
    case soeng5
    case soeng6
    case soi1
    case soi2
    case sok1
    case sok3
    case song1
    case song2
    case song3
    case sot1
    case sou1
    case sou2
    case sou3
    case sou4
    case su4
    case suk1
    case suk3
    case suk6
    case sung1
    case sung2
    case sung3
    case sung4
    case syu1
    case syu2
    case syu3
    case syu4
    case syu5
    case syu6
    case syun1
    case syun2
    case syun3
    case syun4
    case syun5
    case syun6
    case syut1
    case syut3
    case taa1
    case taai1
    case taai2
    case taai3
    case taai5
    case taam1
    case taam2
    case taam3
    case taam4
    case taam5
    case taan1
    case taan2
    case taan3
    case taan4
    case taap1
    case taap2
    case taap3
    case taat1
    case taat3
    case taat6
    case tai1
    case tai2
    case tai3
    case tai4
    case tai5
    case tam2
    case tam3
    case tam4
    case tam5
    case tan1
    case tan2
    case tan3
    case tan4
    case tang1
    case tang3
    case tang4
    case tap1
    case tau1
    case tau2
    case tau3
    case tau4
    case tek3
    case teng1
    case teng5
    case teoi1
    case teoi2
    case teoi3
    case teoi4
    case teon1
    case teon2
    case teon3
    case teon5
    case teot1
    case teu4
    case ti1
    case ti4
    case tik1
    case tim1
    case tim2
    case tim3
    case tim4
    case tim5
    case tin1
    case tin2
    case tin3
    case tin4
    case tin5
    case ting1
    case ting2
    case ting3
    case ting4
    case ting5
    case ting6
    case tip1
    case tip2
    case tip3
    case tit3
    case tiu1
    case tiu2
    case tiu3
    case tiu4
    case tiu5
    case to1
    case to2
    case to3
    case to4
    case to5
    case toe3
    case toe5
    case toi1
    case toi2
    case toi4
    case toi5
    case tok1
    case tok2
    case tok3
    case tong1
    case tong2
    case tong3
    case tong4
    case tong5
    case tou1
    case tou2
    case tou3
    case tou4
    case tou5
    case tuk1
    case tung1
    case tung2
    case tung3
    case tung4
    case tyun1
    case tyun2
    case tyun4
    case tyun5
    case tyut1
    case tyut3
    case uk1
    case ung1
    case ung2
    case ung3
    case waa1
    case waa2
    case waa4
    case waa5
    case waa6
    case waai1
    case waai2
    case waai4
    case waai6
    case waak1
    case waak2
    case waak6
    case waan1
    case waan2
    case waan4
    case waan5
    case waan6
    case waang1
    case waang4
    case waang6
    case waat2
    case waat3
    case waat6
    case wai1
    case wai2
    case wai3
    case wai4
    case wai5
    case wai6
    case wak6
    case wan1
    case wan2
    case wan3
    case wan4
    case wan5
    case wan6
    case wang2
    case wang4
    case wang6
    case wat1
    case wat2
    case wat6
    case we2
    case we5
    case wen1
    case wet1
    case wi1
    case wik6
    case wing1
    case wing4
    case wing5
    case wing6
    case wo1
    case wo2
    case wo3
    case wo4
    case wo5
    case wo6
    case woek1
    case wok1
    case wok2
    case wok3
    case wok6
    case wong1
    case wong2
    case wong4
    case wong5
    case wong6
    case wu1
    case wu2
    case wu3
    case wu4
    case wu6
    case wui1
    case wui2
    case wui3
    case wui4
    case wui5
    case wui6
    case wun1
    case wun2
    case wun3
    case wun4
    case wun5
    case wun6
    case wut6
    case zaa1
    case zaa2
    case zaa3
    case zaa6
    case zaai1
    case zaai2
    case zaai3
    case zaai6
    case zaak2
    case zaak3
    case zaak6
    case zaam1
    case zaam2
    case zaam3
    case zaam6
    case zaan1
    case zaan2
    case zaan3
    case zaan6
    case zaang1
    case zaang3
    case zaang6
    case zaap2
    case zaap3
    case zaap6
    case zaat2
    case zaat3
    case zaat6
    case zaau1
    case zaau2
    case zaau3
    case zaau6
    case zai1
    case zai2
    case zai3
    case zai4
    case zai6
    case zak1
    case zam1
    case zam2
    case zam3
    case zam4
    case zam6
    case zan1
    case zan2
    case zan3
    case zan5
    case zan6
    case zang1
    case zang2
    case zang3
    case zang6
    case zap1
    case zap6
    case zat1
    case zat2
    case zat6
    case zau1
    case zau2
    case zau3
    case zau6
    case ze1
    case ze2
    case ze3
    case ze4
    case ze5
    case ze6
    case zek1
    case zek3
    case zek6
    case zem1
    case zeng1
    case zeng2
    case zeng3
    case zeng6
    case zeoi1
    case zeoi2
    case zeoi3
    case zeoi6
    case zeon1
    case zeon2
    case zeon3
    case zeon6
    case zeot1
    case zeot6
    case zep6
    case zi1
    case zi2
    case zi3
    case zi4
    case zi6
    case zik1
    case zik2
    case zik3
    case zik6
    case zim1
    case zim2
    case zim3
    case zim6
    case zin1
    case zin2
    case zin3
    case zin6
    case zing1
    case zing2
    case zing3
    case zing6
    case zip1
    case zip2
    case zip3
    case zip6
    case zit1
    case zit2
    case zit3
    case zit6
    case ziu1
    case ziu2
    case ziu3
    case ziu6
    case zo2
    case zo3
    case zo4
    case zo6
    case zoe1
    case zoek2
    case zoek3
    case zoek6
    case zoeng1
    case zoeng2
    case zoeng3
    case zoeng6
    case zoi1
    case zoi2
    case zoi3
    case zoi6
    case zok2
    case zok3
    case zok6
    case zong1
    case zong2
    case zong3
    case zong5
    case zong6
    case zou1
    case zou2
    case zou3
    case zou6
    case zuk1
    case zuk3
    case zuk6
    case zung1
    case zung2
    case zung3
    case zung6
    case zyu1
    case zyu2
    case zyu3
    case zyu6
    case zyun1
    case zyun2
    case zyun3
    case zyun6
    case zyut1
    case zyut2
    case zyut3
    case zyut6

    
    public enum Initial : UInt8, CaseIterable {
        case b = 1
        case c
        case d
        case f
        case g
        case gw
        case h
        case j
        case k
        case kw
        case l
        case m
        case n
        case ng
        case p
        case s
        case t
        case w
        case z
        case none
    }
    
    public enum Final : UInt8, CaseIterable {
        case aa = 1
        case aai
        case aak
        case aam
        case aan
        case aang
        case aap
        case aat
        case aau
        case ai
        case ak
        case am
        case an
        case ang
        case ap
        case at
        case au
        case e
        case ei
        case ek
        case em
        case en
        case eng
        case eoi
        case eon
        case eot
        case ep
        case et
        case eu
        case i
        case ik
        case im
        case `in`
        case ing
        case ip
        case it
        case iu
        case m
        case ng
        case o
        case oi
        case oe
        case oek
        case oeng
        case ok
        case on
        case ong
        case ot
        case ou
        case u
        case ui
        case uk
        case un
        case ung
        case ut
        case yu
        case yun
        case yut
    }
    
    public enum Tone : UInt8 {
        case 陰平 = 1
        case 陰上
        case 陰去
        case 陽平
        case 陽上
        case 陽去
    }
    
    struct Info {
        let final: Final
        let initial: Initial
        let tone: Tone
        let jyutPing: String
        let jyutPingWithTone: String
        let jyutPing9: String

        private init(final: Final, initial: Initial, tone: Tone) {
            self.final = final
            self.initial = initial
            self.tone = tone
            
            jyutPing = initial.name + final.name
            jyutPingWithTone = "\(jyutPing)\(tone.rawValue)"
            
            let academy = initial.academy + final.academy
            
            if final.入聲 {
                jyutPing9 = "\(academy)\(tone.入聲調)"
            } else {
                jyutPing9 = "\(academy)\(tone.rawValue)"
            }
        }
        
        static let aa1 = Info(final: .aa, initial: .none, tone: .陰平)
        static let aa2 = Info(final: .aa, initial: .none, tone: .陰上)
        static let aa3 = Info(final: .aa, initial: .none, tone: .陰去)
        static let aa4 = Info(final: .aa, initial: .none, tone: .陽平)
        static let aa5 = Info(final: .aa, initial: .none, tone: .陽上)
        static let aa6 = Info(final: .aa, initial: .none, tone: .陽去)
        static let aai1 = Info(final: .aai, initial: .none, tone: .陰平)
        static let aai2 = Info(final: .aai, initial: .none, tone: .陰上)
        static let aai3 = Info(final: .aai, initial: .none, tone: .陰去)
        static let aai4 = Info(final: .aai, initial: .none, tone: .陽平)
        static let aai5 = Info(final: .aai, initial: .none, tone: .陽上)
        static let aai6 = Info(final: .aai, initial: .none, tone: .陽去)
        static let aak1 = Info(final: .aak, initial: .none, tone: .陰平)
        static let aak2 = Info(final: .aak, initial: .none, tone: .陰上)
        static let aak3 = Info(final: .aak, initial: .none, tone: .陰去)
        static let aak6 = Info(final: .aak, initial: .none, tone: .陽去)
        static let aam1 = Info(final: .aam, initial: .none, tone: .陰平)
        static let aam4 = Info(final: .aam, initial: .none, tone: .陽平)
        static let aan2 = Info(final: .aan, initial: .none, tone: .陰上)
        static let aan3 = Info(final: .aan, initial: .none, tone: .陰去)
        static let aan4 = Info(final: .aan, initial: .none, tone: .陽平)
        static let aan5 = Info(final: .aan, initial: .none, tone: .陽上)
        static let aan6 = Info(final: .aan, initial: .none, tone: .陽去)
        static let aang1 = Info(final: .aang, initial: .none, tone: .陰平)
        static let aang2 = Info(final: .aang, initial: .none, tone: .陰上)
        static let aang6 = Info(final: .aang, initial: .none, tone: .陽去)
        static let aap2 = Info(final: .aap, initial: .none, tone: .陰上)
        static let aap3 = Info(final: .aap, initial: .none, tone: .陰去)
        static let aat1 = Info(final: .aat, initial: .none, tone: .陰平)
        static let aat2 = Info(final: .aat, initial: .none, tone: .陰上)
        static let aat3 = Info(final: .aat, initial: .none, tone: .陰去)
        static let aat6 = Info(final: .aat, initial: .none, tone: .陽去)
        static let aau1 = Info(final: .aau, initial: .none, tone: .陰平)
        static let aau2 = Info(final: .aau, initial: .none, tone: .陰上)
        static let aau3 = Info(final: .aau, initial: .none, tone: .陰去)
        static let aau4 = Info(final: .aau, initial: .none, tone: .陽平)
        static let aau5 = Info(final: .aau, initial: .none, tone: .陽上)
        static let aau6 = Info(final: .aau, initial: .none, tone: .陽去)
        static let ai1 = Info(final: .ai, initial: .none, tone: .陰平)
        static let ai2 = Info(final: .ai, initial: .none, tone: .陰上)
        static let ai3 = Info(final: .ai, initial: .none, tone: .陰去)
        static let ai4 = Info(final: .ai, initial: .none, tone: .陽平)
        static let ai5 = Info(final: .ai, initial: .none, tone: .陽上)
        static let ai6 = Info(final: .ai, initial: .none, tone: .陽去)
        static let ak1 = Info(final: .ak, initial: .none, tone: .陰平)
        static let am1 = Info(final: .am, initial: .none, tone: .陰平)
        static let am2 = Info(final: .am, initial: .none, tone: .陰上)
        static let am3 = Info(final: .am, initial: .none, tone: .陰去)
        static let am4 = Info(final: .am, initial: .none, tone: .陽平)
        static let am5 = Info(final: .am, initial: .none, tone: .陽上)
        static let am6 = Info(final: .am, initial: .none, tone: .陽去)
        static let an1 = Info(final: .an, initial: .none, tone: .陰平)
        static let an2 = Info(final: .an, initial: .none, tone: .陰上)
        static let an3 = Info(final: .an, initial: .none, tone: .陰去)
        static let an4 = Info(final: .an, initial: .none, tone: .陽平)
        static let an6 = Info(final: .an, initial: .none, tone: .陽去)
        static let ang1 = Info(final: .ang, initial: .none, tone: .陰平)
        static let ang2 = Info(final: .ang, initial: .none, tone: .陰上)
        static let ang3 = Info(final: .ang, initial: .none, tone: .陰去)
        static let ap1 = Info(final: .ap, initial: .none, tone: .陰平)
        static let ap6 = Info(final: .ap, initial: .none, tone: .陽去)
        static let at1 = Info(final: .at, initial: .none, tone: .陰平)
        static let at6 = Info(final: .at, initial: .none, tone: .陽去)
        static let au1 = Info(final: .au, initial: .none, tone: .陰平)
        static let au2 = Info(final: .au, initial: .none, tone: .陰上)
        static let au3 = Info(final: .au, initial: .none, tone: .陰去)
        static let au4 = Info(final: .au, initial: .none, tone: .陽平)
        static let au5 = Info(final: .au, initial: .none, tone: .陽上)
        static let au6 = Info(final: .au, initial: .none, tone: .陽去)
        static let baa1 = Info(final: .aa, initial: .b, tone: .陰平)
        static let baa2 = Info(final: .aa, initial: .b, tone: .陰上)
        static let baa3 = Info(final: .aa, initial: .b, tone: .陰去)
        static let baa4 = Info(final: .aa, initial: .b, tone: .陽平)
        static let baa6 = Info(final: .aa, initial: .b, tone: .陽去)
        static let baai1 = Info(final: .aai, initial: .b, tone: .陰平)
        static let baai2 = Info(final: .aai, initial: .b, tone: .陰上)
        static let baai3 = Info(final: .aai, initial: .b, tone: .陰去)
        static let baai6 = Info(final: .aai, initial: .b, tone: .陽去)
        static let baak1 = Info(final: .aak, initial: .b, tone: .陰平)
        static let baak2 = Info(final: .aak, initial: .b, tone: .陰上)
        static let baak3 = Info(final: .aak, initial: .b, tone: .陰去)
        static let baak6 = Info(final: .aak, initial: .b, tone: .陽去)
        static let baan1 = Info(final: .aan, initial: .b, tone: .陰平)
        static let baan2 = Info(final: .aan, initial: .b, tone: .陰上)
        static let baan3 = Info(final: .aan, initial: .b, tone: .陰去)
        static let baan6 = Info(final: .aan, initial: .b, tone: .陽去)
        static let baang1 = Info(final: .aang, initial: .b, tone: .陰平)
        static let baang4 = Info(final: .aang, initial: .b, tone: .陽平)
        static let baang6 = Info(final: .aang, initial: .b, tone: .陽去)
        static let baat2 = Info(final: .aat, initial: .b, tone: .陰上)
        static let baat3 = Info(final: .aat, initial: .b, tone: .陰去)
        static let baat6 = Info(final: .aat, initial: .b, tone: .陽去)
        static let baau1 = Info(final: .aau, initial: .b, tone: .陰平)
        static let baau2 = Info(final: .aau, initial: .b, tone: .陰上)
        static let baau3 = Info(final: .aau, initial: .b, tone: .陰去)
        static let baau6 = Info(final: .aau, initial: .b, tone: .陽去)
        static let bai1 = Info(final: .ai, initial: .b, tone: .陰平)
        static let bai2 = Info(final: .ai, initial: .b, tone: .陰上)
        static let bai3 = Info(final: .ai, initial: .b, tone: .陰去)
        static let bai6 = Info(final: .ai, initial: .b, tone: .陽去)
        static let bak1 = Info(final: .ak, initial: .b, tone: .陰平)
        static let bam1 = Info(final: .am, initial: .b, tone: .陰平)
        static let ban1 = Info(final: .an, initial: .b, tone: .陰平)
        static let ban2 = Info(final: .an, initial: .b, tone: .陰上)
        static let ban3 = Info(final: .an, initial: .b, tone: .陰去)
        static let ban6 = Info(final: .an, initial: .b, tone: .陽去)
        static let bang1 = Info(final: .ang, initial: .b, tone: .陰平)
        static let bang2 = Info(final: .ang, initial: .b, tone: .陰上)
        static let bang6 = Info(final: .ang, initial: .b, tone: .陽去)
        static let bat1 = Info(final: .at, initial: .b, tone: .陰平)
        static let bat3 = Info(final: .at, initial: .b, tone: .陰去)
        static let bat6 = Info(final: .at, initial: .b, tone: .陽去)
        static let bau2 = Info(final: .au, initial: .b, tone: .陰上)
        static let bau6 = Info(final: .au, initial: .b, tone: .陽去)
        static let be1 = Info(final: .e, initial: .b, tone: .陰平)
        static let be4 = Info(final: .e, initial: .b, tone: .陽平)
        static let be6 = Info(final: .e, initial: .b, tone: .陽去)
        static let bei1 = Info(final: .ei, initial: .b, tone: .陰平)
        static let bei2 = Info(final: .ei, initial: .b, tone: .陰上)
        static let bei3 = Info(final: .ei, initial: .b, tone: .陰去)
        static let bei4 = Info(final: .ei, initial: .b, tone: .陽平)
        static let bei6 = Info(final: .ei, initial: .b, tone: .陽去)
        static let bek3 = Info(final: .ek, initial: .b, tone: .陰去)
        static let ben1 = Info(final: .en, initial: .b, tone: .陰平)
        static let beng2 = Info(final: .eng, initial: .b, tone: .陰上)
        static let beng3 = Info(final: .eng, initial: .b, tone: .陰去)
        static let beng6 = Info(final: .eng, initial: .b, tone: .陽去)
        static let bi1 = Info(final: .i, initial: .b, tone: .陰平)
        static let bi4 = Info(final: .i, initial: .b, tone: .陽平)
        static let bik1 = Info(final: .ik, initial: .b, tone: .陰平)
        static let bik3 = Info(final: .ik, initial: .b, tone: .陰去)
        static let bik6 = Info(final: .ik, initial: .b, tone: .陽去)
        static let bin1 = Info(final: .in, initial: .b, tone: .陰平)
        static let bin2 = Info(final: .in, initial: .b, tone: .陰上)
        static let bin3 = Info(final: .in, initial: .b, tone: .陰去)
        static let bin6 = Info(final: .in, initial: .b, tone: .陽去)
        static let bing1 = Info(final: .ing, initial: .b, tone: .陰平)
        static let bing2 = Info(final: .ing, initial: .b, tone: .陰上)
        static let bing3 = Info(final: .ing, initial: .b, tone: .陰去)
        static let bing4 = Info(final: .ing, initial: .b, tone: .陽平)
        static let bing6 = Info(final: .ing, initial: .b, tone: .陽去)
        static let bit1 = Info(final: .it, initial: .b, tone: .陰平)
        static let bit3 = Info(final: .it, initial: .b, tone: .陰去)
        static let bit6 = Info(final: .it, initial: .b, tone: .陽去)
        static let biu1 = Info(final: .iu, initial: .b, tone: .陰平)
        static let biu2 = Info(final: .iu, initial: .b, tone: .陰上)
        static let biu3 = Info(final: .iu, initial: .b, tone: .陰去)
        static let biu6 = Info(final: .iu, initial: .b, tone: .陽去)
        static let bo1 = Info(final: .o, initial: .b, tone: .陰平)
        static let bo2 = Info(final: .o, initial: .b, tone: .陰上)
        static let bo3 = Info(final: .o, initial: .b, tone: .陰去)
        static let bok1 = Info(final: .ok, initial: .b, tone: .陰平)
        static let bok2 = Info(final: .ok, initial: .b, tone: .陰上)
        static let bok3 = Info(final: .ok, initial: .b, tone: .陰去)
        static let bok6 = Info(final: .ok, initial: .b, tone: .陽去)
        static let bong1 = Info(final: .ong, initial: .b, tone: .陰平)
        static let bong2 = Info(final: .ong, initial: .b, tone: .陰上)
        static let bong3 = Info(final: .ong, initial: .b, tone: .陰去)
        static let bong4 = Info(final: .ong, initial: .b, tone: .陽平)
        static let bong6 = Info(final: .ong, initial: .b, tone: .陽去)
        static let bou1 = Info(final: .ou, initial: .b, tone: .陰平)
        static let bou2 = Info(final: .ou, initial: .b, tone: .陰上)
        static let bou3 = Info(final: .ou, initial: .b, tone: .陰去)
        static let bou6 = Info(final: .ou, initial: .b, tone: .陽去)
        static let bui1 = Info(final: .ui, initial: .b, tone: .陰平)
        static let bui2 = Info(final: .ui, initial: .b, tone: .陰上)
        static let bui3 = Info(final: .ui, initial: .b, tone: .陰去)
        static let bui6 = Info(final: .ui, initial: .b, tone: .陽去)
        static let buk1 = Info(final: .uk, initial: .b, tone: .陰平)
        static let buk6 = Info(final: .uk, initial: .b, tone: .陽去)
        static let bun1 = Info(final: .un, initial: .b, tone: .陰平)
        static let bun2 = Info(final: .un, initial: .b, tone: .陰上)
        static let bun3 = Info(final: .un, initial: .b, tone: .陰去)
        static let bun5 = Info(final: .un, initial: .b, tone: .陽上)
        static let bun6 = Info(final: .un, initial: .b, tone: .陽去)
        static let bung2 = Info(final: .ung, initial: .b, tone: .陰上)
        static let bung3 = Info(final: .ung, initial: .b, tone: .陰去)
        static let bung6 = Info(final: .ung, initial: .b, tone: .陽去)
        static let but1 = Info(final: .ut, initial: .b, tone: .陰平)
        static let but2 = Info(final: .ut, initial: .b, tone: .陰上)
        static let but3 = Info(final: .ut, initial: .b, tone: .陰去)
        static let but6 = Info(final: .ut, initial: .b, tone: .陽去)
        static let caa1 = Info(final: .aa, initial: .c, tone: .陰平)
        static let caa2 = Info(final: .aa, initial: .c, tone: .陰上)
        static let caa3 = Info(final: .aa, initial: .c, tone: .陰去)
        static let caa4 = Info(final: .aa, initial: .c, tone: .陽平)
        static let caa5 = Info(final: .aa, initial: .c, tone: .陽上)
        static let caai1 = Info(final: .aai, initial: .c, tone: .陰平)
        static let caai2 = Info(final: .aai, initial: .c, tone: .陰上)
        static let caai3 = Info(final: .aai, initial: .c, tone: .陰去)
        static let caai4 = Info(final: .aai, initial: .c, tone: .陽平)
        static let caak1 = Info(final: .aak, initial: .c, tone: .陰平)
        static let caak2 = Info(final: .aak, initial: .c, tone: .陰上)
        static let caak3 = Info(final: .aak, initial: .c, tone: .陰去)
        static let caak6 = Info(final: .aak, initial: .c, tone: .陽去)
        static let caam1 = Info(final: .aam, initial: .c, tone: .陰平)
        static let caam2 = Info(final: .aam, initial: .c, tone: .陰上)
        static let caam3 = Info(final: .aam, initial: .c, tone: .陰去)
        static let caam4 = Info(final: .aam, initial: .c, tone: .陽平)
        static let caam5 = Info(final: .aam, initial: .c, tone: .陽上)
        static let caan1 = Info(final: .aan, initial: .c, tone: .陰平)
        static let caan2 = Info(final: .aan, initial: .c, tone: .陰上)
        static let caan3 = Info(final: .aan, initial: .c, tone: .陰去)
        static let caan4 = Info(final: .aan, initial: .c, tone: .陽平)
        static let caang1 = Info(final: .aang, initial: .c, tone: .陰平)
        static let caang2 = Info(final: .aang, initial: .c, tone: .陰上)
        static let caang3 = Info(final: .aang, initial: .c, tone: .陰去)
        static let caang4 = Info(final: .aang, initial: .c, tone: .陽平)
        static let caap2 = Info(final: .aap, initial: .c, tone: .陰上)
        static let caap3 = Info(final: .aap, initial: .c, tone: .陰去)
        static let caat1 = Info(final: .aat, initial: .c, tone: .陰平)
        static let caat2 = Info(final: .aat, initial: .c, tone: .陰上)
        static let caat3 = Info(final: .aat, initial: .c, tone: .陰去)
        static let caau1 = Info(final: .aau, initial: .c, tone: .陰平)
        static let caau2 = Info(final: .aau, initial: .c, tone: .陰上)
        static let caau3 = Info(final: .aau, initial: .c, tone: .陰去)
        static let caau4 = Info(final: .aau, initial: .c, tone: .陽平)
        static let cai1 = Info(final: .ai, initial: .c, tone: .陰平)
        static let cai2 = Info(final: .ai, initial: .c, tone: .陰上)
        static let cai3 = Info(final: .ai, initial: .c, tone: .陰去)
        static let cai4 = Info(final: .ai, initial: .c, tone: .陽平)
        static let cai5 = Info(final: .ai, initial: .c, tone: .陽上)
        static let cak1 = Info(final: .ak, initial: .c, tone: .陰平)
        static let cam1 = Info(final: .am, initial: .c, tone: .陰平)
        static let cam2 = Info(final: .am, initial: .c, tone: .陰上)
        static let cam3 = Info(final: .am, initial: .c, tone: .陰去)
        static let cam4 = Info(final: .am, initial: .c, tone: .陽平)
        static let cam5 = Info(final: .am, initial: .c, tone: .陽上)
        static let can1 = Info(final: .an, initial: .c, tone: .陰平)
        static let can2 = Info(final: .an, initial: .c, tone: .陰上)
        static let can3 = Info(final: .an, initial: .c, tone: .陰去)
        static let can4 = Info(final: .an, initial: .c, tone: .陽平)
        static let cang1 = Info(final: .ang, initial: .c, tone: .陰平)
        static let cang3 = Info(final: .ang, initial: .c, tone: .陰去)
        static let cang4 = Info(final: .ang, initial: .c, tone: .陽平)
        static let cap1 = Info(final: .ap, initial: .c, tone: .陰平)
        static let cat1 = Info(final: .at, initial: .c, tone: .陰平)
        static let cat6 = Info(final: .at, initial: .c, tone: .陽去)
        static let cau1 = Info(final: .au, initial: .c, tone: .陰平)
        static let cau2 = Info(final: .au, initial: .c, tone: .陰上)
        static let cau3 = Info(final: .au, initial: .c, tone: .陰去)
        static let cau4 = Info(final: .au, initial: .c, tone: .陽平)
        static let ce1 = Info(final: .e, initial: .c, tone: .陰平)
        static let ce2 = Info(final: .e, initial: .c, tone: .陰上)
        static let ce3 = Info(final: .e, initial: .c, tone: .陰去)
        static let ce4 = Info(final: .e, initial: .c, tone: .陽平)
        static let ce5 = Info(final: .e, initial: .c, tone: .陽上)
        static let ce6 = Info(final: .e, initial: .c, tone: .陽去)
        static let cek1 = Info(final: .ek, initial: .c, tone: .陰平)
        static let cek2 = Info(final: .ek, initial: .c, tone: .陰上)
        static let cek3 = Info(final: .ek, initial: .c, tone: .陰去)
        static let ceng1 = Info(final: .eng, initial: .c, tone: .陰平)
        static let ceng2 = Info(final: .eng, initial: .c, tone: .陰上)
        static let ceng4 = Info(final: .eng, initial: .c, tone: .陽平)
        static let ceoi1 = Info(final: .eoi, initial: .c, tone: .陰平)
        static let ceoi2 = Info(final: .eoi, initial: .c, tone: .陰上)
        static let ceoi3 = Info(final: .eoi, initial: .c, tone: .陰去)
        static let ceoi4 = Info(final: .eoi, initial: .c, tone: .陽平)
        static let ceon1 = Info(final: .eon, initial: .c, tone: .陰平)
        static let ceon2 = Info(final: .eon, initial: .c, tone: .陰上)
        static let ceon4 = Info(final: .eon, initial: .c, tone: .陽平)
        static let ceot1 = Info(final: .eot, initial: .c, tone: .陰平)
        static let ci1 = Info(final: .i, initial: .c, tone: .陰平)
        static let ci2 = Info(final: .i, initial: .c, tone: .陰上)
        static let ci3 = Info(final: .i, initial: .c, tone: .陰去)
        static let ci4 = Info(final: .i, initial: .c, tone: .陽平)
        static let ci5 = Info(final: .i, initial: .c, tone: .陽上)
        static let cik1 = Info(final: .ik, initial: .c, tone: .陰平)
        static let cik3 = Info(final: .ik, initial: .c, tone: .陰去)
        static let cim1 = Info(final: .im, initial: .c, tone: .陰平)
        static let cim2 = Info(final: .im, initial: .c, tone: .陰上)
        static let cim3 = Info(final: .im, initial: .c, tone: .陰去)
        static let cim4 = Info(final: .im, initial: .c, tone: .陽平)
        static let cim5 = Info(final: .im, initial: .c, tone: .陽上)
        static let cin1 = Info(final: .in, initial: .c, tone: .陰平)
        static let cin2 = Info(final: .in, initial: .c, tone: .陰上)
        static let cin3 = Info(final: .in, initial: .c, tone: .陰去)
        static let cin4 = Info(final: .in, initial: .c, tone: .陽平)
        static let cin5 = Info(final: .in, initial: .c, tone: .陽上)
        static let cing1 = Info(final: .ing, initial: .c, tone: .陰平)
        static let cing2 = Info(final: .ing, initial: .c, tone: .陰上)
        static let cing3 = Info(final: .ing, initial: .c, tone: .陰去)
        static let cing4 = Info(final: .ing, initial: .c, tone: .陽平)
        static let cip1 = Info(final: .ip, initial: .c, tone: .陰平)
        static let cip3 = Info(final: .ip, initial: .c, tone: .陰去)
        static let cit1 = Info(final: .it, initial: .c, tone: .陰平)
        static let cit3 = Info(final: .it, initial: .c, tone: .陰去)
        static let ciu1 = Info(final: .iu, initial: .c, tone: .陰平)
        static let ciu2 = Info(final: .iu, initial: .c, tone: .陰上)
        static let ciu3 = Info(final: .iu, initial: .c, tone: .陰去)
        static let ciu4 = Info(final: .iu, initial: .c, tone: .陽平)
        static let ciu5 = Info(final: .iu, initial: .c, tone: .陽上)
        static let ciu6 = Info(final: .iu, initial: .c, tone: .陽去)
        static let co1 = Info(final: .o, initial: .c, tone: .陰平)
        static let co2 = Info(final: .o, initial: .c, tone: .陰上)
        static let co3 = Info(final: .o, initial: .c, tone: .陰去)
        static let co4 = Info(final: .o, initial: .c, tone: .陽平)
        static let co5 = Info(final: .o, initial: .c, tone: .陽上)
        static let coek3 = Info(final: .oek, initial: .c, tone: .陰去)
        static let coeng1 = Info(final: .oeng, initial: .c, tone: .陰平)
        static let coeng2 = Info(final: .oeng, initial: .c, tone: .陰上)
        static let coeng3 = Info(final: .oeng, initial: .c, tone: .陰去)
        static let coeng4 = Info(final: .oeng, initial: .c, tone: .陽平)
        static let coi1 = Info(final: .oi, initial: .c, tone: .陰平)
        static let coi2 = Info(final: .oi, initial: .c, tone: .陰上)
        static let coi3 = Info(final: .oi, initial: .c, tone: .陰去)
        static let coi4 = Info(final: .oi, initial: .c, tone: .陽平)
        static let cok3 = Info(final: .ok, initial: .c, tone: .陰去)
        static let cong1 = Info(final: .ong, initial: .c, tone: .陰平)
        static let cong2 = Info(final: .ong, initial: .c, tone: .陰上)
        static let cong3 = Info(final: .ong, initial: .c, tone: .陰去)
        static let cong4 = Info(final: .ong, initial: .c, tone: .陽平)
        static let cou1 = Info(final: .ou, initial: .c, tone: .陰平)
        static let cou2 = Info(final: .ou, initial: .c, tone: .陰上)
        static let cou3 = Info(final: .ou, initial: .c, tone: .陰去)
        static let cou4 = Info(final: .ou, initial: .c, tone: .陽平)
        static let cou5 = Info(final: .ou, initial: .c, tone: .陽上)
        static let cuk1 = Info(final: .uk, initial: .c, tone: .陰平)
        static let cuk6 = Info(final: .uk, initial: .c, tone: .陽去)
        static let cung1 = Info(final: .ung, initial: .c, tone: .陰平)
        static let cung2 = Info(final: .ung, initial: .c, tone: .陰上)
        static let cung3 = Info(final: .ung, initial: .c, tone: .陰去)
        static let cung4 = Info(final: .ung, initial: .c, tone: .陽平)
        static let cung5 = Info(final: .ung, initial: .c, tone: .陽上)
        static let cyu2 = Info(final: .yu, initial: .c, tone: .陰上)
        static let cyu3 = Info(final: .yu, initial: .c, tone: .陰去)
        static let cyu4 = Info(final: .yu, initial: .c, tone: .陽平)
        static let cyu5 = Info(final: .yu, initial: .c, tone: .陽上)
        static let cyun1 = Info(final: .yun, initial: .c, tone: .陰平)
        static let cyun2 = Info(final: .yun, initial: .c, tone: .陰上)
        static let cyun3 = Info(final: .yun, initial: .c, tone: .陰去)
        static let cyun4 = Info(final: .yun, initial: .c, tone: .陽平)
        static let cyut1 = Info(final: .yut, initial: .c, tone: .陰平)
        static let cyut3 = Info(final: .yut, initial: .c, tone: .陰去)
        static let cyut6 = Info(final: .yut, initial: .c, tone: .陽去)
        static let daa1 = Info(final: .aa, initial: .d, tone: .陰平)
        static let daa2 = Info(final: .aa, initial: .d, tone: .陰上)
        static let daai1 = Info(final: .aai, initial: .d, tone: .陰平)
        static let daai2 = Info(final: .aai, initial: .d, tone: .陰上)
        static let daai3 = Info(final: .aai, initial: .d, tone: .陰去)
        static let daai6 = Info(final: .aai, initial: .d, tone: .陽去)
        static let daak1 = Info(final: .aak, initial: .d, tone: .陰平)
        static let daam1 = Info(final: .aam, initial: .d, tone: .陰平)
        static let daam2 = Info(final: .aam, initial: .d, tone: .陰上)
        static let daam3 = Info(final: .aam, initial: .d, tone: .陰去)
        static let daam5 = Info(final: .aam, initial: .d, tone: .陽上)
        static let daam6 = Info(final: .aam, initial: .d, tone: .陽去)
        static let daan1 = Info(final: .aan, initial: .d, tone: .陰平)
        static let daan2 = Info(final: .aan, initial: .d, tone: .陰上)
        static let daan3 = Info(final: .aan, initial: .d, tone: .陰去)
        static let daan5 = Info(final: .aan, initial: .d, tone: .陽上)
        static let daan6 = Info(final: .aan, initial: .d, tone: .陽去)
        static let daap1 = Info(final: .aap, initial: .d, tone: .陰平)
        static let daap3 = Info(final: .aap, initial: .d, tone: .陰去)
        static let daap6 = Info(final: .aap, initial: .d, tone: .陽去)
        static let daat3 = Info(final: .aat, initial: .d, tone: .陰去)
        static let daat6 = Info(final: .aat, initial: .d, tone: .陽去)
        static let dai1 = Info(final: .ai, initial: .d, tone: .陰平)
        static let dai2 = Info(final: .ai, initial: .d, tone: .陰上)
        static let dai3 = Info(final: .ai, initial: .d, tone: .陰去)
        static let dai4 = Info(final: .ai, initial: .d, tone: .陽平)
        static let dai6 = Info(final: .ai, initial: .d, tone: .陽去)
        static let dak1 = Info(final: .ak, initial: .d, tone: .陰平)
        static let dak6 = Info(final: .ak, initial: .d, tone: .陽去)
        static let dam1 = Info(final: .am, initial: .d, tone: .陰平)
        static let dam2 = Info(final: .am, initial: .d, tone: .陰上)
        static let dam3 = Info(final: .am, initial: .d, tone: .陰去)
        static let dam4 = Info(final: .am, initial: .d, tone: .陽平)
        static let dam6 = Info(final: .am, initial: .d, tone: .陽去)
        static let dan1 = Info(final: .an, initial: .d, tone: .陰平)
        static let dan2 = Info(final: .an, initial: .d, tone: .陰上)
        static let dan3 = Info(final: .an, initial: .d, tone: .陰去)
        static let dan6 = Info(final: .an, initial: .d, tone: .陽去)
        static let dang1 = Info(final: .ang, initial: .d, tone: .陰平)
        static let dang2 = Info(final: .ang, initial: .d, tone: .陰上)
        static let dang3 = Info(final: .ang, initial: .d, tone: .陰去)
        static let dang6 = Info(final: .ang, initial: .d, tone: .陽去)
        static let dap1 = Info(final: .ap, initial: .d, tone: .陰平)
        static let dap6 = Info(final: .ap, initial: .d, tone: .陽去)
        static let dat1 = Info(final: .at, initial: .d, tone: .陰平)
        static let dat6 = Info(final: .at, initial: .d, tone: .陽去)
        static let dau1 = Info(final: .au, initial: .d, tone: .陰平)
        static let dau2 = Info(final: .au, initial: .d, tone: .陰上)
        static let dau3 = Info(final: .au, initial: .d, tone: .陰去)
        static let dau4 = Info(final: .au, initial: .d, tone: .陽平)
        static let dau6 = Info(final: .au, initial: .d, tone: .陽去)
        static let de1 = Info(final: .e, initial: .d, tone: .陰平)
        static let de2 = Info(final: .e, initial: .d, tone: .陰上)
        static let de4 = Info(final: .e, initial: .d, tone: .陽平)
        static let dei2 = Info(final: .ei, initial: .d, tone: .陰上)
        static let dei6 = Info(final: .ei, initial: .d, tone: .陽去)
        static let dek2 = Info(final: .ek, initial: .d, tone: .陰上)
        static let dek3 = Info(final: .ek, initial: .d, tone: .陰去)
        static let dek6 = Info(final: .ek, initial: .d, tone: .陽去)
        static let deng1 = Info(final: .eng, initial: .d, tone: .陰平)
        static let deng2 = Info(final: .eng, initial: .d, tone: .陰上)
        static let deng3 = Info(final: .eng, initial: .d, tone: .陰去)
        static let deng6 = Info(final: .eng, initial: .d, tone: .陽去)
        static let deoi1 = Info(final: .eoi, initial: .d, tone: .陰平)
        static let deoi2 = Info(final: .eoi, initial: .d, tone: .陰上)
        static let deoi3 = Info(final: .eoi, initial: .d, tone: .陰去)
        static let deoi6 = Info(final: .eoi, initial: .d, tone: .陽去)
        static let deon1 = Info(final: .eon, initial: .d, tone: .陰平)
        static let deon2 = Info(final: .eon, initial: .d, tone: .陰上)
        static let deon6 = Info(final: .eon, initial: .d, tone: .陽去)
        static let deot1 = Info(final: .eot, initial: .d, tone: .陰平)
        static let deu6 = Info(final: .eu, initial: .d, tone: .陽去)
        static let di1 = Info(final: .i, initial: .d, tone: .陰平)
        static let di2 = Info(final: .i, initial: .d, tone: .陰上)
        static let di4 = Info(final: .i, initial: .d, tone: .陽平)
        static let dik1 = Info(final: .ik, initial: .d, tone: .陰平)
        static let dik6 = Info(final: .ik, initial: .d, tone: .陽去)
        static let dim1 = Info(final: .im, initial: .d, tone: .陰平)
        static let dim2 = Info(final: .im, initial: .d, tone: .陰上)
        static let dim3 = Info(final: .im, initial: .d, tone: .陰去)
        static let dim6 = Info(final: .im, initial: .d, tone: .陽去)
        static let din1 = Info(final: .in, initial: .d, tone: .陰平)
        static let din2 = Info(final: .in, initial: .d, tone: .陰上)
        static let din3 = Info(final: .in, initial: .d, tone: .陰去)
        static let din6 = Info(final: .in, initial: .d, tone: .陽去)
        static let ding1 = Info(final: .ing, initial: .d, tone: .陰平)
        static let ding2 = Info(final: .ing, initial: .d, tone: .陰上)
        static let ding3 = Info(final: .ing, initial: .d, tone: .陰去)
        static let ding6 = Info(final: .ing, initial: .d, tone: .陽去)
        static let dip2 = Info(final: .ip, initial: .d, tone: .陰上)
        static let dip3 = Info(final: .ip, initial: .d, tone: .陰去)
        static let dip6 = Info(final: .ip, initial: .d, tone: .陽去)
        static let dit1 = Info(final: .it, initial: .d, tone: .陰平)
        static let dit3 = Info(final: .it, initial: .d, tone: .陰去)
        static let dit6 = Info(final: .it, initial: .d, tone: .陽去)
        static let diu1 = Info(final: .iu, initial: .d, tone: .陰平)
        static let diu2 = Info(final: .iu, initial: .d, tone: .陰上)
        static let diu3 = Info(final: .iu, initial: .d, tone: .陰去)
        static let diu4 = Info(final: .iu, initial: .d, tone: .陽平)
        static let diu6 = Info(final: .iu, initial: .d, tone: .陽去)
        static let do1 = Info(final: .o, initial: .d, tone: .陰平)
        static let do2 = Info(final: .o, initial: .d, tone: .陰上)
        static let do3 = Info(final: .o, initial: .d, tone: .陰去)
        static let do6 = Info(final: .o, initial: .d, tone: .陽去)
        static let doe2 = Info(final: .oe, initial: .d, tone: .陰上)
        static let doe3 = Info(final: .oe, initial: .d, tone: .陰去)
        static let doe4 = Info(final: .oe, initial: .d, tone: .陽平)
        static let doe6 = Info(final: .oe, initial: .d, tone: .陽去)
        static let doek1 = Info(final: .oek, initial: .d, tone: .陰平)
        static let doek3 = Info(final: .oek, initial: .d, tone: .陰去)
        static let doeng1 = Info(final: .oeng, initial: .d, tone: .陰平)
        static let doi2 = Info(final: .oi, initial: .d, tone: .陰上)
        static let doi6 = Info(final: .oi, initial: .d, tone: .陽去)
        static let dok6 = Info(final: .ok, initial: .d, tone: .陽去)
        static let dong1 = Info(final: .ong, initial: .d, tone: .陰平)
        static let dong2 = Info(final: .ong, initial: .d, tone: .陰上)
        static let dong3 = Info(final: .ong, initial: .d, tone: .陰去)
        static let dong6 = Info(final: .ong, initial: .d, tone: .陽去)
        static let dou1 = Info(final: .ou, initial: .d, tone: .陰平)
        static let dou2 = Info(final: .ou, initial: .d, tone: .陰上)
        static let dou3 = Info(final: .ou, initial: .d, tone: .陰去)
        static let dou6 = Info(final: .ou, initial: .d, tone: .陽去)
        static let du1 = Info(final: .u, initial: .d, tone: .陰平)
        static let duk1 = Info(final: .uk, initial: .d, tone: .陰平)
        static let duk2 = Info(final: .uk, initial: .d, tone: .陰上)
        static let duk6 = Info(final: .uk, initial: .d, tone: .陽去)
        static let dung1 = Info(final: .ung, initial: .d, tone: .陰平)
        static let dung2 = Info(final: .ung, initial: .d, tone: .陰上)
        static let dung3 = Info(final: .ung, initial: .d, tone: .陰去)
        static let dung6 = Info(final: .ung, initial: .d, tone: .陽去)
        static let dut1 = Info(final: .ut, initial: .d, tone: .陰平)
        static let dyun1 = Info(final: .yun, initial: .d, tone: .陰平)
        static let dyun2 = Info(final: .yun, initial: .d, tone: .陰上)
        static let dyun3 = Info(final: .yun, initial: .d, tone: .陰去)
        static let dyun6 = Info(final: .yun, initial: .d, tone: .陽去)
        static let dyut1 = Info(final: .yut, initial: .d, tone: .陰平)
        static let dyut3 = Info(final: .yut, initial: .d, tone: .陰去)
        static let dyut6 = Info(final: .yut, initial: .d, tone: .陽去)
        static let e4 = Info(final: .e, initial: .none, tone: .陽平)
        static let e6 = Info(final: .e, initial: .none, tone: .陽去)
        static let ei1 = Info(final: .ei, initial: .none, tone: .陰平)
        static let ei3 = Info(final: .ei, initial: .none, tone: .陰去)
        static let ei6 = Info(final: .ei, initial: .none, tone: .陽去)
        static let em1 = Info(final: .em, initial: .none, tone: .陰平)
        static let en1 = Info(final: .en, initial: .none, tone: .陰平)
        static let eot1 = Info(final: .eot, initial: .none, tone: .陰平)
        static let eu4 = Info(final: .eu, initial: .none, tone: .陽平)
        static let faa1 = Info(final: .aa, initial: .f, tone: .陰平)
        static let faa2 = Info(final: .aa, initial: .f, tone: .陰上)
        static let faa3 = Info(final: .aa, initial: .f, tone: .陰去)
        static let faa4 = Info(final: .aa, initial: .f, tone: .陽平)
        static let faai1 = Info(final: .aai, initial: .f, tone: .陰平)
        static let faai2 = Info(final: .aai, initial: .f, tone: .陰上)
        static let faai3 = Info(final: .aai, initial: .f, tone: .陰去)
        static let faak3 = Info(final: .aak, initial: .f, tone: .陰去)
        static let faan1 = Info(final: .aan, initial: .f, tone: .陰平)
        static let faan2 = Info(final: .aan, initial: .f, tone: .陰上)
        static let faan3 = Info(final: .aan, initial: .f, tone: .陰去)
        static let faan4 = Info(final: .aan, initial: .f, tone: .陽平)
        static let faan5 = Info(final: .aan, initial: .f, tone: .陽上)
        static let faan6 = Info(final: .aan, initial: .f, tone: .陽去)
        static let faat2 = Info(final: .aat, initial: .f, tone: .陰上)
        static let faat3 = Info(final: .aat, initial: .f, tone: .陰去)
        static let fai1 = Info(final: .ai, initial: .f, tone: .陰平)
        static let fai2 = Info(final: .ai, initial: .f, tone: .陰上)
        static let fai3 = Info(final: .ai, initial: .f, tone: .陰去)
        static let fai6 = Info(final: .ai, initial: .f, tone: .陽去)
        static let fan1 = Info(final: .an, initial: .f, tone: .陰平)
        static let fan2 = Info(final: .an, initial: .f, tone: .陰上)
        static let fan3 = Info(final: .an, initial: .f, tone: .陰去)
        static let fan4 = Info(final: .an, initial: .f, tone: .陽平)
        static let fan5 = Info(final: .an, initial: .f, tone: .陽上)
        static let fan6 = Info(final: .an, initial: .f, tone: .陽去)
        static let fang4 = Info(final: .ang, initial: .f, tone: .陽平)
        static let fang6 = Info(final: .ang, initial: .f, tone: .陽去)
        static let fat1 = Info(final: .at, initial: .f, tone: .陰平)
        static let fat6 = Info(final: .at, initial: .f, tone: .陽去)
        static let fau1 = Info(final: .au, initial: .f, tone: .陰平)
        static let fau2 = Info(final: .au, initial: .f, tone: .陰上)
        static let fau4 = Info(final: .au, initial: .f, tone: .陽平)
        static let fau6 = Info(final: .au, initial: .f, tone: .陽去)
        static let fe1 = Info(final: .e, initial: .f, tone: .陰平)
        static let fe3 = Info(final: .e, initial: .f, tone: .陰去)
        static let fe4 = Info(final: .e, initial: .f, tone: .陽平)
        static let fei1 = Info(final: .ei, initial: .f, tone: .陰平)
        static let fei2 = Info(final: .ei, initial: .f, tone: .陰上)
        static let fei4 = Info(final: .ei, initial: .f, tone: .陽平)
        static let fei6 = Info(final: .ei, initial: .f, tone: .陽去)
        static let fen1 = Info(final: .en, initial: .f, tone: .陰平)
        static let fet1 = Info(final: .et, initial: .f, tone: .陰平)
        static let fi1 = Info(final: .i, initial: .f, tone: .陰平)
        static let fik1 = Info(final: .ik, initial: .f, tone: .陰平)
        static let fing3 = Info(final: .ing, initial: .f, tone: .陰去)
        static let fing6 = Info(final: .ing, initial: .f, tone: .陽去)
        static let fit1 = Info(final: .it, initial: .f, tone: .陰平)
        static let fiu1 = Info(final: .iu, initial: .f, tone: .陰平)
        static let fiu3 = Info(final: .iu, initial: .f, tone: .陰去)
        static let fo1 = Info(final: .o, initial: .f, tone: .陰平)
        static let fo2 = Info(final: .o, initial: .f, tone: .陰上)
        static let fo3 = Info(final: .o, initial: .f, tone: .陰去)
        static let fok3 = Info(final: .ok, initial: .f, tone: .陰去)
        static let fong1 = Info(final: .ong, initial: .f, tone: .陰平)
        static let fong2 = Info(final: .ong, initial: .f, tone: .陰上)
        static let fong3 = Info(final: .ong, initial: .f, tone: .陰去)
        static let fong4 = Info(final: .ong, initial: .f, tone: .陽平)
        static let fong6 = Info(final: .ong, initial: .f, tone: .陽去)
        static let fu1 = Info(final: .u, initial: .f, tone: .陰平)
        static let fu2 = Info(final: .u, initial: .f, tone: .陰上)
        static let fu3 = Info(final: .u, initial: .f, tone: .陰去)
        static let fu4 = Info(final: .u, initial: .f, tone: .陽平)
        static let fu5 = Info(final: .u, initial: .f, tone: .陽上)
        static let fu6 = Info(final: .u, initial: .f, tone: .陽去)
        static let fui1 = Info(final: .ui, initial: .f, tone: .陰平)
        static let fui2 = Info(final: .ui, initial: .f, tone: .陰上)
        static let fui3 = Info(final: .ui, initial: .f, tone: .陰去)
        static let fuk1 = Info(final: .uk, initial: .f, tone: .陰平)
        static let fuk2 = Info(final: .uk, initial: .f, tone: .陰上)
        static let fuk6 = Info(final: .uk, initial: .f, tone: .陽去)
        static let fun1 = Info(final: .un, initial: .f, tone: .陰平)
        static let fun2 = Info(final: .un, initial: .f, tone: .陰上)
        static let fung1 = Info(final: .ung, initial: .f, tone: .陰平)
        static let fung2 = Info(final: .ung, initial: .f, tone: .陰上)
        static let fung3 = Info(final: .ung, initial: .f, tone: .陰去)
        static let fung4 = Info(final: .ung, initial: .f, tone: .陽平)
        static let fung6 = Info(final: .ung, initial: .f, tone: .陽去)
        static let fut3 = Info(final: .ut, initial: .f, tone: .陰去)
        static let gaa1 = Info(final: .aa, initial: .g, tone: .陰平)
        static let gaa2 = Info(final: .aa, initial: .g, tone: .陰上)
        static let gaa3 = Info(final: .aa, initial: .g, tone: .陰去)
        static let gaa4 = Info(final: .aa, initial: .g, tone: .陽平)
        static let gaa5 = Info(final: .aa, initial: .g, tone: .陽上)
        static let gaai1 = Info(final: .aai, initial: .g, tone: .陰平)
        static let gaai2 = Info(final: .aai, initial: .g, tone: .陰上)
        static let gaai3 = Info(final: .aai, initial: .g, tone: .陰去)
        static let gaak2 = Info(final: .aak, initial: .g, tone: .陰上)
        static let gaak3 = Info(final: .aak, initial: .g, tone: .陰去)
        static let gaam1 = Info(final: .aam, initial: .g, tone: .陰平)
        static let gaam2 = Info(final: .aam, initial: .g, tone: .陰上)
        static let gaam3 = Info(final: .aam, initial: .g, tone: .陰去)
        static let gaan1 = Info(final: .aan, initial: .g, tone: .陰平)
        static let gaan2 = Info(final: .aan, initial: .g, tone: .陰上)
        static let gaan3 = Info(final: .aan, initial: .g, tone: .陰去)
        static let gaang1 = Info(final: .aang, initial: .g, tone: .陰平)
        static let gaang3 = Info(final: .aang, initial: .g, tone: .陰去)
        static let gaap2 = Info(final: .aap, initial: .g, tone: .陰上)
        static let gaap3 = Info(final: .aap, initial: .g, tone: .陰去)
        static let gaat3 = Info(final: .aat, initial: .g, tone: .陰去)
        static let gaat6 = Info(final: .aat, initial: .g, tone: .陽去)
        static let gaau1 = Info(final: .aau, initial: .g, tone: .陰平)
        static let gaau2 = Info(final: .aau, initial: .g, tone: .陰上)
        static let gaau3 = Info(final: .aau, initial: .g, tone: .陰去)
        static let gaau4 = Info(final: .aau, initial: .g, tone: .陽平)
        static let gai1 = Info(final: .ai, initial: .g, tone: .陰平)
        static let gai2 = Info(final: .ai, initial: .g, tone: .陰上)
        static let gai3 = Info(final: .ai, initial: .g, tone: .陰去)
        static let gai6 = Info(final: .ai, initial: .g, tone: .陽去)
        static let gak1 = Info(final: .ak, initial: .g, tone: .陰平)
        static let gam1 = Info(final: .am, initial: .g, tone: .陰平)
        static let gam2 = Info(final: .am, initial: .g, tone: .陰上)
        static let gam3 = Info(final: .am, initial: .g, tone: .陰去)
        static let gam6 = Info(final: .am, initial: .g, tone: .陽去)
        static let gan1 = Info(final: .an, initial: .g, tone: .陰平)
        static let gan2 = Info(final: .an, initial: .g, tone: .陰上)
        static let gan3 = Info(final: .an, initial: .g, tone: .陰去)
        static let gan6 = Info(final: .an, initial: .g, tone: .陽去)
        static let gang1 = Info(final: .ang, initial: .g, tone: .陰平)
        static let gang2 = Info(final: .ang, initial: .g, tone: .陰上)
        static let gang3 = Info(final: .ang, initial: .g, tone: .陰去)
        static let gap1 = Info(final: .ap, initial: .g, tone: .陰平)
        static let gap2 = Info(final: .ap, initial: .g, tone: .陰上)
        static let gap3 = Info(final: .ap, initial: .g, tone: .陰去)
        static let gap6 = Info(final: .ap, initial: .g, tone: .陽去)
        static let gat1 = Info(final: .at, initial: .g, tone: .陰平)
        static let gat3 = Info(final: .at, initial: .g, tone: .陰去)
        static let gat6 = Info(final: .at, initial: .g, tone: .陽去)
        static let gau1 = Info(final: .au, initial: .g, tone: .陰平)
        static let gau2 = Info(final: .au, initial: .g, tone: .陰上)
        static let gau3 = Info(final: .au, initial: .g, tone: .陰去)
        static let gau6 = Info(final: .au, initial: .g, tone: .陽去)
        static let ge2 = Info(final: .e, initial: .g, tone: .陰上)
        static let ge3 = Info(final: .e, initial: .g, tone: .陰去)
        static let gei1 = Info(final: .ei, initial: .g, tone: .陰平)
        static let gei2 = Info(final: .ei, initial: .g, tone: .陰上)
        static let gei3 = Info(final: .ei, initial: .g, tone: .陰去)
        static let gei6 = Info(final: .ei, initial: .g, tone: .陽去)
        static let gek1 = Info(final: .ek, initial: .g, tone: .陰平)
        static let geng1 = Info(final: .eng, initial: .g, tone: .陰平)
        static let geng2 = Info(final: .eng, initial: .g, tone: .陰上)
        static let geng3 = Info(final: .eng, initial: .g, tone: .陰去)
        static let geng6 = Info(final: .eng, initial: .g, tone: .陽去)
        static let geoi1 = Info(final: .eoi, initial: .g, tone: .陰平)
        static let geoi2 = Info(final: .eoi, initial: .g, tone: .陰上)
        static let geoi3 = Info(final: .eoi, initial: .g, tone: .陰去)
        static let geoi6 = Info(final: .eoi, initial: .g, tone: .陽去)
        static let gep1 = Info(final: .ep, initial: .g, tone: .陰平)
        static let gep6 = Info(final: .ep, initial: .g, tone: .陽去)
        static let gi1 = Info(final: .i, initial: .g, tone: .陰平)
        static let gik1 = Info(final: .ik, initial: .g, tone: .陰平)
        static let gik6 = Info(final: .ik, initial: .g, tone: .陽去)
        static let gim1 = Info(final: .im, initial: .g, tone: .陰平)
        static let gim2 = Info(final: .im, initial: .g, tone: .陰上)
        static let gim3 = Info(final: .im, initial: .g, tone: .陰去)
        static let gim6 = Info(final: .im, initial: .g, tone: .陽去)
        static let gin1 = Info(final: .in, initial: .g, tone: .陰平)
        static let gin2 = Info(final: .in, initial: .g, tone: .陰上)
        static let gin3 = Info(final: .in, initial: .g, tone: .陰去)
        static let gin6 = Info(final: .in, initial: .g, tone: .陽去)
        static let ging1 = Info(final: .ing, initial: .g, tone: .陰平)
        static let ging2 = Info(final: .ing, initial: .g, tone: .陰上)
        static let ging3 = Info(final: .ing, initial: .g, tone: .陰去)
        static let ging6 = Info(final: .ing, initial: .g, tone: .陽去)
        static let gip1 = Info(final: .ip, initial: .g, tone: .陰平)
        static let gip2 = Info(final: .ip, initial: .g, tone: .陰上)
        static let gip3 = Info(final: .ip, initial: .g, tone: .陰去)
        static let gip6 = Info(final: .ip, initial: .g, tone: .陽去)
        static let git3 = Info(final: .it, initial: .g, tone: .陰去)
        static let git6 = Info(final: .it, initial: .g, tone: .陽去)
        static let giu1 = Info(final: .iu, initial: .g, tone: .陰平)
        static let giu2 = Info(final: .iu, initial: .g, tone: .陰上)
        static let giu3 = Info(final: .iu, initial: .g, tone: .陰去)
        static let giu4 = Info(final: .iu, initial: .g, tone: .陽平)
        static let giu6 = Info(final: .iu, initial: .g, tone: .陽去)
        static let go1 = Info(final: .o, initial: .g, tone: .陰平)
        static let go2 = Info(final: .o, initial: .g, tone: .陰上)
        static let go3 = Info(final: .o, initial: .g, tone: .陰去)
        static let go4 = Info(final: .o, initial: .g, tone: .陽平)
        static let go6 = Info(final: .o, initial: .g, tone: .陽去)
        static let goe1 = Info(final: .oe, initial: .g, tone: .陰平)
        static let goe3 = Info(final: .oe, initial: .g, tone: .陰去)
        static let goe4 = Info(final: .oe, initial: .g, tone: .陽平)
        static let goek2 = Info(final: .oek, initial: .g, tone: .陰上)
        static let goek3 = Info(final: .oek, initial: .g, tone: .陰去)
        static let goeng1 = Info(final: .oeng, initial: .g, tone: .陰平)
        static let goeng2 = Info(final: .oeng, initial: .g, tone: .陰上)
        static let goeng6 = Info(final: .oeng, initial: .g, tone: .陽去)
        static let goi1 = Info(final: .oi, initial: .g, tone: .陰平)
        static let goi2 = Info(final: .oi, initial: .g, tone: .陰上)
        static let goi3 = Info(final: .oi, initial: .g, tone: .陰去)
        static let gok1 = Info(final: .ok, initial: .g, tone: .陰平)
        static let gok2 = Info(final: .ok, initial: .g, tone: .陰上)
        static let gok3 = Info(final: .ok, initial: .g, tone: .陰去)
        static let gok6 = Info(final: .ok, initial: .g, tone: .陽去)
        static let gon1 = Info(final: .on, initial: .g, tone: .陰平)
        static let gon2 = Info(final: .on, initial: .g, tone: .陰上)
        static let gon3 = Info(final: .on, initial: .g, tone: .陰去)
        static let gong1 = Info(final: .ong, initial: .g, tone: .陰平)
        static let gong2 = Info(final: .ong, initial: .g, tone: .陰上)
        static let gong3 = Info(final: .ong, initial: .g, tone: .陰去)
        static let gong6 = Info(final: .ong, initial: .g, tone: .陽去)
        static let got2 = Info(final: .ot, initial: .g, tone: .陰上)
        static let got3 = Info(final: .ot, initial: .g, tone: .陰去)
        static let gou1 = Info(final: .ou, initial: .g, tone: .陰平)
        static let gou2 = Info(final: .ou, initial: .g, tone: .陰上)
        static let gou3 = Info(final: .ou, initial: .g, tone: .陰去)
        static let gu1 = Info(final: .u, initial: .g, tone: .陰平)
        static let gu2 = Info(final: .u, initial: .g, tone: .陰上)
        static let gu3 = Info(final: .u, initial: .g, tone: .陰去)
        static let gu4 = Info(final: .u, initial: .g, tone: .陽平)
        static let gui3 = Info(final: .ui, initial: .g, tone: .陰去)
        static let gui6 = Info(final: .ui, initial: .g, tone: .陽去)
        static let guk1 = Info(final: .uk, initial: .g, tone: .陰平)
        static let guk2 = Info(final: .uk, initial: .g, tone: .陰上)
        static let guk6 = Info(final: .uk, initial: .g, tone: .陽去)
        static let gun1 = Info(final: .un, initial: .g, tone: .陰平)
        static let gun2 = Info(final: .un, initial: .g, tone: .陰上)
        static let gun3 = Info(final: .un, initial: .g, tone: .陰去)
        static let gung1 = Info(final: .ung, initial: .g, tone: .陰平)
        static let gung2 = Info(final: .ung, initial: .g, tone: .陰上)
        static let gung3 = Info(final: .ung, initial: .g, tone: .陰去)
        static let gung4 = Info(final: .ung, initial: .g, tone: .陽平)
        static let gung6 = Info(final: .ung, initial: .g, tone: .陽去)
        static let gut2 = Info(final: .ut, initial: .g, tone: .陰上)
        static let gut3 = Info(final: .ut, initial: .g, tone: .陰去)
        static let gut4 = Info(final: .ut, initial: .g, tone: .陽平)
        static let gut6 = Info(final: .ut, initial: .g, tone: .陽去)
        static let gwaa1 = Info(final: .aa, initial: .gw, tone: .陰平)
        static let gwaa2 = Info(final: .aa, initial: .gw, tone: .陰上)
        static let gwaa3 = Info(final: .aa, initial: .gw, tone: .陰去)
        static let gwaai1 = Info(final: .aai, initial: .gw, tone: .陰平)
        static let gwaai2 = Info(final: .aai, initial: .gw, tone: .陰上)
        static let gwaai3 = Info(final: .aai, initial: .gw, tone: .陰去)
        static let gwaak3 = Info(final: .aak, initial: .gw, tone: .陰去)
        static let gwaan1 = Info(final: .aan, initial: .gw, tone: .陰平)
        static let gwaan3 = Info(final: .aan, initial: .gw, tone: .陰去)
        static let gwaang2 = Info(final: .aang, initial: .gw, tone: .陰上)
        static let gwaang6 = Info(final: .aang, initial: .gw, tone: .陽去)
        static let gwaat2 = Info(final: .aat, initial: .gw, tone: .陰上)
        static let gwaat3 = Info(final: .aat, initial: .gw, tone: .陰去)
        static let gwai1 = Info(final: .ai, initial: .gw, tone: .陰平)
        static let gwai2 = Info(final: .ai, initial: .gw, tone: .陰上)
        static let gwai3 = Info(final: .ai, initial: .gw, tone: .陰去)
        static let gwai6 = Info(final: .ai, initial: .gw, tone: .陽去)
        static let gwan1 = Info(final: .an, initial: .gw, tone: .陰平)
        static let gwan2 = Info(final: .an, initial: .gw, tone: .陰上)
        static let gwan3 = Info(final: .an, initial: .gw, tone: .陰去)
        static let gwan6 = Info(final: .an, initial: .gw, tone: .陽去)
        static let gwang1 = Info(final: .ang, initial: .gw, tone: .陰平)
        static let gwang2 = Info(final: .ang, initial: .gw, tone: .陰上)
        static let gwat1 = Info(final: .at, initial: .gw, tone: .陰平)
        static let gwat6 = Info(final: .at, initial: .gw, tone: .陽去)
        static let gwe1 = Info(final: .e, initial: .gw, tone: .陰平)
        static let gwik1 = Info(final: .ik, initial: .gw, tone: .陰平)
        static let gwing1 = Info(final: .ing, initial: .gw, tone: .陰平)
        static let gwing2 = Info(final: .ing, initial: .gw, tone: .陰上)
        static let gwing3 = Info(final: .ing, initial: .gw, tone: .陰去)
        static let gwit1 = Info(final: .it, initial: .gw, tone: .陰平)
        static let gwit3 = Info(final: .it, initial: .gw, tone: .陰去)
        static let gwo1 = Info(final: .o, initial: .gw, tone: .陰平)
        static let gwo2 = Info(final: .o, initial: .gw, tone: .陰上)
        static let gwo3 = Info(final: .o, initial: .gw, tone: .陰去)
        static let gwok3 = Info(final: .ok, initial: .gw, tone: .陰去)
        static let gwong1 = Info(final: .ong, initial: .gw, tone: .陰平)
        static let gwong2 = Info(final: .ong, initial: .gw, tone: .陰上)
        static let gwong3 = Info(final: .ong, initial: .gw, tone: .陰去)
        static let gwu1 = Info(final: .u, initial: .gw, tone: .陰平)
        static let gwu2 = Info(final: .u, initial: .gw, tone: .陰上)
        static let gwu3 = Info(final: .u, initial: .gw, tone: .陰去)
        static let gwui3 = Info(final: .ui, initial: .gw, tone: .陰去)
        static let gwui6 = Info(final: .ui, initial: .gw, tone: .陽去)
        static let gwun1 = Info(final: .un, initial: .gw, tone: .陰平)
        static let gwun2 = Info(final: .un, initial: .gw, tone: .陰上)
        static let gwun3 = Info(final: .un, initial: .gw, tone: .陰去)
        static let gwut2 = Info(final: .ut, initial: .gw, tone: .陰上)
        static let gwut3 = Info(final: .ut, initial: .gw, tone: .陰去)
        static let gwut4 = Info(final: .ut, initial: .gw, tone: .陽平)
        static let gwut6 = Info(final: .ut, initial: .gw, tone: .陽去)
        static let gyun1 = Info(final: .yun, initial: .g, tone: .陰平)
        static let gyun2 = Info(final: .yun, initial: .g, tone: .陰上)
        static let gyun3 = Info(final: .yun, initial: .g, tone: .陰去)
        static let gyun6 = Info(final: .yun, initial: .g, tone: .陽去)
        static let gyut3 = Info(final: .yut, initial: .g, tone: .陰去)
        static let gyut6 = Info(final: .yut, initial: .g, tone: .陽去)
        static let haa1 = Info(final: .aa, initial: .h, tone: .陰平)
        static let haa2 = Info(final: .aa, initial: .h, tone: .陰上)
        static let haa3 = Info(final: .aa, initial: .h, tone: .陰去)
        static let haa4 = Info(final: .aa, initial: .h, tone: .陽平)
        static let haa5 = Info(final: .aa, initial: .h, tone: .陽上)
        static let haa6 = Info(final: .aa, initial: .h, tone: .陽去)
        static let haai1 = Info(final: .aai, initial: .h, tone: .陰平)
        static let haai2 = Info(final: .aai, initial: .h, tone: .陰上)
        static let haai3 = Info(final: .aai, initial: .h, tone: .陰去)
        static let haai4 = Info(final: .aai, initial: .h, tone: .陽平)
        static let haai5 = Info(final: .aai, initial: .h, tone: .陽上)
        static let haai6 = Info(final: .aai, initial: .h, tone: .陽去)
        static let haak1 = Info(final: .aak, initial: .h, tone: .陰平)
        static let haak2 = Info(final: .aak, initial: .h, tone: .陰上)
        static let haak3 = Info(final: .aak, initial: .h, tone: .陰去)
        static let haak6 = Info(final: .aak, initial: .h, tone: .陽去)
        static let haam1 = Info(final: .aam, initial: .h, tone: .陰平)
        static let haam2 = Info(final: .aam, initial: .h, tone: .陰上)
        static let haam3 = Info(final: .aam, initial: .h, tone: .陰去)
        static let haam4 = Info(final: .aam, initial: .h, tone: .陽平)
        static let haam5 = Info(final: .aam, initial: .h, tone: .陽上)
        static let haam6 = Info(final: .aam, initial: .h, tone: .陽去)
        static let haan1 = Info(final: .aan, initial: .h, tone: .陰平)
        static let haan2 = Info(final: .aan, initial: .h, tone: .陰上)
        static let haan4 = Info(final: .aan, initial: .h, tone: .陽平)
        static let haan5 = Info(final: .aan, initial: .h, tone: .陽上)
        static let haan6 = Info(final: .aan, initial: .h, tone: .陽去)
        static let haang1 = Info(final: .aang, initial: .h, tone: .陰平)
        static let haang2 = Info(final: .aang, initial: .h, tone: .陰上)
        static let haang4 = Info(final: .aang, initial: .h, tone: .陽平)
        static let haap3 = Info(final: .aap, initial: .h, tone: .陰去)
        static let haap6 = Info(final: .aap, initial: .h, tone: .陽去)
        static let haau1 = Info(final: .aau, initial: .h, tone: .陰平)
        static let haau2 = Info(final: .aau, initial: .h, tone: .陰上)
        static let haau3 = Info(final: .aau, initial: .h, tone: .陰去)
        static let haau4 = Info(final: .aau, initial: .h, tone: .陽平)
        static let haau6 = Info(final: .aau, initial: .h, tone: .陽去)
        static let hai1 = Info(final: .ai, initial: .h, tone: .陰平)
        static let hai2 = Info(final: .ai, initial: .h, tone: .陰上)
        static let hai3 = Info(final: .ai, initial: .h, tone: .陰去)
        static let hai4 = Info(final: .ai, initial: .h, tone: .陽平)
        static let hai5 = Info(final: .ai, initial: .h, tone: .陽上)
        static let hai6 = Info(final: .ai, initial: .h, tone: .陽去)
        static let hak1 = Info(final: .ak, initial: .h, tone: .陰平)
        static let ham1 = Info(final: .am, initial: .h, tone: .陰平)
        static let ham2 = Info(final: .am, initial: .h, tone: .陰上)
        static let ham3 = Info(final: .am, initial: .h, tone: .陰去)
        static let ham4 = Info(final: .am, initial: .h, tone: .陽平)
        static let ham5 = Info(final: .am, initial: .h, tone: .陽上)
        static let ham6 = Info(final: .am, initial: .h, tone: .陽去)
        static let han2 = Info(final: .an, initial: .h, tone: .陰上)
        static let han4 = Info(final: .an, initial: .h, tone: .陽平)
        static let han6 = Info(final: .an, initial: .h, tone: .陽去)
        static let hang1 = Info(final: .ang, initial: .h, tone: .陰平)
        static let hang2 = Info(final: .ang, initial: .h, tone: .陰上)
        static let hang4 = Info(final: .ang, initial: .h, tone: .陽平)
        static let hang5 = Info(final: .ang, initial: .h, tone: .陽上)
        static let hang6 = Info(final: .ang, initial: .h, tone: .陽去)
        static let hap1 = Info(final: .ap, initial: .h, tone: .陰平)
        static let hap2 = Info(final: .ap, initial: .h, tone: .陰上)
        static let hap6 = Info(final: .ap, initial: .h, tone: .陽去)
        static let hat1 = Info(final: .at, initial: .h, tone: .陰平)
        static let hat6 = Info(final: .at, initial: .h, tone: .陽去)
        static let hau1 = Info(final: .au, initial: .h, tone: .陰平)
        static let hau2 = Info(final: .au, initial: .h, tone: .陰上)
        static let hau3 = Info(final: .au, initial: .h, tone: .陰去)
        static let hau4 = Info(final: .au, initial: .h, tone: .陽平)
        static let hau5 = Info(final: .au, initial: .h, tone: .陽上)
        static let hau6 = Info(final: .au, initial: .h, tone: .陽去)
        static let he2 = Info(final: .e, initial: .h, tone: .陰上)
        static let he3 = Info(final: .e, initial: .h, tone: .陰去)
        static let hei1 = Info(final: .ei, initial: .h, tone: .陰平)
        static let hei2 = Info(final: .ei, initial: .h, tone: .陰上)
        static let hei3 = Info(final: .ei, initial: .h, tone: .陰去)
        static let hek3 = Info(final: .ek, initial: .h, tone: .陰去)
        static let heng1 = Info(final: .eng, initial: .h, tone: .陰平)
        static let heng6 = Info(final: .eng, initial: .h, tone: .陽去)
        static let heoi1 = Info(final: .eoi, initial: .h, tone: .陰平)
        static let heoi2 = Info(final: .eoi, initial: .h, tone: .陰上)
        static let heoi3 = Info(final: .eoi, initial: .h, tone: .陰去)
        static let heoi5 = Info(final: .eoi, initial: .h, tone: .陽上)
        static let hi1 = Info(final: .i, initial: .h, tone: .陰平)
        static let hik1 = Info(final: .ik, initial: .h, tone: .陰平)
        static let him1 = Info(final: .im, initial: .h, tone: .陰平)
        static let him2 = Info(final: .im, initial: .h, tone: .陰上)
        static let him3 = Info(final: .im, initial: .h, tone: .陰去)
        static let hin1 = Info(final: .in, initial: .h, tone: .陰平)
        static let hin2 = Info(final: .in, initial: .h, tone: .陰上)
        static let hin3 = Info(final: .in, initial: .h, tone: .陰去)
        static let hing1 = Info(final: .ing, initial: .h, tone: .陰平)
        static let hing2 = Info(final: .ing, initial: .h, tone: .陰上)
        static let hing3 = Info(final: .ing, initial: .h, tone: .陰去)
        static let hing5 = Info(final: .ing, initial: .h, tone: .陽上)
        static let hip3 = Info(final: .ip, initial: .h, tone: .陰去)
        static let hip6 = Info(final: .ip, initial: .h, tone: .陽去)
        static let hit3 = Info(final: .it, initial: .h, tone: .陰去)
        static let hiu1 = Info(final: .iu, initial: .h, tone: .陰平)
        static let hiu2 = Info(final: .iu, initial: .h, tone: .陰上)
        static let hiu3 = Info(final: .iu, initial: .h, tone: .陰去)
        static let hiu4 = Info(final: .iu, initial: .h, tone: .陽平)
        static let hm1 = Info(final: .m, initial: .h, tone: .陰平)
        static let hm6 = Info(final: .m, initial: .h, tone: .陽去)
        static let hng6 = Info(final: .ng, initial: .h, tone: .陽去)
        static let ho1 = Info(final: .o, initial: .h, tone: .陰平)
        static let ho2 = Info(final: .o, initial: .h, tone: .陰上)
        static let ho3 = Info(final: .o, initial: .h, tone: .陰去)
        static let ho4 = Info(final: .o, initial: .h, tone: .陽平)
        static let ho6 = Info(final: .o, initial: .h, tone: .陽去)
        static let hoe1 = Info(final: .oe, initial: .h, tone: .陰平)
        static let hoe4 = Info(final: .oe, initial: .h, tone: .陽平)
        static let hoeng1 = Info(final: .oeng, initial: .h, tone: .陰平)
        static let hoeng2 = Info(final: .oeng, initial: .h, tone: .陰上)
        static let hoeng3 = Info(final: .oeng, initial: .h, tone: .陰去)
        static let hoi1 = Info(final: .oi, initial: .h, tone: .陰平)
        static let hoi2 = Info(final: .oi, initial: .h, tone: .陰上)
        static let hoi3 = Info(final: .oi, initial: .h, tone: .陰去)
        static let hoi4 = Info(final: .oi, initial: .h, tone: .陽平)
        static let hoi5 = Info(final: .oi, initial: .h, tone: .陽上)
        static let hoi6 = Info(final: .oi, initial: .h, tone: .陽去)
        static let hok2 = Info(final: .ok, initial: .h, tone: .陰上)
        static let hok3 = Info(final: .ok, initial: .h, tone: .陰去)
        static let hok6 = Info(final: .ok, initial: .h, tone: .陽去)
        static let hon1 = Info(final: .on, initial: .h, tone: .陰平)
        static let hon2 = Info(final: .on, initial: .h, tone: .陰上)
        static let hon3 = Info(final: .on, initial: .h, tone: .陰去)
        static let hon4 = Info(final: .on, initial: .h, tone: .陽平)
        static let hon5 = Info(final: .on, initial: .h, tone: .陽上)
        static let hon6 = Info(final: .on, initial: .h, tone: .陽去)
        static let hong1 = Info(final: .ong, initial: .h, tone: .陰平)
        static let hong2 = Info(final: .ong, initial: .h, tone: .陰上)
        static let hong3 = Info(final: .ong, initial: .h, tone: .陰去)
        static let hong4 = Info(final: .ong, initial: .h, tone: .陽平)
        static let hong5 = Info(final: .ong, initial: .h, tone: .陽上)
        static let hong6 = Info(final: .ong, initial: .h, tone: .陽去)
        static let hot3 = Info(final: .ot, initial: .h, tone: .陰去)
        static let hot6 = Info(final: .ot, initial: .h, tone: .陽去)
        static let hou1 = Info(final: .ou, initial: .h, tone: .陰平)
        static let hou2 = Info(final: .ou, initial: .h, tone: .陰上)
        static let hou3 = Info(final: .ou, initial: .h, tone: .陰去)
        static let hou4 = Info(final: .ou, initial: .h, tone: .陽平)
        static let hou6 = Info(final: .ou, initial: .h, tone: .陽去)
        static let huk1 = Info(final: .uk, initial: .h, tone: .陰平)
        static let huk6 = Info(final: .uk, initial: .h, tone: .陽去)
        static let hung1 = Info(final: .ung, initial: .h, tone: .陰平)
        static let hung2 = Info(final: .ung, initial: .h, tone: .陰上)
        static let hung3 = Info(final: .ung, initial: .h, tone: .陰去)
        static let hung4 = Info(final: .ung, initial: .h, tone: .陽平)
        static let hung6 = Info(final: .ung, initial: .h, tone: .陽去)
        static let hyun1 = Info(final: .yun, initial: .h, tone: .陰平)
        static let hyun2 = Info(final: .yun, initial: .h, tone: .陰上)
        static let hyun3 = Info(final: .yun, initial: .h, tone: .陰去)
        static let hyut3 = Info(final: .yut, initial: .h, tone: .陰去)
        static let ik1 = Info(final: .ik, initial: .none, tone: .陰平)
        static let it6 = Info(final: .it, initial: .none, tone: .陽去)
        static let jaa1 = Info(final: .aa, initial: .j, tone: .陰平)
        static let jaa2 = Info(final: .aa, initial: .j, tone: .陰上)
        static let jaa3 = Info(final: .aa, initial: .j, tone: .陰去)
        static let jaa4 = Info(final: .aa, initial: .j, tone: .陽平)
        static let jaa5 = Info(final: .aa, initial: .j, tone: .陽上)
        static let jaa6 = Info(final: .aa, initial: .j, tone: .陽去)
        static let jaai2 = Info(final: .aai, initial: .j, tone: .陰上)
        static let jaai5 = Info(final: .aai, initial: .j, tone: .陽上)
        static let jaak3 = Info(final: .aak, initial: .j, tone: .陰去)
        static let jaang3 = Info(final: .aang, initial: .j, tone: .陰去)
        static let jaap3 = Info(final: .aap, initial: .j, tone: .陰去)
        static let jaau1 = Info(final: .aau, initial: .j, tone: .陰平)
        static let jai1 = Info(final: .ai, initial: .j, tone: .陰平)
        static let jai4 = Info(final: .ai, initial: .j, tone: .陽平)
        static let jai5 = Info(final: .ai, initial: .j, tone: .陽上)
        static let jai6 = Info(final: .ai, initial: .j, tone: .陽去)
        static let jam1 = Info(final: .am, initial: .j, tone: .陰平)
        static let jam2 = Info(final: .am, initial: .j, tone: .陰上)
        static let jam3 = Info(final: .am, initial: .j, tone: .陰去)
        static let jam4 = Info(final: .am, initial: .j, tone: .陽平)
        static let jam5 = Info(final: .am, initial: .j, tone: .陽上)
        static let jam6 = Info(final: .am, initial: .j, tone: .陽去)
        static let jan1 = Info(final: .an, initial: .j, tone: .陰平)
        static let jan2 = Info(final: .an, initial: .j, tone: .陰上)
        static let jan3 = Info(final: .an, initial: .j, tone: .陰去)
        static let jan4 = Info(final: .an, initial: .j, tone: .陽平)
        static let jan5 = Info(final: .an, initial: .j, tone: .陽上)
        static let jan6 = Info(final: .an, initial: .j, tone: .陽去)
        static let jap1 = Info(final: .ap, initial: .j, tone: .陰平)
        static let jap6 = Info(final: .ap, initial: .j, tone: .陽去)
        static let jat1 = Info(final: .at, initial: .j, tone: .陰平)
        static let jat2 = Info(final: .at, initial: .j, tone: .陰上)
        static let jat6 = Info(final: .at, initial: .j, tone: .陽去)
        static let jau1 = Info(final: .au, initial: .j, tone: .陰平)
        static let jau2 = Info(final: .au, initial: .j, tone: .陰上)
        static let jau3 = Info(final: .au, initial: .j, tone: .陰去)
        static let jau4 = Info(final: .au, initial: .j, tone: .陽平)
        static let jau5 = Info(final: .au, initial: .j, tone: .陽上)
        static let jau6 = Info(final: .au, initial: .j, tone: .陽去)
        static let je1 = Info(final: .e, initial: .j, tone: .陰平)
        static let je2 = Info(final: .e, initial: .j, tone: .陰上)
        static let je4 = Info(final: .e, initial: .j, tone: .陽平)
        static let je5 = Info(final: .e, initial: .j, tone: .陽上)
        static let je6 = Info(final: .e, initial: .j, tone: .陽去)
        static let jeng4 = Info(final: .eng, initial: .j, tone: .陽平)
        static let jeoi1 = Info(final: .eoi, initial: .j, tone: .陰平)
        static let jeoi4 = Info(final: .eoi, initial: .j, tone: .陽平)
        static let jeoi5 = Info(final: .eoi, initial: .j, tone: .陽上)
        static let jeoi6 = Info(final: .eoi, initial: .j, tone: .陽去)
        static let jeon2 = Info(final: .eon, initial: .j, tone: .陰上)
        static let jeon6 = Info(final: .eon, initial: .j, tone: .陽去)
        static let ji1 = Info(final: .i, initial: .j, tone: .陰平)
        static let ji2 = Info(final: .i, initial: .j, tone: .陰上)
        static let ji3 = Info(final: .i, initial: .j, tone: .陰去)
        static let ji4 = Info(final: .i, initial: .j, tone: .陽平)
        static let ji5 = Info(final: .i, initial: .j, tone: .陽上)
        static let ji6 = Info(final: .i, initial: .j, tone: .陽去)
        static let jik1 = Info(final: .ik, initial: .j, tone: .陰平)
        static let jik2 = Info(final: .ik, initial: .j, tone: .陰上)
        static let jik6 = Info(final: .ik, initial: .j, tone: .陽去)
        static let jim1 = Info(final: .im, initial: .j, tone: .陰平)
        static let jim2 = Info(final: .im, initial: .j, tone: .陰上)
        static let jim3 = Info(final: .im, initial: .j, tone: .陰去)
        static let jim4 = Info(final: .im, initial: .j, tone: .陽平)
        static let jim5 = Info(final: .im, initial: .j, tone: .陽上)
        static let jim6 = Info(final: .im, initial: .j, tone: .陽去)
        static let jin1 = Info(final: .in, initial: .j, tone: .陰平)
        static let jin2 = Info(final: .in, initial: .j, tone: .陰上)
        static let jin3 = Info(final: .in, initial: .j, tone: .陰去)
        static let jin4 = Info(final: .in, initial: .j, tone: .陽平)
        static let jin5 = Info(final: .in, initial: .j, tone: .陽上)
        static let jin6 = Info(final: .in, initial: .j, tone: .陽去)
        static let jing1 = Info(final: .ing, initial: .j, tone: .陰平)
        static let jing2 = Info(final: .ing, initial: .j, tone: .陰上)
        static let jing3 = Info(final: .ing, initial: .j, tone: .陰去)
        static let jing4 = Info(final: .ing, initial: .j, tone: .陽平)
        static let jing5 = Info(final: .ing, initial: .j, tone: .陽上)
        static let jing6 = Info(final: .ing, initial: .j, tone: .陽去)
        static let jip2 = Info(final: .ip, initial: .j, tone: .陰上)
        static let jip3 = Info(final: .ip, initial: .j, tone: .陰去)
        static let jip6 = Info(final: .ip, initial: .j, tone: .陽去)
        static let jit2 = Info(final: .it, initial: .j, tone: .陰上)
        static let jit3 = Info(final: .it, initial: .j, tone: .陰去)
        static let jit6 = Info(final: .it, initial: .j, tone: .陽去)
        static let jiu1 = Info(final: .iu, initial: .j, tone: .陰平)
        static let jiu2 = Info(final: .iu, initial: .j, tone: .陰上)
        static let jiu3 = Info(final: .iu, initial: .j, tone: .陰去)
        static let jiu4 = Info(final: .iu, initial: .j, tone: .陽平)
        static let jiu5 = Info(final: .iu, initial: .j, tone: .陽上)
        static let jiu6 = Info(final: .iu, initial: .j, tone: .陽去)
        static let jo1 = Info(final: .o, initial: .j, tone: .陰平)
        static let joek2 = Info(final: .oek, initial: .j, tone: .陰上)
        static let joek3 = Info(final: .oek, initial: .j, tone: .陰去)
        static let joek6 = Info(final: .oek, initial: .j, tone: .陽去)
        static let joeng1 = Info(final: .oeng, initial: .j, tone: .陰平)
        static let joeng2 = Info(final: .oeng, initial: .j, tone: .陰上)
        static let joeng3 = Info(final: .oeng, initial: .j, tone: .陰去)
        static let joeng4 = Info(final: .oeng, initial: .j, tone: .陽平)
        static let joeng5 = Info(final: .oeng, initial: .j, tone: .陽上)
        static let joeng6 = Info(final: .oeng, initial: .j, tone: .陽去)
        static let juk1 = Info(final: .uk, initial: .j, tone: .陰平)
        static let juk2 = Info(final: .uk, initial: .j, tone: .陰上)
        static let juk6 = Info(final: .uk, initial: .j, tone: .陽去)
        static let jung1 = Info(final: .ung, initial: .j, tone: .陰平)
        static let jung2 = Info(final: .ung, initial: .j, tone: .陰上)
        static let jung4 = Info(final: .ung, initial: .j, tone: .陽平)
        static let jung5 = Info(final: .ung, initial: .j, tone: .陽上)
        static let jung6 = Info(final: .ung, initial: .j, tone: .陽去)
        static let jyu1 = Info(final: .yu, initial: .j, tone: .陰平)
        static let jyu2 = Info(final: .yu, initial: .j, tone: .陰上)
        static let jyu3 = Info(final: .yu, initial: .j, tone: .陰去)
        static let jyu4 = Info(final: .yu, initial: .j, tone: .陽平)
        static let jyu5 = Info(final: .yu, initial: .j, tone: .陽上)
        static let jyu6 = Info(final: .yu, initial: .j, tone: .陽去)
        static let jyun1 = Info(final: .yun, initial: .j, tone: .陰平)
        static let jyun2 = Info(final: .yun, initial: .j, tone: .陰上)
        static let jyun3 = Info(final: .yun, initial: .j, tone: .陰去)
        static let jyun4 = Info(final: .yun, initial: .j, tone: .陽平)
        static let jyun5 = Info(final: .yun, initial: .j, tone: .陽上)
        static let jyun6 = Info(final: .yun, initial: .j, tone: .陽去)
        static let jyut2 = Info(final: .yut, initial: .j, tone: .陰上)
        static let jyut3 = Info(final: .yut, initial: .j, tone: .陰去)
        static let jyut6 = Info(final: .yut, initial: .j, tone: .陽去)
        static let kaa1 = Info(final: .aa, initial: .k, tone: .陰平)
        static let kaa2 = Info(final: .aa, initial: .k, tone: .陰上)
        static let kaa3 = Info(final: .aa, initial: .k, tone: .陰去)
        static let kaa4 = Info(final: .aa, initial: .k, tone: .陽平)
        static let kaai2 = Info(final: .aai, initial: .k, tone: .陰上)
        static let kaai3 = Info(final: .aai, initial: .k, tone: .陰去)
        static let kaai5 = Info(final: .aai, initial: .k, tone: .陽上)
        static let kaak1 = Info(final: .aak, initial: .k, tone: .陰平)
        static let kaak3 = Info(final: .aak, initial: .k, tone: .陰去)
        static let kaam5 = Info(final: .aam, initial: .k, tone: .陽上)
        static let kaang1 = Info(final: .aang, initial: .k, tone: .陰平)
        static let kaat1 = Info(final: .aat, initial: .k, tone: .陰平)
        static let kaat3 = Info(final: .aat, initial: .k, tone: .陰去)
        static let kaau3 = Info(final: .aau, initial: .k, tone: .陰去)
        static let kai1 = Info(final: .ai, initial: .k, tone: .陰平)
        static let kai2 = Info(final: .ai, initial: .k, tone: .陰上)
        static let kai3 = Info(final: .ai, initial: .k, tone: .陰去)
        static let kak1 = Info(final: .ak, initial: .k, tone: .陰平)
        static let kam1 = Info(final: .am, initial: .k, tone: .陰平)
        static let kam2 = Info(final: .am, initial: .k, tone: .陰上)
        static let kam4 = Info(final: .am, initial: .k, tone: .陽平)
        static let kam5 = Info(final: .am, initial: .k, tone: .陽上)
        static let kam6 = Info(final: .am, initial: .k, tone: .陽去)
        static let kan2 = Info(final: .an, initial: .k, tone: .陰上)
        static let kan4 = Info(final: .an, initial: .k, tone: .陽平)
        static let kan5 = Info(final: .an, initial: .k, tone: .陽上)
        static let kang1 = Info(final: .ang, initial: .k, tone: .陰平)
        static let kang2 = Info(final: .ang, initial: .k, tone: .陰上)
        static let kang3 = Info(final: .ang, initial: .k, tone: .陰去)
        static let kap1 = Info(final: .ap, initial: .k, tone: .陰平)
        static let kap6 = Info(final: .ap, initial: .k, tone: .陽去)
        static let kat1 = Info(final: .at, initial: .k, tone: .陰平)
        static let kau1 = Info(final: .au, initial: .k, tone: .陰平)
        static let kau2 = Info(final: .au, initial: .k, tone: .陰上)
        static let kau3 = Info(final: .au, initial: .k, tone: .陰去)
        static let kau4 = Info(final: .au, initial: .k, tone: .陽平)
        static let kau5 = Info(final: .au, initial: .k, tone: .陽上)
        static let ke1 = Info(final: .e, initial: .k, tone: .陰平)
        static let ke2 = Info(final: .e, initial: .k, tone: .陰上)
        static let ke4 = Info(final: .e, initial: .k, tone: .陽平)
        static let kei1 = Info(final: .ei, initial: .k, tone: .陰平)
        static let kei2 = Info(final: .ei, initial: .k, tone: .陰上)
        static let kei3 = Info(final: .ei, initial: .k, tone: .陰去)
        static let kei4 = Info(final: .ei, initial: .k, tone: .陽平)
        static let kei5 = Info(final: .ei, initial: .k, tone: .陽上)
        static let kek1 = Info(final: .ek, initial: .k, tone: .陰平)
        static let kek6 = Info(final: .ek, initial: .k, tone: .陽去)
        static let kem1 = Info(final: .em, initial: .k, tone: .陰平)
        static let ken1 = Info(final: .en, initial: .k, tone: .陰平)
        static let keng1 = Info(final: .eng, initial: .k, tone: .陰平)
        static let keoi1 = Info(final: .eoi, initial: .k, tone: .陰平)
        static let keoi2 = Info(final: .eoi, initial: .k, tone: .陰上)
        static let keoi4 = Info(final: .eoi, initial: .k, tone: .陽平)
        static let keoi5 = Info(final: .eoi, initial: .k, tone: .陽上)
        static let kep1 = Info(final: .ep, initial: .k, tone: .陰平)
        static let ki1 = Info(final: .i, initial: .k, tone: .陰平)
        static let kik1 = Info(final: .ik, initial: .k, tone: .陰平)
        static let kim2 = Info(final: .im, initial: .k, tone: .陰上)
        static let kim4 = Info(final: .im, initial: .k, tone: .陽平)
        static let kin2 = Info(final: .in, initial: .k, tone: .陰上)
        static let kin4 = Info(final: .in, initial: .k, tone: .陽平)
        static let king1 = Info(final: .ing, initial: .k, tone: .陰平)
        static let king2 = Info(final: .ing, initial: .k, tone: .陰上)
        static let king4 = Info(final: .ing, initial: .k, tone: .陽平)
        static let kip1 = Info(final: .ip, initial: .k, tone: .陰平)
        static let kit3 = Info(final: .it, initial: .k, tone: .陰去)
        static let kiu1 = Info(final: .iu, initial: .k, tone: .陰平)
        static let kiu2 = Info(final: .iu, initial: .k, tone: .陰上)
        static let kiu3 = Info(final: .iu, initial: .k, tone: .陰去)
        static let kiu4 = Info(final: .iu, initial: .k, tone: .陽平)
        static let kiu5 = Info(final: .iu, initial: .k, tone: .陽上)
        static let ko1 = Info(final: .o, initial: .k, tone: .陰平)
        static let koe1 = Info(final: .oe, initial: .k, tone: .陰平)
        static let koe4 = Info(final: .oe, initial: .k, tone: .陽平)
        static let koek3 = Info(final: .oek, initial: .k, tone: .陰去)
        static let koek6 = Info(final: .oek, initial: .k, tone: .陽去)
        static let koeng2 = Info(final: .oeng, initial: .k, tone: .陰上)
        static let koeng4 = Info(final: .oeng, initial: .k, tone: .陽平)
        static let koeng5 = Info(final: .oeng, initial: .k, tone: .陽上)
        static let koeng6 = Info(final: .oeng, initial: .k, tone: .陽去)
        static let koi2 = Info(final: .oi, initial: .k, tone: .陰上)
        static let koi3 = Info(final: .oi, initial: .k, tone: .陰去)
        static let kok1 = Info(final: .ok, initial: .k, tone: .陰平)
        static let kok3 = Info(final: .ok, initial: .k, tone: .陰去)
        static let kon1 = Info(final: .on, initial: .k, tone: .陰平)
        static let kon3 = Info(final: .on, initial: .k, tone: .陰去)
        static let kong1 = Info(final: .ong, initial: .k, tone: .陰平)
        static let kong2 = Info(final: .ong, initial: .k, tone: .陰上)
        static let kong3 = Info(final: .ong, initial: .k, tone: .陰去)
        static let kong4 = Info(final: .ong, initial: .k, tone: .陽平)
        static let ku1 = Info(final: .u, initial: .k, tone: .陰平)
        static let kui2 = Info(final: .ui, initial: .k, tone: .陰上)
        static let kui3 = Info(final: .ui, initial: .k, tone: .陰去)
        static let kuk1 = Info(final: .uk, initial: .k, tone: .陰平)
        static let kung4 = Info(final: .ung, initial: .k, tone: .陽平)
        static let kut3 = Info(final: .ut, initial: .k, tone: .陰去)
        static let kwaa1 = Info(final: .aa, initial: .kw, tone: .陰平)
        static let kwaa2 = Info(final: .aa, initial: .kw, tone: .陰上)
        static let kwaa3 = Info(final: .aa, initial: .kw, tone: .陰去)
        static let kwaai3 = Info(final: .aai, initial: .kw, tone: .陰去)
        static let kwaai5 = Info(final: .aai, initial: .kw, tone: .陽上)
        static let kwaak1 = Info(final: .aak, initial: .kw, tone: .陰平)
        static let kwaak3 = Info(final: .aak, initial: .kw, tone: .陰去)
        static let kwaang1 = Info(final: .aang, initial: .kw, tone: .陰平)
        static let kwaang3 = Info(final: .aang, initial: .kw, tone: .陰去)
        static let kwaat1 = Info(final: .aat, initial: .kw, tone: .陰平)
        static let kwai1 = Info(final: .ai, initial: .kw, tone: .陰平)
        static let kwai2 = Info(final: .ai, initial: .kw, tone: .陰上)
        static let kwai3 = Info(final: .ai, initial: .kw, tone: .陰去)
        static let kwai4 = Info(final: .ai, initial: .kw, tone: .陽平)
        static let kwai5 = Info(final: .ai, initial: .kw, tone: .陽上)
        static let kwan1 = Info(final: .an, initial: .kw, tone: .陰平)
        static let kwan2 = Info(final: .an, initial: .kw, tone: .陰上)
        static let kwan3 = Info(final: .an, initial: .kw, tone: .陰去)
        static let kwan4 = Info(final: .an, initial: .kw, tone: .陽平)
        static let kwan5 = Info(final: .an, initial: .kw, tone: .陽上)
        static let kwang1 = Info(final: .ang, initial: .kw, tone: .陰平)
        static let kwang3 = Info(final: .ang, initial: .kw, tone: .陰去)
        static let kwik1 = Info(final: .ik, initial: .kw, tone: .陰平)
        static let kwok3 = Info(final: .ok, initial: .kw, tone: .陰去)
        static let kwong1 = Info(final: .ong, initial: .kw, tone: .陰平)
        static let kwong2 = Info(final: .ong, initial: .kw, tone: .陰上)
        static let kwong3 = Info(final: .ong, initial: .kw, tone: .陰去)
        static let kwong4 = Info(final: .ong, initial: .kw, tone: .陽平)
        static let kwu1 = Info(final: .u, initial: .kw, tone: .陰平)
        static let kwui2 = Info(final: .ui, initial: .kw, tone: .陰上)
        static let kwui3 = Info(final: .ui, initial: .kw, tone: .陰去)
        static let kwut3 = Info(final: .ut, initial: .kw, tone: .陰去)
        static let kyun2 = Info(final: .yun, initial: .k, tone: .陰上)
        static let kyun4 = Info(final: .yun, initial: .k, tone: .陽平)
        static let kyut3 = Info(final: .yut, initial: .k, tone: .陰去)
        static let kyut6 = Info(final: .yut, initial: .k, tone: .陽去)
        static let laa1 = Info(final: .aa, initial: .l, tone: .陰平)
        static let laa2 = Info(final: .aa, initial: .l, tone: .陰上)
        static let laa3 = Info(final: .aa, initial: .l, tone: .陰去)
        static let laa4 = Info(final: .aa, initial: .l, tone: .陽平)
        static let laa5 = Info(final: .aa, initial: .l, tone: .陽上)
        static let laa6 = Info(final: .aa, initial: .l, tone: .陽去)
        static let laai1 = Info(final: .aai, initial: .l, tone: .陰平)
        static let laai2 = Info(final: .aai, initial: .l, tone: .陰上)
        static let laai3 = Info(final: .aai, initial: .l, tone: .陰去)
        static let laai4 = Info(final: .aai, initial: .l, tone: .陽平)
        static let laai5 = Info(final: .aai, initial: .l, tone: .陽上)
        static let laai6 = Info(final: .aai, initial: .l, tone: .陽去)
        static let laak1 = Info(final: .aak, initial: .l, tone: .陰平)
        static let laak3 = Info(final: .aak, initial: .l, tone: .陰去)
        static let laak6 = Info(final: .aak, initial: .l, tone: .陽去)
        static let laam2 = Info(final: .aam, initial: .l, tone: .陰上)
        static let laam3 = Info(final: .aam, initial: .l, tone: .陰去)
        static let laam4 = Info(final: .aam, initial: .l, tone: .陽平)
        static let laam5 = Info(final: .aam, initial: .l, tone: .陽上)
        static let laam6 = Info(final: .aam, initial: .l, tone: .陽去)
        static let laan1 = Info(final: .aan, initial: .l, tone: .陰平)
        static let laan2 = Info(final: .aan, initial: .l, tone: .陰上)
        static let laan4 = Info(final: .aan, initial: .l, tone: .陽平)
        static let laan5 = Info(final: .aan, initial: .l, tone: .陽上)
        static let laan6 = Info(final: .aan, initial: .l, tone: .陽去)
        static let laang1 = Info(final: .aang, initial: .l, tone: .陰平)
        static let laang4 = Info(final: .aang, initial: .l, tone: .陽平)
        static let laang5 = Info(final: .aang, initial: .l, tone: .陽上)
        static let laang6 = Info(final: .aang, initial: .l, tone: .陽去)
        static let laap2 = Info(final: .aap, initial: .l, tone: .陰上)
        static let laap3 = Info(final: .aap, initial: .l, tone: .陰去)
        static let laap6 = Info(final: .aap, initial: .l, tone: .陽去)
        static let laat1 = Info(final: .aat, initial: .l, tone: .陰平)
        static let laat2 = Info(final: .aat, initial: .l, tone: .陰上)
        static let laat3 = Info(final: .aat, initial: .l, tone: .陰去)
        static let laat6 = Info(final: .aat, initial: .l, tone: .陽去)
        static let laau1 = Info(final: .aau, initial: .l, tone: .陰平)
        static let laau2 = Info(final: .aau, initial: .l, tone: .陰上)
        static let laau4 = Info(final: .aau, initial: .l, tone: .陽平)
        static let laau5 = Info(final: .aau, initial: .l, tone: .陽上)
        static let laau6 = Info(final: .aau, initial: .l, tone: .陽去)
        static let lai2 = Info(final: .ai, initial: .l, tone: .陰上)
        static let lai4 = Info(final: .ai, initial: .l, tone: .陽平)
        static let lai5 = Info(final: .ai, initial: .l, tone: .陽上)
        static let lai6 = Info(final: .ai, initial: .l, tone: .陽去)
        static let lak6 = Info(final: .ak, initial: .l, tone: .陽去)
        static let lam1 = Info(final: .am, initial: .l, tone: .陰平)
        static let lam2 = Info(final: .am, initial: .l, tone: .陰上)
        static let lam3 = Info(final: .am, initial: .l, tone: .陰去)
        static let lam4 = Info(final: .am, initial: .l, tone: .陽平)
        static let lam5 = Info(final: .am, initial: .l, tone: .陽上)
        static let lam6 = Info(final: .am, initial: .l, tone: .陽去)
        static let lan2 = Info(final: .an, initial: .l, tone: .陰上)
        static let lan4 = Info(final: .an, initial: .l, tone: .陽平)
        static let lang1 = Info(final: .ang, initial: .l, tone: .陰平)
        static let lang3 = Info(final: .ang, initial: .l, tone: .陰去)
        static let lang4 = Info(final: .ang, initial: .l, tone: .陽平)
        static let lang6 = Info(final: .ang, initial: .l, tone: .陽去)
        static let lap1 = Info(final: .ap, initial: .l, tone: .陰平)
        static let lap2 = Info(final: .ap, initial: .l, tone: .陰上)
        static let lap6 = Info(final: .ap, initial: .l, tone: .陽去)
        static let lat1 = Info(final: .at, initial: .l, tone: .陰平)
        static let lat6 = Info(final: .at, initial: .l, tone: .陽去)
        static let lau1 = Info(final: .au, initial: .l, tone: .陰平)
        static let lau2 = Info(final: .au, initial: .l, tone: .陰上)
        static let lau3 = Info(final: .au, initial: .l, tone: .陰去)
        static let lau4 = Info(final: .au, initial: .l, tone: .陽平)
        static let lau5 = Info(final: .au, initial: .l, tone: .陽上)
        static let lau6 = Info(final: .au, initial: .l, tone: .陽去)
        static let le1 = Info(final: .e, initial: .l, tone: .陰平)
        static let le2 = Info(final: .e, initial: .l, tone: .陰上)
        static let le3 = Info(final: .e, initial: .l, tone: .陰去)
        static let le4 = Info(final: .e, initial: .l, tone: .陽平)
        static let le5 = Info(final: .e, initial: .l, tone: .陽上)
        static let le6 = Info(final: .e, initial: .l, tone: .陽去)
        static let lei1 = Info(final: .ei, initial: .l, tone: .陰平)
        static let lei2 = Info(final: .ei, initial: .l, tone: .陰上)
        static let lei4 = Info(final: .ei, initial: .l, tone: .陽平)
        static let lei5 = Info(final: .ei, initial: .l, tone: .陽上)
        static let lei6 = Info(final: .ei, initial: .l, tone: .陽去)
        static let lek1 = Info(final: .ek, initial: .l, tone: .陰平)
        static let lek6 = Info(final: .ek, initial: .l, tone: .陽去)
        static let lem2 = Info(final: .em, initial: .l, tone: .陰上)
        static let leng1 = Info(final: .eng, initial: .l, tone: .陰平)
        static let leng2 = Info(final: .eng, initial: .l, tone: .陰上)
        static let leng3 = Info(final: .eng, initial: .l, tone: .陰去)
        static let leng4 = Info(final: .eng, initial: .l, tone: .陽平)
        static let leng5 = Info(final: .eng, initial: .l, tone: .陽上)
        static let leoi1 = Info(final: .eoi, initial: .l, tone: .陰平)
        static let leoi2 = Info(final: .eoi, initial: .l, tone: .陰上)
        static let leoi3 = Info(final: .eoi, initial: .l, tone: .陰去)
        static let leoi4 = Info(final: .eoi, initial: .l, tone: .陽平)
        static let leoi5 = Info(final: .eoi, initial: .l, tone: .陽上)
        static let leoi6 = Info(final: .eoi, initial: .l, tone: .陽去)
        static let leon1 = Info(final: .eon, initial: .l, tone: .陰平)
        static let leon2 = Info(final: .eon, initial: .l, tone: .陰上)
        static let leon4 = Info(final: .eon, initial: .l, tone: .陽平)
        static let leon5 = Info(final: .eon, initial: .l, tone: .陽上)
        static let leon6 = Info(final: .eon, initial: .l, tone: .陽去)
        static let leot2 = Info(final: .eot, initial: .l, tone: .陰上)
        static let leot3 = Info(final: .eot, initial: .l, tone: .陰去)
        static let leot6 = Info(final: .eot, initial: .l, tone: .陽去)
        static let li1 = Info(final: .i, initial: .l, tone: .陰平)
        static let li2 = Info(final: .i, initial: .l, tone: .陰上)
        static let li4 = Info(final: .i, initial: .l, tone: .陽平)
        static let lik1 = Info(final: .ik, initial: .l, tone: .陰平)
        static let lik6 = Info(final: .ik, initial: .l, tone: .陽去)
        static let lim1 = Info(final: .im, initial: .l, tone: .陰平)
        static let lim2 = Info(final: .im, initial: .l, tone: .陰上)
        static let lim3 = Info(final: .im, initial: .l, tone: .陰去)
        static let lim4 = Info(final: .im, initial: .l, tone: .陽平)
        static let lim5 = Info(final: .im, initial: .l, tone: .陽上)
        static let lim6 = Info(final: .im, initial: .l, tone: .陽去)
        static let lin1 = Info(final: .in, initial: .l, tone: .陰平)
        static let lin2 = Info(final: .in, initial: .l, tone: .陰上)
        static let lin4 = Info(final: .in, initial: .l, tone: .陽平)
        static let lin5 = Info(final: .in, initial: .l, tone: .陽上)
        static let lin6 = Info(final: .in, initial: .l, tone: .陽去)
        static let ling1 = Info(final: .ing, initial: .l, tone: .陰平)
        static let ling2 = Info(final: .ing, initial: .l, tone: .陰上)
        static let ling3 = Info(final: .ing, initial: .l, tone: .陰去)
        static let ling4 = Info(final: .ing, initial: .l, tone: .陽平)
        static let ling5 = Info(final: .ing, initial: .l, tone: .陽上)
        static let ling6 = Info(final: .ing, initial: .l, tone: .陽去)
        static let lip1 = Info(final: .ip, initial: .l, tone: .陰平)
        static let lip6 = Info(final: .ip, initial: .l, tone: .陽去)
        static let lit3 = Info(final: .it, initial: .l, tone: .陰去)
        static let lit6 = Info(final: .it, initial: .l, tone: .陽去)
        static let liu1 = Info(final: .iu, initial: .l, tone: .陰平)
        static let liu2 = Info(final: .iu, initial: .l, tone: .陰上)
        static let liu4 = Info(final: .iu, initial: .l, tone: .陽平)
        static let liu5 = Info(final: .iu, initial: .l, tone: .陽上)
        static let liu6 = Info(final: .iu, initial: .l, tone: .陽去)
        static let lo1 = Info(final: .o, initial: .l, tone: .陰平)
        static let lo2 = Info(final: .o, initial: .l, tone: .陰上)
        static let lo3 = Info(final: .o, initial: .l, tone: .陰去)
        static let lo4 = Info(final: .o, initial: .l, tone: .陽平)
        static let lo5 = Info(final: .o, initial: .l, tone: .陽上)
        static let lo6 = Info(final: .o, initial: .l, tone: .陽去)
        static let loe1 = Info(final: .oe, initial: .l, tone: .陰平)
        static let loe2 = Info(final: .oe, initial: .l, tone: .陰上)
        static let loek1 = Info(final: .oek, initial: .l, tone: .陰平)
        static let loek2 = Info(final: .oek, initial: .l, tone: .陰上)
        static let loek6 = Info(final: .oek, initial: .l, tone: .陽去)
        static let loeng2 = Info(final: .oeng, initial: .l, tone: .陰上)
        static let loeng4 = Info(final: .oeng, initial: .l, tone: .陽平)
        static let loeng5 = Info(final: .oeng, initial: .l, tone: .陽上)
        static let loeng6 = Info(final: .oeng, initial: .l, tone: .陽去)
        static let loi1 = Info(final: .oi, initial: .l, tone: .陰平)
        static let loi2 = Info(final: .oi, initial: .l, tone: .陰上)
        static let loi4 = Info(final: .oi, initial: .l, tone: .陽平)
        static let loi5 = Info(final: .oi, initial: .l, tone: .陽上)
        static let loi6 = Info(final: .oi, initial: .l, tone: .陽去)
        static let lok1 = Info(final: .ok, initial: .l, tone: .陰平)
        static let lok2 = Info(final: .ok, initial: .l, tone: .陰上)
        static let lok3 = Info(final: .ok, initial: .l, tone: .陰去)
        static let lok6 = Info(final: .ok, initial: .l, tone: .陽去)
        static let long1 = Info(final: .ong, initial: .l, tone: .陰平)
        static let long2 = Info(final: .ong, initial: .l, tone: .陰上)
        static let long3 = Info(final: .ong, initial: .l, tone: .陰去)
        static let long4 = Info(final: .ong, initial: .l, tone: .陽平)
        static let long5 = Info(final: .ong, initial: .l, tone: .陽上)
        static let long6 = Info(final: .ong, initial: .l, tone: .陽去)
        static let lou1 = Info(final: .ou, initial: .l, tone: .陰平)
        static let lou2 = Info(final: .ou, initial: .l, tone: .陰上)
        static let lou4 = Info(final: .ou, initial: .l, tone: .陽平)
        static let lou5 = Info(final: .ou, initial: .l, tone: .陽上)
        static let lou6 = Info(final: .ou, initial: .l, tone: .陽去)
        static let lu1 = Info(final: .u, initial: .l, tone: .陰平)
        static let luk1 = Info(final: .uk, initial: .l, tone: .陰平)
        static let luk2 = Info(final: .uk, initial: .l, tone: .陰上)
        static let luk6 = Info(final: .uk, initial: .l, tone: .陽去)
        static let lung1 = Info(final: .ung, initial: .l, tone: .陰平)
        static let lung2 = Info(final: .ung, initial: .l, tone: .陰上)
        static let lung4 = Info(final: .ung, initial: .l, tone: .陽平)
        static let lung5 = Info(final: .ung, initial: .l, tone: .陽上)
        static let lung6 = Info(final: .ung, initial: .l, tone: .陽去)
        static let lyun1 = Info(final: .yun, initial: .l, tone: .陰平)
        static let lyun2 = Info(final: .yun, initial: .l, tone: .陰上)
        static let lyun4 = Info(final: .yun, initial: .l, tone: .陽平)
        static let lyun5 = Info(final: .yun, initial: .l, tone: .陽上)
        static let lyun6 = Info(final: .yun, initial: .l, tone: .陽去)
        static let lyut1 = Info(final: .yut, initial: .l, tone: .陰平)
        static let lyut3 = Info(final: .yut, initial: .l, tone: .陰去)
        static let lyut6 = Info(final: .yut, initial: .l, tone: .陽去)
        static let m2 = Info(final: .m, initial: .none, tone: .陰上)
        static let m4 = Info(final: .m, initial: .none, tone: .陽平)
        static let m5 = Info(final: .m, initial: .none, tone: .陽上)
        static let m6 = Info(final: .m, initial: .none, tone: .陽去)
        static let maa1 = Info(final: .aa, initial: .m, tone: .陰平)
        static let maa2 = Info(final: .aa, initial: .m, tone: .陰上)
        static let maa3 = Info(final: .aa, initial: .m, tone: .陰去)
        static let maa4 = Info(final: .aa, initial: .m, tone: .陽平)
        static let maa5 = Info(final: .aa, initial: .m, tone: .陽上)
        static let maa6 = Info(final: .aa, initial: .m, tone: .陽去)
        static let maai2 = Info(final: .aai, initial: .m, tone: .陰上)
        static let maai4 = Info(final: .aai, initial: .m, tone: .陽平)
        static let maai5 = Info(final: .aai, initial: .m, tone: .陽上)
        static let maai6 = Info(final: .aai, initial: .m, tone: .陽去)
        static let maak1 = Info(final: .aak, initial: .m, tone: .陰平)
        static let maak3 = Info(final: .aak, initial: .m, tone: .陰去)
        static let maak6 = Info(final: .aak, initial: .m, tone: .陽去)
        static let maan1 = Info(final: .aan, initial: .m, tone: .陰平)
        static let maan2 = Info(final: .aan, initial: .m, tone: .陰上)
        static let maan4 = Info(final: .aan, initial: .m, tone: .陽平)
        static let maan5 = Info(final: .aan, initial: .m, tone: .陽上)
        static let maan6 = Info(final: .aan, initial: .m, tone: .陽去)
        static let maang1 = Info(final: .aang, initial: .m, tone: .陰平)
        static let maang2 = Info(final: .aang, initial: .m, tone: .陰上)
        static let maang4 = Info(final: .aang, initial: .m, tone: .陽平)
        static let maang5 = Info(final: .aang, initial: .m, tone: .陽上)
        static let maang6 = Info(final: .aang, initial: .m, tone: .陽去)
        static let maat3 = Info(final: .aat, initial: .m, tone: .陰去)
        static let maat6 = Info(final: .aat, initial: .m, tone: .陽去)
        static let maau1 = Info(final: .aau, initial: .m, tone: .陰平)
        static let maau4 = Info(final: .aau, initial: .m, tone: .陽平)
        static let maau5 = Info(final: .aau, initial: .m, tone: .陽上)
        static let maau6 = Info(final: .aau, initial: .m, tone: .陽去)
        static let mai1 = Info(final: .ai, initial: .m, tone: .陰平)
        static let mai2 = Info(final: .ai, initial: .m, tone: .陰上)
        static let mai4 = Info(final: .ai, initial: .m, tone: .陽平)
        static let mai5 = Info(final: .ai, initial: .m, tone: .陽上)
        static let mai6 = Info(final: .ai, initial: .m, tone: .陽去)
        static let mak1 = Info(final: .ak, initial: .m, tone: .陰平)
        static let mak2 = Info(final: .ak, initial: .m, tone: .陰上)
        static let mak6 = Info(final: .ak, initial: .m, tone: .陽去)
        static let mam1 = Info(final: .am, initial: .m, tone: .陰平)
        static let man1 = Info(final: .an, initial: .m, tone: .陰平)
        static let man2 = Info(final: .an, initial: .m, tone: .陰上)
        static let man3 = Info(final: .an, initial: .m, tone: .陰去)
        static let man4 = Info(final: .an, initial: .m, tone: .陽平)
        static let man5 = Info(final: .an, initial: .m, tone: .陽上)
        static let man6 = Info(final: .an, initial: .m, tone: .陽去)
        static let mang1 = Info(final: .ang, initial: .m, tone: .陰平)
        static let mang2 = Info(final: .ang, initial: .m, tone: .陰上)
        static let mang3 = Info(final: .ang, initial: .m, tone: .陰去)
        static let mang4 = Info(final: .ang, initial: .m, tone: .陽平)
        static let mang6 = Info(final: .ang, initial: .m, tone: .陽去)
        static let mat1 = Info(final: .at, initial: .m, tone: .陰平)
        static let mat2 = Info(final: .at, initial: .m, tone: .陰上)
        static let mat6 = Info(final: .at, initial: .m, tone: .陽去)
        static let mau1 = Info(final: .au, initial: .m, tone: .陰平)
        static let mau4 = Info(final: .au, initial: .m, tone: .陽平)
        static let mau5 = Info(final: .au, initial: .m, tone: .陽上)
        static let mau6 = Info(final: .au, initial: .m, tone: .陽去)
        static let me1 = Info(final: .e, initial: .m, tone: .陰平)
        static let me2 = Info(final: .e, initial: .m, tone: .陰上)
        static let me5 = Info(final: .e, initial: .m, tone: .陽上)
        static let me6 = Info(final: .e, initial: .m, tone: .陽去)
        static let mei1 = Info(final: .ei, initial: .m, tone: .陰平)
        static let mei2 = Info(final: .ei, initial: .m, tone: .陰上)
        static let mei4 = Info(final: .ei, initial: .m, tone: .陽平)
        static let mei5 = Info(final: .ei, initial: .m, tone: .陽上)
        static let mei6 = Info(final: .ei, initial: .m, tone: .陽去)
        static let men1 = Info(final: .en, initial: .m, tone: .陰平)
        static let meng2 = Info(final: .eng, initial: .m, tone: .陰上)
        static let meng4 = Info(final: .eng, initial: .m, tone: .陽平)
        static let meng6 = Info(final: .eng, initial: .m, tone: .陽去)
        static let mi1 = Info(final: .i, initial: .m, tone: .陰平)
        static let mi4 = Info(final: .i, initial: .m, tone: .陽平)
        static let mik6 = Info(final: .ik, initial: .m, tone: .陽去)
        static let min1 = Info(final: .in, initial: .m, tone: .陰平)
        static let min2 = Info(final: .in, initial: .m, tone: .陰上)
        static let min4 = Info(final: .in, initial: .m, tone: .陽平)
        static let min5 = Info(final: .in, initial: .m, tone: .陽上)
        static let min6 = Info(final: .in, initial: .m, tone: .陽去)
        static let ming1 = Info(final: .ing, initial: .m, tone: .陰平)
        static let ming2 = Info(final: .ing, initial: .m, tone: .陰上)
        static let ming4 = Info(final: .ing, initial: .m, tone: .陽平)
        static let ming5 = Info(final: .ing, initial: .m, tone: .陽上)
        static let ming6 = Info(final: .ing, initial: .m, tone: .陽去)
        static let mit1 = Info(final: .it, initial: .m, tone: .陰平)
        static let mit6 = Info(final: .it, initial: .m, tone: .陽去)
        static let miu1 = Info(final: .iu, initial: .m, tone: .陰平)
        static let miu2 = Info(final: .iu, initial: .m, tone: .陰上)
        static let miu4 = Info(final: .iu, initial: .m, tone: .陽平)
        static let miu5 = Info(final: .iu, initial: .m, tone: .陽上)
        static let miu6 = Info(final: .iu, initial: .m, tone: .陽去)
        static let mo1 = Info(final: .o, initial: .m, tone: .陰平)
        static let mo2 = Info(final: .o, initial: .m, tone: .陰上)
        static let mo4 = Info(final: .o, initial: .m, tone: .陽平)
        static let mo5 = Info(final: .o, initial: .m, tone: .陽上)
        static let mo6 = Info(final: .o, initial: .m, tone: .陽去)
        static let mok1 = Info(final: .ok, initial: .m, tone: .陰平)
        static let mok2 = Info(final: .ok, initial: .m, tone: .陰上)
        static let mok6 = Info(final: .ok, initial: .m, tone: .陽去)
        static let mong1 = Info(final: .ong, initial: .m, tone: .陰平)
        static let mong2 = Info(final: .ong, initial: .m, tone: .陰上)
        static let mong4 = Info(final: .ong, initial: .m, tone: .陽平)
        static let mong5 = Info(final: .ong, initial: .m, tone: .陽上)
        static let mong6 = Info(final: .ong, initial: .m, tone: .陽去)
        static let mou1 = Info(final: .ou, initial: .m, tone: .陰平)
        static let mou2 = Info(final: .ou, initial: .m, tone: .陰上)
        static let mou4 = Info(final: .ou, initial: .m, tone: .陽平)
        static let mou5 = Info(final: .ou, initial: .m, tone: .陽上)
        static let mou6 = Info(final: .ou, initial: .m, tone: .陽去)
        static let mui1 = Info(final: .ui, initial: .m, tone: .陰平)
        static let mui2 = Info(final: .ui, initial: .m, tone: .陰上)
        static let mui4 = Info(final: .ui, initial: .m, tone: .陽平)
        static let mui5 = Info(final: .ui, initial: .m, tone: .陽上)
        static let mui6 = Info(final: .ui, initial: .m, tone: .陽去)
        static let muk1 = Info(final: .uk, initial: .m, tone: .陰平)
        static let muk6 = Info(final: .uk, initial: .m, tone: .陽去)
        static let mun1 = Info(final: .un, initial: .m, tone: .陰平)
        static let mun2 = Info(final: .un, initial: .m, tone: .陰上)
        static let mun4 = Info(final: .un, initial: .m, tone: .陽平)
        static let mun5 = Info(final: .un, initial: .m, tone: .陽上)
        static let mun6 = Info(final: .un, initial: .m, tone: .陽去)
        static let mung1 = Info(final: .ung, initial: .m, tone: .陰平)
        static let mung2 = Info(final: .ung, initial: .m, tone: .陰上)
        static let mung4 = Info(final: .ung, initial: .m, tone: .陽平)
        static let mung5 = Info(final: .ung, initial: .m, tone: .陽上)
        static let mung6 = Info(final: .ung, initial: .m, tone: .陽去)
        static let mut1 = Info(final: .ut, initial: .m, tone: .陰平)
        static let mut2 = Info(final: .ut, initial: .m, tone: .陰上)
        static let mut3 = Info(final: .ut, initial: .m, tone: .陰去)
        static let mut6 = Info(final: .ut, initial: .m, tone: .陽去)
        static let naa1 = Info(final: .aa, initial: .n, tone: .陰平)
        static let naa2 = Info(final: .aa, initial: .n, tone: .陰上)
        static let naa3 = Info(final: .aa, initial: .n, tone: .陰去)
        static let naa4 = Info(final: .aa, initial: .n, tone: .陽平)
        static let naa5 = Info(final: .aa, initial: .n, tone: .陽上)
        static let naa6 = Info(final: .aa, initial: .n, tone: .陽去)
        static let naai1 = Info(final: .aai, initial: .n, tone: .陰平)
        static let naai2 = Info(final: .aai, initial: .n, tone: .陰上)
        static let naai3 = Info(final: .aai, initial: .n, tone: .陰去)
        static let naai4 = Info(final: .aai, initial: .n, tone: .陽平)
        static let naai5 = Info(final: .aai, initial: .n, tone: .陽上)
        static let naai6 = Info(final: .aai, initial: .n, tone: .陽去)
        static let naam2 = Info(final: .aam, initial: .n, tone: .陰上)
        static let naam3 = Info(final: .aam, initial: .n, tone: .陰去)
        static let naam4 = Info(final: .aam, initial: .n, tone: .陽平)
        static let naam5 = Info(final: .aam, initial: .n, tone: .陽上)
        static let naam6 = Info(final: .aam, initial: .n, tone: .陽去)
        static let naan2 = Info(final: .aan, initial: .n, tone: .陰上)
        static let naan3 = Info(final: .aan, initial: .n, tone: .陰去)
        static let naan4 = Info(final: .aan, initial: .n, tone: .陽平)
        static let naan5 = Info(final: .aan, initial: .n, tone: .陽上)
        static let naan6 = Info(final: .aan, initial: .n, tone: .陽去)
        static let naap2 = Info(final: .aap, initial: .n, tone: .陰上)
        static let naap6 = Info(final: .aap, initial: .n, tone: .陽去)
        static let naat3 = Info(final: .aat, initial: .n, tone: .陰去)
        static let naat6 = Info(final: .aat, initial: .n, tone: .陽去)
        static let naau1 = Info(final: .aau, initial: .n, tone: .陰平)
        static let naau2 = Info(final: .aau, initial: .n, tone: .陰上)
        static let naau4 = Info(final: .aau, initial: .n, tone: .陽平)
        static let naau5 = Info(final: .aau, initial: .n, tone: .陽上)
        static let naau6 = Info(final: .aau, initial: .n, tone: .陽去)
        static let nai2 = Info(final: .ai, initial: .n, tone: .陰上)
        static let nai4 = Info(final: .ai, initial: .n, tone: .陽平)
        static let nai5 = Info(final: .ai, initial: .n, tone: .陽上)
        static let nai6 = Info(final: .ai, initial: .n, tone: .陽去)
        static let nak1 = Info(final: .ak, initial: .n, tone: .陰平)
        static let nak6 = Info(final: .ak, initial: .n, tone: .陽去)
        static let nam2 = Info(final: .am, initial: .n, tone: .陰上)
        static let nam4 = Info(final: .am, initial: .n, tone: .陽平)
        static let nam5 = Info(final: .am, initial: .n, tone: .陽上)
        static let nam6 = Info(final: .am, initial: .n, tone: .陽去)
        static let nan2 = Info(final: .an, initial: .n, tone: .陰上)
        static let nan4 = Info(final: .an, initial: .n, tone: .陽平)
        static let nang3 = Info(final: .ang, initial: .n, tone: .陰去)
        static let nang4 = Info(final: .ang, initial: .n, tone: .陽平)
        static let nap1 = Info(final: .ap, initial: .n, tone: .陰平)
        static let nap6 = Info(final: .ap, initial: .n, tone: .陽去)
        static let nat6 = Info(final: .at, initial: .n, tone: .陽去)
        static let nau1 = Info(final: .au, initial: .n, tone: .陰平)
        static let nau2 = Info(final: .au, initial: .n, tone: .陰上)
        static let nau4 = Info(final: .au, initial: .n, tone: .陽平)
        static let nau5 = Info(final: .au, initial: .n, tone: .陽上)
        static let nau6 = Info(final: .au, initial: .n, tone: .陽去)
        static let ne1 = Info(final: .e, initial: .n, tone: .陰平)
        static let ne6 = Info(final: .e, initial: .n, tone: .陽去)
        static let nei1 = Info(final: .ei, initial: .n, tone: .陰平)
        static let nei2 = Info(final: .ei, initial: .n, tone: .陰上)
        static let nei4 = Info(final: .ei, initial: .n, tone: .陽平)
        static let nei5 = Info(final: .ei, initial: .n, tone: .陽上)
        static let nei6 = Info(final: .ei, initial: .n, tone: .陽去)
        static let neoi2 = Info(final: .eoi, initial: .n, tone: .陰上)
        static let neoi4 = Info(final: .eoi, initial: .n, tone: .陽平)
        static let neoi5 = Info(final: .eoi, initial: .n, tone: .陽上)
        static let neoi6 = Info(final: .eoi, initial: .n, tone: .陽去)
        static let neot6 = Info(final: .eot, initial: .n, tone: .陽去)
        static let ng2 = Info(final: .ng, initial: .none, tone: .陰上)
        static let ng4 = Info(final: .ng, initial: .none, tone: .陽平)
        static let ng5 = Info(final: .ng, initial: .none, tone: .陽上)
        static let ng6 = Info(final: .ng, initial: .none, tone: .陽去)
        static let ngaa1 = Info(final: .aa, initial: .ng, tone: .陰平)
        static let ngaa2 = Info(final: .aa, initial: .ng, tone: .陰上)
        static let ngaa3 = Info(final: .aa, initial: .ng, tone: .陰去)
        static let ngaa4 = Info(final: .aa, initial: .ng, tone: .陽平)
        static let ngaa5 = Info(final: .aa, initial: .ng, tone: .陽上)
        static let ngaa6 = Info(final: .aa, initial: .ng, tone: .陽去)
        static let ngaai1 = Info(final: .aai, initial: .ng, tone: .陰平)
        static let ngaai2 = Info(final: .aai, initial: .ng, tone: .陰上)
        static let ngaai3 = Info(final: .aai, initial: .ng, tone: .陰去)
        static let ngaai4 = Info(final: .aai, initial: .ng, tone: .陽平)
        static let ngaai5 = Info(final: .aai, initial: .ng, tone: .陽上)
        static let ngaai6 = Info(final: .aai, initial: .ng, tone: .陽去)
        static let ngaak1 = Info(final: .aak, initial: .ng, tone: .陰平)
        static let ngaak2 = Info(final: .aak, initial: .ng, tone: .陰上)
        static let ngaak3 = Info(final: .aak, initial: .ng, tone: .陰去)
        static let ngaak6 = Info(final: .aak, initial: .ng, tone: .陽去)
        static let ngaam1 = Info(final: .aam, initial: .ng, tone: .陰平)
        static let ngaam4 = Info(final: .aam, initial: .ng, tone: .陽平)
        static let ngaan2 = Info(final: .aan, initial: .ng, tone: .陰上)
        static let ngaan3 = Info(final: .aan, initial: .ng, tone: .陰去)
        static let ngaan4 = Info(final: .aan, initial: .ng, tone: .陽平)
        static let ngaan5 = Info(final: .aan, initial: .ng, tone: .陽上)
        static let ngaan6 = Info(final: .aan, initial: .ng, tone: .陽去)
        static let ngaang1 = Info(final: .aang, initial: .ng, tone: .陰平)
        static let ngaang2 = Info(final: .aang, initial: .ng, tone: .陰上)
        static let ngaang6 = Info(final: .aang, initial: .ng, tone: .陽去)
        static let ngaap2 = Info(final: .aap, initial: .ng, tone: .陰上)
        static let ngaap3 = Info(final: .aap, initial: .ng, tone: .陰去)
        static let ngaat1 = Info(final: .aat, initial: .ng, tone: .陰平)
        static let ngaat2 = Info(final: .aat, initial: .ng, tone: .陰上)
        static let ngaat3 = Info(final: .aat, initial: .ng, tone: .陰去)
        static let ngaat6 = Info(final: .aat, initial: .ng, tone: .陽去)
        static let ngaau1 = Info(final: .aau, initial: .ng, tone: .陰平)
        static let ngaau2 = Info(final: .aau, initial: .ng, tone: .陰上)
        static let ngaau3 = Info(final: .aau, initial: .ng, tone: .陰去)
        static let ngaau4 = Info(final: .aau, initial: .ng, tone: .陽平)
        static let ngaau5 = Info(final: .aau, initial: .ng, tone: .陽上)
        static let ngaau6 = Info(final: .aau, initial: .ng, tone: .陽去)
        static let ngai1 = Info(final: .ai, initial: .ng, tone: .陰平)
        static let ngai2 = Info(final: .ai, initial: .ng, tone: .陰上)
        static let ngai3 = Info(final: .ai, initial: .ng, tone: .陰去)
        static let ngai4 = Info(final: .ai, initial: .ng, tone: .陽平)
        static let ngai5 = Info(final: .ai, initial: .ng, tone: .陽上)
        static let ngai6 = Info(final: .ai, initial: .ng, tone: .陽去)
        static let ngak1 = Info(final: .ak, initial: .ng, tone: .陰平)
        static let ngam1 = Info(final: .am, initial: .ng, tone: .陰平)
        static let ngam2 = Info(final: .am, initial: .ng, tone: .陰上)
        static let ngam3 = Info(final: .am, initial: .ng, tone: .陰去)
        static let ngam4 = Info(final: .am, initial: .ng, tone: .陽平)
        static let ngam5 = Info(final: .am, initial: .ng, tone: .陽上)
        static let ngam6 = Info(final: .am, initial: .ng, tone: .陽去)
        static let ngan1 = Info(final: .an, initial: .ng, tone: .陰平)
        static let ngan2 = Info(final: .an, initial: .ng, tone: .陰上)
        static let ngan3 = Info(final: .an, initial: .ng, tone: .陰去)
        static let ngan4 = Info(final: .an, initial: .ng, tone: .陽平)
        static let ngan6 = Info(final: .an, initial: .ng, tone: .陽去)
        static let ngang1 = Info(final: .ang, initial: .ng, tone: .陰平)
        static let ngang2 = Info(final: .ang, initial: .ng, tone: .陰上)
        static let ngang3 = Info(final: .ang, initial: .ng, tone: .陰去)
        static let ngap1 = Info(final: .ap, initial: .ng, tone: .陰平)
        static let ngap6 = Info(final: .ap, initial: .ng, tone: .陽去)
        static let ngat1 = Info(final: .at, initial: .ng, tone: .陰平)
        static let ngat6 = Info(final: .at, initial: .ng, tone: .陽去)
        static let ngau1 = Info(final: .au, initial: .ng, tone: .陰平)
        static let ngau2 = Info(final: .au, initial: .ng, tone: .陰上)
        static let ngau3 = Info(final: .au, initial: .ng, tone: .陰去)
        static let ngau4 = Info(final: .au, initial: .ng, tone: .陽平)
        static let ngau5 = Info(final: .au, initial: .ng, tone: .陽上)
        static let ngau6 = Info(final: .au, initial: .ng, tone: .陽去)
        static let nge4 = Info(final: .e, initial: .ng, tone: .陽平)
        static let nge6 = Info(final: .e, initial: .ng, tone: .陽去)
        static let ngei1 = Info(final: .ei, initial: .ng, tone: .陰平)
        static let ngei3 = Info(final: .ei, initial: .ng, tone: .陰去)
        static let ngei6 = Info(final: .ei, initial: .ng, tone: .陽去)
        static let ngi1 = Info(final: .i, initial: .ng, tone: .陰平)
        static let ngit6 = Info(final: .it, initial: .ng, tone: .陽去)
        static let ngm2 = Info(final: .m, initial: .ng, tone: .陰上)
        static let ngm4 = Info(final: .m, initial: .ng, tone: .陽平)
        static let ngm6 = Info(final: .m, initial: .ng, tone: .陽去)
        static let ngo1 = Info(final: .o, initial: .ng, tone: .陰平)
        static let ngo2 = Info(final: .o, initial: .ng, tone: .陰上)
        static let ngo4 = Info(final: .o, initial: .ng, tone: .陽平)
        static let ngo5 = Info(final: .o, initial: .ng, tone: .陽上)
        static let ngo6 = Info(final: .o, initial: .ng, tone: .陽去)
        static let ngoi1 = Info(final: .oi, initial: .ng, tone: .陰平)
        static let ngoi2 = Info(final: .oi, initial: .ng, tone: .陰上)
        static let ngoi3 = Info(final: .oi, initial: .ng, tone: .陰去)
        static let ngoi4 = Info(final: .oi, initial: .ng, tone: .陽平)
        static let ngoi6 = Info(final: .oi, initial: .ng, tone: .陽去)
        static let ngok2 = Info(final: .ok, initial: .ng, tone: .陰上)
        static let ngok3 = Info(final: .ok, initial: .ng, tone: .陰去)
        static let ngok6 = Info(final: .ok, initial: .ng, tone: .陽去)
        static let ngon1 = Info(final: .on, initial: .ng, tone: .陰平)
        static let ngon2 = Info(final: .on, initial: .ng, tone: .陰上)
        static let ngon3 = Info(final: .on, initial: .ng, tone: .陰去)
        static let ngon4 = Info(final: .on, initial: .ng, tone: .陽平)
        static let ngon6 = Info(final: .on, initial: .ng, tone: .陽去)
        static let ngong1 = Info(final: .ong, initial: .ng, tone: .陰平)
        static let ngong2 = Info(final: .ong, initial: .ng, tone: .陰上)
        static let ngong3 = Info(final: .ong, initial: .ng, tone: .陰去)
        static let ngong4 = Info(final: .ong, initial: .ng, tone: .陽平)
        static let ngong5 = Info(final: .ong, initial: .ng, tone: .陽上)
        static let ngong6 = Info(final: .ong, initial: .ng, tone: .陽去)
        static let ngot6 = Info(final: .ot, initial: .ng, tone: .陽去)
        static let ngou1 = Info(final: .ou, initial: .ng, tone: .陰平)
        static let ngou2 = Info(final: .ou, initial: .ng, tone: .陰上)
        static let ngou3 = Info(final: .ou, initial: .ng, tone: .陰去)
        static let ngou4 = Info(final: .ou, initial: .ng, tone: .陽平)
        static let ngou6 = Info(final: .ou, initial: .ng, tone: .陽去)
        static let nguk1 = Info(final: .uk, initial: .ng, tone: .陰平)
        static let ngung1 = Info(final: .ung, initial: .ng, tone: .陰平)
        static let ngung2 = Info(final: .ung, initial: .ng, tone: .陰上)
        static let ngung3 = Info(final: .ung, initial: .ng, tone: .陰去)
        static let ni1 = Info(final: .i, initial: .n, tone: .陰平)
        static let nik1 = Info(final: .ik, initial: .n, tone: .陰平)
        static let nik6 = Info(final: .ik, initial: .n, tone: .陽去)
        static let nim1 = Info(final: .im, initial: .n, tone: .陰平)
        static let nim2 = Info(final: .im, initial: .n, tone: .陰上)
        static let nim3 = Info(final: .im, initial: .n, tone: .陰去)
        static let nim4 = Info(final: .im, initial: .n, tone: .陽平)
        static let nim5 = Info(final: .im, initial: .n, tone: .陽上)
        static let nim6 = Info(final: .im, initial: .n, tone: .陽去)
        static let nin1 = Info(final: .in, initial: .n, tone: .陰平)
        static let nin2 = Info(final: .in, initial: .n, tone: .陰上)
        static let nin4 = Info(final: .in, initial: .n, tone: .陽平)
        static let nin5 = Info(final: .in, initial: .n, tone: .陽上)
        static let nin6 = Info(final: .in, initial: .n, tone: .陽去)
        static let ning1 = Info(final: .ing, initial: .n, tone: .陰平)
        static let ning2 = Info(final: .ing, initial: .n, tone: .陰上)
        static let ning4 = Info(final: .ing, initial: .n, tone: .陽平)
        static let ning5 = Info(final: .ing, initial: .n, tone: .陽上)
        static let ning6 = Info(final: .ing, initial: .n, tone: .陽去)
        static let nip1 = Info(final: .ip, initial: .n, tone: .陰平)
        static let nip6 = Info(final: .ip, initial: .n, tone: .陽去)
        static let nit6 = Info(final: .it, initial: .n, tone: .陽去)
        static let niu1 = Info(final: .iu, initial: .n, tone: .陰平)
        static let niu2 = Info(final: .iu, initial: .n, tone: .陰上)
        static let niu5 = Info(final: .iu, initial: .n, tone: .陽上)
        static let niu6 = Info(final: .iu, initial: .n, tone: .陽去)
        static let no1 = Info(final: .o, initial: .n, tone: .陰平)
        static let no2 = Info(final: .o, initial: .n, tone: .陰上)
        static let no4 = Info(final: .o, initial: .n, tone: .陽平)
        static let no5 = Info(final: .o, initial: .n, tone: .陽上)
        static let no6 = Info(final: .o, initial: .n, tone: .陽去)
        static let noek6 = Info(final: .oek, initial: .n, tone: .陽去)
        static let noeng2 = Info(final: .oeng, initial: .n, tone: .陰上)
        static let noeng4 = Info(final: .oeng, initial: .n, tone: .陽平)
        static let noeng6 = Info(final: .oeng, initial: .n, tone: .陽去)
        static let noi1 = Info(final: .oi, initial: .n, tone: .陰平)
        static let noi2 = Info(final: .oi, initial: .n, tone: .陰上)
        static let noi4 = Info(final: .oi, initial: .n, tone: .陽平)
        static let noi5 = Info(final: .oi, initial: .n, tone: .陽上)
        static let noi6 = Info(final: .oi, initial: .n, tone: .陽去)
        static let nok6 = Info(final: .ok, initial: .n, tone: .陽去)
        static let nong1 = Info(final: .ong, initial: .n, tone: .陰平)
        static let nong2 = Info(final: .ong, initial: .n, tone: .陰上)
        static let nong4 = Info(final: .ong, initial: .n, tone: .陽平)
        static let nong5 = Info(final: .ong, initial: .n, tone: .陽上)
        static let nong6 = Info(final: .ong, initial: .n, tone: .陽去)
        static let nou4 = Info(final: .ou, initial: .n, tone: .陽平)
        static let nou5 = Info(final: .ou, initial: .n, tone: .陽上)
        static let nou6 = Info(final: .ou, initial: .n, tone: .陽去)
        static let nuk6 = Info(final: .uk, initial: .n, tone: .陽去)
        static let nung1 = Info(final: .ung, initial: .n, tone: .陰平)
        static let nung4 = Info(final: .ung, initial: .n, tone: .陽平)
        static let nung5 = Info(final: .ung, initial: .n, tone: .陽上)
        static let nung6 = Info(final: .ung, initial: .n, tone: .陽去)
        static let nyun2 = Info(final: .yun, initial: .n, tone: .陰上)
        static let nyun4 = Info(final: .yun, initial: .n, tone: .陽平)
        static let nyun5 = Info(final: .yun, initial: .n, tone: .陽上)
        static let nyun6 = Info(final: .yun, initial: .n, tone: .陽去)
        static let o1 = Info(final: .o, initial: .none, tone: .陰平)
        static let o2 = Info(final: .o, initial: .none, tone: .陰上)
        static let o4 = Info(final: .o, initial: .none, tone: .陽平)
        static let o5 = Info(final: .o, initial: .none, tone: .陽上)
        static let o6 = Info(final: .o, initial: .none, tone: .陽去)
        static let oi1 = Info(final: .oi, initial: .none, tone: .陰平)
        static let oi2 = Info(final: .oi, initial: .none, tone: .陰上)
        static let oi3 = Info(final: .oi, initial: .none, tone: .陰去)
        static let oi4 = Info(final: .oi, initial: .none, tone: .陽平)
        static let oi6 = Info(final: .oi, initial: .none, tone: .陽去)
        static let ok2 = Info(final: .ok, initial: .none, tone: .陰上)
        static let ok3 = Info(final: .ok, initial: .none, tone: .陰去)
        static let ok6 = Info(final: .ok, initial: .none, tone: .陽去)
        static let on1 = Info(final: .on, initial: .none, tone: .陰平)
        static let on2 = Info(final: .on, initial: .none, tone: .陰上)
        static let on3 = Info(final: .on, initial: .none, tone: .陰去)
        static let on4 = Info(final: .on, initial: .none, tone: .陽平)
        static let on6 = Info(final: .on, initial: .none, tone: .陽去)
        static let ong1 = Info(final: .ong, initial: .none, tone: .陰平)
        static let ong2 = Info(final: .ong, initial: .none, tone: .陰上)
        static let ong3 = Info(final: .ong, initial: .none, tone: .陰去)
        static let ong4 = Info(final: .ong, initial: .none, tone: .陽平)
        static let ong5 = Info(final: .ong, initial: .none, tone: .陽上)
        static let ong6 = Info(final: .ong, initial: .none, tone: .陽去)
        static let ot6 = Info(final: .ot, initial: .none, tone: .陽去)
        static let ou1 = Info(final: .ou, initial: .none, tone: .陰平)
        static let ou2 = Info(final: .ou, initial: .none, tone: .陰上)
        static let ou3 = Info(final: .ou, initial: .none, tone: .陰去)
        static let ou4 = Info(final: .ou, initial: .none, tone: .陽平)
        static let ou6 = Info(final: .ou, initial: .none, tone: .陽去)
        static let paa1 = Info(final: .aa, initial: .p, tone: .陰平)
        static let paa2 = Info(final: .aa, initial: .p, tone: .陰上)
        static let paa3 = Info(final: .aa, initial: .p, tone: .陰去)
        static let paa4 = Info(final: .aa, initial: .p, tone: .陽平)
        static let paai1 = Info(final: .aai, initial: .p, tone: .陰平)
        static let paai2 = Info(final: .aai, initial: .p, tone: .陰上)
        static let paai3 = Info(final: .aai, initial: .p, tone: .陰去)
        static let paai4 = Info(final: .aai, initial: .p, tone: .陽平)
        static let paak1 = Info(final: .aak, initial: .p, tone: .陰平)
        static let paak2 = Info(final: .aak, initial: .p, tone: .陰上)
        static let paak3 = Info(final: .aak, initial: .p, tone: .陰去)
        static let paak4 = Info(final: .aak, initial: .p, tone: .陽平)
        static let paak6 = Info(final: .aak, initial: .p, tone: .陽去)
        static let paan1 = Info(final: .aan, initial: .p, tone: .陰平)
        static let paan3 = Info(final: .aan, initial: .p, tone: .陰去)
        static let paang1 = Info(final: .aang, initial: .p, tone: .陰平)
        static let paang2 = Info(final: .aang, initial: .p, tone: .陰上)
        static let paang4 = Info(final: .aang, initial: .p, tone: .陽平)
        static let paang5 = Info(final: .aang, initial: .p, tone: .陽上)
        static let paang6 = Info(final: .aang, initial: .p, tone: .陽去)
        static let paat1 = Info(final: .aat, initial: .p, tone: .陰平)
        static let paat3 = Info(final: .aat, initial: .p, tone: .陰去)
        static let paat6 = Info(final: .aat, initial: .p, tone: .陽去)
        static let paau1 = Info(final: .aau, initial: .p, tone: .陰平)
        static let paau2 = Info(final: .aau, initial: .p, tone: .陰上)
        static let paau3 = Info(final: .aau, initial: .p, tone: .陰去)
        static let paau4 = Info(final: .aau, initial: .p, tone: .陽平)
        static let pai1 = Info(final: .ai, initial: .p, tone: .陰平)
        static let pai2 = Info(final: .ai, initial: .p, tone: .陰上)
        static let pai3 = Info(final: .ai, initial: .p, tone: .陰去)
        static let pai5 = Info(final: .ai, initial: .p, tone: .陽上)
        static let pai6 = Info(final: .ai, initial: .p, tone: .陽去)
        static let pan1 = Info(final: .an, initial: .p, tone: .陰平)
        static let pan3 = Info(final: .an, initial: .p, tone: .陰去)
        static let pan4 = Info(final: .an, initial: .p, tone: .陽平)
        static let pan5 = Info(final: .an, initial: .p, tone: .陽上)
        static let pang2 = Info(final: .ang, initial: .p, tone: .陰上)
        static let pang3 = Info(final: .ang, initial: .p, tone: .陰去)
        static let pang4 = Info(final: .ang, initial: .p, tone: .陽平)
        static let pat1 = Info(final: .at, initial: .p, tone: .陰平)
        static let pat6 = Info(final: .at, initial: .p, tone: .陽去)
        static let pau1 = Info(final: .au, initial: .p, tone: .陰平)
        static let pau2 = Info(final: .au, initial: .p, tone: .陰上)
        static let pau3 = Info(final: .au, initial: .p, tone: .陰去)
        static let pau4 = Info(final: .au, initial: .p, tone: .陽平)
        static let pe1 = Info(final: .e, initial: .p, tone: .陰平)
        static let pe5 = Info(final: .e, initial: .p, tone: .陽上)
        static let pei1 = Info(final: .ei, initial: .p, tone: .陰平)
        static let pei2 = Info(final: .ei, initial: .p, tone: .陰上)
        static let pei3 = Info(final: .ei, initial: .p, tone: .陰去)
        static let pei4 = Info(final: .ei, initial: .p, tone: .陽平)
        static let pei5 = Info(final: .ei, initial: .p, tone: .陽上)
        static let pei6 = Info(final: .ei, initial: .p, tone: .陽去)
        static let pek1 = Info(final: .ek, initial: .p, tone: .陰平)
        static let pek3 = Info(final: .ek, initial: .p, tone: .陰去)
        static let pek6 = Info(final: .ek, initial: .p, tone: .陽去)
        static let pen1 = Info(final: .en, initial: .p, tone: .陰平)
        static let peng1 = Info(final: .eng, initial: .p, tone: .陰平)
        static let peng2 = Info(final: .eng, initial: .p, tone: .陰上)
        static let peng4 = Info(final: .eng, initial: .p, tone: .陽平)
        static let pet1 = Info(final: .et, initial: .p, tone: .陰平)
        static let pet6 = Info(final: .et, initial: .p, tone: .陽去)
        static let pi1 = Info(final: .i, initial: .p, tone: .陰平)
        static let pik1 = Info(final: .ik, initial: .p, tone: .陰平)
        static let pin1 = Info(final: .in, initial: .p, tone: .陰平)
        static let pin2 = Info(final: .in, initial: .p, tone: .陰上)
        static let pin3 = Info(final: .in, initial: .p, tone: .陰去)
        static let pin4 = Info(final: .in, initial: .p, tone: .陽平)
        static let pin5 = Info(final: .in, initial: .p, tone: .陽上)
        static let ping1 = Info(final: .ing, initial: .p, tone: .陰平)
        static let ping2 = Info(final: .ing, initial: .p, tone: .陰上)
        static let ping3 = Info(final: .ing, initial: .p, tone: .陰去)
        static let ping4 = Info(final: .ing, initial: .p, tone: .陽平)
        static let pit3 = Info(final: .it, initial: .p, tone: .陰去)
        static let piu1 = Info(final: .iu, initial: .p, tone: .陰平)
        static let piu2 = Info(final: .iu, initial: .p, tone: .陰上)
        static let piu3 = Info(final: .iu, initial: .p, tone: .陰去)
        static let piu4 = Info(final: .iu, initial: .p, tone: .陽平)
        static let piu5 = Info(final: .iu, initial: .p, tone: .陽上)
        static let po1 = Info(final: .o, initial: .p, tone: .陰平)
        static let po2 = Info(final: .o, initial: .p, tone: .陰上)
        static let po3 = Info(final: .o, initial: .p, tone: .陰去)
        static let po4 = Info(final: .o, initial: .p, tone: .陽平)
        static let pok1 = Info(final: .ok, initial: .p, tone: .陰平)
        static let pok2 = Info(final: .ok, initial: .p, tone: .陰上)
        static let pok3 = Info(final: .ok, initial: .p, tone: .陰去)
        static let pong1 = Info(final: .ong, initial: .p, tone: .陰平)
        static let pong2 = Info(final: .ong, initial: .p, tone: .陰上)
        static let pong3 = Info(final: .ong, initial: .p, tone: .陰去)
        static let pong4 = Info(final: .ong, initial: .p, tone: .陽平)
        static let pong5 = Info(final: .ong, initial: .p, tone: .陽上)
        static let pot1 = Info(final: .ot, initial: .p, tone: .陰平)
        static let pou1 = Info(final: .ou, initial: .p, tone: .陰平)
        static let pou2 = Info(final: .ou, initial: .p, tone: .陰上)
        static let pou3 = Info(final: .ou, initial: .p, tone: .陰去)
        static let pou4 = Info(final: .ou, initial: .p, tone: .陽平)
        static let pou5 = Info(final: .ou, initial: .p, tone: .陽上)
        static let pou6 = Info(final: .ou, initial: .p, tone: .陽去)
        static let pui1 = Info(final: .ui, initial: .p, tone: .陰平)
        static let pui2 = Info(final: .ui, initial: .p, tone: .陰上)
        static let pui3 = Info(final: .ui, initial: .p, tone: .陰去)
        static let pui4 = Info(final: .ui, initial: .p, tone: .陽平)
        static let pui5 = Info(final: .ui, initial: .p, tone: .陽上)
        static let pui6 = Info(final: .ui, initial: .p, tone: .陽去)
        static let puk1 = Info(final: .uk, initial: .p, tone: .陰平)
        static let puk3 = Info(final: .uk, initial: .p, tone: .陰去)
        static let puk6 = Info(final: .uk, initial: .p, tone: .陽去)
        static let pun1 = Info(final: .un, initial: .p, tone: .陰平)
        static let pun2 = Info(final: .un, initial: .p, tone: .陰上)
        static let pun3 = Info(final: .un, initial: .p, tone: .陰去)
        static let pun4 = Info(final: .un, initial: .p, tone: .陽平)
        static let pun5 = Info(final: .un, initial: .p, tone: .陽上)
        static let pun6 = Info(final: .un, initial: .p, tone: .陽去)
        static let pung1 = Info(final: .ung, initial: .p, tone: .陰平)
        static let pung2 = Info(final: .ung, initial: .p, tone: .陰上)
        static let pung3 = Info(final: .ung, initial: .p, tone: .陰去)
        static let pung4 = Info(final: .ung, initial: .p, tone: .陽平)
        static let put3 = Info(final: .ut, initial: .p, tone: .陰去)
        static let put6 = Info(final: .ut, initial: .p, tone: .陽去)
        static let saa1 = Info(final: .aa, initial: .s, tone: .陰平)
        static let saa2 = Info(final: .aa, initial: .s, tone: .陰上)
        static let saa3 = Info(final: .aa, initial: .s, tone: .陰去)
        static let saa4 = Info(final: .aa, initial: .s, tone: .陽平)
        static let saai1 = Info(final: .aai, initial: .s, tone: .陰平)
        static let saai2 = Info(final: .aai, initial: .s, tone: .陰上)
        static let saai3 = Info(final: .aai, initial: .s, tone: .陰去)
        static let saai4 = Info(final: .aai, initial: .s, tone: .陽平)
        static let saai5 = Info(final: .aai, initial: .s, tone: .陽上)
        static let saak3 = Info(final: .aak, initial: .s, tone: .陰去)
        static let saam1 = Info(final: .aam, initial: .s, tone: .陰平)
        static let saam2 = Info(final: .aam, initial: .s, tone: .陰上)
        static let saam3 = Info(final: .aam, initial: .s, tone: .陰去)
        static let saam4 = Info(final: .aam, initial: .s, tone: .陽平)
        static let saan1 = Info(final: .aan, initial: .s, tone: .陰平)
        static let saan2 = Info(final: .aan, initial: .s, tone: .陰上)
        static let saan3 = Info(final: .aan, initial: .s, tone: .陰去)
        static let saan4 = Info(final: .aan, initial: .s, tone: .陽平)
        static let saang1 = Info(final: .aang, initial: .s, tone: .陰平)
        static let saang2 = Info(final: .aang, initial: .s, tone: .陰上)
        static let saap1 = Info(final: .aap, initial: .s, tone: .陰平)
        static let saap3 = Info(final: .aap, initial: .s, tone: .陰去)
        static let saap6 = Info(final: .aap, initial: .s, tone: .陽去)
        static let saat2 = Info(final: .aat, initial: .s, tone: .陰上)
        static let saat3 = Info(final: .aat, initial: .s, tone: .陰去)
        static let saau1 = Info(final: .aau, initial: .s, tone: .陰平)
        static let saau2 = Info(final: .aau, initial: .s, tone: .陰上)
        static let saau3 = Info(final: .aau, initial: .s, tone: .陰去)
        static let saau4 = Info(final: .aau, initial: .s, tone: .陽平)
        static let sai1 = Info(final: .ai, initial: .s, tone: .陰平)
        static let sai2 = Info(final: .ai, initial: .s, tone: .陰上)
        static let sai3 = Info(final: .ai, initial: .s, tone: .陰去)
        static let sai4 = Info(final: .ai, initial: .s, tone: .陽平)
        static let sai6 = Info(final: .ai, initial: .s, tone: .陽去)
        static let sak1 = Info(final: .ak, initial: .s, tone: .陰平)
        static let sam1 = Info(final: .am, initial: .s, tone: .陰平)
        static let sam2 = Info(final: .am, initial: .s, tone: .陰上)
        static let sam3 = Info(final: .am, initial: .s, tone: .陰去)
        static let sam4 = Info(final: .am, initial: .s, tone: .陽平)
        static let sam6 = Info(final: .am, initial: .s, tone: .陽去)
        static let san1 = Info(final: .an, initial: .s, tone: .陰平)
        static let san2 = Info(final: .an, initial: .s, tone: .陰上)
        static let san3 = Info(final: .an, initial: .s, tone: .陰去)
        static let san4 = Info(final: .an, initial: .s, tone: .陽平)
        static let san5 = Info(final: .an, initial: .s, tone: .陽上)
        static let san6 = Info(final: .an, initial: .s, tone: .陽去)
        static let sang1 = Info(final: .ang, initial: .s, tone: .陰平)
        static let sang3 = Info(final: .ang, initial: .s, tone: .陰去)
        static let sap1 = Info(final: .ap, initial: .s, tone: .陰平)
        static let sap6 = Info(final: .ap, initial: .s, tone: .陽去)
        static let sat1 = Info(final: .at, initial: .s, tone: .陰平)
        static let sat6 = Info(final: .at, initial: .s, tone: .陽去)
        static let sau1 = Info(final: .au, initial: .s, tone: .陰平)
        static let sau2 = Info(final: .au, initial: .s, tone: .陰上)
        static let sau3 = Info(final: .au, initial: .s, tone: .陰去)
        static let sau4 = Info(final: .au, initial: .s, tone: .陽平)
        static let sau6 = Info(final: .au, initial: .s, tone: .陽去)
        static let se1 = Info(final: .e, initial: .s, tone: .陰平)
        static let se2 = Info(final: .e, initial: .s, tone: .陰上)
        static let se3 = Info(final: .e, initial: .s, tone: .陰去)
        static let se4 = Info(final: .e, initial: .s, tone: .陽平)
        static let se5 = Info(final: .e, initial: .s, tone: .陽上)
        static let se6 = Info(final: .e, initial: .s, tone: .陽去)
        static let sei2 = Info(final: .ei, initial: .s, tone: .陰上)
        static let sei3 = Info(final: .ei, initial: .s, tone: .陰去)
        static let sek2 = Info(final: .ek, initial: .s, tone: .陰上)
        static let sek3 = Info(final: .ek, initial: .s, tone: .陰去)
        static let sek6 = Info(final: .ek, initial: .s, tone: .陽去)
        static let sen1 = Info(final: .en, initial: .s, tone: .陰平)
        static let seng1 = Info(final: .eng, initial: .s, tone: .陰平)
        static let seng2 = Info(final: .eng, initial: .s, tone: .陰上)
        static let seng3 = Info(final: .eng, initial: .s, tone: .陰去)
        static let seng4 = Info(final: .eng, initial: .s, tone: .陽平)
        static let seoi1 = Info(final: .eoi, initial: .s, tone: .陰平)
        static let seoi2 = Info(final: .eoi, initial: .s, tone: .陰上)
        static let seoi3 = Info(final: .eoi, initial: .s, tone: .陰去)
        static let seoi4 = Info(final: .eoi, initial: .s, tone: .陽平)
        static let seoi5 = Info(final: .eoi, initial: .s, tone: .陽上)
        static let seoi6 = Info(final: .eoi, initial: .s, tone: .陽去)
        static let seon1 = Info(final: .eon, initial: .s, tone: .陰平)
        static let seon2 = Info(final: .eon, initial: .s, tone: .陰上)
        static let seon3 = Info(final: .eon, initial: .s, tone: .陰去)
        static let seon4 = Info(final: .eon, initial: .s, tone: .陽平)
        static let seon5 = Info(final: .eon, initial: .s, tone: .陽上)
        static let seon6 = Info(final: .eon, initial: .s, tone: .陽去)
        static let seot1 = Info(final: .eot, initial: .s, tone: .陰平)
        static let seot2 = Info(final: .eot, initial: .s, tone: .陰上)
        static let seot6 = Info(final: .eot, initial: .s, tone: .陽去)
        static let set1 = Info(final: .et, initial: .s, tone: .陰平)
        static let seu1 = Info(final: .eu, initial: .s, tone: .陰平)
        static let si1 = Info(final: .i, initial: .s, tone: .陰平)
        static let si2 = Info(final: .i, initial: .s, tone: .陰上)
        static let si3 = Info(final: .i, initial: .s, tone: .陰去)
        static let si4 = Info(final: .i, initial: .s, tone: .陽平)
        static let si5 = Info(final: .i, initial: .s, tone: .陽上)
        static let si6 = Info(final: .i, initial: .s, tone: .陽去)
        static let sik1 = Info(final: .ik, initial: .s, tone: .陰平)
        static let sik2 = Info(final: .ik, initial: .s, tone: .陰上)
        static let sik3 = Info(final: .ik, initial: .s, tone: .陰去)
        static let sik6 = Info(final: .ik, initial: .s, tone: .陽去)
        static let sim1 = Info(final: .im, initial: .s, tone: .陰平)
        static let sim2 = Info(final: .im, initial: .s, tone: .陰上)
        static let sim3 = Info(final: .im, initial: .s, tone: .陰去)
        static let sim4 = Info(final: .im, initial: .s, tone: .陽平)
        static let sim6 = Info(final: .im, initial: .s, tone: .陽去)
        static let sin1 = Info(final: .in, initial: .s, tone: .陰平)
        static let sin2 = Info(final: .in, initial: .s, tone: .陰上)
        static let sin3 = Info(final: .in, initial: .s, tone: .陰去)
        static let sin4 = Info(final: .in, initial: .s, tone: .陽平)
        static let sin5 = Info(final: .in, initial: .s, tone: .陽上)
        static let sin6 = Info(final: .in, initial: .s, tone: .陽去)
        static let sing1 = Info(final: .ing, initial: .s, tone: .陰平)
        static let sing2 = Info(final: .ing, initial: .s, tone: .陰上)
        static let sing3 = Info(final: .ing, initial: .s, tone: .陰去)
        static let sing4 = Info(final: .ing, initial: .s, tone: .陽平)
        static let sing6 = Info(final: .ing, initial: .s, tone: .陽去)
        static let sip3 = Info(final: .ip, initial: .s, tone: .陰去)
        static let sit3 = Info(final: .it, initial: .s, tone: .陰去)
        static let sit6 = Info(final: .it, initial: .s, tone: .陽去)
        static let siu1 = Info(final: .iu, initial: .s, tone: .陰平)
        static let siu2 = Info(final: .iu, initial: .s, tone: .陰上)
        static let siu3 = Info(final: .iu, initial: .s, tone: .陰去)
        static let siu4 = Info(final: .iu, initial: .s, tone: .陽平)
        static let siu6 = Info(final: .iu, initial: .s, tone: .陽去)
        static let so1 = Info(final: .o, initial: .s, tone: .陰平)
        static let so2 = Info(final: .o, initial: .s, tone: .陰上)
        static let so3 = Info(final: .o, initial: .s, tone: .陰去)
        static let so4 = Info(final: .o, initial: .s, tone: .陽平)
        static let soe4 = Info(final: .oe, initial: .s, tone: .陽平)
        static let soek3 = Info(final: .oek, initial: .s, tone: .陰去)
        static let soeng1 = Info(final: .oeng, initial: .s, tone: .陰平)
        static let soeng2 = Info(final: .oeng, initial: .s, tone: .陰上)
        static let soeng3 = Info(final: .oeng, initial: .s, tone: .陰去)
        static let soeng4 = Info(final: .oeng, initial: .s, tone: .陽平)
        static let soeng5 = Info(final: .oeng, initial: .s, tone: .陽上)
        static let soeng6 = Info(final: .oeng, initial: .s, tone: .陽去)
        static let soi1 = Info(final: .oi, initial: .s, tone: .陰平)
        static let soi2 = Info(final: .oi, initial: .s, tone: .陰上)
        static let sok1 = Info(final: .ok, initial: .s, tone: .陰平)
        static let sok3 = Info(final: .ok, initial: .s, tone: .陰去)
        static let song1 = Info(final: .ong, initial: .s, tone: .陰平)
        static let song2 = Info(final: .ong, initial: .s, tone: .陰上)
        static let song3 = Info(final: .ong, initial: .s, tone: .陰去)
        static let sot1 = Info(final: .ot, initial: .s, tone: .陰平)
        static let sou1 = Info(final: .ou, initial: .s, tone: .陰平)
        static let sou2 = Info(final: .ou, initial: .s, tone: .陰上)
        static let sou3 = Info(final: .ou, initial: .s, tone: .陰去)
        static let sou4 = Info(final: .ou, initial: .s, tone: .陽平)
        static let su4 = Info(final: .u, initial: .s, tone: .陽平)
        static let suk1 = Info(final: .uk, initial: .s, tone: .陰平)
        static let suk3 = Info(final: .uk, initial: .s, tone: .陰去)
        static let suk6 = Info(final: .uk, initial: .s, tone: .陽去)
        static let sung1 = Info(final: .ung, initial: .s, tone: .陰平)
        static let sung2 = Info(final: .ung, initial: .s, tone: .陰上)
        static let sung3 = Info(final: .ung, initial: .s, tone: .陰去)
        static let sung4 = Info(final: .ung, initial: .s, tone: .陽平)
        static let syu1 = Info(final: .yu, initial: .s, tone: .陰平)
        static let syu2 = Info(final: .yu, initial: .s, tone: .陰上)
        static let syu3 = Info(final: .yu, initial: .s, tone: .陰去)
        static let syu4 = Info(final: .yu, initial: .s, tone: .陽平)
        static let syu5 = Info(final: .yu, initial: .s, tone: .陽上)
        static let syu6 = Info(final: .yu, initial: .s, tone: .陽去)
        static let syun1 = Info(final: .yun, initial: .s, tone: .陰平)
        static let syun2 = Info(final: .yun, initial: .s, tone: .陰上)
        static let syun3 = Info(final: .yun, initial: .s, tone: .陰去)
        static let syun4 = Info(final: .yun, initial: .s, tone: .陽平)
        static let syun5 = Info(final: .yun, initial: .s, tone: .陽上)
        static let syun6 = Info(final: .yun, initial: .s, tone: .陽去)
        static let syut1 = Info(final: .yut, initial: .s, tone: .陰平)
        static let syut3 = Info(final: .yut, initial: .s, tone: .陰去)
        static let taa1 = Info(final: .aa, initial: .t, tone: .陰平)
        static let taai1 = Info(final: .aai, initial: .t, tone: .陰平)
        static let taai2 = Info(final: .aai, initial: .t, tone: .陰上)
        static let taai3 = Info(final: .aai, initial: .t, tone: .陰去)
        static let taai5 = Info(final: .aai, initial: .t, tone: .陽上)
        static let taam1 = Info(final: .aam, initial: .t, tone: .陰平)
        static let taam2 = Info(final: .aam, initial: .t, tone: .陰上)
        static let taam3 = Info(final: .aam, initial: .t, tone: .陰去)
        static let taam4 = Info(final: .aam, initial: .t, tone: .陽平)
        static let taam5 = Info(final: .aam, initial: .t, tone: .陽上)
        static let taan1 = Info(final: .aan, initial: .t, tone: .陰平)
        static let taan2 = Info(final: .aan, initial: .t, tone: .陰上)
        static let taan3 = Info(final: .aan, initial: .t, tone: .陰去)
        static let taan4 = Info(final: .aan, initial: .t, tone: .陽平)
        static let taap1 = Info(final: .aap, initial: .t, tone: .陰平)
        static let taap2 = Info(final: .aap, initial: .t, tone: .陰上)
        static let taap3 = Info(final: .aap, initial: .t, tone: .陰去)
        static let taat1 = Info(final: .aat, initial: .t, tone: .陰平)
        static let taat3 = Info(final: .aat, initial: .t, tone: .陰去)
        static let taat6 = Info(final: .aat, initial: .t, tone: .陽去)
        static let tai1 = Info(final: .ai, initial: .t, tone: .陰平)
        static let tai2 = Info(final: .ai, initial: .t, tone: .陰上)
        static let tai3 = Info(final: .ai, initial: .t, tone: .陰去)
        static let tai4 = Info(final: .ai, initial: .t, tone: .陽平)
        static let tai5 = Info(final: .ai, initial: .t, tone: .陽上)
        static let tam2 = Info(final: .am, initial: .t, tone: .陰上)
        static let tam3 = Info(final: .am, initial: .t, tone: .陰去)
        static let tam4 = Info(final: .am, initial: .t, tone: .陽平)
        static let tam5 = Info(final: .am, initial: .t, tone: .陽上)
        static let tan1 = Info(final: .an, initial: .t, tone: .陰平)
        static let tan2 = Info(final: .an, initial: .t, tone: .陰上)
        static let tan3 = Info(final: .an, initial: .t, tone: .陰去)
        static let tan4 = Info(final: .an, initial: .t, tone: .陽平)
        static let tang1 = Info(final: .ang, initial: .t, tone: .陰平)
        static let tang3 = Info(final: .ang, initial: .t, tone: .陰去)
        static let tang4 = Info(final: .ang, initial: .t, tone: .陽平)
        static let tap1 = Info(final: .ap, initial: .t, tone: .陰平)
        static let tau1 = Info(final: .au, initial: .t, tone: .陰平)
        static let tau2 = Info(final: .au, initial: .t, tone: .陰上)
        static let tau3 = Info(final: .au, initial: .t, tone: .陰去)
        static let tau4 = Info(final: .au, initial: .t, tone: .陽平)
        static let tek3 = Info(final: .ek, initial: .t, tone: .陰去)
        static let teng1 = Info(final: .eng, initial: .t, tone: .陰平)
        static let teng5 = Info(final: .eng, initial: .t, tone: .陽上)
        static let teoi1 = Info(final: .eoi, initial: .t, tone: .陰平)
        static let teoi2 = Info(final: .eoi, initial: .t, tone: .陰上)
        static let teoi3 = Info(final: .eoi, initial: .t, tone: .陰去)
        static let teoi4 = Info(final: .eoi, initial: .t, tone: .陽平)
        static let teon1 = Info(final: .eon, initial: .t, tone: .陰平)
        static let teon2 = Info(final: .eon, initial: .t, tone: .陰上)
        static let teon3 = Info(final: .eon, initial: .t, tone: .陰去)
        static let teon5 = Info(final: .eon, initial: .t, tone: .陽上)
        static let teot1 = Info(final: .eot, initial: .t, tone: .陰平)
        static let teu4 = Info(final: .eu, initial: .t, tone: .陽平)
        static let ti1 = Info(final: .i, initial: .t, tone: .陰平)
        static let ti4 = Info(final: .i, initial: .t, tone: .陽平)
        static let tik1 = Info(final: .ik, initial: .t, tone: .陰平)
        static let tim1 = Info(final: .im, initial: .t, tone: .陰平)
        static let tim2 = Info(final: .im, initial: .t, tone: .陰上)
        static let tim3 = Info(final: .im, initial: .t, tone: .陰去)
        static let tim4 = Info(final: .im, initial: .t, tone: .陽平)
        static let tim5 = Info(final: .im, initial: .t, tone: .陽上)
        static let tin1 = Info(final: .in, initial: .t, tone: .陰平)
        static let tin2 = Info(final: .in, initial: .t, tone: .陰上)
        static let tin3 = Info(final: .in, initial: .t, tone: .陰去)
        static let tin4 = Info(final: .in, initial: .t, tone: .陽平)
        static let tin5 = Info(final: .in, initial: .t, tone: .陽上)
        static let ting1 = Info(final: .ing, initial: .t, tone: .陰平)
        static let ting2 = Info(final: .ing, initial: .t, tone: .陰上)
        static let ting3 = Info(final: .ing, initial: .t, tone: .陰去)
        static let ting4 = Info(final: .ing, initial: .t, tone: .陽平)
        static let ting5 = Info(final: .ing, initial: .t, tone: .陽上)
        static let ting6 = Info(final: .ing, initial: .t, tone: .陽去)
        static let tip1 = Info(final: .ip, initial: .t, tone: .陰平)
        static let tip2 = Info(final: .ip, initial: .t, tone: .陰上)
        static let tip3 = Info(final: .ip, initial: .t, tone: .陰去)
        static let tit3 = Info(final: .it, initial: .t, tone: .陰去)
        static let tiu1 = Info(final: .iu, initial: .t, tone: .陰平)
        static let tiu2 = Info(final: .iu, initial: .t, tone: .陰上)
        static let tiu3 = Info(final: .iu, initial: .t, tone: .陰去)
        static let tiu4 = Info(final: .iu, initial: .t, tone: .陽平)
        static let tiu5 = Info(final: .iu, initial: .t, tone: .陽上)
        static let to1 = Info(final: .o, initial: .t, tone: .陰平)
        static let to2 = Info(final: .o, initial: .t, tone: .陰上)
        static let to3 = Info(final: .o, initial: .t, tone: .陰去)
        static let to4 = Info(final: .o, initial: .t, tone: .陽平)
        static let to5 = Info(final: .o, initial: .t, tone: .陽上)
        static let toe3 = Info(final: .oe, initial: .t, tone: .陰去)
        static let toe5 = Info(final: .oe, initial: .t, tone: .陽上)
        static let toi1 = Info(final: .oi, initial: .t, tone: .陰平)
        static let toi2 = Info(final: .oi, initial: .t, tone: .陰上)
        static let toi4 = Info(final: .oi, initial: .t, tone: .陽平)
        static let toi5 = Info(final: .oi, initial: .t, tone: .陽上)
        static let tok1 = Info(final: .ok, initial: .t, tone: .陰平)
        static let tok2 = Info(final: .ok, initial: .t, tone: .陰上)
        static let tok3 = Info(final: .ok, initial: .t, tone: .陰去)
        static let tong1 = Info(final: .ong, initial: .t, tone: .陰平)
        static let tong2 = Info(final: .ong, initial: .t, tone: .陰上)
        static let tong3 = Info(final: .ong, initial: .t, tone: .陰去)
        static let tong4 = Info(final: .ong, initial: .t, tone: .陽平)
        static let tong5 = Info(final: .ong, initial: .t, tone: .陽上)
        static let tou1 = Info(final: .ou, initial: .t, tone: .陰平)
        static let tou2 = Info(final: .ou, initial: .t, tone: .陰上)
        static let tou3 = Info(final: .ou, initial: .t, tone: .陰去)
        static let tou4 = Info(final: .ou, initial: .t, tone: .陽平)
        static let tou5 = Info(final: .ou, initial: .t, tone: .陽上)
        static let tuk1 = Info(final: .uk, initial: .t, tone: .陰平)
        static let tung1 = Info(final: .ung, initial: .t, tone: .陰平)
        static let tung2 = Info(final: .ung, initial: .t, tone: .陰上)
        static let tung3 = Info(final: .ung, initial: .t, tone: .陰去)
        static let tung4 = Info(final: .ung, initial: .t, tone: .陽平)
        static let tyun1 = Info(final: .yun, initial: .t, tone: .陰平)
        static let tyun2 = Info(final: .yun, initial: .t, tone: .陰上)
        static let tyun4 = Info(final: .yun, initial: .t, tone: .陽平)
        static let tyun5 = Info(final: .yun, initial: .t, tone: .陽上)
        static let tyut1 = Info(final: .yut, initial: .t, tone: .陰平)
        static let tyut3 = Info(final: .yut, initial: .t, tone: .陰去)
        static let uk1 = Info(final: .uk, initial: .none, tone: .陰平)
        static let ung1 = Info(final: .ung, initial: .none, tone: .陰平)
        static let ung2 = Info(final: .ung, initial: .none, tone: .陰上)
        static let ung3 = Info(final: .ung, initial: .none, tone: .陰去)
        static let waa1 = Info(final: .aa, initial: .w, tone: .陰平)
        static let waa2 = Info(final: .aa, initial: .w, tone: .陰上)
        static let waa4 = Info(final: .aa, initial: .w, tone: .陽平)
        static let waa5 = Info(final: .aa, initial: .w, tone: .陽上)
        static let waa6 = Info(final: .aa, initial: .w, tone: .陽去)
        static let waai1 = Info(final: .aai, initial: .w, tone: .陰平)
        static let waai2 = Info(final: .aai, initial: .w, tone: .陰上)
        static let waai4 = Info(final: .aai, initial: .w, tone: .陽平)
        static let waai6 = Info(final: .aai, initial: .w, tone: .陽去)
        static let waak1 = Info(final: .aak, initial: .w, tone: .陰平)
        static let waak2 = Info(final: .aak, initial: .w, tone: .陰上)
        static let waak6 = Info(final: .aak, initial: .w, tone: .陽去)
        static let waan1 = Info(final: .aan, initial: .w, tone: .陰平)
        static let waan2 = Info(final: .aan, initial: .w, tone: .陰上)
        static let waan4 = Info(final: .aan, initial: .w, tone: .陽平)
        static let waan5 = Info(final: .aan, initial: .w, tone: .陽上)
        static let waan6 = Info(final: .aan, initial: .w, tone: .陽去)
        static let waang1 = Info(final: .aang, initial: .w, tone: .陰平)
        static let waang4 = Info(final: .aang, initial: .w, tone: .陽平)
        static let waang6 = Info(final: .aang, initial: .w, tone: .陽去)
        static let waat2 = Info(final: .aat, initial: .w, tone: .陰上)
        static let waat3 = Info(final: .aat, initial: .w, tone: .陰去)
        static let waat6 = Info(final: .aat, initial: .w, tone: .陽去)
        static let wai1 = Info(final: .ai, initial: .w, tone: .陰平)
        static let wai2 = Info(final: .ai, initial: .w, tone: .陰上)
        static let wai3 = Info(final: .ai, initial: .w, tone: .陰去)
        static let wai4 = Info(final: .ai, initial: .w, tone: .陽平)
        static let wai5 = Info(final: .ai, initial: .w, tone: .陽上)
        static let wai6 = Info(final: .ai, initial: .w, tone: .陽去)
        static let wak6 = Info(final: .ak, initial: .w, tone: .陽去)
        static let wan1 = Info(final: .an, initial: .w, tone: .陰平)
        static let wan2 = Info(final: .an, initial: .w, tone: .陰上)
        static let wan3 = Info(final: .an, initial: .w, tone: .陰去)
        static let wan4 = Info(final: .an, initial: .w, tone: .陽平)
        static let wan5 = Info(final: .an, initial: .w, tone: .陽上)
        static let wan6 = Info(final: .an, initial: .w, tone: .陽去)
        static let wang2 = Info(final: .ang, initial: .w, tone: .陰上)
        static let wang4 = Info(final: .ang, initial: .w, tone: .陽平)
        static let wang6 = Info(final: .ang, initial: .w, tone: .陽去)
        static let wat1 = Info(final: .at, initial: .w, tone: .陰平)
        static let wat2 = Info(final: .at, initial: .w, tone: .陰上)
        static let wat6 = Info(final: .at, initial: .w, tone: .陽去)
        static let we2 = Info(final: .e, initial: .w, tone: .陰上)
        static let we5 = Info(final: .e, initial: .w, tone: .陽上)
        static let wen1 = Info(final: .en, initial: .w, tone: .陰平)
        static let wet1 = Info(final: .et, initial: .w, tone: .陰平)
        static let wi1 = Info(final: .i, initial: .w, tone: .陰平)
        static let wik6 = Info(final: .ik, initial: .w, tone: .陽去)
        static let wing1 = Info(final: .ing, initial: .w, tone: .陰平)
        static let wing4 = Info(final: .ing, initial: .w, tone: .陽平)
        static let wing5 = Info(final: .ing, initial: .w, tone: .陽上)
        static let wing6 = Info(final: .ing, initial: .w, tone: .陽去)
        static let wo1 = Info(final: .o, initial: .w, tone: .陰平)
        static let wo2 = Info(final: .o, initial: .w, tone: .陰上)
        static let wo3 = Info(final: .o, initial: .w, tone: .陰去)
        static let wo4 = Info(final: .o, initial: .w, tone: .陽平)
        static let wo5 = Info(final: .o, initial: .w, tone: .陽上)
        static let wo6 = Info(final: .o, initial: .w, tone: .陽去)
        static let woek1 = Info(final: .oek, initial: .w, tone: .陰平)
        static let wok1 = Info(final: .ok, initial: .w, tone: .陰平)
        static let wok2 = Info(final: .ok, initial: .w, tone: .陰上)
        static let wok3 = Info(final: .ok, initial: .w, tone: .陰去)
        static let wok6 = Info(final: .ok, initial: .w, tone: .陽去)
        static let wong1 = Info(final: .ong, initial: .w, tone: .陰平)
        static let wong2 = Info(final: .ong, initial: .w, tone: .陰上)
        static let wong4 = Info(final: .ong, initial: .w, tone: .陽平)
        static let wong5 = Info(final: .ong, initial: .w, tone: .陽上)
        static let wong6 = Info(final: .ong, initial: .w, tone: .陽去)
        static let wu1 = Info(final: .u, initial: .w, tone: .陰平)
        static let wu2 = Info(final: .u, initial: .w, tone: .陰上)
        static let wu3 = Info(final: .u, initial: .w, tone: .陰去)
        static let wu4 = Info(final: .u, initial: .w, tone: .陽平)
        static let wu6 = Info(final: .u, initial: .w, tone: .陽去)
        static let wui1 = Info(final: .ui, initial: .w, tone: .陰平)
        static let wui2 = Info(final: .ui, initial: .w, tone: .陰上)
        static let wui3 = Info(final: .ui, initial: .w, tone: .陰去)
        static let wui4 = Info(final: .ui, initial: .w, tone: .陽平)
        static let wui5 = Info(final: .ui, initial: .w, tone: .陽上)
        static let wui6 = Info(final: .ui, initial: .w, tone: .陽去)
        static let wun1 = Info(final: .un, initial: .w, tone: .陰平)
        static let wun2 = Info(final: .un, initial: .w, tone: .陰上)
        static let wun3 = Info(final: .un, initial: .w, tone: .陰去)
        static let wun4 = Info(final: .un, initial: .w, tone: .陽平)
        static let wun5 = Info(final: .un, initial: .w, tone: .陽上)
        static let wun6 = Info(final: .un, initial: .w, tone: .陽去)
        static let wut6 = Info(final: .ut, initial: .w, tone: .陽去)
        static let zaa1 = Info(final: .aa, initial: .z, tone: .陰平)
        static let zaa2 = Info(final: .aa, initial: .z, tone: .陰上)
        static let zaa3 = Info(final: .aa, initial: .z, tone: .陰去)
        static let zaa6 = Info(final: .aa, initial: .z, tone: .陽去)
        static let zaai1 = Info(final: .aai, initial: .z, tone: .陰平)
        static let zaai2 = Info(final: .aai, initial: .z, tone: .陰上)
        static let zaai3 = Info(final: .aai, initial: .z, tone: .陰去)
        static let zaai6 = Info(final: .aai, initial: .z, tone: .陽去)
        static let zaak2 = Info(final: .aak, initial: .z, tone: .陰上)
        static let zaak3 = Info(final: .aak, initial: .z, tone: .陰去)
        static let zaak6 = Info(final: .aak, initial: .z, tone: .陽去)
        static let zaam1 = Info(final: .aam, initial: .z, tone: .陰平)
        static let zaam2 = Info(final: .aam, initial: .z, tone: .陰上)
        static let zaam3 = Info(final: .aam, initial: .z, tone: .陰去)
        static let zaam6 = Info(final: .aam, initial: .z, tone: .陽去)
        static let zaan1 = Info(final: .aan, initial: .z, tone: .陰平)
        static let zaan2 = Info(final: .aan, initial: .z, tone: .陰上)
        static let zaan3 = Info(final: .aan, initial: .z, tone: .陰去)
        static let zaan6 = Info(final: .aan, initial: .z, tone: .陽去)
        static let zaang1 = Info(final: .aang, initial: .z, tone: .陰平)
        static let zaang3 = Info(final: .aang, initial: .z, tone: .陰去)
        static let zaang6 = Info(final: .aang, initial: .z, tone: .陽去)
        static let zaap2 = Info(final: .aap, initial: .z, tone: .陰上)
        static let zaap3 = Info(final: .aap, initial: .z, tone: .陰去)
        static let zaap6 = Info(final: .aap, initial: .z, tone: .陽去)
        static let zaat2 = Info(final: .aat, initial: .z, tone: .陰上)
        static let zaat3 = Info(final: .aat, initial: .z, tone: .陰去)
        static let zaat6 = Info(final: .aat, initial: .z, tone: .陽去)
        static let zaau1 = Info(final: .aau, initial: .z, tone: .陰平)
        static let zaau2 = Info(final: .aau, initial: .z, tone: .陰上)
        static let zaau3 = Info(final: .aau, initial: .z, tone: .陰去)
        static let zaau6 = Info(final: .aau, initial: .z, tone: .陽去)
        static let zai1 = Info(final: .ai, initial: .z, tone: .陰平)
        static let zai2 = Info(final: .ai, initial: .z, tone: .陰上)
        static let zai3 = Info(final: .ai, initial: .z, tone: .陰去)
        static let zai4 = Info(final: .ai, initial: .z, tone: .陽平)
        static let zai6 = Info(final: .ai, initial: .z, tone: .陽去)
        static let zak1 = Info(final: .ak, initial: .z, tone: .陰平)
        static let zam1 = Info(final: .am, initial: .z, tone: .陰平)
        static let zam2 = Info(final: .am, initial: .z, tone: .陰上)
        static let zam3 = Info(final: .am, initial: .z, tone: .陰去)
        static let zam4 = Info(final: .am, initial: .z, tone: .陽平)
        static let zam6 = Info(final: .am, initial: .z, tone: .陽去)
        static let zan1 = Info(final: .an, initial: .z, tone: .陰平)
        static let zan2 = Info(final: .an, initial: .z, tone: .陰上)
        static let zan3 = Info(final: .an, initial: .z, tone: .陰去)
        static let zan5 = Info(final: .an, initial: .z, tone: .陽上)
        static let zan6 = Info(final: .an, initial: .z, tone: .陽去)
        static let zang1 = Info(final: .ang, initial: .z, tone: .陰平)
        static let zang2 = Info(final: .ang, initial: .z, tone: .陰上)
        static let zang3 = Info(final: .ang, initial: .z, tone: .陰去)
        static let zang6 = Info(final: .ang, initial: .z, tone: .陽去)
        static let zap1 = Info(final: .ap, initial: .z, tone: .陰平)
        static let zap6 = Info(final: .ap, initial: .z, tone: .陽去)
        static let zat1 = Info(final: .at, initial: .z, tone: .陰平)
        static let zat2 = Info(final: .at, initial: .z, tone: .陰上)
        static let zat6 = Info(final: .at, initial: .z, tone: .陽去)
        static let zau1 = Info(final: .au, initial: .z, tone: .陰平)
        static let zau2 = Info(final: .au, initial: .z, tone: .陰上)
        static let zau3 = Info(final: .au, initial: .z, tone: .陰去)
        static let zau6 = Info(final: .au, initial: .z, tone: .陽去)
        static let ze1 = Info(final: .e, initial: .z, tone: .陰平)
        static let ze2 = Info(final: .e, initial: .z, tone: .陰上)
        static let ze3 = Info(final: .e, initial: .z, tone: .陰去)
        static let ze4 = Info(final: .e, initial: .z, tone: .陽平)
        static let ze5 = Info(final: .e, initial: .z, tone: .陽上)
        static let ze6 = Info(final: .e, initial: .z, tone: .陽去)
        static let zek1 = Info(final: .ek, initial: .z, tone: .陰平)
        static let zek3 = Info(final: .ek, initial: .z, tone: .陰去)
        static let zek6 = Info(final: .ek, initial: .z, tone: .陽去)
        static let zem1 = Info(final: .em, initial: .z, tone: .陰平)
        static let zeng1 = Info(final: .eng, initial: .z, tone: .陰平)
        static let zeng2 = Info(final: .eng, initial: .z, tone: .陰上)
        static let zeng3 = Info(final: .eng, initial: .z, tone: .陰去)
        static let zeng6 = Info(final: .eng, initial: .z, tone: .陽去)
        static let zeoi1 = Info(final: .eoi, initial: .z, tone: .陰平)
        static let zeoi2 = Info(final: .eoi, initial: .z, tone: .陰上)
        static let zeoi3 = Info(final: .eoi, initial: .z, tone: .陰去)
        static let zeoi6 = Info(final: .eoi, initial: .z, tone: .陽去)
        static let zeon1 = Info(final: .eon, initial: .z, tone: .陰平)
        static let zeon2 = Info(final: .eon, initial: .z, tone: .陰上)
        static let zeon3 = Info(final: .eon, initial: .z, tone: .陰去)
        static let zeon6 = Info(final: .eon, initial: .z, tone: .陽去)
        static let zeot1 = Info(final: .eot, initial: .z, tone: .陰平)
        static let zeot6 = Info(final: .eot, initial: .z, tone: .陽去)
        static let zep6 = Info(final: .ep, initial: .z, tone: .陽去)
        static let zi1 = Info(final: .i, initial: .z, tone: .陰平)
        static let zi2 = Info(final: .i, initial: .z, tone: .陰上)
        static let zi3 = Info(final: .i, initial: .z, tone: .陰去)
        static let zi4 = Info(final: .i, initial: .z, tone: .陽平)
        static let zi6 = Info(final: .i, initial: .z, tone: .陽去)
        static let zik1 = Info(final: .ik, initial: .z, tone: .陰平)
        static let zik2 = Info(final: .ik, initial: .z, tone: .陰上)
        static let zik3 = Info(final: .ik, initial: .z, tone: .陰去)
        static let zik6 = Info(final: .ik, initial: .z, tone: .陽去)
        static let zim1 = Info(final: .im, initial: .z, tone: .陰平)
        static let zim2 = Info(final: .im, initial: .z, tone: .陰上)
        static let zim3 = Info(final: .im, initial: .z, tone: .陰去)
        static let zim6 = Info(final: .im, initial: .z, tone: .陽去)
        static let zin1 = Info(final: .in, initial: .z, tone: .陰平)
        static let zin2 = Info(final: .in, initial: .z, tone: .陰上)
        static let zin3 = Info(final: .in, initial: .z, tone: .陰去)
        static let zin6 = Info(final: .in, initial: .z, tone: .陽去)
        static let zing1 = Info(final: .ing, initial: .z, tone: .陰平)
        static let zing2 = Info(final: .ing, initial: .z, tone: .陰上)
        static let zing3 = Info(final: .ing, initial: .z, tone: .陰去)
        static let zing6 = Info(final: .ing, initial: .z, tone: .陽去)
        static let zip1 = Info(final: .ip, initial: .z, tone: .陰平)
        static let zip2 = Info(final: .ip, initial: .z, tone: .陰上)
        static let zip3 = Info(final: .ip, initial: .z, tone: .陰去)
        static let zip6 = Info(final: .ip, initial: .z, tone: .陽去)
        static let zit1 = Info(final: .it, initial: .z, tone: .陰平)
        static let zit2 = Info(final: .it, initial: .z, tone: .陰上)
        static let zit3 = Info(final: .it, initial: .z, tone: .陰去)
        static let zit6 = Info(final: .it, initial: .z, tone: .陽去)
        static let ziu1 = Info(final: .iu, initial: .z, tone: .陰平)
        static let ziu2 = Info(final: .iu, initial: .z, tone: .陰上)
        static let ziu3 = Info(final: .iu, initial: .z, tone: .陰去)
        static let ziu6 = Info(final: .iu, initial: .z, tone: .陽去)
        static let zo2 = Info(final: .o, initial: .z, tone: .陰上)
        static let zo3 = Info(final: .o, initial: .z, tone: .陰去)
        static let zo4 = Info(final: .o, initial: .z, tone: .陽平)
        static let zo6 = Info(final: .o, initial: .z, tone: .陽去)
        static let zoe1 = Info(final: .oe, initial: .z, tone: .陰平)
        static let zoek2 = Info(final: .oek, initial: .z, tone: .陰上)
        static let zoek3 = Info(final: .oek, initial: .z, tone: .陰去)
        static let zoek6 = Info(final: .oek, initial: .z, tone: .陽去)
        static let zoeng1 = Info(final: .oeng, initial: .z, tone: .陰平)
        static let zoeng2 = Info(final: .oeng, initial: .z, tone: .陰上)
        static let zoeng3 = Info(final: .oeng, initial: .z, tone: .陰去)
        static let zoeng6 = Info(final: .oeng, initial: .z, tone: .陽去)
        static let zoi1 = Info(final: .oi, initial: .z, tone: .陰平)
        static let zoi2 = Info(final: .oi, initial: .z, tone: .陰上)
        static let zoi3 = Info(final: .oi, initial: .z, tone: .陰去)
        static let zoi6 = Info(final: .oi, initial: .z, tone: .陽去)
        static let zok2 = Info(final: .ok, initial: .z, tone: .陰上)
        static let zok3 = Info(final: .ok, initial: .z, tone: .陰去)
        static let zok6 = Info(final: .ok, initial: .z, tone: .陽去)
        static let zong1 = Info(final: .ong, initial: .z, tone: .陰平)
        static let zong2 = Info(final: .ong, initial: .z, tone: .陰上)
        static let zong3 = Info(final: .ong, initial: .z, tone: .陰去)
        static let zong5 = Info(final: .ong, initial: .z, tone: .陽上)
        static let zong6 = Info(final: .ong, initial: .z, tone: .陽去)
        static let zou1 = Info(final: .ou, initial: .z, tone: .陰平)
        static let zou2 = Info(final: .ou, initial: .z, tone: .陰上)
        static let zou3 = Info(final: .ou, initial: .z, tone: .陰去)
        static let zou6 = Info(final: .ou, initial: .z, tone: .陽去)
        static let zuk1 = Info(final: .uk, initial: .z, tone: .陰平)
        static let zuk3 = Info(final: .uk, initial: .z, tone: .陰去)
        static let zuk6 = Info(final: .uk, initial: .z, tone: .陽去)
        static let zung1 = Info(final: .ung, initial: .z, tone: .陰平)
        static let zung2 = Info(final: .ung, initial: .z, tone: .陰上)
        static let zung3 = Info(final: .ung, initial: .z, tone: .陰去)
        static let zung6 = Info(final: .ung, initial: .z, tone: .陽去)
        static let zyu1 = Info(final: .yu, initial: .z, tone: .陰平)
        static let zyu2 = Info(final: .yu, initial: .z, tone: .陰上)
        static let zyu3 = Info(final: .yu, initial: .z, tone: .陰去)
        static let zyu6 = Info(final: .yu, initial: .z, tone: .陽去)
        static let zyun1 = Info(final: .yun, initial: .z, tone: .陰平)
        static let zyun2 = Info(final: .yun, initial: .z, tone: .陰上)
        static let zyun3 = Info(final: .yun, initial: .z, tone: .陰去)
        static let zyun6 = Info(final: .yun, initial: .z, tone: .陽去)
        static let zyut1 = Info(final: .yut, initial: .z, tone: .陰平)
        static let zyut2 = Info(final: .yut, initial: .z, tone: .陰上)
        static let zyut3 = Info(final: .yut, initial: .z, tone: .陰去)
        static let zyut6 = Info(final: .yut, initial: .z, tone: .陽去)
    }
}
