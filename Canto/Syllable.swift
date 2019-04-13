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
    public let pronunciations: [[Syllable]]
    public let offsetPairs: [(termOffset: Range<Int>, syllableOffset: Range<Int>)]
    
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

    var info: Info {
        switch self {
        case .aa1: return .aa1
        case .aa2: return .aa2
        case .aa3: return .aa3
        case .aa4: return .aa4
        case .aa5: return .aa5
        case .aa6: return .aa6
        case .aai1: return .aai1
        case .aai2: return .aai2
        case .aai3: return .aai3
        case .aai4: return .aai4
        case .aai5: return .aai5
        case .aai6: return .aai6
        case .aak1: return .aak1
        case .aak2: return .aak2
        case .aak3: return .aak3
        case .aak6: return .aak6
        case .aam1: return .aam1
        case .aam4: return .aam4
        case .aan2: return .aan2
        case .aan3: return .aan3
        case .aan4: return .aan4
        case .aan5: return .aan5
        case .aan6: return .aan6
        case .aang1: return .aang1
        case .aang2: return .aang2
        case .aang6: return .aang6
        case .aap2: return .aap2
        case .aap3: return .aap3
        case .aat1: return .aat1
        case .aat2: return .aat2
        case .aat3: return .aat3
        case .aat6: return .aat6
        case .aau1: return .aau1
        case .aau2: return .aau2
        case .aau3: return .aau3
        case .aau4: return .aau4
        case .aau5: return .aau5
        case .aau6: return .aau6
        case .ai1: return .ai1
        case .ai2: return .ai2
        case .ai3: return .ai3
        case .ai4: return .ai4
        case .ai5: return .ai5
        case .ai6: return .ai6
        case .ak1: return .ak1
        case .am1: return .am1
        case .am2: return .am2
        case .am3: return .am3
        case .am4: return .am4
        case .am5: return .am5
        case .am6: return .am6
        case .an1: return .an1
        case .an2: return .an2
        case .an3: return .an3
        case .an4: return .an4
        case .an6: return .an6
        case .ang1: return .ang1
        case .ang2: return .ang2
        case .ang3: return .ang3
        case .ap1: return .ap1
        case .ap6: return .ap6
        case .at1: return .at1
        case .at6: return .at6
        case .au1: return .au1
        case .au2: return .au2
        case .au3: return .au3
        case .au4: return .au4
        case .au5: return .au5
        case .au6: return .au6
        case .baa1: return .baa1
        case .baa2: return .baa2
        case .baa3: return .baa3
        case .baa4: return .baa4
        case .baa6: return .baa6
        case .baai1: return .baai1
        case .baai2: return .baai2
        case .baai3: return .baai3
        case .baai6: return .baai6
        case .baak1: return .baak1
        case .baak2: return .baak2
        case .baak3: return .baak3
        case .baak6: return .baak6
        case .baan1: return .baan1
        case .baan2: return .baan2
        case .baan3: return .baan3
        case .baan6: return .baan6
        case .baang1: return .baang1
        case .baang4: return .baang4
        case .baang6: return .baang6
        case .baat2: return .baat2
        case .baat3: return .baat3
        case .baat6: return .baat6
        case .baau1: return .baau1
        case .baau2: return .baau2
        case .baau3: return .baau3
        case .baau6: return .baau6
        case .bai1: return .bai1
        case .bai2: return .bai2
        case .bai3: return .bai3
        case .bai6: return .bai6
        case .bak1: return .bak1
        case .bam1: return .bam1
        case .ban1: return .ban1
        case .ban2: return .ban2
        case .ban3: return .ban3
        case .ban6: return .ban6
        case .bang1: return .bang1
        case .bang2: return .bang2
        case .bang6: return .bang6
        case .bat1: return .bat1
        case .bat3: return .bat3
        case .bat6: return .bat6
        case .bau2: return .bau2
        case .bau6: return .bau6
        case .be1: return .be1
        case .be4: return .be4
        case .be6: return .be6
        case .bei1: return .bei1
        case .bei2: return .bei2
        case .bei3: return .bei3
        case .bei4: return .bei4
        case .bei6: return .bei6
        case .bek3: return .bek3
        case .ben1: return .ben1
        case .beng2: return .beng2
        case .beng3: return .beng3
        case .beng6: return .beng6
        case .bi1: return .bi1
        case .bi4: return .bi4
        case .bik1: return .bik1
        case .bik3: return .bik3
        case .bik6: return .bik6
        case .bin1: return .bin1
        case .bin2: return .bin2
        case .bin3: return .bin3
        case .bin6: return .bin6
        case .bing1: return .bing1
        case .bing2: return .bing2
        case .bing3: return .bing3
        case .bing4: return .bing4
        case .bing6: return .bing6
        case .bit1: return .bit1
        case .bit3: return .bit3
        case .bit6: return .bit6
        case .biu1: return .biu1
        case .biu2: return .biu2
        case .biu3: return .biu3
        case .biu6: return .biu6
        case .bo1: return .bo1
        case .bo2: return .bo2
        case .bo3: return .bo3
        case .bok1: return .bok1
        case .bok2: return .bok2
        case .bok3: return .bok3
        case .bok6: return .bok6
        case .bong1: return .bong1
        case .bong2: return .bong2
        case .bong3: return .bong3
        case .bong4: return .bong4
        case .bong6: return .bong6
        case .bou1: return .bou1
        case .bou2: return .bou2
        case .bou3: return .bou3
        case .bou6: return .bou6
        case .bui1: return .bui1
        case .bui2: return .bui2
        case .bui3: return .bui3
        case .bui6: return .bui6
        case .buk1: return .buk1
        case .buk6: return .buk6
        case .bun1: return .bun1
        case .bun2: return .bun2
        case .bun3: return .bun3
        case .bun5: return .bun5
        case .bun6: return .bun6
        case .bung2: return .bung2
        case .bung3: return .bung3
        case .bung6: return .bung6
        case .but1: return .but1
        case .but2: return .but2
        case .but3: return .but3
        case .but6: return .but6
        case .caa1: return .caa1
        case .caa2: return .caa2
        case .caa3: return .caa3
        case .caa4: return .caa4
        case .caa5: return .caa5
        case .caai1: return .caai1
        case .caai2: return .caai2
        case .caai3: return .caai3
        case .caai4: return .caai4
        case .caak1: return .caak1
        case .caak2: return .caak2
        case .caak3: return .caak3
        case .caak6: return .caak6
        case .caam1: return .caam1
        case .caam2: return .caam2
        case .caam3: return .caam3
        case .caam4: return .caam4
        case .caam5: return .caam5
        case .caan1: return .caan1
        case .caan2: return .caan2
        case .caan3: return .caan3
        case .caan4: return .caan4
        case .caang1: return .caang1
        case .caang2: return .caang2
        case .caang3: return .caang3
        case .caang4: return .caang4
        case .caap2: return .caap2
        case .caap3: return .caap3
        case .caat1: return .caat1
        case .caat2: return .caat2
        case .caat3: return .caat3
        case .caau1: return .caau1
        case .caau2: return .caau2
        case .caau3: return .caau3
        case .caau4: return .caau4
        case .cai1: return .cai1
        case .cai2: return .cai2
        case .cai3: return .cai3
        case .cai4: return .cai4
        case .cai5: return .cai5
        case .cak1: return .cak1
        case .cam1: return .cam1
        case .cam2: return .cam2
        case .cam3: return .cam3
        case .cam4: return .cam4
        case .cam5: return .cam5
        case .can1: return .can1
        case .can2: return .can2
        case .can3: return .can3
        case .can4: return .can4
        case .cang1: return .cang1
        case .cang3: return .cang3
        case .cang4: return .cang4
        case .cap1: return .cap1
        case .cat1: return .cat1
        case .cat6: return .cat6
        case .cau1: return .cau1
        case .cau2: return .cau2
        case .cau3: return .cau3
        case .cau4: return .cau4
        case .ce1: return .ce1
        case .ce2: return .ce2
        case .ce3: return .ce3
        case .ce4: return .ce4
        case .ce5: return .ce5
        case .ce6: return .ce6
        case .cek1: return .cek1
        case .cek2: return .cek2
        case .cek3: return .cek3
        case .ceng1: return .ceng1
        case .ceng2: return .ceng2
        case .ceng4: return .ceng4
        case .ceoi1: return .ceoi1
        case .ceoi2: return .ceoi2
        case .ceoi3: return .ceoi3
        case .ceoi4: return .ceoi4
        case .ceon1: return .ceon1
        case .ceon2: return .ceon2
        case .ceon4: return .ceon4
        case .ceot1: return .ceot1
        case .ci1: return .ci1
        case .ci2: return .ci2
        case .ci3: return .ci3
        case .ci4: return .ci4
        case .ci5: return .ci5
        case .cik1: return .cik1
        case .cik3: return .cik3
        case .cim1: return .cim1
        case .cim2: return .cim2
        case .cim3: return .cim3
        case .cim4: return .cim4
        case .cim5: return .cim5
        case .cin1: return .cin1
        case .cin2: return .cin2
        case .cin3: return .cin3
        case .cin4: return .cin4
        case .cin5: return .cin5
        case .cing1: return .cing1
        case .cing2: return .cing2
        case .cing3: return .cing3
        case .cing4: return .cing4
        case .cip1: return .cip1
        case .cip3: return .cip3
        case .cit1: return .cit1
        case .cit3: return .cit3
        case .ciu1: return .ciu1
        case .ciu2: return .ciu2
        case .ciu3: return .ciu3
        case .ciu4: return .ciu4
        case .ciu5: return .ciu5
        case .ciu6: return .ciu6
        case .co1: return .co1
        case .co2: return .co2
        case .co3: return .co3
        case .co4: return .co4
        case .co5: return .co5
        case .coek3: return .coek3
        case .coeng1: return .coeng1
        case .coeng2: return .coeng2
        case .coeng3: return .coeng3
        case .coeng4: return .coeng4
        case .coi1: return .coi1
        case .coi2: return .coi2
        case .coi3: return .coi3
        case .coi4: return .coi4
        case .cok3: return .cok3
        case .cong1: return .cong1
        case .cong2: return .cong2
        case .cong3: return .cong3
        case .cong4: return .cong4
        case .cou1: return .cou1
        case .cou2: return .cou2
        case .cou3: return .cou3
        case .cou4: return .cou4
        case .cou5: return .cou5
        case .cuk1: return .cuk1
        case .cuk6: return .cuk6
        case .cung1: return .cung1
        case .cung2: return .cung2
        case .cung3: return .cung3
        case .cung4: return .cung4
        case .cung5: return .cung5
        case .cyu2: return .cyu2
        case .cyu3: return .cyu3
        case .cyu4: return .cyu4
        case .cyu5: return .cyu5
        case .cyun1: return .cyun1
        case .cyun2: return .cyun2
        case .cyun3: return .cyun3
        case .cyun4: return .cyun4
        case .cyut1: return .cyut1
        case .cyut3: return .cyut3
        case .cyut6: return .cyut6
        case .daa1: return .daa1
        case .daa2: return .daa2
        case .daai1: return .daai1
        case .daai2: return .daai2
        case .daai3: return .daai3
        case .daai6: return .daai6
        case .daam1: return .daam1
        case .daam2: return .daam2
        case .daam3: return .daam3
        case .daam5: return .daam5
        case .daam6: return .daam6
        case .daan1: return .daan1
        case .daan2: return .daan2
        case .daan3: return .daan3
        case .daan5: return .daan5
        case .daan6: return .daan6
        case .daap1: return .daap1
        case .daap3: return .daap3
        case .daap6: return .daap6
        case .daat3: return .daat3
        case .daat6: return .daat6
        case .dai1: return .dai1
        case .dai2: return .dai2
        case .dai3: return .dai3
        case .dai4: return .dai4
        case .dai6: return .dai6
        case .dak1: return .dak1
        case .dak6: return .dak6
        case .dam1: return .dam1
        case .dam2: return .dam2
        case .dam3: return .dam3
        case .dam4: return .dam4
        case .dam6: return .dam6
        case .dan1: return .dan1
        case .dan2: return .dan2
        case .dan3: return .dan3
        case .dan6: return .dan6
        case .dang1: return .dang1
        case .dang2: return .dang2
        case .dang3: return .dang3
        case .dang6: return .dang6
        case .dap1: return .dap1
        case .dap6: return .dap6
        case .dat1: return .dat1
        case .dat6: return .dat6
        case .dau1: return .dau1
        case .dau2: return .dau2
        case .dau3: return .dau3
        case .dau4: return .dau4
        case .dau6: return .dau6
        case .de1: return .de1
        case .de2: return .de2
        case .de4: return .de4
        case .dei2: return .dei2
        case .dei6: return .dei6
        case .dek2: return .dek2
        case .dek3: return .dek3
        case .dek6: return .dek6
        case .deng1: return .deng1
        case .deng2: return .deng2
        case .deng3: return .deng3
        case .deng6: return .deng6
        case .deoi1: return .deoi1
        case .deoi2: return .deoi2
        case .deoi3: return .deoi3
        case .deoi6: return .deoi6
        case .deon1: return .deon1
        case .deon2: return .deon2
        case .deon6: return .deon6
        case .deot1: return .deot1
        case .deu6: return .deu6
        case .di1: return .di1
        case .di2: return .di2
        case .di4: return .di4
        case .dik1: return .dik1
        case .dik6: return .dik6
        case .dim1: return .dim1
        case .dim2: return .dim2
        case .dim3: return .dim3
        case .dim6: return .dim6
        case .din1: return .din1
        case .din2: return .din2
        case .din3: return .din3
        case .din6: return .din6
        case .ding1: return .ding1
        case .ding2: return .ding2
        case .ding3: return .ding3
        case .ding6: return .ding6
        case .dip2: return .dip2
        case .dip3: return .dip3
        case .dip6: return .dip6
        case .dit1: return .dit1
        case .dit3: return .dit3
        case .dit6: return .dit6
        case .diu1: return .diu1
        case .diu2: return .diu2
        case .diu3: return .diu3
        case .diu4: return .diu4
        case .diu6: return .diu6
        case .do1: return .do1
        case .do2: return .do2
        case .do3: return .do3
        case .do6: return .do6
        case .doe2: return .doe2
        case .doe3: return .doe3
        case .doe4: return .doe4
        case .doe6: return .doe6
        case .doek3: return .doek3
        case .doeng1: return .doeng1
        case .doi2: return .doi2
        case .doi6: return .doi6
        case .dok6: return .dok6
        case .dong1: return .dong1
        case .dong2: return .dong2
        case .dong3: return .dong3
        case .dong6: return .dong6
        case .dou1: return .dou1
        case .dou2: return .dou2
        case .dou3: return .dou3
        case .dou6: return .dou6
        case .du1: return .du1
        case .duk1: return .duk1
        case .duk2: return .duk2
        case .duk6: return .duk6
        case .dung1: return .dung1
        case .dung2: return .dung2
        case .dung3: return .dung3
        case .dung6: return .dung6
        case .dut1: return .dut1
        case .dyun1: return .dyun1
        case .dyun2: return .dyun2
        case .dyun3: return .dyun3
        case .dyun6: return .dyun6
        case .dyut1: return .dyut1
        case .dyut3: return .dyut3
        case .dyut6: return .dyut6
        case .e4: return .e4
        case .e6: return .e6
        case .ei1: return .ei1
        case .ei3: return .ei3
        case .ei6: return .ei6
        case .eot1: return .eot1
        case .em1: return .em1
        case .en1: return .en1
        case .faa1: return .faa1
        case .faa2: return .faa2
        case .faa3: return .faa3
        case .faa4: return .faa4
        case .faai1: return .faai1
        case .faai2: return .faai2
        case .faai3: return .faai3
        case .faak3: return .faak3
        case .faan1: return .faan1
        case .faan2: return .faan2
        case .faan3: return .faan3
        case .faan4: return .faan4
        case .faan5: return .faan5
        case .faan6: return .faan6
        case .faat2: return .faat2
        case .faat3: return .faat3
        case .fai1: return .fai1
        case .fai2: return .fai2
        case .fai3: return .fai3
        case .fai6: return .fai6
        case .fan1: return .fan1
        case .fan2: return .fan2
        case .fan3: return .fan3
        case .fan4: return .fan4
        case .fan5: return .fan5
        case .fan6: return .fan6
        case .fang4: return .fang4
        case .fang6: return .fang6
        case .fat1: return .fat1
        case .fat6: return .fat6
        case .fau1: return .fau1
        case .fau2: return .fau2
        case .fau4: return .fau4
        case .fau6: return .fau6
        case .fe1: return .fe1
        case .fe3: return .fe3
        case .fe4: return .fe4
        case .fei1: return .fei1
        case .fei2: return .fei2
        case .fei4: return .fei4
        case .fei6: return .fei6
        case .fen1: return .fen1
        case .fet1: return .fet1
        case .fi1: return .fi1
        case .fik1: return .fik1
        case .fing3: return .fing3
        case .fing6: return .fing6
        case .fit1: return .fit1
        case .fiu1: return .fiu1
        case .fiu3: return .fiu3
        case .fo1: return .fo1
        case .fo2: return .fo2
        case .fo3: return .fo3
        case .fok3: return .fok3
        case .fong1: return .fong1
        case .fong2: return .fong2
        case .fong3: return .fong3
        case .fong4: return .fong4
        case .fong6: return .fong6
        case .fu1: return .fu1
        case .fu2: return .fu2
        case .fu3: return .fu3
        case .fu4: return .fu4
        case .fu5: return .fu5
        case .fu6: return .fu6
        case .fui1: return .fui1
        case .fui2: return .fui2
        case .fui3: return .fui3
        case .fuk1: return .fuk1
        case .fuk2: return .fuk2
        case .fuk6: return .fuk6
        case .fun1: return .fun1
        case .fun2: return .fun2
        case .fung1: return .fung1
        case .fung2: return .fung2
        case .fung3: return .fung3
        case .fung4: return .fung4
        case .fung6: return .fung6
        case .fut3: return .fut3
        case .gaa1: return .gaa1
        case .gaa2: return .gaa2
        case .gaa3: return .gaa3
        case .gaa4: return .gaa4
        case .gaa5: return .gaa5
        case .gaai1: return .gaai1
        case .gaai2: return .gaai2
        case .gaai3: return .gaai3
        case .gaak2: return .gaak2
        case .gaak3: return .gaak3
        case .gaam1: return .gaam1
        case .gaam2: return .gaam2
        case .gaam3: return .gaam3
        case .gaan1: return .gaan1
        case .gaan2: return .gaan2
        case .gaan3: return .gaan3
        case .gaang1: return .gaang1
        case .gaang3: return .gaang3
        case .gaap2: return .gaap2
        case .gaap3: return .gaap3
        case .gaat3: return .gaat3
        case .gaat6: return .gaat6
        case .gaau1: return .gaau1
        case .gaau2: return .gaau2
        case .gaau3: return .gaau3
        case .gaau4: return .gaau4
        case .gai1: return .gai1
        case .gai2: return .gai2
        case .gai3: return .gai3
        case .gai6: return .gai6
        case .gak1: return .gak1
        case .gam1: return .gam1
        case .gam2: return .gam2
        case .gam3: return .gam3
        case .gam6: return .gam6
        case .gan1: return .gan1
        case .gan2: return .gan2
        case .gan3: return .gan3
        case .gan6: return .gan6
        case .gang1: return .gang1
        case .gang2: return .gang2
        case .gang3: return .gang3
        case .gap1: return .gap1
        case .gap2: return .gap2
        case .gap3: return .gap3
        case .gap6: return .gap6
        case .gat1: return .gat1
        case .gat3: return .gat3
        case .gat6: return .gat6
        case .gau1: return .gau1
        case .gau2: return .gau2
        case .gau3: return .gau3
        case .gau6: return .gau6
        case .ge2: return .ge2
        case .ge3: return .ge3
        case .gei1: return .gei1
        case .gei2: return .gei2
        case .gei3: return .gei3
        case .gei6: return .gei6
        case .gek1: return .gek1
        case .geng1: return .geng1
        case .geng2: return .geng2
        case .geng3: return .geng3
        case .geng6: return .geng6
        case .geoi1: return .geoi1
        case .geoi2: return .geoi2
        case .geoi3: return .geoi3
        case .geoi6: return .geoi6
        case .gep1: return .gep1
        case .gep6: return .gep6
        case .gi1: return .gi1
        case .gik1: return .gik1
        case .gik6: return .gik6
        case .gim1: return .gim1
        case .gim2: return .gim2
        case .gim3: return .gim3
        case .gim6: return .gim6
        case .gin1: return .gin1
        case .gin2: return .gin2
        case .gin3: return .gin3
        case .gin6: return .gin6
        case .ging1: return .ging1
        case .ging2: return .ging2
        case .ging3: return .ging3
        case .ging6: return .ging6
        case .gip1: return .gip1
        case .gip2: return .gip2
        case .gip3: return .gip3
        case .gip6: return .gip6
        case .git3: return .git3
        case .git6: return .git6
        case .giu1: return .giu1
        case .giu2: return .giu2
        case .giu3: return .giu3
        case .giu4: return .giu4
        case .giu6: return .giu6
        case .go1: return .go1
        case .go2: return .go2
        case .go3: return .go3
        case .go4: return .go4
        case .go6: return .go6
        case .goe1: return .goe1
        case .goe3: return .goe3
        case .goe4: return .goe4
        case .goek2: return .goek2
        case .goek3: return .goek3
        case .goeng1: return .goeng1
        case .goeng2: return .goeng2
        case .goeng6: return .goeng6
        case .goi1: return .goi1
        case .goi2: return .goi2
        case .goi3: return .goi3
        case .gok1: return .gok1
        case .gok2: return .gok2
        case .gok3: return .gok3
        case .gok6: return .gok6
        case .gon1: return .gon1
        case .gon2: return .gon2
        case .gon3: return .gon3
        case .gong1: return .gong1
        case .gong2: return .gong2
        case .gong3: return .gong3
        case .gong6: return .gong6
        case .got2: return .got2
        case .got3: return .got3
        case .gou1: return .gou1
        case .gou2: return .gou2
        case .gou3: return .gou3
        case .gu1: return .gu1
        case .gu2: return .gu2
        case .gu3: return .gu3
        case .gu4: return .gu4
        case .gui3: return .gui3
        case .gui6: return .gui6
        case .guk1: return .guk1
        case .guk2: return .guk2
        case .guk6: return .guk6
        case .gun1: return .gun1
        case .gun2: return .gun2
        case .gun3: return .gun3
        case .gung1: return .gung1
        case .gung2: return .gung2
        case .gung3: return .gung3
        case .gung4: return .gung4
        case .gung6: return .gung6
        case .gut2: return .gut2
        case .gut3: return .gut3
        case .gut4: return .gut4
        case .gut6: return .gut6
        case .gwaa1: return .gwaa1
        case .gwaa2: return .gwaa2
        case .gwaa3: return .gwaa3
        case .gwaai1: return .gwaai1
        case .gwaai2: return .gwaai2
        case .gwaai3: return .gwaai3
        case .gwaak3: return .gwaak3
        case .gwaan1: return .gwaan1
        case .gwaan3: return .gwaan3
        case .gwaang2: return .gwaang2
        case .gwaang6: return .gwaang6
        case .gwaat2: return .gwaat2
        case .gwaat3: return .gwaat3
        case .gwai1: return .gwai1
        case .gwai2: return .gwai2
        case .gwai3: return .gwai3
        case .gwai6: return .gwai6
        case .gwan1: return .gwan1
        case .gwan2: return .gwan2
        case .gwan3: return .gwan3
        case .gwan6: return .gwan6
        case .gwang1: return .gwang1
        case .gwang2: return .gwang2
        case .gwat1: return .gwat1
        case .gwat6: return .gwat6
        case .gwe1: return .gwe1
        case .gwik1: return .gwik1
        case .gwing1: return .gwing1
        case .gwing2: return .gwing2
        case .gwing3: return .gwing3
        case .gwit1: return .gwit1
        case .gwit3: return .gwit3
        case .gwo1: return .gwo1
        case .gwo2: return .gwo2
        case .gwo3: return .gwo3
        case .gwok3: return .gwok3
        case .gwong1: return .gwong1
        case .gwong2: return .gwong2
        case .gwong3: return .gwong3
        case .gwu1: return .gwu1
        case .gwu2: return .gwu2
        case .gwu3: return .gwu3
        case .gwui3: return .gwui3
        case .gwui6: return .gwui6
        case .gwun1: return .gwun1
        case .gwun2: return .gwun2
        case .gwun3: return .gwun3
        case .gwut2: return .gwut2
        case .gwut3: return .gwut3
        case .gwut4: return .gwut4
        case .gwut6: return .gwut6
        case .gyun1: return .gyun1
        case .gyun2: return .gyun2
        case .gyun3: return .gyun3
        case .gyun6: return .gyun6
        case .gyut3: return .gyut3
        case .gyut6: return .gyut6
        case .haa1: return .haa1
        case .haa2: return .haa2
        case .haa3: return .haa3
        case .haa4: return .haa4
        case .haa5: return .haa5
        case .haa6: return .haa6
        case .haai1: return .haai1
        case .haai2: return .haai2
        case .haai3: return .haai3
        case .haai4: return .haai4
        case .haai5: return .haai5
        case .haai6: return .haai6
        case .haak1: return .haak1
        case .haak2: return .haak2
        case .haak3: return .haak3
        case .haak6: return .haak6
        case .haam1: return .haam1
        case .haam2: return .haam2
        case .haam3: return .haam3
        case .haam4: return .haam4
        case .haam5: return .haam5
        case .haam6: return .haam6
        case .haan1: return .haan1
        case .haan2: return .haan2
        case .haan4: return .haan4
        case .haan5: return .haan5
        case .haan6: return .haan6
        case .haang1: return .haang1
        case .haang2: return .haang2
        case .haang4: return .haang4
        case .haap3: return .haap3
        case .haap6: return .haap6
        case .haau1: return .haau1
        case .haau2: return .haau2
        case .haau3: return .haau3
        case .haau4: return .haau4
        case .haau6: return .haau6
        case .hai1: return .hai1
        case .hai2: return .hai2
        case .hai3: return .hai3
        case .hai4: return .hai4
        case .hai5: return .hai5
        case .hai6: return .hai6
        case .hak1: return .hak1
        case .ham1: return .ham1
        case .ham2: return .ham2
        case .ham3: return .ham3
        case .ham4: return .ham4
        case .ham5: return .ham5
        case .ham6: return .ham6
        case .han2: return .han2
        case .han4: return .han4
        case .han6: return .han6
        case .hang1: return .hang1
        case .hang2: return .hang2
        case .hang4: return .hang4
        case .hang5: return .hang5
        case .hang6: return .hang6
        case .hap1: return .hap1
        case .hap2: return .hap2
        case .hap6: return .hap6
        case .hat1: return .hat1
        case .hat6: return .hat6
        case .hau1: return .hau1
        case .hau2: return .hau2
        case .hau3: return .hau3
        case .hau4: return .hau4
        case .hau5: return .hau5
        case .hau6: return .hau6
        case .he2: return .he2
        case .he3: return .he3
        case .hei1: return .hei1
        case .hei2: return .hei2
        case .hei3: return .hei3
        case .hek3: return .hek3
        case .heng1: return .heng1
        case .heng6: return .heng6
        case .heoi1: return .heoi1
        case .heoi2: return .heoi2
        case .heoi3: return .heoi3
        case .heoi5: return .heoi5
        case .hi1: return .hi1
        case .hik1: return .hik1
        case .him1: return .him1
        case .him2: return .him2
        case .him3: return .him3
        case .hin1: return .hin1
        case .hin2: return .hin2
        case .hin3: return .hin3
        case .hing1: return .hing1
        case .hing2: return .hing2
        case .hing3: return .hing3
        case .hing5: return .hing5
        case .hip3: return .hip3
        case .hip6: return .hip6
        case .hit3: return .hit3
        case .hiu1: return .hiu1
        case .hiu2: return .hiu2
        case .hiu3: return .hiu3
        case .hiu4: return .hiu4
        case .hm1: return .hm1
        case .hm6: return .hm6
        case .hng6: return .hng6
        case .ho1: return .ho1
        case .ho2: return .ho2
        case .ho3: return .ho3
        case .ho4: return .ho4
        case .ho6: return .ho6
        case .hoe1: return .hoe1
        case .hoe4: return .hoe4
        case .hoeng1: return .hoeng1
        case .hoeng2: return .hoeng2
        case .hoeng3: return .hoeng3
        case .hoi1: return .hoi1
        case .hoi2: return .hoi2
        case .hoi3: return .hoi3
        case .hoi4: return .hoi4
        case .hoi5: return .hoi5
        case .hoi6: return .hoi6
        case .hok2: return .hok2
        case .hok3: return .hok3
        case .hok6: return .hok6
        case .hon1: return .hon1
        case .hon2: return .hon2
        case .hon3: return .hon3
        case .hon4: return .hon4
        case .hon5: return .hon5
        case .hon6: return .hon6
        case .hong1: return .hong1
        case .hong2: return .hong2
        case .hong3: return .hong3
        case .hong4: return .hong4
        case .hong5: return .hong5
        case .hong6: return .hong6
        case .hot3: return .hot3
        case .hot6: return .hot6
        case .hou1: return .hou1
        case .hou2: return .hou2
        case .hou3: return .hou3
        case .hou4: return .hou4
        case .hou6: return .hou6
        case .huk1: return .huk1
        case .huk6: return .huk6
        case .hung1: return .hung1
        case .hung2: return .hung2
        case .hung3: return .hung3
        case .hung4: return .hung4
        case .hung6: return .hung6
        case .hyun1: return .hyun1
        case .hyun2: return .hyun2
        case .hyun3: return .hyun3
        case .hyut3: return .hyut3
        case .ik1: return .ik1
        case .it6: return .it6
        case .jaa1: return .jaa1
        case .jaa2: return .jaa2
        case .jaa3: return .jaa3
        case .jaa4: return .jaa4
        case .jaa5: return .jaa5
        case .jaa6: return .jaa6
        case .jaai2: return .jaai2
        case .jaai5: return .jaai5
        case .jaak3: return .jaak3
        case .jaang3: return .jaang3
        case .jaap3: return .jaap3
        case .jaau1: return .jaau1
        case .jai1: return .jai1
        case .jai4: return .jai4
        case .jai5: return .jai5
        case .jai6: return .jai6
        case .jam1: return .jam1
        case .jam2: return .jam2
        case .jam3: return .jam3
        case .jam4: return .jam4
        case .jam5: return .jam5
        case .jam6: return .jam6
        case .jan1: return .jan1
        case .jan2: return .jan2
        case .jan3: return .jan3
        case .jan4: return .jan4
        case .jan5: return .jan5
        case .jan6: return .jan6
        case .jap1: return .jap1
        case .jap6: return .jap6
        case .jat1: return .jat1
        case .jat2: return .jat2
        case .jat6: return .jat6
        case .jau1: return .jau1
        case .jau2: return .jau2
        case .jau3: return .jau3
        case .jau4: return .jau4
        case .jau5: return .jau5
        case .jau6: return .jau6
        case .je1: return .je1
        case .je2: return .je2
        case .je4: return .je4
        case .je5: return .je5
        case .je6: return .je6
        case .jeng4: return .jeng4
        case .jeoi1: return .jeoi1
        case .jeoi4: return .jeoi4
        case .jeoi5: return .jeoi5
        case .jeoi6: return .jeoi6
        case .jeon2: return .jeon2
        case .jeon6: return .jeon6
        case .ji1: return .ji1
        case .ji2: return .ji2
        case .ji3: return .ji3
        case .ji4: return .ji4
        case .ji5: return .ji5
        case .ji6: return .ji6
        case .jik1: return .jik1
        case .jik2: return .jik2
        case .jik6: return .jik6
        case .jim1: return .jim1
        case .jim2: return .jim2
        case .jim3: return .jim3
        case .jim4: return .jim4
        case .jim5: return .jim5
        case .jim6: return .jim6
        case .jin1: return .jin1
        case .jin2: return .jin2
        case .jin3: return .jin3
        case .jin4: return .jin4
        case .jin5: return .jin5
        case .jin6: return .jin6
        case .jing1: return .jing1
        case .jing2: return .jing2
        case .jing3: return .jing3
        case .jing4: return .jing4
        case .jing5: return .jing5
        case .jing6: return .jing6
        case .jip2: return .jip2
        case .jip3: return .jip3
        case .jip6: return .jip6
        case .jit2: return .jit2
        case .jit3: return .jit3
        case .jit6: return .jit6
        case .jiu1: return .jiu1
        case .jiu2: return .jiu2
        case .jiu3: return .jiu3
        case .jiu4: return .jiu4
        case .jiu5: return .jiu5
        case .jiu6: return .jiu6
        case .jo1: return .jo1
        case .joek2: return .joek2
        case .joek3: return .joek3
        case .joek6: return .joek6
        case .joeng1: return .joeng1
        case .joeng2: return .joeng2
        case .joeng3: return .joeng3
        case .joeng4: return .joeng4
        case .joeng5: return .joeng5
        case .joeng6: return .joeng6
        case .juk1: return .juk1
        case .juk2: return .juk2
        case .juk6: return .juk6
        case .jung1: return .jung1
        case .jung2: return .jung2
        case .jung4: return .jung4
        case .jung5: return .jung5
        case .jung6: return .jung6
        case .jyu1: return .jyu1
        case .jyu2: return .jyu2
        case .jyu3: return .jyu3
        case .jyu4: return .jyu4
        case .jyu5: return .jyu5
        case .jyu6: return .jyu6
        case .jyun1: return .jyun1
        case .jyun2: return .jyun2
        case .jyun3: return .jyun3
        case .jyun4: return .jyun4
        case .jyun5: return .jyun5
        case .jyun6: return .jyun6
        case .jyut2: return .jyut2
        case .jyut3: return .jyut3
        case .jyut6: return .jyut6
        case .kaa1: return .kaa1
        case .kaa2: return .kaa2
        case .kaa3: return .kaa3
        case .kaa4: return .kaa4
        case .kaai2: return .kaai2
        case .kaai3: return .kaai3
        case .kaai5: return .kaai5
        case .kaak1: return .kaak1
        case .kaak3: return .kaak3
        case .kaam5: return .kaam5
        case .kaang1: return .kaang1
        case .kaat1: return .kaat1
        case .kaat3: return .kaat3
        case .kaau3: return .kaau3
        case .kai1: return .kai1
        case .kai2: return .kai2
        case .kai3: return .kai3
        case .kak1: return .kak1
        case .kam1: return .kam1
        case .kam2: return .kam2
        case .kam4: return .kam4
        case .kam5: return .kam5
        case .kam6: return .kam6
        case .kan2: return .kan2
        case .kan4: return .kan4
        case .kan5: return .kan5
        case .kang1: return .kang1
        case .kang2: return .kang2
        case .kang3: return .kang3
        case .kap1: return .kap1
        case .kap6: return .kap6
        case .kat1: return .kat1
        case .kau1: return .kau1
        case .kau2: return .kau2
        case .kau3: return .kau3
        case .kau4: return .kau4
        case .kau5: return .kau5
        case .ke1: return .ke1
        case .ke2: return .ke2
        case .ke4: return .ke4
        case .kei1: return .kei1
        case .kei2: return .kei2
        case .kei3: return .kei3
        case .kei4: return .kei4
        case .kei5: return .kei5
        case .kek1: return .kek1
        case .kek6: return .kek6
        case .kem1: return .kem1
        case .ken1: return .ken1
        case .keng1: return .keng1
        case .keoi1: return .keoi1
        case .keoi2: return .keoi2
        case .keoi4: return .keoi4
        case .keoi5: return .keoi5
        case .kep1: return .kep1
        case .ki1: return .ki1
        case .kik1: return .kik1
        case .kim2: return .kim2
        case .kim4: return .kim4
        case .kin2: return .kin2
        case .kin4: return .kin4
        case .king1: return .king1
        case .king2: return .king2
        case .king4: return .king4
        case .kip1: return .kip1
        case .kit3: return .kit3
        case .kiu1: return .kiu1
        case .kiu2: return .kiu2
        case .kiu3: return .kiu3
        case .kiu4: return .kiu4
        case .kiu5: return .kiu5
        case .ko1: return .ko1
        case .koe1: return .koe1
        case .koe4: return .koe4
        case .koek3: return .koek3
        case .koek6: return .koek6
        case .koeng2: return .koeng2
        case .koeng4: return .koeng4
        case .koeng5: return .koeng5
        case .koeng6: return .koeng6
        case .koi2: return .koi2
        case .koi3: return .koi3
        case .kok1: return .kok1
        case .kok3: return .kok3
        case .kon1: return .kon1
        case .kon3: return .kon3
        case .kong1: return .kong1
        case .kong2: return .kong2
        case .kong3: return .kong3
        case .kong4: return .kong4
        case .ku1: return .ku1
        case .kui2: return .kui2
        case .kui3: return .kui3
        case .kuk1: return .kuk1
        case .kung4: return .kung4
        case .kut3: return .kut3
        case .kwaa1: return .kwaa1
        case .kwaa2: return .kwaa2
        case .kwaa3: return .kwaa3
        case .kwaai3: return .kwaai3
        case .kwaai5: return .kwaai5
        case .kwaak1: return .kwaak1
        case .kwaak3: return .kwaak3
        case .kwaang1: return .kwaang1
        case .kwaang3: return .kwaang3
        case .kwaat1: return .kwaat1
        case .kwai1: return .kwai1
        case .kwai2: return .kwai2
        case .kwai3: return .kwai3
        case .kwai4: return .kwai4
        case .kwai5: return .kwai5
        case .kwan1: return .kwan1
        case .kwan2: return .kwan2
        case .kwan3: return .kwan3
        case .kwan4: return .kwan4
        case .kwan5: return .kwan5
        case .kwang1: return .kwang1
        case .kwang3: return .kwang3
        case .kwik1: return .kwik1
        case .kwok3: return .kwok3
        case .kwong1: return .kwong1
        case .kwong2: return .kwong2
        case .kwong3: return .kwong3
        case .kwong4: return .kwong4
        case .kwu1: return .kwu1
        case .kwui2: return .kwui2
        case .kwui3: return .kwui3
        case .kwut3: return .kwut3
        case .kyun2: return .kyun2
        case .kyun4: return .kyun4
        case .kyut3: return .kyut3
        case .kyut6: return .kyut6
        case .laa1: return .laa1
        case .laa2: return .laa2
        case .laa3: return .laa3
        case .laa4: return .laa4
        case .laa5: return .laa5
        case .laa6: return .laa6
        case .laai1: return .laai1
        case .laai2: return .laai2
        case .laai3: return .laai3
        case .laai4: return .laai4
        case .laai5: return .laai5
        case .laai6: return .laai6
        case .laak1: return .laak1
        case .laak3: return .laak3
        case .laak6: return .laak6
        case .laam2: return .laam2
        case .laam3: return .laam3
        case .laam4: return .laam4
        case .laam5: return .laam5
        case .laam6: return .laam6
        case .laan1: return .laan1
        case .laan2: return .laan2
        case .laan4: return .laan4
        case .laan5: return .laan5
        case .laan6: return .laan6
        case .laang1: return .laang1
        case .laang4: return .laang4
        case .laang5: return .laang5
        case .laang6: return .laang6
        case .laap2: return .laap2
        case .laap3: return .laap3
        case .laap6: return .laap6
        case .laat1: return .laat1
        case .laat2: return .laat2
        case .laat3: return .laat3
        case .laat6: return .laat6
        case .laau1: return .laau1
        case .laau2: return .laau2
        case .laau4: return .laau4
        case .laau5: return .laau5
        case .laau6: return .laau6
        case .lai2: return .lai2
        case .lai4: return .lai4
        case .lai5: return .lai5
        case .lai6: return .lai6
        case .lak6: return .lak6
        case .lam1: return .lam1
        case .lam2: return .lam2
        case .lam3: return .lam3
        case .lam4: return .lam4
        case .lam5: return .lam5
        case .lam6: return .lam6
        case .lan2: return .lan2
        case .lan4: return .lan4
        case .lang1: return .lang1
        case .lang3: return .lang3
        case .lang4: return .lang4
        case .lang6: return .lang6
        case .lap1: return .lap1
        case .lap2: return .lap2
        case .lap6: return .lap6
        case .lat1: return .lat1
        case .lat6: return .lat6
        case .lau1: return .lau1
        case .lau2: return .lau2
        case .lau3: return .lau3
        case .lau4: return .lau4
        case .lau5: return .lau5
        case .lau6: return .lau6
        case .le1: return .le1
        case .le2: return .le2
        case .le3: return .le3
        case .le4: return .le4
        case .le5: return .le5
        case .le6: return .le6
        case .lei1: return .lei1
        case .lei2: return .lei2
        case .lei4: return .lei4
        case .lei5: return .lei5
        case .lei6: return .lei6
        case .lek1: return .lek1
        case .lek6: return .lek6
        case .lem2: return .lem2
        case .leng1: return .leng1
        case .leng2: return .leng2
        case .leng3: return .leng3
        case .leng4: return .leng4
        case .leng5: return .leng5
        case .leoi1: return .leoi1
        case .leoi2: return .leoi2
        case .leoi3: return .leoi3
        case .leoi4: return .leoi4
        case .leoi5: return .leoi5
        case .leoi6: return .leoi6
        case .leon1: return .leon1
        case .leon2: return .leon2
        case .leon4: return .leon4
        case .leon5: return .leon5
        case .leon6: return .leon6
        case .leot2: return .leot2
        case .leot3: return .leot3
        case .leot6: return .leot6
        case .li1: return .li1
        case .li2: return .li2
        case .li4: return .li4
        case .lik1: return .lik1
        case .lik6: return .lik6
        case .lim1: return .lim1
        case .lim2: return .lim2
        case .lim3: return .lim3
        case .lim4: return .lim4
        case .lim5: return .lim5
        case .lim6: return .lim6
        case .lin1: return .lin1
        case .lin2: return .lin2
        case .lin4: return .lin4
        case .lin5: return .lin5
        case .lin6: return .lin6
        case .ling1: return .ling1
        case .ling2: return .ling2
        case .ling3: return .ling3
        case .ling4: return .ling4
        case .ling5: return .ling5
        case .ling6: return .ling6
        case .lip1: return .lip1
        case .lip6: return .lip6
        case .lit3: return .lit3
        case .lit6: return .lit6
        case .liu1: return .liu1
        case .liu2: return .liu2
        case .liu4: return .liu4
        case .liu5: return .liu5
        case .liu6: return .liu6
        case .lo1: return .lo1
        case .lo2: return .lo2
        case .lo3: return .lo3
        case .lo4: return .lo4
        case .lo5: return .lo5
        case .lo6: return .lo6
        case .loe1: return .loe1
        case .loe2: return .loe2
        case .loek1: return .loek1
        case .loek2: return .loek2
        case .loek6: return .loek6
        case .loeng2: return .loeng2
        case .loeng4: return .loeng4
        case .loeng5: return .loeng5
        case .loeng6: return .loeng6
        case .loi1: return .loi1
        case .loi2: return .loi2
        case .loi4: return .loi4
        case .loi5: return .loi5
        case .loi6: return .loi6
        case .lok1: return .lok1
        case .lok2: return .lok2
        case .lok3: return .lok3
        case .lok6: return .lok6
        case .long1: return .long1
        case .long2: return .long2
        case .long3: return .long3
        case .long4: return .long4
        case .long5: return .long5
        case .long6: return .long6
        case .lou1: return .lou1
        case .lou2: return .lou2
        case .lou4: return .lou4
        case .lou5: return .lou5
        case .lou6: return .lou6
        case .lu1: return .lu1
        case .luk1: return .luk1
        case .luk2: return .luk2
        case .luk6: return .luk6
        case .lung1: return .lung1
        case .lung2: return .lung2
        case .lung4: return .lung4
        case .lung5: return .lung5
        case .lung6: return .lung6
        case .lyun1: return .lyun1
        case .lyun2: return .lyun2
        case .lyun4: return .lyun4
        case .lyun5: return .lyun5
        case .lyun6: return .lyun6
        case .lyut1: return .lyut1
        case .lyut3: return .lyut3
        case .lyut6: return .lyut6
        case .m2: return .m2
        case .m4: return .m4
        case .m5: return .m5
        case .m6: return .m6
        case .maa1: return .maa1
        case .maa2: return .maa2
        case .maa3: return .maa3
        case .maa4: return .maa4
        case .maa5: return .maa5
        case .maa6: return .maa6
        case .maai2: return .maai2
        case .maai4: return .maai4
        case .maai5: return .maai5
        case .maai6: return .maai6
        case .maak1: return .maak1
        case .maak3: return .maak3
        case .maak6: return .maak6
        case .maan1: return .maan1
        case .maan2: return .maan2
        case .maan4: return .maan4
        case .maan5: return .maan5
        case .maan6: return .maan6
        case .maang1: return .maang1
        case .maang2: return .maang2
        case .maang4: return .maang4
        case .maang5: return .maang5
        case .maang6: return .maang6
        case .maat3: return .maat3
        case .maat6: return .maat6
        case .maau1: return .maau1
        case .maau4: return .maau4
        case .maau5: return .maau5
        case .maau6: return .maau6
        case .mai1: return .mai1
        case .mai2: return .mai2
        case .mai4: return .mai4
        case .mai5: return .mai5
        case .mai6: return .mai6
        case .mak1: return .mak1
        case .mak2: return .mak2
        case .mak6: return .mak6
        case .mam1: return .mam1
        case .man1: return .man1
        case .man2: return .man2
        case .man3: return .man3
        case .man4: return .man4
        case .man5: return .man5
        case .man6: return .man6
        case .mang1: return .mang1
        case .mang2: return .mang2
        case .mang3: return .mang3
        case .mang4: return .mang4
        case .mang6: return .mang6
        case .mat1: return .mat1
        case .mat2: return .mat2
        case .mat6: return .mat6
        case .mau1: return .mau1
        case .mau4: return .mau4
        case .mau5: return .mau5
        case .mau6: return .mau6
        case .me1: return .me1
        case .me2: return .me2
        case .me5: return .me5
        case .me6: return .me6
        case .mei1: return .mei1
        case .mei2: return .mei2
        case .mei4: return .mei4
        case .mei5: return .mei5
        case .mei6: return .mei6
        case .men1: return .men1
        case .meng2: return .meng2
        case .meng4: return .meng4
        case .meng6: return .meng6
        case .mi1: return .mi1
        case .mi4: return .mi4
        case .mik6: return .mik6
        case .min1: return .min1
        case .min2: return .min2
        case .min4: return .min4
        case .min5: return .min5
        case .min6: return .min6
        case .ming1: return .ming1
        case .ming2: return .ming2
        case .ming4: return .ming4
        case .ming5: return .ming5
        case .ming6: return .ming6
        case .mit1: return .mit1
        case .mit6: return .mit6
        case .miu1: return .miu1
        case .miu2: return .miu2
        case .miu4: return .miu4
        case .miu5: return .miu5
        case .miu6: return .miu6
        case .mo1: return .mo1
        case .mo2: return .mo2
        case .mo4: return .mo4
        case .mo5: return .mo5
        case .mo6: return .mo6
        case .mok1: return .mok1
        case .mok2: return .mok2
        case .mok6: return .mok6
        case .mong1: return .mong1
        case .mong2: return .mong2
        case .mong4: return .mong4
        case .mong5: return .mong5
        case .mong6: return .mong6
        case .mou1: return .mou1
        case .mou2: return .mou2
        case .mou4: return .mou4
        case .mou5: return .mou5
        case .mou6: return .mou6
        case .mui1: return .mui1
        case .mui2: return .mui2
        case .mui4: return .mui4
        case .mui5: return .mui5
        case .mui6: return .mui6
        case .muk1: return .muk1
        case .muk6: return .muk6
        case .mun1: return .mun1
        case .mun2: return .mun2
        case .mun4: return .mun4
        case .mun5: return .mun5
        case .mun6: return .mun6
        case .mung1: return .mung1
        case .mung2: return .mung2
        case .mung4: return .mung4
        case .mung5: return .mung5
        case .mung6: return .mung6
        case .mut1: return .mut1
        case .mut2: return .mut2
        case .mut3: return .mut3
        case .mut6: return .mut6
        case .naa1: return .naa1
        case .naa2: return .naa2
        case .naa3: return .naa3
        case .naa4: return .naa4
        case .naa5: return .naa5
        case .naa6: return .naa6
        case .naai1: return .naai1
        case .naai2: return .naai2
        case .naai3: return .naai3
        case .naai4: return .naai4
        case .naai5: return .naai5
        case .naai6: return .naai6
        case .naam2: return .naam2
        case .naam3: return .naam3
        case .naam4: return .naam4
        case .naam5: return .naam5
        case .naam6: return .naam6
        case .naan2: return .naan2
        case .naan3: return .naan3
        case .naan4: return .naan4
        case .naan5: return .naan5
        case .naan6: return .naan6
        case .naap2: return .naap2
        case .naap6: return .naap6
        case .naat3: return .naat3
        case .naat6: return .naat6
        case .naau1: return .naau1
        case .naau2: return .naau2
        case .naau4: return .naau4
        case .naau5: return .naau5
        case .naau6: return .naau6
        case .nai2: return .nai2
        case .nai4: return .nai4
        case .nai5: return .nai5
        case .nai6: return .nai6
        case .nak1: return .nak1
        case .nak6: return .nak6
        case .nam2: return .nam2
        case .nam4: return .nam4
        case .nam5: return .nam5
        case .nam6: return .nam6
        case .nan2: return .nan2
        case .nan4: return .nan4
        case .nang3: return .nang3
        case .nang4: return .nang4
        case .nap1: return .nap1
        case .nap6: return .nap6
        case .nat6: return .nat6
        case .nau1: return .nau1
        case .nau2: return .nau2
        case .nau4: return .nau4
        case .nau5: return .nau5
        case .nau6: return .nau6
        case .ne1: return .ne1
        case .ne6: return .ne6
        case .nei1: return .nei1
        case .nei2: return .nei2
        case .nei4: return .nei4
        case .nei5: return .nei5
        case .nei6: return .nei6
        case .neoi2: return .neoi2
        case .neoi4: return .neoi4
        case .neoi5: return .neoi5
        case .neoi6: return .neoi6
        case .neot6: return .neot6
        case .ng2: return .ng2
        case .ng4: return .ng4
        case .ng5: return .ng5
        case .ng6: return .ng6
        case .ngaa1: return .ngaa1
        case .ngaa2: return .ngaa2
        case .ngaa3: return .ngaa3
        case .ngaa4: return .ngaa4
        case .ngaa5: return .ngaa5
        case .ngaa6: return .ngaa6
        case .ngaai1: return .ngaai1
        case .ngaai2: return .ngaai2
        case .ngaai3: return .ngaai3
        case .ngaai4: return .ngaai4
        case .ngaai5: return .ngaai5
        case .ngaai6: return .ngaai6
        case .ngaak1: return .ngaak1
        case .ngaak2: return .ngaak2
        case .ngaak3: return .ngaak3
        case .ngaak6: return .ngaak6
        case .ngaam1: return .ngaam1
        case .ngaam4: return .ngaam4
        case .ngaan2: return .ngaan2
        case .ngaan3: return .ngaan3
        case .ngaan4: return .ngaan4
        case .ngaan5: return .ngaan5
        case .ngaan6: return .ngaan6
        case .ngaang1: return .ngaang1
        case .ngaang2: return .ngaang2
        case .ngaang6: return .ngaang6
        case .ngaap2: return .ngaap2
        case .ngaap3: return .ngaap3
        case .ngaat1: return .ngaat1
        case .ngaat2: return .ngaat2
        case .ngaat3: return .ngaat3
        case .ngaat6: return .ngaat6
        case .ngaau1: return .ngaau1
        case .ngaau2: return .ngaau2
        case .ngaau3: return .ngaau3
        case .ngaau4: return .ngaau4
        case .ngaau5: return .ngaau5
        case .ngaau6: return .ngaau6
        case .ngai1: return .ngai1
        case .ngai2: return .ngai2
        case .ngai3: return .ngai3
        case .ngai4: return .ngai4
        case .ngai5: return .ngai5
        case .ngai6: return .ngai6
        case .ngak1: return .ngak1
        case .ngam1: return .ngam1
        case .ngam2: return .ngam2
        case .ngam3: return .ngam3
        case .ngam4: return .ngam4
        case .ngam5: return .ngam5
        case .ngam6: return .ngam6
        case .ngan1: return .ngan1
        case .ngan2: return .ngan2
        case .ngan3: return .ngan3
        case .ngan4: return .ngan4
        case .ngan6: return .ngan6
        case .ngang1: return .ngang1
        case .ngang2: return .ngang2
        case .ngang3: return .ngang3
        case .ngap1: return .ngap1
        case .ngap6: return .ngap6
        case .ngat1: return .ngat1
        case .ngat6: return .ngat6
        case .ngau1: return .ngau1
        case .ngau2: return .ngau2
        case .ngau3: return .ngau3
        case .ngau4: return .ngau4
        case .ngau5: return .ngau5
        case .ngau6: return .ngau6
        case .nge4: return .nge4
        case .nge6: return .nge6
        case .ngei1: return .ngei1
        case .ngei3: return .ngei3
        case .ngei6: return .ngei6
        case .ngi1: return .ngi1
        case .ngit6: return .ngit6
        case .ngm2: return .ngm2
        case .ngm4: return .ngm4
        case .ngm6: return .ngm6
        case .ngo1: return .ngo1
        case .ngo2: return .ngo2
        case .ngo4: return .ngo4
        case .ngo5: return .ngo5
        case .ngo6: return .ngo6
        case .ngoi1: return .ngoi1
        case .ngoi2: return .ngoi2
        case .ngoi3: return .ngoi3
        case .ngoi4: return .ngoi4
        case .ngoi6: return .ngoi6
        case .ngok2: return .ngok2
        case .ngok3: return .ngok3
        case .ngok6: return .ngok6
        case .ngon1: return .ngon1
        case .ngon2: return .ngon2
        case .ngon3: return .ngon3
        case .ngon4: return .ngon4
        case .ngon6: return .ngon6
        case .ngong1: return .ngong1
        case .ngong2: return .ngong2
        case .ngong3: return .ngong3
        case .ngong4: return .ngong4
        case .ngong5: return .ngong5
        case .ngong6: return .ngong6
        case .ngot6: return .ngot6
        case .ngou1: return .ngou1
        case .ngou2: return .ngou2
        case .ngou3: return .ngou3
        case .ngou4: return .ngou4
        case .ngou6: return .ngou6
        case .nguk1: return .nguk1
        case .ngung1: return .ngung1
        case .ngung2: return .ngung2
        case .ngung3: return .ngung3
        case .ni1: return .ni1
        case .nik1: return .nik1
        case .nik6: return .nik6
        case .nim1: return .nim1
        case .nim2: return .nim2
        case .nim3: return .nim3
        case .nim4: return .nim4
        case .nim5: return .nim5
        case .nim6: return .nim6
        case .nin1: return .nin1
        case .nin2: return .nin2
        case .nin4: return .nin4
        case .nin5: return .nin5
        case .nin6: return .nin6
        case .ning1: return .ning1
        case .ning2: return .ning2
        case .ning4: return .ning4
        case .ning5: return .ning5
        case .ning6: return .ning6
        case .nip1: return .nip1
        case .nip6: return .nip6
        case .nit6: return .nit6
        case .niu1: return .niu1
        case .niu2: return .niu2
        case .niu5: return .niu5
        case .niu6: return .niu6
        case .no1: return .no1
        case .no2: return .no2
        case .no4: return .no4
        case .no5: return .no5
        case .no6: return .no6
        case .noek6: return .noek6
        case .noeng2: return .noeng2
        case .noeng4: return .noeng4
        case .noeng6: return .noeng6
        case .noi1: return .noi1
        case .noi2: return .noi2
        case .noi4: return .noi4
        case .noi5: return .noi5
        case .noi6: return .noi6
        case .nok6: return .nok6
        case .nong1: return .nong1
        case .nong2: return .nong2
        case .nong4: return .nong4
        case .nong5: return .nong5
        case .nong6: return .nong6
        case .nou4: return .nou4
        case .nou5: return .nou5
        case .nou6: return .nou6
        case .nuk6: return .nuk6
        case .nung1: return .nung1
        case .nung4: return .nung4
        case .nung5: return .nung5
        case .nung6: return .nung6
        case .nyun2: return .nyun2
        case .nyun4: return .nyun4
        case .nyun5: return .nyun5
        case .nyun6: return .nyun6
        case .o1: return .o1
        case .o2: return .o2
        case .o4: return .o4
        case .o5: return .o5
        case .o6: return .o6
        case .oi1: return .oi1
        case .oi2: return .oi2
        case .oi3: return .oi3
        case .oi4: return .oi4
        case .oi6: return .oi6
        case .ok2: return .ok2
        case .ok3: return .ok3
        case .ok6: return .ok6
        case .on1: return .on1
        case .on2: return .on2
        case .on3: return .on3
        case .on4: return .on4
        case .on6: return .on6
        case .ong1: return .ong1
        case .ong2: return .ong2
        case .ong3: return .ong3
        case .ong4: return .ong4
        case .ong5: return .ong5
        case .ong6: return .ong6
        case .ot6: return .ot6
        case .ou1: return .ou1
        case .ou2: return .ou2
        case .ou3: return .ou3
        case .ou4: return .ou4
        case .ou6: return .ou6
        case .paa1: return .paa1
        case .paa2: return .paa2
        case .paa3: return .paa3
        case .paa4: return .paa4
        case .paai1: return .paai1
        case .paai2: return .paai2
        case .paai3: return .paai3
        case .paai4: return .paai4
        case .paak1: return .paak1
        case .paak2: return .paak2
        case .paak3: return .paak3
        case .paak4: return .paak4
        case .paak6: return .paak6
        case .paan1: return .paan1
        case .paan3: return .paan3
        case .paang1: return .paang1
        case .paang2: return .paang2
        case .paang4: return .paang4
        case .paang5: return .paang5
        case .paang6: return .paang6
        case .paat1: return .paat1
        case .paat3: return .paat3
        case .paat6: return .paat6
        case .paau1: return .paau1
        case .paau2: return .paau2
        case .paau3: return .paau3
        case .paau4: return .paau4
        case .pai1: return .pai1
        case .pai2: return .pai2
        case .pai3: return .pai3
        case .pai5: return .pai5
        case .pai6: return .pai6
        case .pan1: return .pan1
        case .pan3: return .pan3
        case .pan4: return .pan4
        case .pan5: return .pan5
        case .pang2: return .pang2
        case .pang3: return .pang3
        case .pang4: return .pang4
        case .pat1: return .pat1
        case .pat6: return .pat6
        case .pau1: return .pau1
        case .pau2: return .pau2
        case .pau3: return .pau3
        case .pau4: return .pau4
        case .pe1: return .pe1
        case .pe5: return .pe5
        case .pei1: return .pei1
        case .pei2: return .pei2
        case .pei3: return .pei3
        case .pei4: return .pei4
        case .pei5: return .pei5
        case .pei6: return .pei6
        case .pek1: return .pek1
        case .pek3: return .pek3
        case .pek6: return .pek6
        case .pen1: return .pen1
        case .peng1: return .peng1
        case .peng2: return .peng2
        case .peng4: return .peng4
        case .pet1: return .pet1
        case .pet6: return .pet6
        case .pi1: return .pi1
        case .pik1: return .pik1
        case .pin1: return .pin1
        case .pin2: return .pin2
        case .pin3: return .pin3
        case .pin4: return .pin4
        case .pin5: return .pin5
        case .ping1: return .ping1
        case .ping2: return .ping2
        case .ping3: return .ping3
        case .ping4: return .ping4
        case .pit3: return .pit3
        case .piu1: return .piu1
        case .piu2: return .piu2
        case .piu3: return .piu3
        case .piu4: return .piu4
        case .piu5: return .piu5
        case .po1: return .po1
        case .po2: return .po2
        case .po3: return .po3
        case .po4: return .po4
        case .pok1: return .pok1
        case .pok2: return .pok2
        case .pok3: return .pok3
        case .pong1: return .pong1
        case .pong2: return .pong2
        case .pong3: return .pong3
        case .pong4: return .pong4
        case .pong5: return .pong5
        case .pot1: return .pot1
        case .pou1: return .pou1
        case .pou2: return .pou2
        case .pou3: return .pou3
        case .pou4: return .pou4
        case .pou5: return .pou5
        case .pou6: return .pou6
        case .pui1: return .pui1
        case .pui2: return .pui2
        case .pui3: return .pui3
        case .pui4: return .pui4
        case .pui5: return .pui5
        case .pui6: return .pui6
        case .puk1: return .puk1
        case .puk3: return .puk3
        case .puk6: return .puk6
        case .pun1: return .pun1
        case .pun2: return .pun2
        case .pun3: return .pun3
        case .pun4: return .pun4
        case .pun5: return .pun5
        case .pun6: return .pun6
        case .pung1: return .pung1
        case .pung2: return .pung2
        case .pung3: return .pung3
        case .pung4: return .pung4
        case .put3: return .put3
        case .put6: return .put6
        case .saa1: return .saa1
        case .saa2: return .saa2
        case .saa3: return .saa3
        case .saa4: return .saa4
        case .saai1: return .saai1
        case .saai2: return .saai2
        case .saai3: return .saai3
        case .saai4: return .saai4
        case .saai5: return .saai5
        case .saak3: return .saak3
        case .saam1: return .saam1
        case .saam2: return .saam2
        case .saam3: return .saam3
        case .saam4: return .saam4
        case .saan1: return .saan1
        case .saan2: return .saan2
        case .saan3: return .saan3
        case .saan4: return .saan4
        case .saang1: return .saang1
        case .saang2: return .saang2
        case .saap1: return .saap1
        case .saap3: return .saap3
        case .saap6: return .saap6
        case .saat2: return .saat2
        case .saat3: return .saat3
        case .saau1: return .saau1
        case .saau2: return .saau2
        case .saau3: return .saau3
        case .saau4: return .saau4
        case .sai1: return .sai1
        case .sai2: return .sai2
        case .sai3: return .sai3
        case .sai4: return .sai4
        case .sai6: return .sai6
        case .sak1: return .sak1
        case .sam1: return .sam1
        case .sam2: return .sam2
        case .sam3: return .sam3
        case .sam4: return .sam4
        case .sam6: return .sam6
        case .san1: return .san1
        case .san2: return .san2
        case .san3: return .san3
        case .san4: return .san4
        case .san5: return .san5
        case .san6: return .san6
        case .sang1: return .sang1
        case .sang3: return .sang3
        case .sap1: return .sap1
        case .sap6: return .sap6
        case .sat1: return .sat1
        case .sat6: return .sat6
        case .sau1: return .sau1
        case .sau2: return .sau2
        case .sau3: return .sau3
        case .sau4: return .sau4
        case .sau6: return .sau6
        case .se1: return .se1
        case .se2: return .se2
        case .se3: return .se3
        case .se4: return .se4
        case .se5: return .se5
        case .se6: return .se6
        case .sei2: return .sei2
        case .sei3: return .sei3
        case .sek2: return .sek2
        case .sek3: return .sek3
        case .sek6: return .sek6
        case .sen1: return .sen1
        case .seng1: return .seng1
        case .seng2: return .seng2
        case .seng3: return .seng3
        case .seng4: return .seng4
        case .seoi1: return .seoi1
        case .seoi2: return .seoi2
        case .seoi3: return .seoi3
        case .seoi4: return .seoi4
        case .seoi5: return .seoi5
        case .seoi6: return .seoi6
        case .seon1: return .seon1
        case .seon2: return .seon2
        case .seon3: return .seon3
        case .seon4: return .seon4
        case .seon5: return .seon5
        case .seon6: return .seon6
        case .seot1: return .seot1
        case .seot2: return .seot2
        case .seot6: return .seot6
        case .set1: return .set1
        case .seu1: return .seu1
        case .si1: return .si1
        case .si2: return .si2
        case .si3: return .si3
        case .si4: return .si4
        case .si5: return .si5
        case .si6: return .si6
        case .sik1: return .sik1
        case .sik2: return .sik2
        case .sik3: return .sik3
        case .sik6: return .sik6
        case .sim1: return .sim1
        case .sim2: return .sim2
        case .sim3: return .sim3
        case .sim4: return .sim4
        case .sim6: return .sim6
        case .sin1: return .sin1
        case .sin2: return .sin2
        case .sin3: return .sin3
        case .sin4: return .sin4
        case .sin5: return .sin5
        case .sin6: return .sin6
        case .sing1: return .sing1
        case .sing2: return .sing2
        case .sing3: return .sing3
        case .sing4: return .sing4
        case .sing6: return .sing6
        case .sip3: return .sip3
        case .sit3: return .sit3
        case .sit6: return .sit6
        case .siu1: return .siu1
        case .siu2: return .siu2
        case .siu3: return .siu3
        case .siu4: return .siu4
        case .siu6: return .siu6
        case .so1: return .so1
        case .so2: return .so2
        case .so3: return .so3
        case .so4: return .so4
        case .soe4: return .soe4
        case .soek3: return .soek3
        case .soeng1: return .soeng1
        case .soeng2: return .soeng2
        case .soeng3: return .soeng3
        case .soeng4: return .soeng4
        case .soeng5: return .soeng5
        case .soeng6: return .soeng6
        case .soi1: return .soi1
        case .soi2: return .soi2
        case .sok1: return .sok1
        case .sok3: return .sok3
        case .song1: return .song1
        case .song2: return .song2
        case .song3: return .song3
        case .sot1: return .sot1
        case .sou1: return .sou1
        case .sou2: return .sou2
        case .sou3: return .sou3
        case .sou4: return .sou4
        case .su4: return .su4
        case .suk1: return .suk1
        case .suk3: return .suk3
        case .suk6: return .suk6
        case .sung1: return .sung1
        case .sung2: return .sung2
        case .sung3: return .sung3
        case .sung4: return .sung4
        case .syu1: return .syu1
        case .syu2: return .syu2
        case .syu3: return .syu3
        case .syu4: return .syu4
        case .syu5: return .syu5
        case .syu6: return .syu6
        case .syun1: return .syun1
        case .syun2: return .syun2
        case .syun3: return .syun3
        case .syun4: return .syun4
        case .syun5: return .syun5
        case .syun6: return .syun6
        case .syut1: return .syut1
        case .syut3: return .syut3
        case .taa1: return .taa1
        case .taai1: return .taai1
        case .taai2: return .taai2
        case .taai3: return .taai3
        case .taai5: return .taai5
        case .taam1: return .taam1
        case .taam2: return .taam2
        case .taam3: return .taam3
        case .taam4: return .taam4
        case .taam5: return .taam5
        case .taan1: return .taan1
        case .taan2: return .taan2
        case .taan3: return .taan3
        case .taan4: return .taan4
        case .taap1: return .taap1
        case .taap2: return .taap2
        case .taap3: return .taap3
        case .taat1: return .taat1
        case .taat3: return .taat3
        case .taat6: return .taat6
        case .tai1: return .tai1
        case .tai2: return .tai2
        case .tai3: return .tai3
        case .tai4: return .tai4
        case .tai5: return .tai5
        case .tam2: return .tam2
        case .tam3: return .tam3
        case .tam4: return .tam4
        case .tam5: return .tam5
        case .tan1: return .tan1
        case .tan2: return .tan2
        case .tan3: return .tan3
        case .tan4: return .tan4
        case .tang1: return .tang1
        case .tang3: return .tang3
        case .tang4: return .tang4
        case .tap1: return .tap1
        case .tau1: return .tau1
        case .tau2: return .tau2
        case .tau3: return .tau3
        case .tau4: return .tau4
        case .tek3: return .tek3
        case .teng1: return .teng1
        case .teng5: return .teng5
        case .teoi1: return .teoi1
        case .teoi2: return .teoi2
        case .teoi3: return .teoi3
        case .teoi4: return .teoi4
        case .teon1: return .teon1
        case .teon2: return .teon2
        case .teon3: return .teon3
        case .teon5: return .teon5
        case .teot1: return .teot1
        case .teu4: return .teu4
        case .ti1: return .ti1
        case .ti4: return .ti4
        case .tik1: return .tik1
        case .tim1: return .tim1
        case .tim2: return .tim2
        case .tim3: return .tim3
        case .tim4: return .tim4
        case .tim5: return .tim5
        case .tin1: return .tin1
        case .tin2: return .tin2
        case .tin3: return .tin3
        case .tin4: return .tin4
        case .tin5: return .tin5
        case .ting1: return .ting1
        case .ting2: return .ting2
        case .ting3: return .ting3
        case .ting4: return .ting4
        case .ting5: return .ting5
        case .ting6: return .ting6
        case .tip1: return .tip1
        case .tip2: return .tip2
        case .tip3: return .tip3
        case .tit3: return .tit3
        case .tiu1: return .tiu1
        case .tiu2: return .tiu2
        case .tiu3: return .tiu3
        case .tiu4: return .tiu4
        case .tiu5: return .tiu5
        case .to1: return .to1
        case .to2: return .to2
        case .to3: return .to3
        case .to4: return .to4
        case .to5: return .to5
        case .toe3: return .toe3
        case .toe5: return .toe5
        case .toi1: return .toi1
        case .toi2: return .toi2
        case .toi4: return .toi4
        case .toi5: return .toi5
        case .tok1: return .tok1
        case .tok2: return .tok2
        case .tok3: return .tok3
        case .tong1: return .tong1
        case .tong2: return .tong2
        case .tong3: return .tong3
        case .tong4: return .tong4
        case .tong5: return .tong5
        case .tou1: return .tou1
        case .tou2: return .tou2
        case .tou3: return .tou3
        case .tou4: return .tou4
        case .tou5: return .tou5
        case .tuk1: return .tuk1
        case .tung1: return .tung1
        case .tung2: return .tung2
        case .tung3: return .tung3
        case .tung4: return .tung4
        case .tyun1: return .tyun1
        case .tyun2: return .tyun2
        case .tyun4: return .tyun4
        case .tyun5: return .tyun5
        case .tyut1: return .tyut1
        case .tyut3: return .tyut3
        case .uk1: return .uk1
        case .ung1: return .ung1
        case .ung2: return .ung2
        case .ung3: return .ung3
        case .waa1: return .waa1
        case .waa2: return .waa2
        case .waa4: return .waa4
        case .waa5: return .waa5
        case .waa6: return .waa6
        case .waai1: return .waai1
        case .waai2: return .waai2
        case .waai4: return .waai4
        case .waai6: return .waai6
        case .waak1: return .waak1
        case .waak2: return .waak2
        case .waak6: return .waak6
        case .waan1: return .waan1
        case .waan2: return .waan2
        case .waan4: return .waan4
        case .waan5: return .waan5
        case .waan6: return .waan6
        case .waang1: return .waang1
        case .waang4: return .waang4
        case .waang6: return .waang6
        case .waat2: return .waat2
        case .waat3: return .waat3
        case .waat6: return .waat6
        case .wai1: return .wai1
        case .wai2: return .wai2
        case .wai3: return .wai3
        case .wai4: return .wai4
        case .wai5: return .wai5
        case .wai6: return .wai6
        case .wak6: return .wak6
        case .wan1: return .wan1
        case .wan2: return .wan2
        case .wan3: return .wan3
        case .wan4: return .wan4
        case .wan5: return .wan5
        case .wan6: return .wan6
        case .wang2: return .wang2
        case .wang4: return .wang4
        case .wang6: return .wang6
        case .wat1: return .wat1
        case .wat2: return .wat2
        case .wat6: return .wat6
        case .we2: return .we2
        case .we5: return .we5
        case .wen1: return .wen1
        case .wet1: return .wet1
        case .wi1: return .wi1
        case .wik6: return .wik6
        case .wing1: return .wing1
        case .wing4: return .wing4
        case .wing5: return .wing5
        case .wing6: return .wing6
        case .wo1: return .wo1
        case .wo2: return .wo2
        case .wo3: return .wo3
        case .wo4: return .wo4
        case .wo5: return .wo5
        case .wo6: return .wo6
        case .woek1: return .woek1
        case .wok1: return .wok1
        case .wok2: return .wok2
        case .wok3: return .wok3
        case .wok6: return .wok6
        case .wong1: return .wong1
        case .wong2: return .wong2
        case .wong4: return .wong4
        case .wong5: return .wong5
        case .wong6: return .wong6
        case .wu1: return .wu1
        case .wu2: return .wu2
        case .wu3: return .wu3
        case .wu4: return .wu4
        case .wu6: return .wu6
        case .wui1: return .wui1
        case .wui2: return .wui2
        case .wui3: return .wui3
        case .wui4: return .wui4
        case .wui5: return .wui5
        case .wui6: return .wui6
        case .wun1: return .wun1
        case .wun2: return .wun2
        case .wun3: return .wun3
        case .wun4: return .wun4
        case .wun5: return .wun5
        case .wun6: return .wun6
        case .wut6: return .wut6
        case .zaa1: return .zaa1
        case .zaa2: return .zaa2
        case .zaa3: return .zaa3
        case .zaa6: return .zaa6
        case .zaai1: return .zaai1
        case .zaai2: return .zaai2
        case .zaai3: return .zaai3
        case .zaai6: return .zaai6
        case .zaak2: return .zaak2
        case .zaak3: return .zaak3
        case .zaak6: return .zaak6
        case .zaam1: return .zaam1
        case .zaam2: return .zaam2
        case .zaam3: return .zaam3
        case .zaam6: return .zaam6
        case .zaan1: return .zaan1
        case .zaan2: return .zaan2
        case .zaan3: return .zaan3
        case .zaan6: return .zaan6
        case .zaang1: return .zaang1
        case .zaang3: return .zaang3
        case .zaang6: return .zaang6
        case .zaap2: return .zaap2
        case .zaap3: return .zaap3
        case .zaap6: return .zaap6
        case .zaat2: return .zaat2
        case .zaat3: return .zaat3
        case .zaat6: return .zaat6
        case .zaau1: return .zaau1
        case .zaau2: return .zaau2
        case .zaau3: return .zaau3
        case .zaau6: return .zaau6
        case .zai1: return .zai1
        case .zai2: return .zai2
        case .zai3: return .zai3
        case .zai4: return .zai4
        case .zai6: return .zai6
        case .zak1: return .zak1
        case .zam1: return .zam1
        case .zam2: return .zam2
        case .zam3: return .zam3
        case .zam4: return .zam4
        case .zam6: return .zam6
        case .zan1: return .zan1
        case .zan2: return .zan2
        case .zan3: return .zan3
        case .zan5: return .zan5
        case .zan6: return .zan6
        case .zang1: return .zang1
        case .zang2: return .zang2
        case .zang3: return .zang3
        case .zang6: return .zang6
        case .zap1: return .zap1
        case .zap6: return .zap6
        case .zat1: return .zat1
        case .zat2: return .zat2
        case .zat6: return .zat6
        case .zau1: return .zau1
        case .zau2: return .zau2
        case .zau3: return .zau3
        case .zau6: return .zau6
        case .ze1: return .ze1
        case .ze2: return .ze2
        case .ze3: return .ze3
        case .ze4: return .ze4
        case .ze5: return .ze5
        case .ze6: return .ze6
        case .zek1: return .zek1
        case .zek3: return .zek3
        case .zek6: return .zek6
        case .zem1: return .zem1
        case .zeng1: return .zeng1
        case .zeng2: return .zeng2
        case .zeng3: return .zeng3
        case .zeng6: return .zeng6
        case .zeoi1: return .zeoi1
        case .zeoi2: return .zeoi2
        case .zeoi3: return .zeoi3
        case .zeoi6: return .zeoi6
        case .zeon1: return .zeon1
        case .zeon2: return .zeon2
        case .zeon3: return .zeon3
        case .zeon6: return .zeon6
        case .zeot1: return .zeot1
        case .zeot6: return .zeot6
        case .zep6: return .zep6
        case .zi1: return .zi1
        case .zi2: return .zi2
        case .zi3: return .zi3
        case .zi4: return .zi4
        case .zi6: return .zi6
        case .zik1: return .zik1
        case .zik2: return .zik2
        case .zik3: return .zik3
        case .zik6: return .zik6
        case .zim1: return .zim1
        case .zim2: return .zim2
        case .zim3: return .zim3
        case .zim6: return .zim6
        case .zin1: return .zin1
        case .zin2: return .zin2
        case .zin3: return .zin3
        case .zin6: return .zin6
        case .zing1: return .zing1
        case .zing2: return .zing2
        case .zing3: return .zing3
        case .zing6: return .zing6
        case .zip1: return .zip1
        case .zip2: return .zip2
        case .zip3: return .zip3
        case .zip6: return .zip6
        case .zit1: return .zit1
        case .zit2: return .zit2
        case .zit3: return .zit3
        case .zit6: return .zit6
        case .ziu1: return .ziu1
        case .ziu2: return .ziu2
        case .ziu3: return .ziu3
        case .ziu6: return .ziu6
        case .zo2: return .zo2
        case .zo3: return .zo3
        case .zo4: return .zo4
        case .zo6: return .zo6
        case .zoe1: return .zoe1
        case .zoek2: return .zoek2
        case .zoek3: return .zoek3
        case .zoek6: return .zoek6
        case .zoeng1: return .zoeng1
        case .zoeng2: return .zoeng2
        case .zoeng3: return .zoeng3
        case .zoeng6: return .zoeng6
        case .zoi1: return .zoi1
        case .zoi2: return .zoi2
        case .zoi3: return .zoi3
        case .zoi6: return .zoi6
        case .zok2: return .zok2
        case .zok3: return .zok3
        case .zok6: return .zok6
        case .zong1: return .zong1
        case .zong2: return .zong2
        case .zong3: return .zong3
        case .zong5: return .zong5
        case .zong6: return .zong6
        case .zou1: return .zou1
        case .zou2: return .zou2
        case .zou3: return .zou3
        case .zou6: return .zou6
        case .zuk1: return .zuk1
        case .zuk3: return .zuk3
        case .zuk6: return .zuk6
        case .zung1: return .zung1
        case .zung2: return .zung2
        case .zung3: return .zung3
        case .zung6: return .zung6
        case .zyu1: return .zyu1
        case .zyu2: return .zyu2
        case .zyu3: return .zyu3
        case .zyu6: return .zyu6
        case .zyun1: return .zyun1
        case .zyun2: return .zyun2
        case .zyun3: return .zyun3
        case .zyun6: return .zyun6
        case .zyut1: return .zyut1
        case .zyut2: return .zyut2
        case .zyut3: return .zyut3
        case .zyut6: return .zyut6
        }
    }
    
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
