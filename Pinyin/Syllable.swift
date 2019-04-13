//
//  Phoneme.swift
//  Pinyin
//
//  Created by Resonance on 17/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

import BaseDictionary

public typealias PinyinSyllables = Syllables
public typealias PinyinSyllable = Syllable

public enum Syllables {
    case china(syllables: [Syllable])
    case chinas(roc: [Syllable], prc: [Syllable])
    case none
}

public enum Syllable : Int, CaseIterable {
    case ā
    case á
    case ǎ
    case à
    case a
    case āi
    case ái
    case ǎi
    case ài
    case ān
    case án
    case ǎn
    case àn
    case āng
    case áng
    case ǎng
    case àng
    case āo
    case áo
    case ǎo
    case ào
    case bā
    case bá
    case bǎ
    case bà
    case ba
    case bāi
    case bái
    case bǎi
    case bài
    case bān
    case bǎn
    case bàn
    case bāng
    case bǎng
    case bàng
    case bāo
    case báo
    case bǎo
    case bào
    case bēi
    case běi
    case bèi
    case bei
    case bēn
    case běn
    case bèn
    case bēng
    case béng
    case běng
    case bèng
    case bī
    case bí
    case bǐ
    case bì
    case biān
    case biǎn
    case biàn
    case bian
    case biāo
    case biáo
    case biǎo
    case biào
    case biē
    case bié
    case biě
    case biè
    case bīn
    case bǐn
    case bìn
    case bīng
    case bǐng
    case bìng
    case bō
    case bó
    case bǒ
    case bò
    case bo
    case bū
    case bú
    case bǔ
    case bù
    case cā
    case cǎ
    case cà
    case cāi
    case cái
    case cǎi
    case cài
    case cān
    case cán
    case cǎn
    case càn
    case cāng
    case cáng
    case cǎng
    case càng
    case cāo
    case cáo
    case cǎo
    case cào
    case cè
    case cēn
    case cén
    case cēng
    case céng
    case cèng
    case chā
    case chá
    case chǎ
    case chà
    case cha
    case chāi
    case chái
    case chǎi
    case chài
    case chān
    case chán
    case chǎn
    case chàn
    case chāng
    case cháng
    case chǎng
    case chàng
    case chang
    case chāo
    case cháo
    case chǎo
    case chào
    case chē
    case chě
    case chè
    case chēn
    case chén
    case chěn
    case chèn
    case chen
    case chēng
    case chéng
    case chěng
    case chèng
    case chī
    case chí
    case chǐ
    case chì
    case chi
    case chōng
    case chóng
    case chǒng
    case chòng
    case chōu
    case chóu
    case chǒu
    case chòu
    case chou
    case chū
    case chú
    case chǔ
    case chù
    case chu
    case chuā
    case chuāi
    case chuái
    case chuǎi
    case chuài
    case chuān
    case chuán
    case chuǎn
    case chuàn
    case chuāng
    case chuáng
    case chuǎng
    case chuàng
    case chuī
    case chuí
    case chuì
    case chūn
    case chún
    case chǔn
    case chuō
    case chuó
    case chuò
    case chuo
    case cī
    case cí
    case cǐ
    case cì
    case cōng
    case cóng
    case còng
    case cǒu
    case còu
    case cū
    case cú
    case cǔ
    case cù
    case cuān
    case cuán
    case cuàn
    case cuī
    case cuí
    case cuǐ
    case cuì
    case cūn
    case cún
    case cǔn
    case cùn
    case cuō
    case cuó
    case cuǒ
    case cuò
    case dā
    case dá
    case dǎ
    case dà
    case da
    case dāi
    case dǎi
    case dài
    case dān
    case dán
    case dǎn
    case dàn
    case dāng
    case dǎng
    case dàng
    case dāo
    case dáo
    case dǎo
    case dào
    case dē
    case dé
    case de
    case dēi
    case děi
    case dēn
    case dèn
    case dēng
    case děng
    case dèng
    case dī
    case dí
    case dǐ
    case dì
    case diǎ
    case diān
    case diǎn
    case diàn
    case diāo
    case diǎo
    case diào
    case diē
    case dié
    case diè
    case dīng
    case díng
    case dǐng
    case dìng
    case diū
    case dōng
    case dǒng
    case dòng
    case dōu
    case dóu
    case dǒu
    case dòu
    case dū
    case dú
    case dǔ
    case dù
    case duān
    case duǎn
    case duàn
    case duī
    case duǐ
    case duì
    case dūn
    case dún
    case dǔn
    case dùn
    case duō
    case duó
    case duǒ
    case duò
    case duo
    case ē
    case é
    case ě
    case è
    case ēi
    case éi
    case ěi
    case èi
    case ēn
    case ěn
    case èn
    case ēng
    case ér
    case ěr
    case èr
    case er
    case fā
    case fá
    case fǎ
    case fà
    case fān
    case fán
    case fǎn
    case fàn
    case fāng
    case fáng
    case fǎng
    case fàng
    case fang
    case fēi
    case féi
    case fěi
    case fèi
    case fēn
    case fén
    case fěn
    case fèn
    case fēng
    case féng
    case fěng
    case fèng
    case fiào
    case fó
    case fōu
    case fóu
    case fǒu
    case fòu
    case fū
    case fú
    case fǔ
    case fù
    case fu
    case gā
    case gá
    case gǎ
    case gà
    case gāi
    case gǎi
    case gài
    case gān
    case gán
    case gǎn
    case gàn
    case gāng
    case gǎng
    case gàng
    case gāo
    case gǎo
    case gào
    case gē
    case gé
    case gě
    case gè
    case gěi
    case gēn
    case gén
    case gěn
    case gèn
    case gēng
    case gěng
    case gèng
    case gōng
    case gǒng
    case gòng
    case gōu
    case gǒu
    case gòu
    case gū
    case gú
    case gǔ
    case gù
    case guā
    case guǎ
    case guà
    case guāi
    case guái
    case guǎi
    case guài
    case guān
    case guǎn
    case guàn
    case guāng
    case guǎng
    case guàng
    case guī
    case guí
    case guǐ
    case guì
    case gūn
    case gǔn
    case gùn
    case guō
    case guó
    case guǒ
    case guò
    case guo
    case hā
    case há
    case hǎ
    case hà
    case hāi
    case hái
    case hǎi
    case hài
    case hān
    case hán
    case hǎn
    case hàn
    case han
    case hāng
    case háng
    case hǎng
    case hàng
    case hāo
    case háo
    case hǎo
    case hào
    case hē
    case hé
    case hè
    case hēi
    case hēn
    case hén
    case hěn
    case hèn
    case hēng
    case héng
    case hèng
    case hōng
    case hóng
    case hǒng
    case hòng
    case hōu
    case hóu
    case hǒu
    case hòu
    case hū
    case hú
    case hǔ
    case hù
    case huā
    case huá
    case huǎ
    case huà
    case huāi
    case huái
    case huài
    case huān
    case huán
    case huǎn
    case huàn
    case huāng
    case huáng
    case huǎng
    case huàng
    case huī
    case huí
    case huǐ
    case huì
    case hūn
    case hún
    case hǔn
    case hùn
    case huō
    case huó
    case huǒ
    case huò
    case huo
    case jà
    case jī
    case jí
    case jǐ
    case jì
    case ji
    case jiā
    case jiá
    case jiǎ
    case jià
    case jia
    case jiān
    case jiǎn
    case jiàn
    case jiāng
    case jiǎng
    case jiàng
    case jiāo
    case jiáo
    case jiǎo
    case jiào
    case jiē
    case jié
    case jiě
    case jiè
    case jie
    case jīn
    case jǐn
    case jìn
    case jīng
    case jǐng
    case jìng
    case jiōng
    case jiǒng
    case jiòng
    case jiū
    case jiǔ
    case jiù
    case jū
    case jú
    case jǔ
    case jù
    case ju
    case juān
    case juán
    case juǎn
    case juàn
    case juē
    case jué
    case juě
    case juè
    case jūn
    case jǔn
    case jùn
    case kā
    case kǎ
    case kà
    case kāi
    case kǎi
    case kài
    case kān
    case kǎn
    case kàn
    case kāng
    case káng
    case kǎng
    case kàng
    case kāo
    case káo
    case kǎo
    case kào
    case kē
    case ké
    case kě
    case kè
    case ke
    case kēi
    case kěn
    case kèn
    case kēng
    case kěng
    case kōng
    case kǒng
    case kòng
    case kōu
    case kǒu
    case kòu
    case kū
    case kǔ
    case kù
    case kuā
    case kuǎ
    case kuà
    case kuāi
    case kuǎi
    case kuài
    case kuān
    case kuǎn
    case kuāng
    case kuáng
    case kuǎng
    case kuàng
    case kuī
    case kuí
    case kuǐ
    case kuì
    case kūn
    case kǔn
    case kùn
    case kuǒ
    case kuò
    case lā
    case lá
    case lǎ
    case là
    case la
    case lái
    case lǎi
    case lài
    case lán
    case lǎn
    case làn
    case lan
    case lāng
    case láng
    case lǎng
    case làng
    case lāo
    case láo
    case lǎo
    case lào
    case lē
    case lè
    case le
    case lēi
    case léi
    case lěi
    case lèi
    case lei
    case lēng
    case léng
    case lěng
    case lèng
    case lī
    case lí
    case lǐ
    case lì
    case li
    case liǎ
    case liān
    case lián
    case liǎn
    case liàn
    case liáng
    case liǎng
    case liàng
    case liang
    case liāo
    case liáo
    case liǎo
    case liào
    case liē
    case lié
    case liě
    case liè
    case lie
    case līn
    case lín
    case lǐn
    case lìn
    case līng
    case líng
    case lǐng
    case lìng
    case liū
    case liú
    case liǔ
    case liù
    case lo
    case lōng
    case lóng
    case lǒng
    case lòng
    case lōu
    case lóu
    case lǒu
    case lòu
    case lou
    case lū
    case lú
    case lǔ
    case lù
    case lu
    case luán
    case luǎn
    case luàn
    case lūn
    case lún
    case lǔn
    case lùn
    case luō
    case luó
    case luǒ
    case luò
    case luo
    case lǘ
    case lǚ
    case lǜ
    case lüě
    case lüè
    case mā
    case má
    case mǎ
    case mà
    case ma
    case mái
    case mǎi
    case mài
    case mān
    case mán
    case mǎn
    case màn
    case māng
    case máng
    case mǎng
    case māo
    case máo
    case mǎo
    case mào
    case mē
    case mè
    case me
    case méi
    case měi
    case mèi
    case mēn
    case mén
    case měn
    case mèn
    case men
    case mēng
    case méng
    case měng
    case mèng
    case mī
    case mí
    case mǐ
    case mì
    case mián
    case miǎn
    case miàn
    case miāo
    case miáo
    case miǎo
    case miào
    case miē
    case miè
    case mín
    case mǐn
    case míng
    case mǐng
    case mìng
    case miù
    case mō
    case mó
    case mǒ
    case mò
    case mo
    case mōu
    case móu
    case mǒu
    case mòu
    case mú
    case mǔ
    case mù
    case nā
    case ná
    case nǎ
    case nà
    case na
    case nái
    case nǎi
    case nài
    case nān
    case nán
    case nǎn
    case nàn
    case nāng
    case náng
    case nǎng
    case nàng
    case nāo
    case náo
    case nǎo
    case nào
    case né
    case nè
    case ne
    case něi
    case nèi
    case nēn
    case něn
    case nèn
    case néng
    case něng
    case nī
    case ní
    case nǐ
    case nì
    case niān
    case nián
    case niǎn
    case niàn
    case niáng
    case niàng
    case niǎo
    case niào
    case niē
    case nié
    case niě
    case niè
    case nín
    case nǐn
    case níng
    case nǐng
    case nìng
    case niū
    case niú
    case niǔ
    case niù
    case nóng
    case nǒng
    case nòng
    case nóu
    case nòu
    case nú
    case nǔ
    case nù
    case nuán
    case nuǎn
    case nuàn
    case nún
    case nùn
    case nuó
    case nuǒ
    case nuò
    case nǚ
    case nǜ
    case nüè
    case ō
    case ó
    case ǒ
    case ò
    case o
    case ōu
    case óu
    case ǒu
    case òu
    case ou
    case pā
    case pá
    case pà
    case pāi
    case pái
    case pǎi
    case pài
    case pān
    case pán
    case pǎn
    case pàn
    case pāng
    case páng
    case pǎng
    case pàng
    case pang
    case pāo
    case páo
    case pǎo
    case pào
    case pēi
    case péi
    case pěi
    case pèi
    case pēn
    case pén
    case pěn
    case pèn
    case pen
    case pēng
    case péng
    case pěng
    case pèng
    case pī
    case pí
    case pǐ
    case pì
    case pi
    case piān
    case pián
    case piǎn
    case piàn
    case piāo
    case piáo
    case piǎo
    case piào
    case piē
    case piě
    case piè
    case pīn
    case pín
    case pǐn
    case pìn
    case pīng
    case píng
    case pǐng
    case pìng
    case pō
    case pó
    case pǒ
    case pò
    case po
    case pōu
    case póu
    case pǒu
    case pòu
    case pū
    case pú
    case pǔ
    case pù
    case qī
    case qí
    case qǐ
    case qì
    case qi
    case qiā
    case qiǎ
    case qià
    case qiān
    case qián
    case qiǎn
    case qiàn
    case qian
    case qiāng
    case qiáng
    case qiǎng
    case qiàng
    case qiāo
    case qiáo
    case qiǎo
    case qiào
    case qiē
    case qié
    case qiě
    case qiè
    case qīn
    case qín
    case qǐn
    case qìn
    case qīng
    case qíng
    case qǐng
    case qìng
    case qiōng
    case qióng
    case qiǒng
    case qiū
    case qiú
    case qiǔ
    case qiù
    case qū
    case qú
    case qǔ
    case qù
    case quān
    case quán
    case quǎn
    case quàn
    case quē
    case qué
    case què
    case qūn
    case qún
    case qǔn
    case rán
    case rǎn
    case rāng
    case ráng
    case rǎng
    case ràng
    case ráo
    case rǎo
    case rào
    case ré
    case rě
    case rè
    case rén
    case rěn
    case rèn
    case rēng
    case réng
    case rèng
    case rì
    case róng
    case rǒng
    case ròng
    case róu
    case rǒu
    case ròu
    case rū
    case rú
    case rǔ
    case rù
    case ruán
    case ruǎn
    case ruàn
    case ruí
    case ruǐ
    case ruì
    case rún
    case rùn
    case ruó
    case ruò
    case sā
    case sǎ
    case sà
    case sāi
    case sǎi
    case sài
    case sai
    case sān
    case sǎn
    case sàn
    case san
    case sāng
    case sǎng
    case sàng
    case sang
    case sāo
    case sǎo
    case sào
    case sē
    case sè
    case sēn
    case sěn
    case sēng
    case shā
    case shá
    case shǎ
    case shà
    case shāi
    case shǎi
    case shài
    case shān
    case shán
    case shǎn
    case shàn
    case shāng
    case sháng
    case shǎng
    case shàng
    case shang
    case shāo
    case sháo
    case shǎo
    case shào
    case shē
    case shé
    case shě
    case shè
    case shéi
    case shēn
    case shén
    case shěn
    case shèn
    case shēng
    case shéng
    case shěng
    case shèng
    case shī
    case shí
    case shǐ
    case shì
    case shi
    case shōu
    case shóu
    case shǒu
    case shòu
    case shū
    case shú
    case shǔ
    case shù
    case shuā
    case shuǎ
    case shuà
    case shuāi
    case shuǎi
    case shuài
    case shuān
    case shuàn
    case shuāng
    case shuǎng
    case shuàng
    case shuí
    case shuǐ
    case shuì
    case shūn
    case shǔn
    case shùn
    case shuō
    case shuó
    case shuò
    case sī
    case sǐ
    case sì
    case sōng
    case sǒng
    case sòng
    case sōu
    case sǒu
    case sòu
    case sū
    case sú
    case sù
    case suān
    case suǎn
    case suàn
    case suī
    case suí
    case suǐ
    case suì
    case sūn
    case sǔn
    case sùn
    case suō
    case suǒ
    case suò
    case tā
    case tǎ
    case tà
    case ta
    case tāi
    case tái
    case tǎi
    case tài
    case tān
    case tán
    case tǎn
    case tàn
    case tāng
    case táng
    case tǎng
    case tàng
    case tāo
    case táo
    case tǎo
    case tào
    case tè
    case tēng
    case téng
    case tèng
    case tī
    case tí
    case tǐ
    case tì
    case tiān
    case tián
    case tiǎn
    case tiàn
    case tian
    case tiāo
    case tiáo
    case tiǎo
    case tiào
    case tiē
    case tié
    case tiě
    case tiè
    case tīng
    case tíng
    case tǐng
    case tìng
    case tōng
    case tóng
    case tǒng
    case tòng
    case tōu
    case tóu
    case tǒu
    case tòu
    case tou
    case tū
    case tú
    case tǔ
    case tù
    case tu
    case tuān
    case tuán
    case tuǎn
    case tuàn
    case tuī
    case tuí
    case tuǐ
    case tuì
    case tūn
    case tún
    case tǔn
    case tùn
    case tun
    case tuō
    case tuó
    case tuǒ
    case tuò
    case wā
    case wá
    case wǎ
    case wà
    case wa
    case wāi
    case wǎi
    case wài
    case wān
    case wán
    case wǎn
    case wàn
    case wāng
    case wáng
    case wǎng
    case wàng
    case wēi
    case wéi
    case wěi
    case wèi
    case wēn
    case wén
    case wěn
    case wèn
    case wēng
    case wěng
    case wèng
    case wō
    case wǒ
    case wò
    case wū
    case wú
    case wǔ
    case wù
    case xī
    case xí
    case xǐ
    case xì
    case xiā
    case xiá
    case xiǎ
    case xià
    case xiān
    case xián
    case xiǎn
    case xiàn
    case xiāng
    case xiáng
    case xiǎng
    case xiàng
    case xiāo
    case xiáo
    case xiǎo
    case xiào
    case xiē
    case xié
    case xiě
    case xiè
    case xīn
    case xín
    case xǐn
    case xìn
    case xīng
    case xíng
    case xǐng
    case xìng
    case xiōng
    case xióng
    case xiǒng
    case xiòng
    case xiū
    case xiú
    case xiǔ
    case xiù
    case xū
    case xú
    case xǔ
    case xù
    case xu
    case xuān
    case xuán
    case xuǎn
    case xuàn
    case xuē
    case xué
    case xuě
    case xuè
    case xūn
    case xún
    case xùn
    case yā
    case yá
    case yǎ
    case yà
    case ya
    case yái
    case yān
    case yán
    case yǎn
    case yàn
    case yāng
    case yáng
    case yǎng
    case yàng
    case yāo
    case yáo
    case yǎo
    case yào
    case yē
    case yé
    case yě
    case yè
    case ye
    case yī
    case yí
    case yǐ
    case yì
    case yi
    case yīn
    case yín
    case yǐn
    case yìn
    case yīng
    case yíng
    case yǐng
    case yìng
    case yō
    case yo
    case yōng
    case yóng
    case yǒng
    case yòng
    case yōu
    case yóu
    case yǒu
    case yòu
    case yū
    case yú
    case yǔ
    case yù
    case yuān
    case yuán
    case yuǎn
    case yuàn
    case yuē
    case yuě
    case yuè
    case yūn
    case yún
    case yǔn
    case yùn
    case zā
    case zá
    case zǎ
    case zāi
    case zǎi
    case zài
    case zān
    case zán
    case zǎn
    case zàn
    case zāng
    case záng
    case zǎng
    case zàng
    case zāo
    case záo
    case zǎo
    case zào
    case zé
    case zè
    case zéi
    case zēn
    case zěn
    case zèn
    case zēng
    case zèng
    case zhā
    case zhá
    case zhǎ
    case zhà
    case zhāi
    case zhái
    case zhǎi
    case zhài
    case zhān
    case zhán
    case zhǎn
    case zhàn
    case zhāng
    case zhǎng
    case zhàng
    case zhāo
    case zháo
    case zhǎo
    case zhào
    case zhē
    case zhé
    case zhě
    case zhè
    case zhe
    case zhèi
    case zhēn
    case zhěn
    case zhèn
    case zhēng
    case zhěng
    case zhèng
    case zhī
    case zhí
    case zhǐ
    case zhì
    case zhōng
    case zhǒng
    case zhòng
    case zhōu
    case zhóu
    case zhǒu
    case zhòu
    case zhū
    case zhú
    case zhǔ
    case zhù
    case zhuā
    case zhuǎ
    case zhuāi
    case zhuǎi
    case zhuài
    case zhuān
    case zhuǎn
    case zhuàn
    case zhuāng
    case zhuǎng
    case zhuàng
    case zhuī
    case zhuǐ
    case zhuì
    case zhūn
    case zhǔn
    case zhùn
    case zhuō
    case zhuó
    case zhuǒ
    case zhuò
    case zī
    case zí
    case zǐ
    case zì
    case zi
    case zōng
    case zǒng
    case zòng
    case zōu
    case zǒu
    case zòu
    case zū
    case zú
    case zǔ
    case zù
    case zuān
    case zuǎn
    case zuàn
    case zuī
    case zuǐ
    case zuì
    case zūn
    case zǔn
    case zùn
    case zuō
    case zuó
    case zuǒ
    case zuò
    case zuo
    case none
    
    public enum 聲母 {
        case b
        case c
        case ch
        case d
        case f
        case g
        case h
        case j
        case k
        case l
        case m
        case n
        case p
        case q
        case r
        case s
        case sh
        case t
        case w
        case x
        case y
        case z
        case zh
        case none
    }
    
    public enum 韻母 {
        case a
        case ai
        case an
        case ang
        case ao
        case e
        case ei
        case en
        case eng
        case er
        case i
        case ia
        case ian
        case iang
        case iao
        case ie
        case `in`
        case ing
        case iong
        case iu
        case o
        case ong
        case ou
        case u
        case ua
        case uai
        case uan
        case uang
        case ue
        case ui
        case un
        case uo
        case v
        case ve
        case none
    }
    
    public enum Tone : Int {
        case 一 = 1
        case 二
        case 三
        case 四
        case 輕聲
    }
    
    public enum Head {
        case a
        case b
        case c
        case ch
        case d
        case e
        case f
        case g
        case h
        case j
        case k
        case l
        case m
        case n
        case o
        case p
        case q
        case r
        case s
        case sh
        case t
        case w
        case x
        case y
        case z
        case zh
        case none
    }
    
    public struct Info {
        public let a聲母: 聲母
        public let a韻母: 韻母
        public let tone: Tone
        public let pinyinWithTone: String
        public let pinyinWithoutTone: String
        public let head: Head
        public let firstChar: Character
        public let bopomofo: String
        public var bopomofoWithTone: String {
            switch tone {
            case .一: return bopomofo
            case .二: return bopomofo + "ˊ"
            case .三: return bopomofo + "ˇ"
            case .四: return bopomofo + "ˋ"
            case .輕聲: return "˙" + bopomofo 
            }
        }
        
        fileprivate static let ā = Info(a聲母: .none, a韻母: .a, tone: .一, pinyinWithTone: "ā", pinyinWithoutTone: "a", head: .a, firstChar: "a", bopomofo: "ㄚ")
        fileprivate static let á = Info(a聲母: .none, a韻母: .a, tone: .二, pinyinWithTone: "á", pinyinWithoutTone: "a", head: .a, firstChar: "a", bopomofo: "ㄚ")
        fileprivate static let ǎ = Info(a聲母: .none, a韻母: .a, tone: .三, pinyinWithTone: "ǎ", pinyinWithoutTone: "a", head: .a, firstChar: "a", bopomofo: "ㄚ")
        fileprivate static let à = Info(a聲母: .none, a韻母: .a, tone: .四, pinyinWithTone: "à", pinyinWithoutTone: "a", head: .a, firstChar: "a", bopomofo: "ㄚ")
        fileprivate static let a = Info(a聲母: .none, a韻母: .a, tone: .輕聲, pinyinWithTone: "a", pinyinWithoutTone: "a", head: .a, firstChar: "a", bopomofo: "ㄚ")
        fileprivate static let āi = Info(a聲母: .none, a韻母: .ai, tone: .一, pinyinWithTone: "āi", pinyinWithoutTone: "ai", head: .a, firstChar: "a", bopomofo: "ㄞ")
        fileprivate static let ái = Info(a聲母: .none, a韻母: .ai, tone: .二, pinyinWithTone: "ái", pinyinWithoutTone: "ai", head: .a, firstChar: "a", bopomofo: "ㄞ")
        fileprivate static let ǎi = Info(a聲母: .none, a韻母: .ai, tone: .三, pinyinWithTone: "ǎi", pinyinWithoutTone: "ai", head: .a, firstChar: "a", bopomofo: "ㄞ")
        fileprivate static let ài = Info(a聲母: .none, a韻母: .ai, tone: .四, pinyinWithTone: "ài", pinyinWithoutTone: "ai", head: .a, firstChar: "a", bopomofo: "ㄞ")
        fileprivate static let ān = Info(a聲母: .none, a韻母: .an, tone: .一, pinyinWithTone: "ān", pinyinWithoutTone: "an", head: .a, firstChar: "a", bopomofo: "ㄢ")
        fileprivate static let án = Info(a聲母: .none, a韻母: .an, tone: .二, pinyinWithTone: "án", pinyinWithoutTone: "an", head: .a, firstChar: "a", bopomofo: "ㄢ")
        fileprivate static let ǎn = Info(a聲母: .none, a韻母: .an, tone: .三, pinyinWithTone: "ǎn", pinyinWithoutTone: "an", head: .a, firstChar: "a", bopomofo: "ㄢ")
        fileprivate static let àn = Info(a聲母: .none, a韻母: .an, tone: .四, pinyinWithTone: "àn", pinyinWithoutTone: "an", head: .a, firstChar: "a", bopomofo: "ㄢ")
        fileprivate static let āng = Info(a聲母: .none, a韻母: .ang, tone: .一, pinyinWithTone: "āng", pinyinWithoutTone: "ang", head: .a, firstChar: "a", bopomofo: "ㄤ")
        fileprivate static let áng = Info(a聲母: .none, a韻母: .ang, tone: .二, pinyinWithTone: "áng", pinyinWithoutTone: "ang", head: .a, firstChar: "a", bopomofo: "ㄤ")
        fileprivate static let ǎng = Info(a聲母: .none, a韻母: .ang, tone: .三, pinyinWithTone: "ǎng", pinyinWithoutTone: "ang", head: .a, firstChar: "a", bopomofo: "ㄤ")
        fileprivate static let àng = Info(a聲母: .none, a韻母: .ang, tone: .四, pinyinWithTone: "àng", pinyinWithoutTone: "ang", head: .a, firstChar: "a", bopomofo: "ㄤ")
        fileprivate static let āo = Info(a聲母: .none, a韻母: .ao, tone: .一, pinyinWithTone: "āo", pinyinWithoutTone: "ao", head: .a, firstChar: "a", bopomofo: "ㄠ")
        fileprivate static let áo = Info(a聲母: .none, a韻母: .ao, tone: .二, pinyinWithTone: "áo", pinyinWithoutTone: "ao", head: .a, firstChar: "a", bopomofo: "ㄠ")
        fileprivate static let ǎo = Info(a聲母: .none, a韻母: .ao, tone: .三, pinyinWithTone: "ǎo", pinyinWithoutTone: "ao", head: .a, firstChar: "a", bopomofo: "ㄠ")
        fileprivate static let ào = Info(a聲母: .none, a韻母: .ao, tone: .四, pinyinWithTone: "ào", pinyinWithoutTone: "ao", head: .a, firstChar: "a", bopomofo: "ㄠ")
        fileprivate static let bā = Info(a聲母: .b, a韻母: .a, tone: .一, pinyinWithTone: "bā", pinyinWithoutTone: "ba", head: .b, firstChar: "b", bopomofo: "ㄅㄚ")
        fileprivate static let bá = Info(a聲母: .b, a韻母: .a, tone: .二, pinyinWithTone: "bá", pinyinWithoutTone: "ba", head: .b, firstChar: "b", bopomofo: "ㄅㄚ")
        fileprivate static let bǎ = Info(a聲母: .b, a韻母: .a, tone: .三, pinyinWithTone: "bǎ", pinyinWithoutTone: "ba", head: .b, firstChar: "b", bopomofo: "ㄅㄚ")
        fileprivate static let bà = Info(a聲母: .b, a韻母: .a, tone: .四, pinyinWithTone: "bà", pinyinWithoutTone: "ba", head: .b, firstChar: "b", bopomofo: "ㄅㄚ")
        fileprivate static let ba = Info(a聲母: .b, a韻母: .a, tone: .輕聲, pinyinWithTone: "ba", pinyinWithoutTone: "ba", head: .b, firstChar: "b", bopomofo: "ㄅㄚ")
        fileprivate static let bāi = Info(a聲母: .b, a韻母: .ai, tone: .一, pinyinWithTone: "bāi", pinyinWithoutTone: "bai", head: .b, firstChar: "b", bopomofo: "ㄅㄞ")
        fileprivate static let bái = Info(a聲母: .b, a韻母: .ai, tone: .二, pinyinWithTone: "bái", pinyinWithoutTone: "bai", head: .b, firstChar: "b", bopomofo: "ㄅㄞ")
        fileprivate static let bǎi = Info(a聲母: .b, a韻母: .ai, tone: .三, pinyinWithTone: "bǎi", pinyinWithoutTone: "bai", head: .b, firstChar: "b", bopomofo: "ㄅㄞ")
        fileprivate static let bài = Info(a聲母: .b, a韻母: .ai, tone: .四, pinyinWithTone: "bài", pinyinWithoutTone: "bai", head: .b, firstChar: "b", bopomofo: "ㄅㄞ")
        fileprivate static let bān = Info(a聲母: .b, a韻母: .an, tone: .一, pinyinWithTone: "bān", pinyinWithoutTone: "ban", head: .b, firstChar: "b", bopomofo: "ㄅㄢ")
        fileprivate static let bǎn = Info(a聲母: .b, a韻母: .an, tone: .三, pinyinWithTone: "bǎn", pinyinWithoutTone: "ban", head: .b, firstChar: "b", bopomofo: "ㄅㄢ")
        fileprivate static let bàn = Info(a聲母: .b, a韻母: .an, tone: .四, pinyinWithTone: "bàn", pinyinWithoutTone: "ban", head: .b, firstChar: "b", bopomofo: "ㄅㄢ")
        fileprivate static let bāng = Info(a聲母: .b, a韻母: .ang, tone: .一, pinyinWithTone: "bāng", pinyinWithoutTone: "bang", head: .b, firstChar: "b", bopomofo: "ㄅㄤ")
        fileprivate static let bǎng = Info(a聲母: .b, a韻母: .ang, tone: .三, pinyinWithTone: "bǎng", pinyinWithoutTone: "bang", head: .b, firstChar: "b", bopomofo: "ㄅㄤ")
        fileprivate static let bàng = Info(a聲母: .b, a韻母: .ang, tone: .四, pinyinWithTone: "bàng", pinyinWithoutTone: "bang", head: .b, firstChar: "b", bopomofo: "ㄅㄤ")
        fileprivate static let bāo = Info(a聲母: .b, a韻母: .ao, tone: .一, pinyinWithTone: "bāo", pinyinWithoutTone: "bao", head: .b, firstChar: "b", bopomofo: "ㄅㄠ")
        fileprivate static let báo = Info(a聲母: .b, a韻母: .ao, tone: .二, pinyinWithTone: "báo", pinyinWithoutTone: "bao", head: .b, firstChar: "b", bopomofo: "ㄅㄠ")
        fileprivate static let bǎo = Info(a聲母: .b, a韻母: .ao, tone: .三, pinyinWithTone: "bǎo", pinyinWithoutTone: "bao", head: .b, firstChar: "b", bopomofo: "ㄅㄠ")
        fileprivate static let bào = Info(a聲母: .b, a韻母: .ao, tone: .四, pinyinWithTone: "bào", pinyinWithoutTone: "bao", head: .b, firstChar: "b", bopomofo: "ㄅㄠ")
        fileprivate static let bēi = Info(a聲母: .b, a韻母: .ei, tone: .一, pinyinWithTone: "bēi", pinyinWithoutTone: "bei", head: .b, firstChar: "b", bopomofo: "ㄅㄟ")
        fileprivate static let běi = Info(a聲母: .b, a韻母: .ei, tone: .三, pinyinWithTone: "běi", pinyinWithoutTone: "bei", head: .b, firstChar: "b", bopomofo: "ㄅㄟ")
        fileprivate static let bèi = Info(a聲母: .b, a韻母: .ei, tone: .四, pinyinWithTone: "bèi", pinyinWithoutTone: "bei", head: .b, firstChar: "b", bopomofo: "ㄅㄟ")
        fileprivate static let bei = Info(a聲母: .b, a韻母: .ei, tone: .輕聲, pinyinWithTone: "bei", pinyinWithoutTone: "bei", head: .b, firstChar: "b", bopomofo: "ㄅㄟ")
        fileprivate static let bēn = Info(a聲母: .b, a韻母: .en, tone: .一, pinyinWithTone: "bēn", pinyinWithoutTone: "ben", head: .b, firstChar: "b", bopomofo: "ㄅㄣ")
        fileprivate static let běn = Info(a聲母: .b, a韻母: .en, tone: .三, pinyinWithTone: "běn", pinyinWithoutTone: "ben", head: .b, firstChar: "b", bopomofo: "ㄅㄣ")
        fileprivate static let bèn = Info(a聲母: .b, a韻母: .en, tone: .四, pinyinWithTone: "bèn", pinyinWithoutTone: "ben", head: .b, firstChar: "b", bopomofo: "ㄅㄣ")
        fileprivate static let bēng = Info(a聲母: .b, a韻母: .eng, tone: .一, pinyinWithTone: "bēng", pinyinWithoutTone: "beng", head: .b, firstChar: "b", bopomofo: "ㄅㄥ")
        fileprivate static let béng = Info(a聲母: .b, a韻母: .eng, tone: .二, pinyinWithTone: "béng", pinyinWithoutTone: "beng", head: .b, firstChar: "b", bopomofo: "ㄅㄥ")
        fileprivate static let běng = Info(a聲母: .b, a韻母: .eng, tone: .三, pinyinWithTone: "běng", pinyinWithoutTone: "beng", head: .b, firstChar: "b", bopomofo: "ㄅㄥ")
        fileprivate static let bèng = Info(a聲母: .b, a韻母: .eng, tone: .四, pinyinWithTone: "bèng", pinyinWithoutTone: "beng", head: .b, firstChar: "b", bopomofo: "ㄅㄥ")
        fileprivate static let bī = Info(a聲母: .b, a韻母: .i, tone: .一, pinyinWithTone: "bī", pinyinWithoutTone: "bi", head: .b, firstChar: "b", bopomofo: "ㄅㄧ")
        fileprivate static let bí = Info(a聲母: .b, a韻母: .i, tone: .二, pinyinWithTone: "bí", pinyinWithoutTone: "bi", head: .b, firstChar: "b", bopomofo: "ㄅㄧ")
        fileprivate static let bǐ = Info(a聲母: .b, a韻母: .i, tone: .三, pinyinWithTone: "bǐ", pinyinWithoutTone: "bi", head: .b, firstChar: "b", bopomofo: "ㄅㄧ")
        fileprivate static let bì = Info(a聲母: .b, a韻母: .i, tone: .四, pinyinWithTone: "bì", pinyinWithoutTone: "bi", head: .b, firstChar: "b", bopomofo: "ㄅㄧ")
        fileprivate static let biān = Info(a聲母: .b, a韻母: .ian, tone: .一, pinyinWithTone: "biān", pinyinWithoutTone: "bian", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄢ")
        fileprivate static let biǎn = Info(a聲母: .b, a韻母: .ian, tone: .三, pinyinWithTone: "biǎn", pinyinWithoutTone: "bian", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄢ")
        fileprivate static let biàn = Info(a聲母: .b, a韻母: .ian, tone: .四, pinyinWithTone: "biàn", pinyinWithoutTone: "bian", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄢ")
        fileprivate static let bian = Info(a聲母: .b, a韻母: .ian, tone: .輕聲, pinyinWithTone: "bian", pinyinWithoutTone: "bian", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄢ")
        fileprivate static let biāo = Info(a聲母: .b, a韻母: .iao, tone: .一, pinyinWithTone: "biāo", pinyinWithoutTone: "biao", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄠ")
        fileprivate static let biáo = Info(a聲母: .b, a韻母: .iao, tone: .二, pinyinWithTone: "biáo", pinyinWithoutTone: "biao", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄠ")
        fileprivate static let biǎo = Info(a聲母: .b, a韻母: .iao, tone: .三, pinyinWithTone: "biǎo", pinyinWithoutTone: "biao", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄠ")
        fileprivate static let biào = Info(a聲母: .b, a韻母: .iao, tone: .四, pinyinWithTone: "biào", pinyinWithoutTone: "biao", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄠ")
        fileprivate static let biē = Info(a聲母: .b, a韻母: .ie, tone: .一, pinyinWithTone: "biē", pinyinWithoutTone: "bie", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄝ")
        fileprivate static let bié = Info(a聲母: .b, a韻母: .ie, tone: .二, pinyinWithTone: "bié", pinyinWithoutTone: "bie", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄝ")
        fileprivate static let biě = Info(a聲母: .b, a韻母: .ie, tone: .三, pinyinWithTone: "biě", pinyinWithoutTone: "bie", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄝ")
        fileprivate static let biè = Info(a聲母: .b, a韻母: .ie, tone: .四, pinyinWithTone: "biè", pinyinWithoutTone: "bie", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄝ")
        fileprivate static let bīn = Info(a聲母: .b, a韻母: .in, tone: .一, pinyinWithTone: "bīn", pinyinWithoutTone: "bin", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄣ")
        fileprivate static let bǐn = Info(a聲母: .b, a韻母: .in, tone: .三, pinyinWithTone: "bǐn", pinyinWithoutTone: "bin", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄣ")
        fileprivate static let bìn = Info(a聲母: .b, a韻母: .in, tone: .四, pinyinWithTone: "bìn", pinyinWithoutTone: "bin", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄣ")
        fileprivate static let bīng = Info(a聲母: .b, a韻母: .ing, tone: .一, pinyinWithTone: "bīng", pinyinWithoutTone: "bing", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄥ")
        fileprivate static let bǐng = Info(a聲母: .b, a韻母: .ing, tone: .三, pinyinWithTone: "bǐng", pinyinWithoutTone: "bing", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄥ")
        fileprivate static let bìng = Info(a聲母: .b, a韻母: .ing, tone: .四, pinyinWithTone: "bìng", pinyinWithoutTone: "bing", head: .b, firstChar: "b", bopomofo: "ㄅㄧㄥ")
        fileprivate static let bō = Info(a聲母: .b, a韻母: .o, tone: .一, pinyinWithTone: "bō", pinyinWithoutTone: "bo", head: .b, firstChar: "b", bopomofo: "ㄅㄛ")
        fileprivate static let bó = Info(a聲母: .b, a韻母: .o, tone: .二, pinyinWithTone: "bó", pinyinWithoutTone: "bo", head: .b, firstChar: "b", bopomofo: "ㄅㄛ")
        fileprivate static let bǒ = Info(a聲母: .b, a韻母: .o, tone: .三, pinyinWithTone: "bǒ", pinyinWithoutTone: "bo", head: .b, firstChar: "b", bopomofo: "ㄅㄛ")
        fileprivate static let bò = Info(a聲母: .b, a韻母: .o, tone: .四, pinyinWithTone: "bò", pinyinWithoutTone: "bo", head: .b, firstChar: "b", bopomofo: "ㄅㄛ")
        fileprivate static let bo = Info(a聲母: .b, a韻母: .o, tone: .輕聲, pinyinWithTone: "bo", pinyinWithoutTone: "bo", head: .b, firstChar: "b", bopomofo: "ㄅㄛ")
        fileprivate static let bū = Info(a聲母: .b, a韻母: .u, tone: .一, pinyinWithTone: "bū", pinyinWithoutTone: "bu", head: .b, firstChar: "b", bopomofo: "ㄅㄨ")
        fileprivate static let bú = Info(a聲母: .b, a韻母: .u, tone: .二, pinyinWithTone: "bú", pinyinWithoutTone: "bu", head: .b, firstChar: "b", bopomofo: "ㄅㄨ")
        fileprivate static let bǔ = Info(a聲母: .b, a韻母: .u, tone: .三, pinyinWithTone: "bǔ", pinyinWithoutTone: "bu", head: .b, firstChar: "b", bopomofo: "ㄅㄨ")
        fileprivate static let bù = Info(a聲母: .b, a韻母: .u, tone: .四, pinyinWithTone: "bù", pinyinWithoutTone: "bu", head: .b, firstChar: "b", bopomofo: "ㄅㄨ")
        fileprivate static let cā = Info(a聲母: .c, a韻母: .a, tone: .一, pinyinWithTone: "cā", pinyinWithoutTone: "ca", head: .c, firstChar: "c", bopomofo: "ㄘㄚ")
        fileprivate static let cǎ = Info(a聲母: .c, a韻母: .a, tone: .三, pinyinWithTone: "cǎ", pinyinWithoutTone: "ca", head: .c, firstChar: "c", bopomofo: "ㄘㄚ")
        fileprivate static let cà = Info(a聲母: .c, a韻母: .a, tone: .四, pinyinWithTone: "cà", pinyinWithoutTone: "ca", head: .c, firstChar: "c", bopomofo: "ㄘㄚ")
        fileprivate static let cāi = Info(a聲母: .c, a韻母: .ai, tone: .一, pinyinWithTone: "cāi", pinyinWithoutTone: "cai", head: .c, firstChar: "c", bopomofo: "ㄘㄞ")
        fileprivate static let cái = Info(a聲母: .c, a韻母: .ai, tone: .二, pinyinWithTone: "cái", pinyinWithoutTone: "cai", head: .c, firstChar: "c", bopomofo: "ㄘㄞ")
        fileprivate static let cǎi = Info(a聲母: .c, a韻母: .ai, tone: .三, pinyinWithTone: "cǎi", pinyinWithoutTone: "cai", head: .c, firstChar: "c", bopomofo: "ㄘㄞ")
        fileprivate static let cài = Info(a聲母: .c, a韻母: .ai, tone: .四, pinyinWithTone: "cài", pinyinWithoutTone: "cai", head: .c, firstChar: "c", bopomofo: "ㄘㄞ")
        fileprivate static let cān = Info(a聲母: .c, a韻母: .an, tone: .一, pinyinWithTone: "cān", pinyinWithoutTone: "can", head: .c, firstChar: "c", bopomofo: "ㄘㄢ")
        fileprivate static let cán = Info(a聲母: .c, a韻母: .an, tone: .二, pinyinWithTone: "cán", pinyinWithoutTone: "can", head: .c, firstChar: "c", bopomofo: "ㄘㄢ")
        fileprivate static let cǎn = Info(a聲母: .c, a韻母: .an, tone: .三, pinyinWithTone: "cǎn", pinyinWithoutTone: "can", head: .c, firstChar: "c", bopomofo: "ㄘㄢ")
        fileprivate static let càn = Info(a聲母: .c, a韻母: .an, tone: .四, pinyinWithTone: "càn", pinyinWithoutTone: "can", head: .c, firstChar: "c", bopomofo: "ㄘㄢ")
        fileprivate static let cāng = Info(a聲母: .c, a韻母: .ang, tone: .一, pinyinWithTone: "cāng", pinyinWithoutTone: "cang", head: .c, firstChar: "c", bopomofo: "ㄘㄤ")
        fileprivate static let cáng = Info(a聲母: .c, a韻母: .ang, tone: .二, pinyinWithTone: "cáng", pinyinWithoutTone: "cang", head: .c, firstChar: "c", bopomofo: "ㄘㄤ")
        fileprivate static let cǎng = Info(a聲母: .c, a韻母: .ang, tone: .三, pinyinWithTone: "cǎng", pinyinWithoutTone: "cang", head: .c, firstChar: "c", bopomofo: "ㄘㄤ")
        fileprivate static let càng = Info(a聲母: .c, a韻母: .ang, tone: .四, pinyinWithTone: "càng", pinyinWithoutTone: "cang", head: .c, firstChar: "c", bopomofo: "ㄘㄤ")
        fileprivate static let cāo = Info(a聲母: .c, a韻母: .ao, tone: .一, pinyinWithTone: "cāo", pinyinWithoutTone: "cao", head: .c, firstChar: "c", bopomofo: "ㄘㄠ")
        fileprivate static let cáo = Info(a聲母: .c, a韻母: .ao, tone: .二, pinyinWithTone: "cáo", pinyinWithoutTone: "cao", head: .c, firstChar: "c", bopomofo: "ㄘㄠ")
        fileprivate static let cǎo = Info(a聲母: .c, a韻母: .ao, tone: .三, pinyinWithTone: "cǎo", pinyinWithoutTone: "cao", head: .c, firstChar: "c", bopomofo: "ㄘㄠ")
        fileprivate static let cào = Info(a聲母: .c, a韻母: .ao, tone: .四, pinyinWithTone: "cào", pinyinWithoutTone: "cao", head: .c, firstChar: "c", bopomofo: "ㄘㄠ")
        fileprivate static let cè = Info(a聲母: .c, a韻母: .e, tone: .四, pinyinWithTone: "cè", pinyinWithoutTone: "ce", head: .c, firstChar: "c", bopomofo: "ㄘㄜ")
        fileprivate static let cēn = Info(a聲母: .c, a韻母: .en, tone: .一, pinyinWithTone: "cēn", pinyinWithoutTone: "cen", head: .c, firstChar: "c", bopomofo: "ㄘㄣ")
        fileprivate static let cén = Info(a聲母: .c, a韻母: .en, tone: .二, pinyinWithTone: "cén", pinyinWithoutTone: "cen", head: .c, firstChar: "c", bopomofo: "ㄘㄣ")
        fileprivate static let cēng = Info(a聲母: .c, a韻母: .eng, tone: .一, pinyinWithTone: "cēng", pinyinWithoutTone: "ceng", head: .c, firstChar: "c", bopomofo: "ㄘㄥ")
        fileprivate static let céng = Info(a聲母: .c, a韻母: .eng, tone: .二, pinyinWithTone: "céng", pinyinWithoutTone: "ceng", head: .c, firstChar: "c", bopomofo: "ㄘㄥ")
        fileprivate static let cèng = Info(a聲母: .c, a韻母: .eng, tone: .四, pinyinWithTone: "cèng", pinyinWithoutTone: "ceng", head: .c, firstChar: "c", bopomofo: "ㄘㄥ")
        fileprivate static let chā = Info(a聲母: .ch, a韻母: .a, tone: .一, pinyinWithTone: "chā", pinyinWithoutTone: "cha", head: .ch, firstChar: "c", bopomofo: "ㄔㄚ")
        fileprivate static let chá = Info(a聲母: .ch, a韻母: .a, tone: .二, pinyinWithTone: "chá", pinyinWithoutTone: "cha", head: .ch, firstChar: "c", bopomofo: "ㄔㄚ")
        fileprivate static let chǎ = Info(a聲母: .ch, a韻母: .a, tone: .三, pinyinWithTone: "chǎ", pinyinWithoutTone: "cha", head: .ch, firstChar: "c", bopomofo: "ㄔㄚ")
        fileprivate static let chà = Info(a聲母: .ch, a韻母: .a, tone: .四, pinyinWithTone: "chà", pinyinWithoutTone: "cha", head: .ch, firstChar: "c", bopomofo: "ㄔㄚ")
        fileprivate static let cha = Info(a聲母: .ch, a韻母: .a, tone: .輕聲, pinyinWithTone: "cha", pinyinWithoutTone: "cha", head: .ch, firstChar: "c", bopomofo: "ㄔㄚ")
        fileprivate static let chāi = Info(a聲母: .ch, a韻母: .ai, tone: .一, pinyinWithTone: "chāi", pinyinWithoutTone: "chai", head: .ch, firstChar: "c", bopomofo: "ㄔㄞ")
        fileprivate static let chái = Info(a聲母: .ch, a韻母: .ai, tone: .二, pinyinWithTone: "chái", pinyinWithoutTone: "chai", head: .ch, firstChar: "c", bopomofo: "ㄔㄞ")
        fileprivate static let chǎi = Info(a聲母: .ch, a韻母: .ai, tone: .三, pinyinWithTone: "chǎi", pinyinWithoutTone: "chai", head: .ch, firstChar: "c", bopomofo: "ㄔㄞ")
        fileprivate static let chài = Info(a聲母: .ch, a韻母: .ai, tone: .四, pinyinWithTone: "chài", pinyinWithoutTone: "chai", head: .ch, firstChar: "c", bopomofo: "ㄔㄞ")
        fileprivate static let chān = Info(a聲母: .ch, a韻母: .an, tone: .一, pinyinWithTone: "chān", pinyinWithoutTone: "chan", head: .ch, firstChar: "c", bopomofo: "ㄔㄢ")
        fileprivate static let chán = Info(a聲母: .ch, a韻母: .an, tone: .二, pinyinWithTone: "chán", pinyinWithoutTone: "chan", head: .ch, firstChar: "c", bopomofo: "ㄔㄢ")
        fileprivate static let chǎn = Info(a聲母: .ch, a韻母: .an, tone: .三, pinyinWithTone: "chǎn", pinyinWithoutTone: "chan", head: .ch, firstChar: "c", bopomofo: "ㄔㄢ")
        fileprivate static let chàn = Info(a聲母: .ch, a韻母: .an, tone: .四, pinyinWithTone: "chàn", pinyinWithoutTone: "chan", head: .ch, firstChar: "c", bopomofo: "ㄔㄢ")
        fileprivate static let chāng = Info(a聲母: .ch, a韻母: .ang, tone: .一, pinyinWithTone: "chāng", pinyinWithoutTone: "chang", head: .ch, firstChar: "c", bopomofo: "ㄔㄤ")
        fileprivate static let cháng = Info(a聲母: .ch, a韻母: .ang, tone: .二, pinyinWithTone: "cháng", pinyinWithoutTone: "chang", head: .ch, firstChar: "c", bopomofo: "ㄔㄤ")
        fileprivate static let chǎng = Info(a聲母: .ch, a韻母: .ang, tone: .三, pinyinWithTone: "chǎng", pinyinWithoutTone: "chang", head: .ch, firstChar: "c", bopomofo: "ㄔㄤ")
        fileprivate static let chàng = Info(a聲母: .ch, a韻母: .ang, tone: .四, pinyinWithTone: "chàng", pinyinWithoutTone: "chang", head: .ch, firstChar: "c", bopomofo: "ㄔㄤ")
        fileprivate static let chang = Info(a聲母: .ch, a韻母: .ang, tone: .輕聲, pinyinWithTone: "chang", pinyinWithoutTone: "chang", head: .ch, firstChar: "c", bopomofo: "ㄔㄤ")
        fileprivate static let chāo = Info(a聲母: .ch, a韻母: .ao, tone: .一, pinyinWithTone: "chāo", pinyinWithoutTone: "chao", head: .ch, firstChar: "c", bopomofo: "ㄔㄠ")
        fileprivate static let cháo = Info(a聲母: .ch, a韻母: .ao, tone: .二, pinyinWithTone: "cháo", pinyinWithoutTone: "chao", head: .ch, firstChar: "c", bopomofo: "ㄔㄠ")
        fileprivate static let chǎo = Info(a聲母: .ch, a韻母: .ao, tone: .三, pinyinWithTone: "chǎo", pinyinWithoutTone: "chao", head: .ch, firstChar: "c", bopomofo: "ㄔㄠ")
        fileprivate static let chào = Info(a聲母: .ch, a韻母: .ao, tone: .四, pinyinWithTone: "chào", pinyinWithoutTone: "chao", head: .ch, firstChar: "c", bopomofo: "ㄔㄠ")
        fileprivate static let chē = Info(a聲母: .ch, a韻母: .e, tone: .一, pinyinWithTone: "chē", pinyinWithoutTone: "che", head: .ch, firstChar: "c", bopomofo: "ㄔㄜ")
        fileprivate static let chě = Info(a聲母: .ch, a韻母: .e, tone: .三, pinyinWithTone: "chě", pinyinWithoutTone: "che", head: .ch, firstChar: "c", bopomofo: "ㄔㄜ")
        fileprivate static let chè = Info(a聲母: .ch, a韻母: .e, tone: .四, pinyinWithTone: "chè", pinyinWithoutTone: "che", head: .ch, firstChar: "c", bopomofo: "ㄔㄜ")
        fileprivate static let chēn = Info(a聲母: .ch, a韻母: .en, tone: .一, pinyinWithTone: "chēn", pinyinWithoutTone: "chen", head: .ch, firstChar: "c", bopomofo: "ㄔㄣ")
        fileprivate static let chén = Info(a聲母: .ch, a韻母: .en, tone: .二, pinyinWithTone: "chén", pinyinWithoutTone: "chen", head: .ch, firstChar: "c", bopomofo: "ㄔㄣ")
        fileprivate static let chěn = Info(a聲母: .ch, a韻母: .en, tone: .三, pinyinWithTone: "chěn", pinyinWithoutTone: "chen", head: .ch, firstChar: "c", bopomofo: "ㄔㄣ")
        fileprivate static let chèn = Info(a聲母: .ch, a韻母: .en, tone: .四, pinyinWithTone: "chèn", pinyinWithoutTone: "chen", head: .ch, firstChar: "c", bopomofo: "ㄔㄣ")
        fileprivate static let chen = Info(a聲母: .ch, a韻母: .en, tone: .輕聲, pinyinWithTone: "chen", pinyinWithoutTone: "chen", head: .ch, firstChar: "c", bopomofo: "ㄔㄣ")
        fileprivate static let chēng = Info(a聲母: .ch, a韻母: .eng, tone: .一, pinyinWithTone: "chēng", pinyinWithoutTone: "cheng", head: .ch, firstChar: "c", bopomofo: "ㄔㄥ")
        fileprivate static let chéng = Info(a聲母: .ch, a韻母: .eng, tone: .二, pinyinWithTone: "chéng", pinyinWithoutTone: "cheng", head: .ch, firstChar: "c", bopomofo: "ㄔㄥ")
        fileprivate static let chěng = Info(a聲母: .ch, a韻母: .eng, tone: .三, pinyinWithTone: "chěng", pinyinWithoutTone: "cheng", head: .ch, firstChar: "c", bopomofo: "ㄔㄥ")
        fileprivate static let chèng = Info(a聲母: .ch, a韻母: .eng, tone: .四, pinyinWithTone: "chèng", pinyinWithoutTone: "cheng", head: .ch, firstChar: "c", bopomofo: "ㄔㄥ")
        fileprivate static let chī = Info(a聲母: .ch, a韻母: .i, tone: .一, pinyinWithTone: "chī", pinyinWithoutTone: "chi", head: .ch, firstChar: "c", bopomofo: "ㄔ")
        fileprivate static let chí = Info(a聲母: .ch, a韻母: .i, tone: .二, pinyinWithTone: "chí", pinyinWithoutTone: "chi", head: .ch, firstChar: "c", bopomofo: "ㄔ")
        fileprivate static let chǐ = Info(a聲母: .ch, a韻母: .i, tone: .三, pinyinWithTone: "chǐ", pinyinWithoutTone: "chi", head: .ch, firstChar: "c", bopomofo: "ㄔ")
        fileprivate static let chì = Info(a聲母: .ch, a韻母: .i, tone: .四, pinyinWithTone: "chì", pinyinWithoutTone: "chi", head: .ch, firstChar: "c", bopomofo: "ㄔ")
        fileprivate static let chi = Info(a聲母: .ch, a韻母: .i, tone: .輕聲, pinyinWithTone: "chi", pinyinWithoutTone: "chi", head: .ch, firstChar: "c", bopomofo: "ㄔ")
        fileprivate static let chōng = Info(a聲母: .ch, a韻母: .ong, tone: .一, pinyinWithTone: "chōng", pinyinWithoutTone: "chong", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄥ")
        fileprivate static let chóng = Info(a聲母: .ch, a韻母: .ong, tone: .二, pinyinWithTone: "chóng", pinyinWithoutTone: "chong", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄥ")
        fileprivate static let chǒng = Info(a聲母: .ch, a韻母: .ong, tone: .三, pinyinWithTone: "chǒng", pinyinWithoutTone: "chong", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄥ")
        fileprivate static let chòng = Info(a聲母: .ch, a韻母: .ong, tone: .四, pinyinWithTone: "chòng", pinyinWithoutTone: "chong", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄥ")
        fileprivate static let chōu = Info(a聲母: .ch, a韻母: .ou, tone: .一, pinyinWithTone: "chōu", pinyinWithoutTone: "chou", head: .ch, firstChar: "c", bopomofo: "ㄔㄡ")
        fileprivate static let chóu = Info(a聲母: .ch, a韻母: .ou, tone: .二, pinyinWithTone: "chóu", pinyinWithoutTone: "chou", head: .ch, firstChar: "c", bopomofo: "ㄔㄡ")
        fileprivate static let chǒu = Info(a聲母: .ch, a韻母: .ou, tone: .三, pinyinWithTone: "chǒu", pinyinWithoutTone: "chou", head: .ch, firstChar: "c", bopomofo: "ㄔㄡ")
        fileprivate static let chòu = Info(a聲母: .ch, a韻母: .ou, tone: .四, pinyinWithTone: "chòu", pinyinWithoutTone: "chou", head: .ch, firstChar: "c", bopomofo: "ㄔㄡ")
        fileprivate static let chou = Info(a聲母: .ch, a韻母: .ou, tone: .輕聲, pinyinWithTone: "chou", pinyinWithoutTone: "chou", head: .ch, firstChar: "c", bopomofo: "ㄔㄡ")
        fileprivate static let chū = Info(a聲母: .ch, a韻母: .u, tone: .一, pinyinWithTone: "chū", pinyinWithoutTone: "chu", head: .ch, firstChar: "c", bopomofo: "ㄔㄨ")
        fileprivate static let chú = Info(a聲母: .ch, a韻母: .u, tone: .二, pinyinWithTone: "chú", pinyinWithoutTone: "chu", head: .ch, firstChar: "c", bopomofo: "ㄔㄨ")
        fileprivate static let chǔ = Info(a聲母: .ch, a韻母: .u, tone: .三, pinyinWithTone: "chǔ", pinyinWithoutTone: "chu", head: .ch, firstChar: "c", bopomofo: "ㄔㄨ")
        fileprivate static let chù = Info(a聲母: .ch, a韻母: .u, tone: .四, pinyinWithTone: "chù", pinyinWithoutTone: "chu", head: .ch, firstChar: "c", bopomofo: "ㄔㄨ")
        fileprivate static let chu = Info(a聲母: .ch, a韻母: .u, tone: .輕聲, pinyinWithTone: "chu", pinyinWithoutTone: "chu", head: .ch, firstChar: "c", bopomofo: "ㄔㄨ")
        fileprivate static let chuā = Info(a聲母: .ch, a韻母: .ua, tone: .一, pinyinWithTone: "chuā", pinyinWithoutTone: "chua", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄚ")
        fileprivate static let chuāi = Info(a聲母: .ch, a韻母: .uai, tone: .一, pinyinWithTone: "chuāi", pinyinWithoutTone: "chuai", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄞ")
        fileprivate static let chuái = Info(a聲母: .ch, a韻母: .uai, tone: .二, pinyinWithTone: "chuái", pinyinWithoutTone: "chuai", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄞ")
        fileprivate static let chuǎi = Info(a聲母: .ch, a韻母: .uai, tone: .三, pinyinWithTone: "chuǎi", pinyinWithoutTone: "chuai", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄞ")
        fileprivate static let chuài = Info(a聲母: .ch, a韻母: .uai, tone: .四, pinyinWithTone: "chuài", pinyinWithoutTone: "chuai", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄞ")
        fileprivate static let chuān = Info(a聲母: .ch, a韻母: .uan, tone: .一, pinyinWithTone: "chuān", pinyinWithoutTone: "chuan", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄢ")
        fileprivate static let chuán = Info(a聲母: .ch, a韻母: .uan, tone: .二, pinyinWithTone: "chuán", pinyinWithoutTone: "chuan", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄢ")
        fileprivate static let chuǎn = Info(a聲母: .ch, a韻母: .uan, tone: .三, pinyinWithTone: "chuǎn", pinyinWithoutTone: "chuan", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄢ")
        fileprivate static let chuàn = Info(a聲母: .ch, a韻母: .uan, tone: .四, pinyinWithTone: "chuàn", pinyinWithoutTone: "chuan", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄢ")
        fileprivate static let chuāng = Info(a聲母: .ch, a韻母: .uang, tone: .一, pinyinWithTone: "chuāng", pinyinWithoutTone: "chuang", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄤ")
        fileprivate static let chuáng = Info(a聲母: .ch, a韻母: .uang, tone: .二, pinyinWithTone: "chuáng", pinyinWithoutTone: "chuang", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄤ")
        fileprivate static let chuǎng = Info(a聲母: .ch, a韻母: .uang, tone: .三, pinyinWithTone: "chuǎng", pinyinWithoutTone: "chuang", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄤ")
        fileprivate static let chuàng = Info(a聲母: .ch, a韻母: .uang, tone: .四, pinyinWithTone: "chuàng", pinyinWithoutTone: "chuang", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄤ")
        fileprivate static let chuī = Info(a聲母: .ch, a韻母: .ui, tone: .一, pinyinWithTone: "chuī", pinyinWithoutTone: "chui", head: .ch, firstChar: "c", bopomofo: "ㄔㄤ")
        fileprivate static let chuí = Info(a聲母: .ch, a韻母: .ui, tone: .二, pinyinWithTone: "chuí", pinyinWithoutTone: "chui", head: .ch, firstChar: "c", bopomofo: "ㄔㄤ")
        fileprivate static let chuì = Info(a聲母: .ch, a韻母: .ui, tone: .四, pinyinWithTone: "chuì", pinyinWithoutTone: "chui", head: .ch, firstChar: "c", bopomofo: "ㄔㄤ")
        fileprivate static let chūn = Info(a聲母: .ch, a韻母: .un, tone: .一, pinyinWithTone: "chūn", pinyinWithoutTone: "chun", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄣ")
        fileprivate static let chún = Info(a聲母: .ch, a韻母: .un, tone: .二, pinyinWithTone: "chún", pinyinWithoutTone: "chun", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄣ")
        fileprivate static let chǔn = Info(a聲母: .ch, a韻母: .un, tone: .三, pinyinWithTone: "chǔn", pinyinWithoutTone: "chun", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄣ")
        fileprivate static let chuō = Info(a聲母: .ch, a韻母: .uo, tone: .一, pinyinWithTone: "chuō", pinyinWithoutTone: "chuo", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄛ")
        fileprivate static let chuó = Info(a聲母: .ch, a韻母: .uo, tone: .二, pinyinWithTone: "chuó", pinyinWithoutTone: "chuo", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄛ")
        fileprivate static let chuò = Info(a聲母: .ch, a韻母: .uo, tone: .四, pinyinWithTone: "chuò", pinyinWithoutTone: "chuo", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄛ")
        fileprivate static let chuo = Info(a聲母: .ch, a韻母: .uo, tone: .輕聲, pinyinWithTone: "chuo", pinyinWithoutTone: "chuo", head: .ch, firstChar: "c", bopomofo: "ㄔㄨㄛ")
        fileprivate static let cī = Info(a聲母: .c, a韻母: .i, tone: .一, pinyinWithTone: "cī", pinyinWithoutTone: "ci", head: .c, firstChar: "c", bopomofo: "ㄘ")
        fileprivate static let cí = Info(a聲母: .c, a韻母: .i, tone: .二, pinyinWithTone: "cí", pinyinWithoutTone: "ci", head: .c, firstChar: "c", bopomofo: "ㄘ")
        fileprivate static let cǐ = Info(a聲母: .c, a韻母: .i, tone: .三, pinyinWithTone: "cǐ", pinyinWithoutTone: "ci", head: .c, firstChar: "c", bopomofo: "ㄘ")
        fileprivate static let cì = Info(a聲母: .c, a韻母: .i, tone: .四, pinyinWithTone: "cì", pinyinWithoutTone: "ci", head: .c, firstChar: "c", bopomofo: "ㄘ")
        fileprivate static let cōng = Info(a聲母: .c, a韻母: .ong, tone: .一, pinyinWithTone: "cōng", pinyinWithoutTone: "cong", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄥ")
        fileprivate static let cóng = Info(a聲母: .c, a韻母: .ong, tone: .二, pinyinWithTone: "cóng", pinyinWithoutTone: "cong", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄥ")
        fileprivate static let còng = Info(a聲母: .c, a韻母: .ong, tone: .四, pinyinWithTone: "còng", pinyinWithoutTone: "cong", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄥ")
        fileprivate static let cǒu = Info(a聲母: .c, a韻母: .ou, tone: .三, pinyinWithTone: "cǒu", pinyinWithoutTone: "cou", head: .c, firstChar: "c", bopomofo: "ㄘㄡ")
        fileprivate static let còu = Info(a聲母: .c, a韻母: .ou, tone: .四, pinyinWithTone: "còu", pinyinWithoutTone: "cou", head: .c, firstChar: "c", bopomofo: "ㄘㄡ")
        fileprivate static let cū = Info(a聲母: .c, a韻母: .u, tone: .一, pinyinWithTone: "cū", pinyinWithoutTone: "cu", head: .c, firstChar: "c", bopomofo: "ㄘㄨ")
        fileprivate static let cú = Info(a聲母: .c, a韻母: .u, tone: .二, pinyinWithTone: "cú", pinyinWithoutTone: "cu", head: .c, firstChar: "c", bopomofo: "ㄘㄨ")
        fileprivate static let cǔ = Info(a聲母: .c, a韻母: .u, tone: .三, pinyinWithTone: "cǔ", pinyinWithoutTone: "cu", head: .c, firstChar: "c", bopomofo: "ㄘㄨ")
        fileprivate static let cù = Info(a聲母: .c, a韻母: .u, tone: .四, pinyinWithTone: "cù", pinyinWithoutTone: "cu", head: .c, firstChar: "c", bopomofo: "ㄘㄨ")
        fileprivate static let cuān = Info(a聲母: .c, a韻母: .uan, tone: .一, pinyinWithTone: "cuān", pinyinWithoutTone: "cuan", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄢ")
        fileprivate static let cuán = Info(a聲母: .c, a韻母: .uan, tone: .二, pinyinWithTone: "cuán", pinyinWithoutTone: "cuan", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄢ")
        fileprivate static let cuàn = Info(a聲母: .c, a韻母: .uan, tone: .四, pinyinWithTone: "cuàn", pinyinWithoutTone: "cuan", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄢ")
        fileprivate static let cuī = Info(a聲母: .c, a韻母: .ui, tone: .一, pinyinWithTone: "cuī", pinyinWithoutTone: "cui", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄟ")
        fileprivate static let cuí = Info(a聲母: .c, a韻母: .ui, tone: .二, pinyinWithTone: "cuí", pinyinWithoutTone: "cui", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄟ")
        fileprivate static let cuǐ = Info(a聲母: .c, a韻母: .ui, tone: .三, pinyinWithTone: "cuǐ", pinyinWithoutTone: "cui", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄟ")
        fileprivate static let cuì = Info(a聲母: .c, a韻母: .ui, tone: .四, pinyinWithTone: "cuì", pinyinWithoutTone: "cui", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄟ")
        fileprivate static let cūn = Info(a聲母: .c, a韻母: .un, tone: .一, pinyinWithTone: "cūn", pinyinWithoutTone: "cun", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄣ")
        fileprivate static let cún = Info(a聲母: .c, a韻母: .un, tone: .二, pinyinWithTone: "cún", pinyinWithoutTone: "cun", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄣ")
        fileprivate static let cǔn = Info(a聲母: .c, a韻母: .un, tone: .三, pinyinWithTone: "cǔn", pinyinWithoutTone: "cun", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄣ")
        fileprivate static let cùn = Info(a聲母: .c, a韻母: .un, tone: .四, pinyinWithTone: "cùn", pinyinWithoutTone: "cun", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄣ")
        fileprivate static let cuō = Info(a聲母: .c, a韻母: .uo, tone: .一, pinyinWithTone: "cuō", pinyinWithoutTone: "cuo", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄛ")
        fileprivate static let cuó = Info(a聲母: .c, a韻母: .uo, tone: .二, pinyinWithTone: "cuó", pinyinWithoutTone: "cuo", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄛ")
        fileprivate static let cuǒ = Info(a聲母: .c, a韻母: .uo, tone: .三, pinyinWithTone: "cuǒ", pinyinWithoutTone: "cuo", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄛ")
        fileprivate static let cuò = Info(a聲母: .c, a韻母: .uo, tone: .四, pinyinWithTone: "cuò", pinyinWithoutTone: "cuo", head: .c, firstChar: "c", bopomofo: "ㄘㄨㄛ")
        fileprivate static let dā = Info(a聲母: .d, a韻母: .a, tone: .一, pinyinWithTone: "dā", pinyinWithoutTone: "da", head: .d, firstChar: "d", bopomofo: "ㄉㄚ")
        fileprivate static let dá = Info(a聲母: .d, a韻母: .a, tone: .二, pinyinWithTone: "dá", pinyinWithoutTone: "da", head: .d, firstChar: "d", bopomofo: "ㄉㄚ")
        fileprivate static let dǎ = Info(a聲母: .d, a韻母: .a, tone: .三, pinyinWithTone: "dǎ", pinyinWithoutTone: "da", head: .d, firstChar: "d", bopomofo: "ㄉㄚ")
        fileprivate static let dà = Info(a聲母: .d, a韻母: .a, tone: .四, pinyinWithTone: "dà", pinyinWithoutTone: "da", head: .d, firstChar: "d", bopomofo: "ㄉㄚ")
        fileprivate static let da = Info(a聲母: .d, a韻母: .a, tone: .輕聲, pinyinWithTone: "da", pinyinWithoutTone: "da", head: .d, firstChar: "d", bopomofo: "ㄉㄚ")
        fileprivate static let dāi = Info(a聲母: .d, a韻母: .ai, tone: .一, pinyinWithTone: "dāi", pinyinWithoutTone: "dai", head: .d, firstChar: "d", bopomofo: "ㄉㄞ")
        fileprivate static let dǎi = Info(a聲母: .d, a韻母: .ai, tone: .三, pinyinWithTone: "dǎi", pinyinWithoutTone: "dai", head: .d, firstChar: "d", bopomofo: "ㄉㄞ")
        fileprivate static let dài = Info(a聲母: .d, a韻母: .ai, tone: .四, pinyinWithTone: "dài", pinyinWithoutTone: "dai", head: .d, firstChar: "d", bopomofo: "ㄉㄞ")
        fileprivate static let dān = Info(a聲母: .d, a韻母: .an, tone: .一, pinyinWithTone: "dān", pinyinWithoutTone: "dan", head: .d, firstChar: "d", bopomofo: "ㄉㄢ")
        fileprivate static let dán = Info(a聲母: .d, a韻母: .an, tone: .二, pinyinWithTone: "dán", pinyinWithoutTone: "dan", head: .d, firstChar: "d", bopomofo: "ㄉㄢ")
        fileprivate static let dǎn = Info(a聲母: .d, a韻母: .an, tone: .三, pinyinWithTone: "dǎn", pinyinWithoutTone: "dan", head: .d, firstChar: "d", bopomofo: "ㄉㄢ")
        fileprivate static let dàn = Info(a聲母: .d, a韻母: .an, tone: .四, pinyinWithTone: "dàn", pinyinWithoutTone: "dan", head: .d, firstChar: "d", bopomofo: "ㄉㄢ")
        fileprivate static let dāng = Info(a聲母: .d, a韻母: .ang, tone: .一, pinyinWithTone: "dāng", pinyinWithoutTone: "dang", head: .d, firstChar: "d", bopomofo: "ㄉㄤ")
        fileprivate static let dǎng = Info(a聲母: .d, a韻母: .ang, tone: .三, pinyinWithTone: "dǎng", pinyinWithoutTone: "dang", head: .d, firstChar: "d", bopomofo: "ㄉㄤ")
        fileprivate static let dàng = Info(a聲母: .d, a韻母: .ang, tone: .四, pinyinWithTone: "dàng", pinyinWithoutTone: "dang", head: .d, firstChar: "d", bopomofo: "ㄉㄤ")
        fileprivate static let dāo = Info(a聲母: .d, a韻母: .ao, tone: .一, pinyinWithTone: "dāo", pinyinWithoutTone: "dao", head: .d, firstChar: "d", bopomofo: "ㄉㄠ")
        fileprivate static let dáo = Info(a聲母: .d, a韻母: .ao, tone: .二, pinyinWithTone: "dáo", pinyinWithoutTone: "dao", head: .d, firstChar: "d", bopomofo: "ㄉㄠ")
        fileprivate static let dǎo = Info(a聲母: .d, a韻母: .ao, tone: .三, pinyinWithTone: "dǎo", pinyinWithoutTone: "dao", head: .d, firstChar: "d", bopomofo: "ㄉㄠ")
        fileprivate static let dào = Info(a聲母: .d, a韻母: .ao, tone: .四, pinyinWithTone: "dào", pinyinWithoutTone: "dao", head: .d, firstChar: "d", bopomofo: "ㄉㄠ")
        fileprivate static let dē = Info(a聲母: .d, a韻母: .e, tone: .一, pinyinWithTone: "dē", pinyinWithoutTone: "de", head: .d, firstChar: "d", bopomofo: "ㄉㄜ")
        fileprivate static let dé = Info(a聲母: .d, a韻母: .e, tone: .二, pinyinWithTone: "dé", pinyinWithoutTone: "de", head: .d, firstChar: "d", bopomofo: "ㄉㄜ")
        fileprivate static let de = Info(a聲母: .d, a韻母: .e, tone: .輕聲, pinyinWithTone: "de", pinyinWithoutTone: "de", head: .d, firstChar: "d", bopomofo: "ㄉㄜ")
        fileprivate static let dēi = Info(a聲母: .d, a韻母: .ei, tone: .一, pinyinWithTone: "dēi", pinyinWithoutTone: "dei", head: .d, firstChar: "d", bopomofo: "ㄉㄟ")
        fileprivate static let děi = Info(a聲母: .d, a韻母: .ei, tone: .三, pinyinWithTone: "děi", pinyinWithoutTone: "dei", head: .d, firstChar: "d", bopomofo: "ㄉㄟ")
        fileprivate static let dēn = Info(a聲母: .d, a韻母: .en, tone: .一, pinyinWithTone: "dēn", pinyinWithoutTone: "den", head: .d, firstChar: "d", bopomofo: "ㄉㄣ")
        fileprivate static let dèn = Info(a聲母: .d, a韻母: .en, tone: .四, pinyinWithTone: "dèn", pinyinWithoutTone: "den", head: .d, firstChar: "d", bopomofo: "ㄉㄣ")
        fileprivate static let dēng = Info(a聲母: .d, a韻母: .eng, tone: .一, pinyinWithTone: "dēng", pinyinWithoutTone: "deng", head: .d, firstChar: "d", bopomofo: "ㄉㄥ")
        fileprivate static let děng = Info(a聲母: .d, a韻母: .eng, tone: .三, pinyinWithTone: "děng", pinyinWithoutTone: "deng", head: .d, firstChar: "d", bopomofo: "ㄉㄥ")
        fileprivate static let dèng = Info(a聲母: .d, a韻母: .eng, tone: .四, pinyinWithTone: "dèng", pinyinWithoutTone: "deng", head: .d, firstChar: "d", bopomofo: "ㄉㄥ")
        fileprivate static let dī = Info(a聲母: .d, a韻母: .i, tone: .一, pinyinWithTone: "dī", pinyinWithoutTone: "di", head: .d, firstChar: "d", bopomofo: "ㄉㄧ")
        fileprivate static let dí = Info(a聲母: .d, a韻母: .i, tone: .二, pinyinWithTone: "dí", pinyinWithoutTone: "di", head: .d, firstChar: "d", bopomofo: "ㄉㄧ")
        fileprivate static let dǐ = Info(a聲母: .d, a韻母: .i, tone: .三, pinyinWithTone: "dǐ", pinyinWithoutTone: "di", head: .d, firstChar: "d", bopomofo: "ㄉㄧ")
        fileprivate static let dì = Info(a聲母: .d, a韻母: .i, tone: .四, pinyinWithTone: "dì", pinyinWithoutTone: "di", head: .d, firstChar: "d", bopomofo: "ㄉㄧ")
        fileprivate static let diǎ = Info(a聲母: .d, a韻母: .ia, tone: .三, pinyinWithTone: "diǎ", pinyinWithoutTone: "dia", head: .d, firstChar: "d", bopomofo: "ㄉㄧㄚ")
        fileprivate static let diān = Info(a聲母: .d, a韻母: .ian, tone: .一, pinyinWithTone: "diān", pinyinWithoutTone: "dian", head: .d, firstChar: "d", bopomofo: "ㄉㄧㄢ")
        fileprivate static let diǎn = Info(a聲母: .d, a韻母: .ian, tone: .三, pinyinWithTone: "diǎn", pinyinWithoutTone: "dian", head: .d, firstChar: "d", bopomofo: "ㄉㄧㄢ")
        fileprivate static let diàn = Info(a聲母: .d, a韻母: .ian, tone: .四, pinyinWithTone: "diàn", pinyinWithoutTone: "dian", head: .d, firstChar: "d", bopomofo: "ㄉㄧㄢ")
        fileprivate static let diāo = Info(a聲母: .d, a韻母: .iao, tone: .一, pinyinWithTone: "diāo", pinyinWithoutTone: "diao", head: .d, firstChar: "d", bopomofo: "ㄉㄧㄠ")
        fileprivate static let diǎo = Info(a聲母: .d, a韻母: .iao, tone: .三, pinyinWithTone: "diǎo", pinyinWithoutTone: "diao", head: .d, firstChar: "d", bopomofo: "ㄉㄧㄠ")
        fileprivate static let diào = Info(a聲母: .d, a韻母: .iao, tone: .四, pinyinWithTone: "diào", pinyinWithoutTone: "diao", head: .d, firstChar: "d", bopomofo: "ㄉㄧㄠ")
        fileprivate static let diē = Info(a聲母: .d, a韻母: .ie, tone: .一, pinyinWithTone: "diē", pinyinWithoutTone: "die", head: .d, firstChar: "d", bopomofo: "ㄉㄧㄝ")
        fileprivate static let dié = Info(a聲母: .d, a韻母: .ie, tone: .二, pinyinWithTone: "dié", pinyinWithoutTone: "die", head: .d, firstChar: "d", bopomofo: "ㄉㄧㄝ")
        fileprivate static let diè = Info(a聲母: .d, a韻母: .ie, tone: .四, pinyinWithTone: "diè", pinyinWithoutTone: "die", head: .d, firstChar: "d", bopomofo: "ㄉㄧㄝ")
        fileprivate static let dīng = Info(a聲母: .d, a韻母: .ing, tone: .一, pinyinWithTone: "dīng", pinyinWithoutTone: "ding", head: .d, firstChar: "d", bopomofo: "ㄉㄧㄥ")
        fileprivate static let díng = Info(a聲母: .d, a韻母: .ing, tone: .二, pinyinWithTone: "díng", pinyinWithoutTone: "ding", head: .d, firstChar: "d", bopomofo: "ㄉㄧㄥ")
        fileprivate static let dǐng = Info(a聲母: .d, a韻母: .ing, tone: .三, pinyinWithTone: "dǐng", pinyinWithoutTone: "ding", head: .d, firstChar: "d", bopomofo: "ㄉㄧㄥ")
        fileprivate static let dìng = Info(a聲母: .d, a韻母: .ing, tone: .四, pinyinWithTone: "dìng", pinyinWithoutTone: "ding", head: .d, firstChar: "d", bopomofo: "ㄉㄧㄥ")
        fileprivate static let diū = Info(a聲母: .d, a韻母: .iu, tone: .一, pinyinWithTone: "diū", pinyinWithoutTone: "diu", head: .d, firstChar: "d", bopomofo: "ㄉㄧㄡ")
        fileprivate static let dōng = Info(a聲母: .d, a韻母: .ong, tone: .一, pinyinWithTone: "dōng", pinyinWithoutTone: "dong", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄥ")
        fileprivate static let dǒng = Info(a聲母: .d, a韻母: .ong, tone: .三, pinyinWithTone: "dǒng", pinyinWithoutTone: "dong", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄥ")
        fileprivate static let dòng = Info(a聲母: .d, a韻母: .ong, tone: .四, pinyinWithTone: "dòng", pinyinWithoutTone: "dong", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄥ")
        fileprivate static let dōu = Info(a聲母: .d, a韻母: .ou, tone: .一, pinyinWithTone: "dōu", pinyinWithoutTone: "dou", head: .d, firstChar: "d", bopomofo: "ㄉㄡ")
        fileprivate static let dóu = Info(a聲母: .d, a韻母: .ou, tone: .二, pinyinWithTone: "dóu", pinyinWithoutTone: "dou", head: .d, firstChar: "d", bopomofo: "ㄉㄡ")
        fileprivate static let dǒu = Info(a聲母: .d, a韻母: .ou, tone: .三, pinyinWithTone: "dǒu", pinyinWithoutTone: "dou", head: .d, firstChar: "d", bopomofo: "ㄉㄡ")
        fileprivate static let dòu = Info(a聲母: .d, a韻母: .ou, tone: .四, pinyinWithTone: "dòu", pinyinWithoutTone: "dou", head: .d, firstChar: "d", bopomofo: "ㄉㄡ")
        fileprivate static let dū = Info(a聲母: .d, a韻母: .u, tone: .一, pinyinWithTone: "dū", pinyinWithoutTone: "du", head: .d, firstChar: "d", bopomofo: "ㄉㄨ")
        fileprivate static let dú = Info(a聲母: .d, a韻母: .u, tone: .二, pinyinWithTone: "dú", pinyinWithoutTone: "du", head: .d, firstChar: "d", bopomofo: "ㄉㄨ")
        fileprivate static let dǔ = Info(a聲母: .d, a韻母: .u, tone: .三, pinyinWithTone: "dǔ", pinyinWithoutTone: "du", head: .d, firstChar: "d", bopomofo: "ㄉㄨ")
        fileprivate static let dù = Info(a聲母: .d, a韻母: .u, tone: .四, pinyinWithTone: "dù", pinyinWithoutTone: "du", head: .d, firstChar: "d", bopomofo: "ㄉㄨ")
        fileprivate static let duān = Info(a聲母: .d, a韻母: .uan, tone: .一, pinyinWithTone: "duān", pinyinWithoutTone: "duan", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄢ")
        fileprivate static let duǎn = Info(a聲母: .d, a韻母: .uan, tone: .三, pinyinWithTone: "duǎn", pinyinWithoutTone: "duan", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄢ")
        fileprivate static let duàn = Info(a聲母: .d, a韻母: .uan, tone: .四, pinyinWithTone: "duàn", pinyinWithoutTone: "duan", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄢ")
        fileprivate static let duī = Info(a聲母: .d, a韻母: .ui, tone: .一, pinyinWithTone: "duī", pinyinWithoutTone: "dui", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄟ")
        fileprivate static let duǐ = Info(a聲母: .d, a韻母: .ui, tone: .三, pinyinWithTone: "duǐ", pinyinWithoutTone: "dui", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄟ")
        fileprivate static let duì = Info(a聲母: .d, a韻母: .ui, tone: .四, pinyinWithTone: "duì", pinyinWithoutTone: "dui", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄟ")
        fileprivate static let dūn = Info(a聲母: .d, a韻母: .un, tone: .一, pinyinWithTone: "dūn", pinyinWithoutTone: "dun", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄣ")
        fileprivate static let dún = Info(a聲母: .d, a韻母: .un, tone: .二, pinyinWithTone: "dún", pinyinWithoutTone: "dun", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄣ")
        fileprivate static let dǔn = Info(a聲母: .d, a韻母: .un, tone: .三, pinyinWithTone: "dǔn", pinyinWithoutTone: "dun", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄣ")
        fileprivate static let dùn = Info(a聲母: .d, a韻母: .un, tone: .四, pinyinWithTone: "dùn", pinyinWithoutTone: "dun", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄣ")
        fileprivate static let duō = Info(a聲母: .d, a韻母: .uo, tone: .一, pinyinWithTone: "duō", pinyinWithoutTone: "duo", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄛ")
        fileprivate static let duó = Info(a聲母: .d, a韻母: .uo, tone: .二, pinyinWithTone: "duó", pinyinWithoutTone: "duo", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄛ")
        fileprivate static let duǒ = Info(a聲母: .d, a韻母: .uo, tone: .三, pinyinWithTone: "duǒ", pinyinWithoutTone: "duo", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄛ")
        fileprivate static let duò = Info(a聲母: .d, a韻母: .uo, tone: .四, pinyinWithTone: "duò", pinyinWithoutTone: "duo", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄛ")
        fileprivate static let duo = Info(a聲母: .d, a韻母: .uo, tone: .輕聲, pinyinWithTone: "duo", pinyinWithoutTone: "duo", head: .d, firstChar: "d", bopomofo: "ㄉㄨㄛ")
        fileprivate static let ē = Info(a聲母: .none, a韻母: .e, tone: .一, pinyinWithTone: "ē", pinyinWithoutTone: "e", head: .e, firstChar: "e", bopomofo: "ㄝ")
        fileprivate static let é = Info(a聲母: .none, a韻母: .e, tone: .二, pinyinWithTone: "é", pinyinWithoutTone: "e", head: .e, firstChar: "e", bopomofo: "ㄝ")
        fileprivate static let ě = Info(a聲母: .none, a韻母: .e, tone: .三, pinyinWithTone: "ě", pinyinWithoutTone: "e", head: .e, firstChar: "e", bopomofo: "ㄝ")
        fileprivate static let è = Info(a聲母: .none, a韻母: .e, tone: .四, pinyinWithTone: "è", pinyinWithoutTone: "e", head: .e, firstChar: "e", bopomofo: "ㄝ")
        fileprivate static let ēi = Info(a聲母: .none, a韻母: .ei, tone: .一, pinyinWithTone: "ēi", pinyinWithoutTone: "ei", head: .e, firstChar: "e", bopomofo: "ㄟ")
        fileprivate static let éi = Info(a聲母: .none, a韻母: .ei, tone: .二, pinyinWithTone: "éi", pinyinWithoutTone: "ei", head: .e, firstChar: "e", bopomofo: "ㄟ")
        fileprivate static let ěi = Info(a聲母: .none, a韻母: .ei, tone: .三, pinyinWithTone: "ěi", pinyinWithoutTone: "ei", head: .e, firstChar: "e", bopomofo: "ㄟ")
        fileprivate static let èi = Info(a聲母: .none, a韻母: .ei, tone: .四, pinyinWithTone: "èi", pinyinWithoutTone: "ei", head: .e, firstChar: "e", bopomofo: "ㄟ")
        fileprivate static let ēn = Info(a聲母: .none, a韻母: .en, tone: .一, pinyinWithTone: "ēn", pinyinWithoutTone: "en", head: .e, firstChar: "e", bopomofo: "ㄣ")
        fileprivate static let ěn = Info(a聲母: .none, a韻母: .en, tone: .三, pinyinWithTone: "ěn", pinyinWithoutTone: "en", head: .e, firstChar: "e", bopomofo: "ㄣ")
        fileprivate static let èn = Info(a聲母: .none, a韻母: .en, tone: .四, pinyinWithTone: "èn", pinyinWithoutTone: "en", head: .e, firstChar: "e", bopomofo: "ㄣ")
        fileprivate static let ēng = Info(a聲母: .none, a韻母: .eng, tone: .一, pinyinWithTone: "ēng", pinyinWithoutTone: "eng", head: .e, firstChar: "e", bopomofo: "ㄥ")
        fileprivate static let ér = Info(a聲母: .none, a韻母: .er, tone: .二, pinyinWithTone: "ér", pinyinWithoutTone: "er", head: .e, firstChar: "e", bopomofo: "ㄦ")
        fileprivate static let ěr = Info(a聲母: .none, a韻母: .er, tone: .三, pinyinWithTone: "ěr", pinyinWithoutTone: "er", head: .e, firstChar: "e", bopomofo: "ㄦ")
        fileprivate static let èr = Info(a聲母: .none, a韻母: .er, tone: .四, pinyinWithTone: "èr", pinyinWithoutTone: "er", head: .e, firstChar: "e", bopomofo: "ㄦ")
        fileprivate static let er = Info(a聲母: .none, a韻母: .er, tone: .輕聲, pinyinWithTone: "er", pinyinWithoutTone: "er", head: .e, firstChar: "e", bopomofo: "ㄦ")
        fileprivate static let fā = Info(a聲母: .f, a韻母: .a, tone: .一, pinyinWithTone: "fā", pinyinWithoutTone: "fa", head: .f, firstChar: "f", bopomofo: "ㄈㄚ")
        fileprivate static let fá = Info(a聲母: .f, a韻母: .a, tone: .二, pinyinWithTone: "fá", pinyinWithoutTone: "fa", head: .f, firstChar: "f", bopomofo: "ㄈㄚ")
        fileprivate static let fǎ = Info(a聲母: .f, a韻母: .a, tone: .三, pinyinWithTone: "fǎ", pinyinWithoutTone: "fa", head: .f, firstChar: "f", bopomofo: "ㄈㄚ")
        fileprivate static let fà = Info(a聲母: .f, a韻母: .a, tone: .四, pinyinWithTone: "fà", pinyinWithoutTone: "fa", head: .f, firstChar: "f", bopomofo: "ㄈㄚ")
        fileprivate static let fān = Info(a聲母: .f, a韻母: .an, tone: .一, pinyinWithTone: "fān", pinyinWithoutTone: "fan", head: .f, firstChar: "f", bopomofo: "ㄈㄢ")
        fileprivate static let fán = Info(a聲母: .f, a韻母: .an, tone: .二, pinyinWithTone: "fán", pinyinWithoutTone: "fan", head: .f, firstChar: "f", bopomofo: "ㄈㄢ")
        fileprivate static let fǎn = Info(a聲母: .f, a韻母: .an, tone: .三, pinyinWithTone: "fǎn", pinyinWithoutTone: "fan", head: .f, firstChar: "f", bopomofo: "ㄈㄢ")
        fileprivate static let fàn = Info(a聲母: .f, a韻母: .an, tone: .四, pinyinWithTone: "fàn", pinyinWithoutTone: "fan", head: .f, firstChar: "f", bopomofo: "ㄈㄢ")
        fileprivate static let fāng = Info(a聲母: .f, a韻母: .ang, tone: .一, pinyinWithTone: "fāng", pinyinWithoutTone: "fang", head: .f, firstChar: "f", bopomofo: "ㄈㄤ")
        fileprivate static let fáng = Info(a聲母: .f, a韻母: .ang, tone: .二, pinyinWithTone: "fáng", pinyinWithoutTone: "fang", head: .f, firstChar: "f", bopomofo: "ㄈㄤ")
        fileprivate static let fǎng = Info(a聲母: .f, a韻母: .ang, tone: .三, pinyinWithTone: "fǎng", pinyinWithoutTone: "fang", head: .f, firstChar: "f", bopomofo: "ㄈㄤ")
        fileprivate static let fàng = Info(a聲母: .f, a韻母: .ang, tone: .四, pinyinWithTone: "fàng", pinyinWithoutTone: "fang", head: .f, firstChar: "f", bopomofo: "ㄈㄤ")
        fileprivate static let fang = Info(a聲母: .f, a韻母: .ang, tone: .輕聲, pinyinWithTone: "fang", pinyinWithoutTone: "fang", head: .f, firstChar: "f", bopomofo: "ㄈㄤ")
        fileprivate static let fēi = Info(a聲母: .f, a韻母: .ei, tone: .一, pinyinWithTone: "fēi", pinyinWithoutTone: "fei", head: .f, firstChar: "f", bopomofo: "ㄈㄟ")
        fileprivate static let féi = Info(a聲母: .f, a韻母: .ei, tone: .二, pinyinWithTone: "féi", pinyinWithoutTone: "fei", head: .f, firstChar: "f", bopomofo: "ㄈㄟ")
        fileprivate static let fěi = Info(a聲母: .f, a韻母: .ei, tone: .三, pinyinWithTone: "fěi", pinyinWithoutTone: "fei", head: .f, firstChar: "f", bopomofo: "ㄈㄟ")
        fileprivate static let fèi = Info(a聲母: .f, a韻母: .ei, tone: .四, pinyinWithTone: "fèi", pinyinWithoutTone: "fei", head: .f, firstChar: "f", bopomofo: "ㄈㄟ")
        fileprivate static let fēn = Info(a聲母: .f, a韻母: .en, tone: .一, pinyinWithTone: "fēn", pinyinWithoutTone: "fen", head: .f, firstChar: "f", bopomofo: "ㄈㄣ")
        fileprivate static let fén = Info(a聲母: .f, a韻母: .en, tone: .二, pinyinWithTone: "fén", pinyinWithoutTone: "fen", head: .f, firstChar: "f", bopomofo: "ㄈㄣ")
        fileprivate static let fěn = Info(a聲母: .f, a韻母: .en, tone: .三, pinyinWithTone: "fěn", pinyinWithoutTone: "fen", head: .f, firstChar: "f", bopomofo: "ㄈㄣ")
        fileprivate static let fèn = Info(a聲母: .f, a韻母: .en, tone: .四, pinyinWithTone: "fèn", pinyinWithoutTone: "fen", head: .f, firstChar: "f", bopomofo: "ㄈㄣ")
        fileprivate static let fēng = Info(a聲母: .f, a韻母: .eng, tone: .一, pinyinWithTone: "fēng", pinyinWithoutTone: "feng", head: .f, firstChar: "f", bopomofo: "ㄈㄥ")
        fileprivate static let féng = Info(a聲母: .f, a韻母: .eng, tone: .二, pinyinWithTone: "féng", pinyinWithoutTone: "feng", head: .f, firstChar: "f", bopomofo: "ㄈㄥ")
        fileprivate static let fěng = Info(a聲母: .f, a韻母: .eng, tone: .三, pinyinWithTone: "fěng", pinyinWithoutTone: "feng", head: .f, firstChar: "f", bopomofo: "ㄈㄥ")
        fileprivate static let fèng = Info(a聲母: .f, a韻母: .eng, tone: .四, pinyinWithTone: "fèng", pinyinWithoutTone: "feng", head: .f, firstChar: "f", bopomofo: "ㄈㄥ")
        fileprivate static let fiào = Info(a聲母: .f, a韻母: .iao, tone: .四, pinyinWithTone: "fiào", pinyinWithoutTone: "fiao", head: .f, firstChar: "f", bopomofo: "ㄈㄧㄠ")
        fileprivate static let fó = Info(a聲母: .f, a韻母: .o, tone: .二, pinyinWithTone: "fó", pinyinWithoutTone: "fo", head: .f, firstChar: "f", bopomofo: "ㄈㄛ")
        fileprivate static let fōu = Info(a聲母: .f, a韻母: .ou, tone: .一, pinyinWithTone: "fōu", pinyinWithoutTone: "fou", head: .f, firstChar: "f", bopomofo: "ㄈㄡ")
        fileprivate static let fóu = Info(a聲母: .f, a韻母: .ou, tone: .二, pinyinWithTone: "fóu", pinyinWithoutTone: "fou", head: .f, firstChar: "f", bopomofo: "ㄈㄡ")
        fileprivate static let fǒu = Info(a聲母: .f, a韻母: .ou, tone: .三, pinyinWithTone: "fǒu", pinyinWithoutTone: "fou", head: .f, firstChar: "f", bopomofo: "ㄈㄡ")
        fileprivate static let fòu = Info(a聲母: .f, a韻母: .ou, tone: .四, pinyinWithTone: "fòu", pinyinWithoutTone: "fou", head: .f, firstChar: "f", bopomofo: "ㄈㄡ")
        fileprivate static let fū = Info(a聲母: .f, a韻母: .u, tone: .一, pinyinWithTone: "fū", pinyinWithoutTone: "fu", head: .f, firstChar: "f", bopomofo: "ㄈㄨ")
        fileprivate static let fú = Info(a聲母: .f, a韻母: .u, tone: .二, pinyinWithTone: "fú", pinyinWithoutTone: "fu", head: .f, firstChar: "f", bopomofo: "ㄈㄨ")
        fileprivate static let fǔ = Info(a聲母: .f, a韻母: .u, tone: .三, pinyinWithTone: "fǔ", pinyinWithoutTone: "fu", head: .f, firstChar: "f", bopomofo: "ㄈㄨ")
        fileprivate static let fù = Info(a聲母: .f, a韻母: .u, tone: .四, pinyinWithTone: "fù", pinyinWithoutTone: "fu", head: .f, firstChar: "f", bopomofo: "ㄈㄨ")
        fileprivate static let fu = Info(a聲母: .f, a韻母: .u, tone: .輕聲, pinyinWithTone: "fu", pinyinWithoutTone: "fu", head: .f, firstChar: "f", bopomofo: "ㄈㄨ")
        fileprivate static let gā = Info(a聲母: .g, a韻母: .a, tone: .一, pinyinWithTone: "gā", pinyinWithoutTone: "ga", head: .g, firstChar: "g", bopomofo: "ㄍㄚ")
        fileprivate static let gá = Info(a聲母: .g, a韻母: .a, tone: .二, pinyinWithTone: "gá", pinyinWithoutTone: "ga", head: .g, firstChar: "g", bopomofo: "ㄍㄚ")
        fileprivate static let gǎ = Info(a聲母: .g, a韻母: .a, tone: .三, pinyinWithTone: "gǎ", pinyinWithoutTone: "ga", head: .g, firstChar: "g", bopomofo: "ㄍㄚ")
        fileprivate static let gà = Info(a聲母: .g, a韻母: .a, tone: .四, pinyinWithTone: "gà", pinyinWithoutTone: "ga", head: .g, firstChar: "g", bopomofo: "ㄍㄚ")
        fileprivate static let gāi = Info(a聲母: .g, a韻母: .ai, tone: .一, pinyinWithTone: "gāi", pinyinWithoutTone: "gai", head: .g, firstChar: "g", bopomofo: "ㄍㄞ")
        fileprivate static let gǎi = Info(a聲母: .g, a韻母: .ai, tone: .三, pinyinWithTone: "gǎi", pinyinWithoutTone: "gai", head: .g, firstChar: "g", bopomofo: "ㄍㄞ")
        fileprivate static let gài = Info(a聲母: .g, a韻母: .ai, tone: .四, pinyinWithTone: "gài", pinyinWithoutTone: "gai", head: .g, firstChar: "g", bopomofo: "ㄍㄞ")
        fileprivate static let gān = Info(a聲母: .g, a韻母: .an, tone: .一, pinyinWithTone: "gān", pinyinWithoutTone: "gan", head: .g, firstChar: "g", bopomofo: "ㄍㄢ")
        fileprivate static let gán = Info(a聲母: .g, a韻母: .an, tone: .二, pinyinWithTone: "gán", pinyinWithoutTone: "gan", head: .g, firstChar: "g", bopomofo: "ㄍㄢ")
        fileprivate static let gǎn = Info(a聲母: .g, a韻母: .an, tone: .三, pinyinWithTone: "gǎn", pinyinWithoutTone: "gan", head: .g, firstChar: "g", bopomofo: "ㄍㄢ")
        fileprivate static let gàn = Info(a聲母: .g, a韻母: .an, tone: .四, pinyinWithTone: "gàn", pinyinWithoutTone: "gan", head: .g, firstChar: "g", bopomofo: "ㄍㄢ")
        fileprivate static let gāng = Info(a聲母: .g, a韻母: .ang, tone: .一, pinyinWithTone: "gāng", pinyinWithoutTone: "gang", head: .g, firstChar: "g", bopomofo: "ㄍㄤ")
        fileprivate static let gǎng = Info(a聲母: .g, a韻母: .ang, tone: .三, pinyinWithTone: "gǎng", pinyinWithoutTone: "gang", head: .g, firstChar: "g", bopomofo: "ㄍㄤ")
        fileprivate static let gàng = Info(a聲母: .g, a韻母: .ang, tone: .四, pinyinWithTone: "gàng", pinyinWithoutTone: "gang", head: .g, firstChar: "g", bopomofo: "ㄍㄤ")
        fileprivate static let gāo = Info(a聲母: .g, a韻母: .ao, tone: .一, pinyinWithTone: "gāo", pinyinWithoutTone: "gao", head: .g, firstChar: "g", bopomofo: "ㄍㄠ")
        fileprivate static let gǎo = Info(a聲母: .g, a韻母: .ao, tone: .三, pinyinWithTone: "gǎo", pinyinWithoutTone: "gao", head: .g, firstChar: "g", bopomofo: "ㄍㄠ")
        fileprivate static let gào = Info(a聲母: .g, a韻母: .ao, tone: .四, pinyinWithTone: "gào", pinyinWithoutTone: "gao", head: .g, firstChar: "g", bopomofo: "ㄍㄠ")
        fileprivate static let gē = Info(a聲母: .g, a韻母: .e, tone: .一, pinyinWithTone: "gē", pinyinWithoutTone: "ge", head: .g, firstChar: "g", bopomofo: "ㄍㄜ")
        fileprivate static let gé = Info(a聲母: .g, a韻母: .e, tone: .二, pinyinWithTone: "gé", pinyinWithoutTone: "ge", head: .g, firstChar: "g", bopomofo: "ㄍㄜ")
        fileprivate static let gě = Info(a聲母: .g, a韻母: .e, tone: .三, pinyinWithTone: "gě", pinyinWithoutTone: "ge", head: .g, firstChar: "g", bopomofo: "ㄍㄜ")
        fileprivate static let gè = Info(a聲母: .g, a韻母: .e, tone: .四, pinyinWithTone: "gè", pinyinWithoutTone: "ge", head: .g, firstChar: "g", bopomofo: "ㄍㄜ")
        fileprivate static let gěi = Info(a聲母: .g, a韻母: .ei, tone: .三, pinyinWithTone: "gěi", pinyinWithoutTone: "gei", head: .g, firstChar: "g", bopomofo: "ㄍㄟ")
        fileprivate static let gēn = Info(a聲母: .g, a韻母: .en, tone: .一, pinyinWithTone: "gēn", pinyinWithoutTone: "gen", head: .g, firstChar: "g", bopomofo: "ㄍㄣ")
        fileprivate static let gén = Info(a聲母: .g, a韻母: .en, tone: .二, pinyinWithTone: "gén", pinyinWithoutTone: "gen", head: .g, firstChar: "g", bopomofo: "ㄍㄣ")
        fileprivate static let gěn = Info(a聲母: .g, a韻母: .en, tone: .三, pinyinWithTone: "gěn", pinyinWithoutTone: "gen", head: .g, firstChar: "g", bopomofo: "ㄍㄣ")
        fileprivate static let gèn = Info(a聲母: .g, a韻母: .en, tone: .四, pinyinWithTone: "gèn", pinyinWithoutTone: "gen", head: .g, firstChar: "g", bopomofo: "ㄍㄣ")
        fileprivate static let gēng = Info(a聲母: .g, a韻母: .eng, tone: .一, pinyinWithTone: "gēng", pinyinWithoutTone: "geng", head: .g, firstChar: "g", bopomofo: "ㄍㄥ")
        fileprivate static let gěng = Info(a聲母: .g, a韻母: .eng, tone: .三, pinyinWithTone: "gěng", pinyinWithoutTone: "geng", head: .g, firstChar: "g", bopomofo: "ㄍㄥ")
        fileprivate static let gèng = Info(a聲母: .g, a韻母: .eng, tone: .四, pinyinWithTone: "gèng", pinyinWithoutTone: "geng", head: .g, firstChar: "g", bopomofo: "ㄍㄥ")
        fileprivate static let gōng = Info(a聲母: .g, a韻母: .ong, tone: .一, pinyinWithTone: "gōng", pinyinWithoutTone: "gong", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄥ")
        fileprivate static let gǒng = Info(a聲母: .g, a韻母: .ong, tone: .三, pinyinWithTone: "gǒng", pinyinWithoutTone: "gong", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄥ")
        fileprivate static let gòng = Info(a聲母: .g, a韻母: .ong, tone: .四, pinyinWithTone: "gòng", pinyinWithoutTone: "gong", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄥ")
        fileprivate static let gōu = Info(a聲母: .g, a韻母: .ou, tone: .一, pinyinWithTone: "gōu", pinyinWithoutTone: "gou", head: .g, firstChar: "g", bopomofo: "ㄍㄡ")
        fileprivate static let gǒu = Info(a聲母: .g, a韻母: .ou, tone: .三, pinyinWithTone: "gǒu", pinyinWithoutTone: "gou", head: .g, firstChar: "g", bopomofo: "ㄍㄡ")
        fileprivate static let gòu = Info(a聲母: .g, a韻母: .ou, tone: .四, pinyinWithTone: "gòu", pinyinWithoutTone: "gou", head: .g, firstChar: "g", bopomofo: "ㄍㄡ")
        fileprivate static let gū = Info(a聲母: .g, a韻母: .u, tone: .一, pinyinWithTone: "gū", pinyinWithoutTone: "gu", head: .g, firstChar: "g", bopomofo: "ㄍㄨ")
        fileprivate static let gú = Info(a聲母: .g, a韻母: .u, tone: .二, pinyinWithTone: "gú", pinyinWithoutTone: "gu", head: .g, firstChar: "g", bopomofo: "ㄍㄨ")
        fileprivate static let gǔ = Info(a聲母: .g, a韻母: .u, tone: .三, pinyinWithTone: "gǔ", pinyinWithoutTone: "gu", head: .g, firstChar: "g", bopomofo: "ㄍㄨ")
        fileprivate static let gù = Info(a聲母: .g, a韻母: .u, tone: .四, pinyinWithTone: "gù", pinyinWithoutTone: "gu", head: .g, firstChar: "g", bopomofo: "ㄍㄨ")
        fileprivate static let guā = Info(a聲母: .g, a韻母: .ua, tone: .一, pinyinWithTone: "guā", pinyinWithoutTone: "gua", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄚ")
        fileprivate static let guǎ = Info(a聲母: .g, a韻母: .ua, tone: .三, pinyinWithTone: "guǎ", pinyinWithoutTone: "gua", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄚ")
        fileprivate static let guà = Info(a聲母: .g, a韻母: .ua, tone: .四, pinyinWithTone: "guà", pinyinWithoutTone: "gua", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄚ")
        fileprivate static let guāi = Info(a聲母: .g, a韻母: .uai, tone: .一, pinyinWithTone: "guāi", pinyinWithoutTone: "guai", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄞ")
        fileprivate static let guái = Info(a聲母: .g, a韻母: .uai, tone: .二, pinyinWithTone: "guái", pinyinWithoutTone: "guai", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄞ")
        fileprivate static let guǎi = Info(a聲母: .g, a韻母: .uai, tone: .三, pinyinWithTone: "guǎi", pinyinWithoutTone: "guai", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄞ")
        fileprivate static let guài = Info(a聲母: .g, a韻母: .uai, tone: .四, pinyinWithTone: "guài", pinyinWithoutTone: "guai", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄞ")
        fileprivate static let guān = Info(a聲母: .g, a韻母: .uan, tone: .一, pinyinWithTone: "guān", pinyinWithoutTone: "guan", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄢ")
        fileprivate static let guǎn = Info(a聲母: .g, a韻母: .uan, tone: .三, pinyinWithTone: "guǎn", pinyinWithoutTone: "guan", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄢ")
        fileprivate static let guàn = Info(a聲母: .g, a韻母: .uan, tone: .四, pinyinWithTone: "guàn", pinyinWithoutTone: "guan", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄢ")
        fileprivate static let guāng = Info(a聲母: .g, a韻母: .uang, tone: .一, pinyinWithTone: "guāng", pinyinWithoutTone: "guang", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄤ")
        fileprivate static let guǎng = Info(a聲母: .g, a韻母: .uang, tone: .三, pinyinWithTone: "guǎng", pinyinWithoutTone: "guang", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄤ")
        fileprivate static let guàng = Info(a聲母: .g, a韻母: .uang, tone: .四, pinyinWithTone: "guàng", pinyinWithoutTone: "guang", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄤ")
        fileprivate static let guī = Info(a聲母: .g, a韻母: .ui, tone: .一, pinyinWithTone: "guī", pinyinWithoutTone: "gui", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄟ")
        fileprivate static let guí = Info(a聲母: .g, a韻母: .ui, tone: .二, pinyinWithTone: "guí", pinyinWithoutTone: "gui", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄟ")
        fileprivate static let guǐ = Info(a聲母: .g, a韻母: .ui, tone: .三, pinyinWithTone: "guǐ", pinyinWithoutTone: "gui", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄟ")
        fileprivate static let guì = Info(a聲母: .g, a韻母: .ui, tone: .四, pinyinWithTone: "guì", pinyinWithoutTone: "gui", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄟ")
        fileprivate static let gūn = Info(a聲母: .g, a韻母: .un, tone: .一, pinyinWithTone: "gūn", pinyinWithoutTone: "gun", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄣ")
        fileprivate static let gǔn = Info(a聲母: .g, a韻母: .un, tone: .三, pinyinWithTone: "gǔn", pinyinWithoutTone: "gun", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄣ")
        fileprivate static let gùn = Info(a聲母: .g, a韻母: .un, tone: .四, pinyinWithTone: "gùn", pinyinWithoutTone: "gun", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄣ")
        fileprivate static let guō = Info(a聲母: .g, a韻母: .uo, tone: .一, pinyinWithTone: "guō", pinyinWithoutTone: "guo", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄛ")
        fileprivate static let guó = Info(a聲母: .g, a韻母: .uo, tone: .二, pinyinWithTone: "guó", pinyinWithoutTone: "guo", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄛ")
        fileprivate static let guǒ = Info(a聲母: .g, a韻母: .uo, tone: .三, pinyinWithTone: "guǒ", pinyinWithoutTone: "guo", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄛ")
        fileprivate static let guò = Info(a聲母: .g, a韻母: .uo, tone: .四, pinyinWithTone: "guò", pinyinWithoutTone: "guo", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄛ")
        fileprivate static let guo = Info(a聲母: .g, a韻母: .uo, tone: .輕聲, pinyinWithTone: "guo", pinyinWithoutTone: "guo", head: .g, firstChar: "g", bopomofo: "ㄍㄨㄛ")
        fileprivate static let hā = Info(a聲母: .h, a韻母: .a, tone: .一, pinyinWithTone: "hā", pinyinWithoutTone: "ha", head: .h, firstChar: "h", bopomofo: "ㄏㄚ")
        fileprivate static let há = Info(a聲母: .h, a韻母: .a, tone: .二, pinyinWithTone: "há", pinyinWithoutTone: "ha", head: .h, firstChar: "h", bopomofo: "ㄏㄚ")
        fileprivate static let hǎ = Info(a聲母: .h, a韻母: .a, tone: .三, pinyinWithTone: "hǎ", pinyinWithoutTone: "ha", head: .h, firstChar: "h", bopomofo: "ㄏㄚ")
        fileprivate static let hà = Info(a聲母: .h, a韻母: .a, tone: .四, pinyinWithTone: "hà", pinyinWithoutTone: "ha", head: .h, firstChar: "h", bopomofo: "ㄏㄚ")
        fileprivate static let hāi = Info(a聲母: .h, a韻母: .ai, tone: .一, pinyinWithTone: "hāi", pinyinWithoutTone: "hai", head: .h, firstChar: "h", bopomofo: "ㄏㄞ")
        fileprivate static let hái = Info(a聲母: .h, a韻母: .ai, tone: .二, pinyinWithTone: "hái", pinyinWithoutTone: "hai", head: .h, firstChar: "h", bopomofo: "ㄏㄞ")
        fileprivate static let hǎi = Info(a聲母: .h, a韻母: .ai, tone: .三, pinyinWithTone: "hǎi", pinyinWithoutTone: "hai", head: .h, firstChar: "h", bopomofo: "ㄏㄞ")
        fileprivate static let hài = Info(a聲母: .h, a韻母: .ai, tone: .四, pinyinWithTone: "hài", pinyinWithoutTone: "hai", head: .h, firstChar: "h", bopomofo: "ㄏㄞ")
        fileprivate static let hān = Info(a聲母: .h, a韻母: .an, tone: .一, pinyinWithTone: "hān", pinyinWithoutTone: "han", head: .h, firstChar: "h", bopomofo: "ㄏㄢ")
        fileprivate static let hán = Info(a聲母: .h, a韻母: .an, tone: .二, pinyinWithTone: "hán", pinyinWithoutTone: "han", head: .h, firstChar: "h", bopomofo: "ㄏㄢ")
        fileprivate static let hǎn = Info(a聲母: .h, a韻母: .an, tone: .三, pinyinWithTone: "hǎn", pinyinWithoutTone: "han", head: .h, firstChar: "h", bopomofo: "ㄏㄢ")
        fileprivate static let hàn = Info(a聲母: .h, a韻母: .an, tone: .四, pinyinWithTone: "hàn", pinyinWithoutTone: "han", head: .h, firstChar: "h", bopomofo: "ㄏㄢ")
        fileprivate static let han = Info(a聲母: .h, a韻母: .an, tone: .輕聲, pinyinWithTone: "han", pinyinWithoutTone: "han", head: .h, firstChar: "h", bopomofo: "ㄏㄢ")
        fileprivate static let hāng = Info(a聲母: .h, a韻母: .ang, tone: .一, pinyinWithTone: "hāng", pinyinWithoutTone: "hang", head: .h, firstChar: "h", bopomofo: "ㄏㄤ")
        fileprivate static let háng = Info(a聲母: .h, a韻母: .ang, tone: .二, pinyinWithTone: "háng", pinyinWithoutTone: "hang", head: .h, firstChar: "h", bopomofo: "ㄏㄤ")
        fileprivate static let hǎng = Info(a聲母: .h, a韻母: .ang, tone: .三, pinyinWithTone: "hǎng", pinyinWithoutTone: "hang", head: .h, firstChar: "h", bopomofo: "ㄏㄤ")
        fileprivate static let hàng = Info(a聲母: .h, a韻母: .ang, tone: .四, pinyinWithTone: "hàng", pinyinWithoutTone: "hang", head: .h, firstChar: "h", bopomofo: "ㄏㄤ")
        fileprivate static let hāo = Info(a聲母: .h, a韻母: .ao, tone: .一, pinyinWithTone: "hāo", pinyinWithoutTone: "hao", head: .h, firstChar: "h", bopomofo: "ㄏㄠ")
        fileprivate static let háo = Info(a聲母: .h, a韻母: .ao, tone: .二, pinyinWithTone: "háo", pinyinWithoutTone: "hao", head: .h, firstChar: "h", bopomofo: "ㄏㄠ")
        fileprivate static let hǎo = Info(a聲母: .h, a韻母: .ao, tone: .三, pinyinWithTone: "hǎo", pinyinWithoutTone: "hao", head: .h, firstChar: "h", bopomofo: "ㄏㄠ")
        fileprivate static let hào = Info(a聲母: .h, a韻母: .ao, tone: .四, pinyinWithTone: "hào", pinyinWithoutTone: "hao", head: .h, firstChar: "h", bopomofo: "ㄏㄠ")
        fileprivate static let hē = Info(a聲母: .h, a韻母: .e, tone: .一, pinyinWithTone: "hē", pinyinWithoutTone: "he", head: .h, firstChar: "h", bopomofo: "ㄏㄜ")
        fileprivate static let hé = Info(a聲母: .h, a韻母: .e, tone: .二, pinyinWithTone: "hé", pinyinWithoutTone: "he", head: .h, firstChar: "h", bopomofo: "ㄏㄜ")
        fileprivate static let hè = Info(a聲母: .h, a韻母: .e, tone: .四, pinyinWithTone: "hè", pinyinWithoutTone: "he", head: .h, firstChar: "h", bopomofo: "ㄏㄜ")
        fileprivate static let hēi = Info(a聲母: .h, a韻母: .ei, tone: .一, pinyinWithTone: "hēi", pinyinWithoutTone: "hei", head: .h, firstChar: "h", bopomofo: "ㄏㄟ")
        fileprivate static let hēn = Info(a聲母: .h, a韻母: .en, tone: .一, pinyinWithTone: "hēn", pinyinWithoutTone: "hen", head: .h, firstChar: "h", bopomofo: "ㄏㄣ")
        fileprivate static let hén = Info(a聲母: .h, a韻母: .en, tone: .二, pinyinWithTone: "hén", pinyinWithoutTone: "hen", head: .h, firstChar: "h", bopomofo: "ㄏㄣ")
        fileprivate static let hěn = Info(a聲母: .h, a韻母: .en, tone: .三, pinyinWithTone: "hěn", pinyinWithoutTone: "hen", head: .h, firstChar: "h", bopomofo: "ㄏㄣ")
        fileprivate static let hèn = Info(a聲母: .h, a韻母: .en, tone: .四, pinyinWithTone: "hèn", pinyinWithoutTone: "hen", head: .h, firstChar: "h", bopomofo: "ㄏㄣ")
        fileprivate static let hēng = Info(a聲母: .h, a韻母: .eng, tone: .一, pinyinWithTone: "hēng", pinyinWithoutTone: "heng", head: .h, firstChar: "h", bopomofo: "ㄏㄥ")
        fileprivate static let héng = Info(a聲母: .h, a韻母: .eng, tone: .二, pinyinWithTone: "héng", pinyinWithoutTone: "heng", head: .h, firstChar: "h", bopomofo: "ㄏㄥ")
        fileprivate static let hèng = Info(a聲母: .h, a韻母: .eng, tone: .四, pinyinWithTone: "hèng", pinyinWithoutTone: "heng", head: .h, firstChar: "h", bopomofo: "ㄏㄥ")
        fileprivate static let hōng = Info(a聲母: .h, a韻母: .ong, tone: .一, pinyinWithTone: "hōng", pinyinWithoutTone: "hong", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄥ")
        fileprivate static let hóng = Info(a聲母: .h, a韻母: .ong, tone: .二, pinyinWithTone: "hóng", pinyinWithoutTone: "hong", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄥ")
        fileprivate static let hǒng = Info(a聲母: .h, a韻母: .ong, tone: .三, pinyinWithTone: "hǒng", pinyinWithoutTone: "hong", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄥ")
        fileprivate static let hòng = Info(a聲母: .h, a韻母: .ong, tone: .四, pinyinWithTone: "hòng", pinyinWithoutTone: "hong", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄥ")
        fileprivate static let hōu = Info(a聲母: .h, a韻母: .ou, tone: .一, pinyinWithTone: "hōu", pinyinWithoutTone: "hou", head: .h, firstChar: "h", bopomofo: "ㄏㄡ")
        fileprivate static let hóu = Info(a聲母: .h, a韻母: .ou, tone: .二, pinyinWithTone: "hóu", pinyinWithoutTone: "hou", head: .h, firstChar: "h", bopomofo: "ㄏㄡ")
        fileprivate static let hǒu = Info(a聲母: .h, a韻母: .ou, tone: .三, pinyinWithTone: "hǒu", pinyinWithoutTone: "hou", head: .h, firstChar: "h", bopomofo: "ㄏㄡ")
        fileprivate static let hòu = Info(a聲母: .h, a韻母: .ou, tone: .四, pinyinWithTone: "hòu", pinyinWithoutTone: "hou", head: .h, firstChar: "h", bopomofo: "ㄏㄡ")
        fileprivate static let hū = Info(a聲母: .h, a韻母: .u, tone: .一, pinyinWithTone: "hū", pinyinWithoutTone: "hu", head: .h, firstChar: "h", bopomofo: "ㄏㄨ")
        fileprivate static let hú = Info(a聲母: .h, a韻母: .u, tone: .二, pinyinWithTone: "hú", pinyinWithoutTone: "hu", head: .h, firstChar: "h", bopomofo: "ㄏㄨ")
        fileprivate static let hǔ = Info(a聲母: .h, a韻母: .u, tone: .三, pinyinWithTone: "hǔ", pinyinWithoutTone: "hu", head: .h, firstChar: "h", bopomofo: "ㄏㄨ")
        fileprivate static let hù = Info(a聲母: .h, a韻母: .u, tone: .四, pinyinWithTone: "hù", pinyinWithoutTone: "hu", head: .h, firstChar: "h", bopomofo: "ㄏㄨ")
        fileprivate static let huā = Info(a聲母: .h, a韻母: .ua, tone: .一, pinyinWithTone: "huā", pinyinWithoutTone: "hua", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄚ")
        fileprivate static let huá = Info(a聲母: .h, a韻母: .ua, tone: .二, pinyinWithTone: "huá", pinyinWithoutTone: "hua", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄚ")
        fileprivate static let huǎ = Info(a聲母: .h, a韻母: .ua, tone: .三, pinyinWithTone: "huǎ", pinyinWithoutTone: "hua", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄚ")
        fileprivate static let huà = Info(a聲母: .h, a韻母: .ua, tone: .四, pinyinWithTone: "huà", pinyinWithoutTone: "hua", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄚ")
        fileprivate static let huāi = Info(a聲母: .h, a韻母: .uai, tone: .一, pinyinWithTone: "huāi", pinyinWithoutTone: "huai", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄞ")
        fileprivate static let huái = Info(a聲母: .h, a韻母: .uai, tone: .二, pinyinWithTone: "huái", pinyinWithoutTone: "huai", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄞ")
        fileprivate static let huài = Info(a聲母: .h, a韻母: .uai, tone: .四, pinyinWithTone: "huài", pinyinWithoutTone: "huai", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄞ")
        fileprivate static let huān = Info(a聲母: .h, a韻母: .uan, tone: .一, pinyinWithTone: "huān", pinyinWithoutTone: "huan", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄢ")
        fileprivate static let huán = Info(a聲母: .h, a韻母: .uan, tone: .二, pinyinWithTone: "huán", pinyinWithoutTone: "huan", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄢ")
        fileprivate static let huǎn = Info(a聲母: .h, a韻母: .uan, tone: .三, pinyinWithTone: "huǎn", pinyinWithoutTone: "huan", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄢ")
        fileprivate static let huàn = Info(a聲母: .h, a韻母: .uan, tone: .四, pinyinWithTone: "huàn", pinyinWithoutTone: "huan", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄢ")
        fileprivate static let huāng = Info(a聲母: .h, a韻母: .uang, tone: .一, pinyinWithTone: "huāng", pinyinWithoutTone: "huang", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄤ")
        fileprivate static let huáng = Info(a聲母: .h, a韻母: .uang, tone: .二, pinyinWithTone: "huáng", pinyinWithoutTone: "huang", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄤ")
        fileprivate static let huǎng = Info(a聲母: .h, a韻母: .uang, tone: .三, pinyinWithTone: "huǎng", pinyinWithoutTone: "huang", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄤ")
        fileprivate static let huàng = Info(a聲母: .h, a韻母: .uang, tone: .四, pinyinWithTone: "huàng", pinyinWithoutTone: "huang", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄤ")
        fileprivate static let huī = Info(a聲母: .h, a韻母: .ui, tone: .一, pinyinWithTone: "huī", pinyinWithoutTone: "hui", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄟ")
        fileprivate static let huí = Info(a聲母: .h, a韻母: .ui, tone: .二, pinyinWithTone: "huí", pinyinWithoutTone: "hui", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄟ")
        fileprivate static let huǐ = Info(a聲母: .h, a韻母: .ui, tone: .三, pinyinWithTone: "huǐ", pinyinWithoutTone: "hui", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄟ")
        fileprivate static let huì = Info(a聲母: .h, a韻母: .ui, tone: .四, pinyinWithTone: "huì", pinyinWithoutTone: "hui", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄟ")
        fileprivate static let hūn = Info(a聲母: .h, a韻母: .un, tone: .一, pinyinWithTone: "hūn", pinyinWithoutTone: "hun", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄣ")
        fileprivate static let hún = Info(a聲母: .h, a韻母: .un, tone: .二, pinyinWithTone: "hún", pinyinWithoutTone: "hun", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄣ")
        fileprivate static let hǔn = Info(a聲母: .h, a韻母: .un, tone: .三, pinyinWithTone: "hǔn", pinyinWithoutTone: "hun", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄣ")
        fileprivate static let hùn = Info(a聲母: .h, a韻母: .un, tone: .四, pinyinWithTone: "hùn", pinyinWithoutTone: "hun", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄣ")
        fileprivate static let huō = Info(a聲母: .h, a韻母: .uo, tone: .一, pinyinWithTone: "huō", pinyinWithoutTone: "huo", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄛ")
        fileprivate static let huó = Info(a聲母: .h, a韻母: .uo, tone: .二, pinyinWithTone: "huó", pinyinWithoutTone: "huo", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄛ")
        fileprivate static let huǒ = Info(a聲母: .h, a韻母: .uo, tone: .三, pinyinWithTone: "huǒ", pinyinWithoutTone: "huo", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄛ")
        fileprivate static let huò = Info(a聲母: .h, a韻母: .uo, tone: .四, pinyinWithTone: "huò", pinyinWithoutTone: "huo", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄛ")
        fileprivate static let huo = Info(a聲母: .h, a韻母: .uo, tone: .輕聲, pinyinWithTone: "huo", pinyinWithoutTone: "huo", head: .h, firstChar: "h", bopomofo: "ㄏㄨㄛ")
        fileprivate static let jà = Info(a聲母: .j, a韻母: .a, tone: .四, pinyinWithTone: "jà", pinyinWithoutTone: "ja", head: .j, firstChar: "j", bopomofo: "ㄐㄚ")
        fileprivate static let jī = Info(a聲母: .j, a韻母: .i, tone: .一, pinyinWithTone: "jī", pinyinWithoutTone: "ji", head: .j, firstChar: "j", bopomofo: "ㄐㄧ")
        fileprivate static let jí = Info(a聲母: .j, a韻母: .i, tone: .二, pinyinWithTone: "jí", pinyinWithoutTone: "ji", head: .j, firstChar: "j", bopomofo: "ㄐㄧ")
        fileprivate static let jǐ = Info(a聲母: .j, a韻母: .i, tone: .三, pinyinWithTone: "jǐ", pinyinWithoutTone: "ji", head: .j, firstChar: "j", bopomofo: "ㄐㄧ")
        fileprivate static let jì = Info(a聲母: .j, a韻母: .i, tone: .四, pinyinWithTone: "jì", pinyinWithoutTone: "ji", head: .j, firstChar: "j", bopomofo: "ㄐㄧ")
        fileprivate static let ji = Info(a聲母: .j, a韻母: .i, tone: .輕聲, pinyinWithTone: "ji", pinyinWithoutTone: "ji", head: .j, firstChar: "j", bopomofo: "ㄐㄧ")
        fileprivate static let jiā = Info(a聲母: .j, a韻母: .ia, tone: .一, pinyinWithTone: "jiā", pinyinWithoutTone: "jia", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄚ")
        fileprivate static let jiá = Info(a聲母: .j, a韻母: .ia, tone: .二, pinyinWithTone: "jiá", pinyinWithoutTone: "jia", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄚ")
        fileprivate static let jiǎ = Info(a聲母: .j, a韻母: .ia, tone: .三, pinyinWithTone: "jiǎ", pinyinWithoutTone: "jia", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄚ")
        fileprivate static let jià = Info(a聲母: .j, a韻母: .ia, tone: .四, pinyinWithTone: "jià", pinyinWithoutTone: "jia", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄚ")
        fileprivate static let jia = Info(a聲母: .j, a韻母: .ia, tone: .輕聲, pinyinWithTone: "jia", pinyinWithoutTone: "jia", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄚ")
        fileprivate static let jiān = Info(a聲母: .j, a韻母: .ian, tone: .一, pinyinWithTone: "jiān", pinyinWithoutTone: "jian", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄢ")
        fileprivate static let jiǎn = Info(a聲母: .j, a韻母: .ian, tone: .三, pinyinWithTone: "jiǎn", pinyinWithoutTone: "jian", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄢ")
        fileprivate static let jiàn = Info(a聲母: .j, a韻母: .ian, tone: .四, pinyinWithTone: "jiàn", pinyinWithoutTone: "jian", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄢ")
        fileprivate static let jiāng = Info(a聲母: .j, a韻母: .iang, tone: .一, pinyinWithTone: "jiāng", pinyinWithoutTone: "jiang", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄤ")
        fileprivate static let jiǎng = Info(a聲母: .j, a韻母: .iang, tone: .三, pinyinWithTone: "jiǎng", pinyinWithoutTone: "jiang", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄤ")
        fileprivate static let jiàng = Info(a聲母: .j, a韻母: .iang, tone: .四, pinyinWithTone: "jiàng", pinyinWithoutTone: "jiang", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄤ")
        fileprivate static let jiāo = Info(a聲母: .j, a韻母: .iao, tone: .一, pinyinWithTone: "jiāo", pinyinWithoutTone: "jiao", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄠ")
        fileprivate static let jiáo = Info(a聲母: .j, a韻母: .iao, tone: .二, pinyinWithTone: "jiáo", pinyinWithoutTone: "jiao", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄠ")
        fileprivate static let jiǎo = Info(a聲母: .j, a韻母: .iao, tone: .三, pinyinWithTone: "jiǎo", pinyinWithoutTone: "jiao", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄠ")
        fileprivate static let jiào = Info(a聲母: .j, a韻母: .iao, tone: .四, pinyinWithTone: "jiào", pinyinWithoutTone: "jiao", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄠ")
        fileprivate static let jiē = Info(a聲母: .j, a韻母: .ie, tone: .一, pinyinWithTone: "jiē", pinyinWithoutTone: "jie", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄝ")
        fileprivate static let jié = Info(a聲母: .j, a韻母: .ie, tone: .二, pinyinWithTone: "jié", pinyinWithoutTone: "jie", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄝ")
        fileprivate static let jiě = Info(a聲母: .j, a韻母: .ie, tone: .三, pinyinWithTone: "jiě", pinyinWithoutTone: "jie", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄝ")
        fileprivate static let jiè = Info(a聲母: .j, a韻母: .ie, tone: .四, pinyinWithTone: "jiè", pinyinWithoutTone: "jie", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄝ")
        fileprivate static let jie = Info(a聲母: .j, a韻母: .ie, tone: .輕聲, pinyinWithTone: "jie", pinyinWithoutTone: "jie", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄝ")
        fileprivate static let jīn = Info(a聲母: .j, a韻母: .in, tone: .一, pinyinWithTone: "jīn", pinyinWithoutTone: "jin", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄣ")
        fileprivate static let jǐn = Info(a聲母: .j, a韻母: .in, tone: .三, pinyinWithTone: "jǐn", pinyinWithoutTone: "jin", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄣ")
        fileprivate static let jìn = Info(a聲母: .j, a韻母: .in, tone: .四, pinyinWithTone: "jìn", pinyinWithoutTone: "jin", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄣ")
        fileprivate static let jīng = Info(a聲母: .j, a韻母: .ing, tone: .一, pinyinWithTone: "jīng", pinyinWithoutTone: "jing", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄥ")
        fileprivate static let jǐng = Info(a聲母: .j, a韻母: .ing, tone: .三, pinyinWithTone: "jǐng", pinyinWithoutTone: "jing", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄥ")
        fileprivate static let jìng = Info(a聲母: .j, a韻母: .ing, tone: .四, pinyinWithTone: "jìng", pinyinWithoutTone: "jing", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄥ")
        fileprivate static let jiōng = Info(a聲母: .j, a韻母: .iong, tone: .一, pinyinWithTone: "jiōng", pinyinWithoutTone: "jiong", head: .j, firstChar: "j", bopomofo: "ㄐㄩㄥ")
        fileprivate static let jiǒng = Info(a聲母: .j, a韻母: .iong, tone: .三, pinyinWithTone: "jiǒng", pinyinWithoutTone: "jiong", head: .j, firstChar: "j", bopomofo: "ㄐㄩㄥ")
        fileprivate static let jiòng = Info(a聲母: .j, a韻母: .iong, tone: .四, pinyinWithTone: "jiòng", pinyinWithoutTone: "jiong", head: .j, firstChar: "j", bopomofo: "ㄐㄩㄥ")
        fileprivate static let jiū = Info(a聲母: .j, a韻母: .iu, tone: .一, pinyinWithTone: "jiū", pinyinWithoutTone: "jiu", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄡ")
        fileprivate static let jiǔ = Info(a聲母: .j, a韻母: .iu, tone: .三, pinyinWithTone: "jiǔ", pinyinWithoutTone: "jiu", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄡ")
        fileprivate static let jiù = Info(a聲母: .j, a韻母: .iu, tone: .四, pinyinWithTone: "jiù", pinyinWithoutTone: "jiu", head: .j, firstChar: "j", bopomofo: "ㄐㄧㄡ")
        fileprivate static let jū = Info(a聲母: .j, a韻母: .u, tone: .一, pinyinWithTone: "jū", pinyinWithoutTone: "ju", head: .j, firstChar: "j", bopomofo: "ㄐㄩ")
        fileprivate static let jú = Info(a聲母: .j, a韻母: .u, tone: .二, pinyinWithTone: "jú", pinyinWithoutTone: "ju", head: .j, firstChar: "j", bopomofo: "ㄐㄩ")
        fileprivate static let jǔ = Info(a聲母: .j, a韻母: .u, tone: .三, pinyinWithTone: "jǔ", pinyinWithoutTone: "ju", head: .j, firstChar: "j", bopomofo: "ㄐㄩ")
        fileprivate static let jù = Info(a聲母: .j, a韻母: .u, tone: .四, pinyinWithTone: "jù", pinyinWithoutTone: "ju", head: .j, firstChar: "j", bopomofo: "ㄐㄩ")
        fileprivate static let ju = Info(a聲母: .j, a韻母: .u, tone: .輕聲, pinyinWithTone: "ju", pinyinWithoutTone: "ju", head: .j, firstChar: "j", bopomofo: "ㄐㄩ")
        fileprivate static let juān = Info(a聲母: .j, a韻母: .uan, tone: .一, pinyinWithTone: "juān", pinyinWithoutTone: "juan", head: .j, firstChar: "j", bopomofo: "ㄐㄩㄢ")
        fileprivate static let juán = Info(a聲母: .j, a韻母: .uan, tone: .二, pinyinWithTone: "juán", pinyinWithoutTone: "juan", head: .j, firstChar: "j", bopomofo: "ㄐㄩㄢ")
        fileprivate static let juǎn = Info(a聲母: .j, a韻母: .uan, tone: .三, pinyinWithTone: "juǎn", pinyinWithoutTone: "juan", head: .j, firstChar: "j", bopomofo: "ㄐㄩㄢ")
        fileprivate static let juàn = Info(a聲母: .j, a韻母: .uan, tone: .四, pinyinWithTone: "juàn", pinyinWithoutTone: "juan", head: .j, firstChar: "j", bopomofo: "ㄐㄩㄢ")
        fileprivate static let juē = Info(a聲母: .j, a韻母: .ue, tone: .一, pinyinWithTone: "juē", pinyinWithoutTone: "jue", head: .j, firstChar: "j", bopomofo: "ㄐㄩㄝ")
        fileprivate static let jué = Info(a聲母: .j, a韻母: .ue, tone: .二, pinyinWithTone: "jué", pinyinWithoutTone: "jue", head: .j, firstChar: "j", bopomofo: "ㄐㄩㄝ")
        fileprivate static let juě = Info(a聲母: .j, a韻母: .ue, tone: .三, pinyinWithTone: "juě", pinyinWithoutTone: "jue", head: .j, firstChar: "j", bopomofo: "ㄐㄩㄝ")
        fileprivate static let juè = Info(a聲母: .j, a韻母: .ue, tone: .四, pinyinWithTone: "juè", pinyinWithoutTone: "jue", head: .j, firstChar: "j", bopomofo: "ㄐㄩㄝ")
        fileprivate static let jūn = Info(a聲母: .j, a韻母: .un, tone: .一, pinyinWithTone: "jūn", pinyinWithoutTone: "jun", head: .j, firstChar: "j", bopomofo: "ㄐㄩㄣ")
        fileprivate static let jǔn = Info(a聲母: .j, a韻母: .un, tone: .三, pinyinWithTone: "jǔn", pinyinWithoutTone: "jun", head: .j, firstChar: "j", bopomofo: "ㄐㄩㄣ")
        fileprivate static let jùn = Info(a聲母: .j, a韻母: .un, tone: .四, pinyinWithTone: "jùn", pinyinWithoutTone: "jun", head: .j, firstChar: "j", bopomofo: "ㄐㄩㄣ")
        fileprivate static let kā = Info(a聲母: .k, a韻母: .a, tone: .一, pinyinWithTone: "kā", pinyinWithoutTone: "ka", head: .k, firstChar: "k", bopomofo: "ㄎㄚ")
        fileprivate static let kǎ = Info(a聲母: .k, a韻母: .a, tone: .三, pinyinWithTone: "kǎ", pinyinWithoutTone: "ka", head: .k, firstChar: "k", bopomofo: "ㄎㄚ")
        fileprivate static let kà = Info(a聲母: .k, a韻母: .a, tone: .四, pinyinWithTone: "kà", pinyinWithoutTone: "ka", head: .k, firstChar: "k", bopomofo: "ㄎㄚ")
        fileprivate static let kāi = Info(a聲母: .k, a韻母: .ai, tone: .一, pinyinWithTone: "kāi", pinyinWithoutTone: "kai", head: .k, firstChar: "k", bopomofo: "ㄎㄞ")
        fileprivate static let kǎi = Info(a聲母: .k, a韻母: .ai, tone: .三, pinyinWithTone: "kǎi", pinyinWithoutTone: "kai", head: .k, firstChar: "k", bopomofo: "ㄎㄞ")
        fileprivate static let kài = Info(a聲母: .k, a韻母: .ai, tone: .四, pinyinWithTone: "kài", pinyinWithoutTone: "kai", head: .k, firstChar: "k", bopomofo: "ㄎㄞ")
        fileprivate static let kān = Info(a聲母: .k, a韻母: .an, tone: .一, pinyinWithTone: "kān", pinyinWithoutTone: "kan", head: .k, firstChar: "k", bopomofo: "ㄎㄢ")
        fileprivate static let kǎn = Info(a聲母: .k, a韻母: .an, tone: .三, pinyinWithTone: "kǎn", pinyinWithoutTone: "kan", head: .k, firstChar: "k", bopomofo: "ㄎㄢ")
        fileprivate static let kàn = Info(a聲母: .k, a韻母: .an, tone: .四, pinyinWithTone: "kàn", pinyinWithoutTone: "kan", head: .k, firstChar: "k", bopomofo: "ㄎㄢ")
        fileprivate static let kāng = Info(a聲母: .k, a韻母: .ang, tone: .一, pinyinWithTone: "kāng", pinyinWithoutTone: "kang", head: .k, firstChar: "k", bopomofo: "ㄎㄤ")
        fileprivate static let káng = Info(a聲母: .k, a韻母: .ang, tone: .二, pinyinWithTone: "káng", pinyinWithoutTone: "kang", head: .k, firstChar: "k", bopomofo: "ㄎㄤ")
        fileprivate static let kǎng = Info(a聲母: .k, a韻母: .ang, tone: .三, pinyinWithTone: "kǎng", pinyinWithoutTone: "kang", head: .k, firstChar: "k", bopomofo: "ㄎㄤ")
        fileprivate static let kàng = Info(a聲母: .k, a韻母: .ang, tone: .四, pinyinWithTone: "kàng", pinyinWithoutTone: "kang", head: .k, firstChar: "k", bopomofo: "ㄎㄤ")
        fileprivate static let kāo = Info(a聲母: .k, a韻母: .ao, tone: .一, pinyinWithTone: "kāo", pinyinWithoutTone: "kao", head: .k, firstChar: "k", bopomofo: "ㄎㄠ")
        fileprivate static let káo = Info(a聲母: .k, a韻母: .ao, tone: .二, pinyinWithTone: "káo", pinyinWithoutTone: "kao", head: .k, firstChar: "k", bopomofo: "ㄎㄠ")
        fileprivate static let kǎo = Info(a聲母: .k, a韻母: .ao, tone: .三, pinyinWithTone: "kǎo", pinyinWithoutTone: "kao", head: .k, firstChar: "k", bopomofo: "ㄎㄠ")
        fileprivate static let kào = Info(a聲母: .k, a韻母: .ao, tone: .四, pinyinWithTone: "kào", pinyinWithoutTone: "kao", head: .k, firstChar: "k", bopomofo: "ㄎㄠ")
        fileprivate static let kē = Info(a聲母: .k, a韻母: .e, tone: .一, pinyinWithTone: "kē", pinyinWithoutTone: "ke", head: .k, firstChar: "k", bopomofo: "ㄎㄜ")
        fileprivate static let ké = Info(a聲母: .k, a韻母: .e, tone: .二, pinyinWithTone: "ké", pinyinWithoutTone: "ke", head: .k, firstChar: "k", bopomofo: "ㄎㄜ")
        fileprivate static let kě = Info(a聲母: .k, a韻母: .e, tone: .三, pinyinWithTone: "kě", pinyinWithoutTone: "ke", head: .k, firstChar: "k", bopomofo: "ㄎㄜ")
        fileprivate static let kè = Info(a聲母: .k, a韻母: .e, tone: .四, pinyinWithTone: "kè", pinyinWithoutTone: "ke", head: .k, firstChar: "k", bopomofo: "ㄎㄜ")
        fileprivate static let ke = Info(a聲母: .k, a韻母: .e, tone: .輕聲, pinyinWithTone: "ke", pinyinWithoutTone: "ke", head: .k, firstChar: "k", bopomofo: "ㄎㄜ")
        fileprivate static let kēi = Info(a聲母: .k, a韻母: .ei, tone: .一, pinyinWithTone: "kēi", pinyinWithoutTone: "kei", head: .k, firstChar: "k", bopomofo: "ㄎㄟ")
        fileprivate static let kěn = Info(a聲母: .k, a韻母: .en, tone: .三, pinyinWithTone: "kěn", pinyinWithoutTone: "ken", head: .k, firstChar: "k", bopomofo: "ㄎㄣ")
        fileprivate static let kèn = Info(a聲母: .k, a韻母: .en, tone: .四, pinyinWithTone: "kèn", pinyinWithoutTone: "ken", head: .k, firstChar: "k", bopomofo: "ㄎㄣ")
        fileprivate static let kēng = Info(a聲母: .k, a韻母: .eng, tone: .一, pinyinWithTone: "kēng", pinyinWithoutTone: "keng", head: .k, firstChar: "k", bopomofo: "ㄎㄥ")
        fileprivate static let kěng = Info(a聲母: .k, a韻母: .eng, tone: .三, pinyinWithTone: "kěng", pinyinWithoutTone: "keng", head: .k, firstChar: "k", bopomofo: "ㄎㄥ")
        fileprivate static let kōng = Info(a聲母: .k, a韻母: .ong, tone: .一, pinyinWithTone: "kōng", pinyinWithoutTone: "kong", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄥ")
        fileprivate static let kǒng = Info(a聲母: .k, a韻母: .ong, tone: .三, pinyinWithTone: "kǒng", pinyinWithoutTone: "kong", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄥ")
        fileprivate static let kòng = Info(a聲母: .k, a韻母: .ong, tone: .四, pinyinWithTone: "kòng", pinyinWithoutTone: "kong", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄥ")
        fileprivate static let kōu = Info(a聲母: .k, a韻母: .ou, tone: .一, pinyinWithTone: "kōu", pinyinWithoutTone: "kou", head: .k, firstChar: "k", bopomofo: "ㄎㄡ")
        fileprivate static let kǒu = Info(a聲母: .k, a韻母: .ou, tone: .三, pinyinWithTone: "kǒu", pinyinWithoutTone: "kou", head: .k, firstChar: "k", bopomofo: "ㄎㄡ")
        fileprivate static let kòu = Info(a聲母: .k, a韻母: .ou, tone: .四, pinyinWithTone: "kòu", pinyinWithoutTone: "kou", head: .k, firstChar: "k", bopomofo: "ㄎㄡ")
        fileprivate static let kū = Info(a聲母: .k, a韻母: .u, tone: .一, pinyinWithTone: "kū", pinyinWithoutTone: "ku", head: .k, firstChar: "k", bopomofo: "ㄎㄨ")
        fileprivate static let kǔ = Info(a聲母: .k, a韻母: .u, tone: .三, pinyinWithTone: "kǔ", pinyinWithoutTone: "ku", head: .k, firstChar: "k", bopomofo: "ㄎㄨ")
        fileprivate static let kù = Info(a聲母: .k, a韻母: .u, tone: .四, pinyinWithTone: "kù", pinyinWithoutTone: "ku", head: .k, firstChar: "k", bopomofo: "ㄎㄨ")
        fileprivate static let kuā = Info(a聲母: .k, a韻母: .ua, tone: .一, pinyinWithTone: "kuā", pinyinWithoutTone: "kua", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄚ")
        fileprivate static let kuǎ = Info(a聲母: .k, a韻母: .ua, tone: .三, pinyinWithTone: "kuǎ", pinyinWithoutTone: "kua", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄚ")
        fileprivate static let kuà = Info(a聲母: .k, a韻母: .ua, tone: .四, pinyinWithTone: "kuà", pinyinWithoutTone: "kua", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄚ")
        fileprivate static let kuāi = Info(a聲母: .k, a韻母: .uai, tone: .一, pinyinWithTone: "kuāi", pinyinWithoutTone: "kuai", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄞ")
        fileprivate static let kuǎi = Info(a聲母: .k, a韻母: .uai, tone: .三, pinyinWithTone: "kuǎi", pinyinWithoutTone: "kuai", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄞ")
        fileprivate static let kuài = Info(a聲母: .k, a韻母: .uai, tone: .四, pinyinWithTone: "kuài", pinyinWithoutTone: "kuai", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄞ")
        fileprivate static let kuān = Info(a聲母: .k, a韻母: .uan, tone: .一, pinyinWithTone: "kuān", pinyinWithoutTone: "kuan", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄢ")
        fileprivate static let kuǎn = Info(a聲母: .k, a韻母: .uan, tone: .三, pinyinWithTone: "kuǎn", pinyinWithoutTone: "kuan", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄢ")
        fileprivate static let kuāng = Info(a聲母: .k, a韻母: .uang, tone: .一, pinyinWithTone: "kuāng", pinyinWithoutTone: "kuang", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄤ")
        fileprivate static let kuáng = Info(a聲母: .k, a韻母: .uang, tone: .二, pinyinWithTone: "kuáng", pinyinWithoutTone: "kuang", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄤ")
        fileprivate static let kuǎng = Info(a聲母: .k, a韻母: .uang, tone: .三, pinyinWithTone: "kuǎng", pinyinWithoutTone: "kuang", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄤ")
        fileprivate static let kuàng = Info(a聲母: .k, a韻母: .uang, tone: .四, pinyinWithTone: "kuàng", pinyinWithoutTone: "kuang", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄤ")
        fileprivate static let kuī = Info(a聲母: .k, a韻母: .ui, tone: .一, pinyinWithTone: "kuī", pinyinWithoutTone: "kui", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄟ")
        fileprivate static let kuí = Info(a聲母: .k, a韻母: .ui, tone: .二, pinyinWithTone: "kuí", pinyinWithoutTone: "kui", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄟ")
        fileprivate static let kuǐ = Info(a聲母: .k, a韻母: .ui, tone: .三, pinyinWithTone: "kuǐ", pinyinWithoutTone: "kui", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄟ")
        fileprivate static let kuì = Info(a聲母: .k, a韻母: .ui, tone: .四, pinyinWithTone: "kuì", pinyinWithoutTone: "kui", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄟ")
        fileprivate static let kūn = Info(a聲母: .k, a韻母: .un, tone: .一, pinyinWithTone: "kūn", pinyinWithoutTone: "kun", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄣ")
        fileprivate static let kǔn = Info(a聲母: .k, a韻母: .un, tone: .三, pinyinWithTone: "kǔn", pinyinWithoutTone: "kun", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄣ")
        fileprivate static let kùn = Info(a聲母: .k, a韻母: .un, tone: .四, pinyinWithTone: "kùn", pinyinWithoutTone: "kun", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄣ")
        fileprivate static let kuǒ = Info(a聲母: .k, a韻母: .uo, tone: .三, pinyinWithTone: "kuǒ", pinyinWithoutTone: "kuo", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄛ")
        fileprivate static let kuò = Info(a聲母: .k, a韻母: .uo, tone: .四, pinyinWithTone: "kuò", pinyinWithoutTone: "kuo", head: .k, firstChar: "k", bopomofo: "ㄎㄨㄛ")
        fileprivate static let lā = Info(a聲母: .l, a韻母: .a, tone: .一, pinyinWithTone: "lā", pinyinWithoutTone: "la", head: .l, firstChar: "l", bopomofo: "ㄌㄚ")
        fileprivate static let lá = Info(a聲母: .l, a韻母: .a, tone: .二, pinyinWithTone: "lá", pinyinWithoutTone: "la", head: .l, firstChar: "l", bopomofo: "ㄌㄚ")
        fileprivate static let lǎ = Info(a聲母: .l, a韻母: .a, tone: .三, pinyinWithTone: "lǎ", pinyinWithoutTone: "la", head: .l, firstChar: "l", bopomofo: "ㄌㄚ")
        fileprivate static let là = Info(a聲母: .l, a韻母: .a, tone: .四, pinyinWithTone: "là", pinyinWithoutTone: "la", head: .l, firstChar: "l", bopomofo: "ㄌㄚ")
        fileprivate static let la = Info(a聲母: .l, a韻母: .a, tone: .輕聲, pinyinWithTone: "la", pinyinWithoutTone: "la", head: .l, firstChar: "l", bopomofo: "ㄌㄚ")
        fileprivate static let lái = Info(a聲母: .l, a韻母: .ai, tone: .二, pinyinWithTone: "lái", pinyinWithoutTone: "lai", head: .l, firstChar: "l", bopomofo: "ㄌㄞ")
        fileprivate static let lǎi = Info(a聲母: .l, a韻母: .ai, tone: .三, pinyinWithTone: "lǎi", pinyinWithoutTone: "lai", head: .l, firstChar: "l", bopomofo: "ㄌㄞ")
        fileprivate static let lài = Info(a聲母: .l, a韻母: .ai, tone: .四, pinyinWithTone: "lài", pinyinWithoutTone: "lai", head: .l, firstChar: "l", bopomofo: "ㄌㄞ")
        fileprivate static let lán = Info(a聲母: .l, a韻母: .an, tone: .二, pinyinWithTone: "lán", pinyinWithoutTone: "lan", head: .l, firstChar: "l", bopomofo: "ㄌㄢ")
        fileprivate static let lǎn = Info(a聲母: .l, a韻母: .an, tone: .三, pinyinWithTone: "lǎn", pinyinWithoutTone: "lan", head: .l, firstChar: "l", bopomofo: "ㄌㄢ")
        fileprivate static let làn = Info(a聲母: .l, a韻母: .an, tone: .四, pinyinWithTone: "làn", pinyinWithoutTone: "lan", head: .l, firstChar: "l", bopomofo: "ㄌㄢ")
        fileprivate static let lan = Info(a聲母: .l, a韻母: .an, tone: .輕聲, pinyinWithTone: "lan", pinyinWithoutTone: "lan", head: .l, firstChar: "l", bopomofo: "ㄌㄢ")
        fileprivate static let lāng = Info(a聲母: .l, a韻母: .ang, tone: .一, pinyinWithTone: "lāng", pinyinWithoutTone: "lang", head: .l, firstChar: "l", bopomofo: "ㄌㄤ")
        fileprivate static let láng = Info(a聲母: .l, a韻母: .ang, tone: .二, pinyinWithTone: "láng", pinyinWithoutTone: "lang", head: .l, firstChar: "l", bopomofo: "ㄌㄤ")
        fileprivate static let lǎng = Info(a聲母: .l, a韻母: .ang, tone: .三, pinyinWithTone: "lǎng", pinyinWithoutTone: "lang", head: .l, firstChar: "l", bopomofo: "ㄌㄤ")
        fileprivate static let làng = Info(a聲母: .l, a韻母: .ang, tone: .四, pinyinWithTone: "làng", pinyinWithoutTone: "lang", head: .l, firstChar: "l", bopomofo: "ㄌㄤ")
        fileprivate static let lāo = Info(a聲母: .l, a韻母: .ao, tone: .一, pinyinWithTone: "lāo", pinyinWithoutTone: "lao", head: .l, firstChar: "l", bopomofo: "ㄌㄠ")
        fileprivate static let láo = Info(a聲母: .l, a韻母: .ao, tone: .二, pinyinWithTone: "láo", pinyinWithoutTone: "lao", head: .l, firstChar: "l", bopomofo: "ㄌㄠ")
        fileprivate static let lǎo = Info(a聲母: .l, a韻母: .ao, tone: .三, pinyinWithTone: "lǎo", pinyinWithoutTone: "lao", head: .l, firstChar: "l", bopomofo: "ㄌㄠ")
        fileprivate static let lào = Info(a聲母: .l, a韻母: .ao, tone: .四, pinyinWithTone: "lào", pinyinWithoutTone: "lao", head: .l, firstChar: "l", bopomofo: "ㄌㄠ")
        fileprivate static let lē = Info(a聲母: .l, a韻母: .e, tone: .一, pinyinWithTone: "lē", pinyinWithoutTone: "le", head: .l, firstChar: "l", bopomofo: "ㄌㄜ")
        fileprivate static let lè = Info(a聲母: .l, a韻母: .e, tone: .四, pinyinWithTone: "lè", pinyinWithoutTone: "le", head: .l, firstChar: "l", bopomofo: "ㄌㄜ")
        fileprivate static let le = Info(a聲母: .l, a韻母: .e, tone: .輕聲, pinyinWithTone: "le", pinyinWithoutTone: "le", head: .l, firstChar: "l", bopomofo: "ㄌㄜ")
        fileprivate static let lēi = Info(a聲母: .l, a韻母: .ei, tone: .一, pinyinWithTone: "lēi", pinyinWithoutTone: "lei", head: .l, firstChar: "l", bopomofo: "ㄌㄟ")
        fileprivate static let léi = Info(a聲母: .l, a韻母: .ei, tone: .二, pinyinWithTone: "léi", pinyinWithoutTone: "lei", head: .l, firstChar: "l", bopomofo: "ㄌㄟ")
        fileprivate static let lěi = Info(a聲母: .l, a韻母: .ei, tone: .三, pinyinWithTone: "lěi", pinyinWithoutTone: "lei", head: .l, firstChar: "l", bopomofo: "ㄌㄟ")
        fileprivate static let lèi = Info(a聲母: .l, a韻母: .ei, tone: .四, pinyinWithTone: "lèi", pinyinWithoutTone: "lei", head: .l, firstChar: "l", bopomofo: "ㄌㄟ")
        fileprivate static let lei = Info(a聲母: .l, a韻母: .ei, tone: .輕聲, pinyinWithTone: "lei", pinyinWithoutTone: "lei", head: .l, firstChar: "l", bopomofo: "ㄌㄟ")
        fileprivate static let lēng = Info(a聲母: .l, a韻母: .eng, tone: .一, pinyinWithTone: "lēng", pinyinWithoutTone: "leng", head: .l, firstChar: "l", bopomofo: "ㄌㄥ")
        fileprivate static let léng = Info(a聲母: .l, a韻母: .eng, tone: .二, pinyinWithTone: "léng", pinyinWithoutTone: "leng", head: .l, firstChar: "l", bopomofo: "ㄌㄥ")
        fileprivate static let lěng = Info(a聲母: .l, a韻母: .eng, tone: .三, pinyinWithTone: "lěng", pinyinWithoutTone: "leng", head: .l, firstChar: "l", bopomofo: "ㄌㄥ")
        fileprivate static let lèng = Info(a聲母: .l, a韻母: .eng, tone: .四, pinyinWithTone: "lèng", pinyinWithoutTone: "leng", head: .l, firstChar: "l", bopomofo: "ㄌㄥ")
        fileprivate static let lī = Info(a聲母: .l, a韻母: .i, tone: .一, pinyinWithTone: "lī", pinyinWithoutTone: "li", head: .l, firstChar: "l", bopomofo: "ㄌㄧ")
        fileprivate static let lí = Info(a聲母: .l, a韻母: .i, tone: .二, pinyinWithTone: "lí", pinyinWithoutTone: "li", head: .l, firstChar: "l", bopomofo: "ㄌㄧ")
        fileprivate static let lǐ = Info(a聲母: .l, a韻母: .i, tone: .三, pinyinWithTone: "lǐ", pinyinWithoutTone: "li", head: .l, firstChar: "l", bopomofo: "ㄌㄧ")
        fileprivate static let lì = Info(a聲母: .l, a韻母: .i, tone: .四, pinyinWithTone: "lì", pinyinWithoutTone: "li", head: .l, firstChar: "l", bopomofo: "ㄌㄧ")
        fileprivate static let li = Info(a聲母: .l, a韻母: .i, tone: .輕聲, pinyinWithTone: "li", pinyinWithoutTone: "li", head: .l, firstChar: "l", bopomofo: "ㄌㄧ")
        fileprivate static let liǎ = Info(a聲母: .l, a韻母: .ia, tone: .三, pinyinWithTone: "liǎ", pinyinWithoutTone: "lia", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄚ")
        fileprivate static let liān = Info(a聲母: .l, a韻母: .ian, tone: .一, pinyinWithTone: "liān", pinyinWithoutTone: "lian", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄢ")
        fileprivate static let lián = Info(a聲母: .l, a韻母: .ian, tone: .二, pinyinWithTone: "lián", pinyinWithoutTone: "lian", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄢ")
        fileprivate static let liǎn = Info(a聲母: .l, a韻母: .ian, tone: .三, pinyinWithTone: "liǎn", pinyinWithoutTone: "lian", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄢ")
        fileprivate static let liàn = Info(a聲母: .l, a韻母: .ian, tone: .四, pinyinWithTone: "liàn", pinyinWithoutTone: "lian", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄢ")
        fileprivate static let liáng = Info(a聲母: .l, a韻母: .iang, tone: .二, pinyinWithTone: "liáng", pinyinWithoutTone: "liang", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄤ")
        fileprivate static let liǎng = Info(a聲母: .l, a韻母: .iang, tone: .三, pinyinWithTone: "liǎng", pinyinWithoutTone: "liang", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄤ")
        fileprivate static let liàng = Info(a聲母: .l, a韻母: .iang, tone: .四, pinyinWithTone: "liàng", pinyinWithoutTone: "liang", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄤ")
        fileprivate static let liang = Info(a聲母: .l, a韻母: .iang, tone: .輕聲, pinyinWithTone: "liang", pinyinWithoutTone: "liang", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄤ")
        fileprivate static let liāo = Info(a聲母: .l, a韻母: .iao, tone: .一, pinyinWithTone: "liāo", pinyinWithoutTone: "liao", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄠ")
        fileprivate static let liáo = Info(a聲母: .l, a韻母: .iao, tone: .二, pinyinWithTone: "liáo", pinyinWithoutTone: "liao", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄠ")
        fileprivate static let liǎo = Info(a聲母: .l, a韻母: .iao, tone: .三, pinyinWithTone: "liǎo", pinyinWithoutTone: "liao", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄠ")
        fileprivate static let liào = Info(a聲母: .l, a韻母: .iao, tone: .四, pinyinWithTone: "liào", pinyinWithoutTone: "liao", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄠ")
        fileprivate static let liē = Info(a聲母: .l, a韻母: .ie, tone: .一, pinyinWithTone: "liē", pinyinWithoutTone: "lie", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄝ")
        fileprivate static let lié = Info(a聲母: .l, a韻母: .ie, tone: .二, pinyinWithTone: "lié", pinyinWithoutTone: "lie", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄝ")
        fileprivate static let liě = Info(a聲母: .l, a韻母: .ie, tone: .三, pinyinWithTone: "liě", pinyinWithoutTone: "lie", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄝ")
        fileprivate static let liè = Info(a聲母: .l, a韻母: .ie, tone: .四, pinyinWithTone: "liè", pinyinWithoutTone: "lie", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄝ")
        fileprivate static let lie = Info(a聲母: .l, a韻母: .ie, tone: .輕聲, pinyinWithTone: "lie", pinyinWithoutTone: "lie", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄝ")
        fileprivate static let līn = Info(a聲母: .l, a韻母: .in, tone: .一, pinyinWithTone: "līn", pinyinWithoutTone: "lin", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄣ")
        fileprivate static let lín = Info(a聲母: .l, a韻母: .in, tone: .二, pinyinWithTone: "lín", pinyinWithoutTone: "lin", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄣ")
        fileprivate static let lǐn = Info(a聲母: .l, a韻母: .in, tone: .三, pinyinWithTone: "lǐn", pinyinWithoutTone: "lin", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄣ")
        fileprivate static let lìn = Info(a聲母: .l, a韻母: .in, tone: .四, pinyinWithTone: "lìn", pinyinWithoutTone: "lin", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄣ")
        fileprivate static let līng = Info(a聲母: .l, a韻母: .ing, tone: .一, pinyinWithTone: "līng", pinyinWithoutTone: "ling", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄥ")
        fileprivate static let líng = Info(a聲母: .l, a韻母: .ing, tone: .二, pinyinWithTone: "líng", pinyinWithoutTone: "ling", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄥ")
        fileprivate static let lǐng = Info(a聲母: .l, a韻母: .ing, tone: .三, pinyinWithTone: "lǐng", pinyinWithoutTone: "ling", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄥ")
        fileprivate static let lìng = Info(a聲母: .l, a韻母: .ing, tone: .四, pinyinWithTone: "lìng", pinyinWithoutTone: "ling", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄥ")
        fileprivate static let liū = Info(a聲母: .l, a韻母: .iu, tone: .一, pinyinWithTone: "liū", pinyinWithoutTone: "liu", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄡ")
        fileprivate static let liú = Info(a聲母: .l, a韻母: .iu, tone: .二, pinyinWithTone: "liú", pinyinWithoutTone: "liu", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄡ")
        fileprivate static let liǔ = Info(a聲母: .l, a韻母: .iu, tone: .三, pinyinWithTone: "liǔ", pinyinWithoutTone: "liu", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄡ")
        fileprivate static let liù = Info(a聲母: .l, a韻母: .iu, tone: .四, pinyinWithTone: "liù", pinyinWithoutTone: "liu", head: .l, firstChar: "l", bopomofo: "ㄌㄧㄡ")
        fileprivate static let lo = Info(a聲母: .l, a韻母: .o, tone: .輕聲, pinyinWithTone: "lo", pinyinWithoutTone: "lo", head: .l, firstChar: "l", bopomofo: "ㄌㄛ")
        fileprivate static let lōng = Info(a聲母: .l, a韻母: .ong, tone: .一, pinyinWithTone: "lōng", pinyinWithoutTone: "long", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄥ")
        fileprivate static let lóng = Info(a聲母: .l, a韻母: .ong, tone: .二, pinyinWithTone: "lóng", pinyinWithoutTone: "long", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄥ")
        fileprivate static let lǒng = Info(a聲母: .l, a韻母: .ong, tone: .三, pinyinWithTone: "lǒng", pinyinWithoutTone: "long", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄥ")
        fileprivate static let lòng = Info(a聲母: .l, a韻母: .ong, tone: .四, pinyinWithTone: "lòng", pinyinWithoutTone: "long", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄥ")
        fileprivate static let lōu = Info(a聲母: .l, a韻母: .ou, tone: .一, pinyinWithTone: "lōu", pinyinWithoutTone: "lou", head: .l, firstChar: "l", bopomofo: "ㄌㄡ")
        fileprivate static let lóu = Info(a聲母: .l, a韻母: .ou, tone: .二, pinyinWithTone: "lóu", pinyinWithoutTone: "lou", head: .l, firstChar: "l", bopomofo: "ㄌㄡ")
        fileprivate static let lǒu = Info(a聲母: .l, a韻母: .ou, tone: .三, pinyinWithTone: "lǒu", pinyinWithoutTone: "lou", head: .l, firstChar: "l", bopomofo: "ㄌㄡ")
        fileprivate static let lòu = Info(a聲母: .l, a韻母: .ou, tone: .四, pinyinWithTone: "lòu", pinyinWithoutTone: "lou", head: .l, firstChar: "l", bopomofo: "ㄌㄡ")
        fileprivate static let lou = Info(a聲母: .l, a韻母: .ou, tone: .輕聲, pinyinWithTone: "lou", pinyinWithoutTone: "lou", head: .l, firstChar: "l", bopomofo: "ㄌㄡ")
        fileprivate static let lū = Info(a聲母: .l, a韻母: .u, tone: .一, pinyinWithTone: "lū", pinyinWithoutTone: "lu", head: .l, firstChar: "l", bopomofo: "ㄌㄨ")
        fileprivate static let lú = Info(a聲母: .l, a韻母: .u, tone: .二, pinyinWithTone: "lú", pinyinWithoutTone: "lu", head: .l, firstChar: "l", bopomofo: "ㄌㄨ")
        fileprivate static let lǔ = Info(a聲母: .l, a韻母: .u, tone: .三, pinyinWithTone: "lǔ", pinyinWithoutTone: "lu", head: .l, firstChar: "l", bopomofo: "ㄌㄨ")
        fileprivate static let lù = Info(a聲母: .l, a韻母: .u, tone: .四, pinyinWithTone: "lù", pinyinWithoutTone: "lu", head: .l, firstChar: "l", bopomofo: "ㄌㄨ")
        fileprivate static let lu = Info(a聲母: .l, a韻母: .u, tone: .輕聲, pinyinWithTone: "lu", pinyinWithoutTone: "lu", head: .l, firstChar: "l", bopomofo: "ㄌㄨ")
        fileprivate static let luán = Info(a聲母: .l, a韻母: .uan, tone: .二, pinyinWithTone: "luán", pinyinWithoutTone: "luan", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄢ")
        fileprivate static let luǎn = Info(a聲母: .l, a韻母: .uan, tone: .三, pinyinWithTone: "luǎn", pinyinWithoutTone: "luan", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄢ")
        fileprivate static let luàn = Info(a聲母: .l, a韻母: .uan, tone: .四, pinyinWithTone: "luàn", pinyinWithoutTone: "luan", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄢ")
        fileprivate static let lūn = Info(a聲母: .l, a韻母: .un, tone: .一, pinyinWithTone: "lūn", pinyinWithoutTone: "lun", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄣ")
        fileprivate static let lún = Info(a聲母: .l, a韻母: .un, tone: .二, pinyinWithTone: "lún", pinyinWithoutTone: "lun", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄣ")
        fileprivate static let lǔn = Info(a聲母: .l, a韻母: .un, tone: .三, pinyinWithTone: "lǔn", pinyinWithoutTone: "lun", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄣ")
        fileprivate static let lùn = Info(a聲母: .l, a韻母: .un, tone: .四, pinyinWithTone: "lùn", pinyinWithoutTone: "lun", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄣ")
        fileprivate static let luō = Info(a聲母: .l, a韻母: .uo, tone: .一, pinyinWithTone: "luō", pinyinWithoutTone: "luo", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄛ")
        fileprivate static let luó = Info(a聲母: .l, a韻母: .uo, tone: .二, pinyinWithTone: "luó", pinyinWithoutTone: "luo", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄛ")
        fileprivate static let luǒ = Info(a聲母: .l, a韻母: .uo, tone: .三, pinyinWithTone: "luǒ", pinyinWithoutTone: "luo", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄛ")
        fileprivate static let luò = Info(a聲母: .l, a韻母: .uo, tone: .四, pinyinWithTone: "luò", pinyinWithoutTone: "luo", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄛ")
        fileprivate static let luo = Info(a聲母: .l, a韻母: .uo, tone: .輕聲, pinyinWithTone: "luo", pinyinWithoutTone: "luo", head: .l, firstChar: "l", bopomofo: "ㄌㄨㄛ")
        fileprivate static let lǘ = Info(a聲母: .l, a韻母: .u, tone: .二, pinyinWithTone: "lǘ", pinyinWithoutTone: "lv", head: .l, firstChar: "l", bopomofo: "ㄌㄩ")
        fileprivate static let lǚ = Info(a聲母: .l, a韻母: .v, tone: .三, pinyinWithTone: "lǚ", pinyinWithoutTone: "lv", head: .l, firstChar: "l", bopomofo: "ㄌㄩ")
        fileprivate static let lǜ = Info(a聲母: .l, a韻母: .v, tone: .四, pinyinWithTone: "lǜ", pinyinWithoutTone: "lv", head: .l, firstChar: "l", bopomofo: "ㄌㄩ")
        fileprivate static let lüě = Info(a聲母: .l, a韻母: .ve, tone: .三, pinyinWithTone: "lüě", pinyinWithoutTone: "lve", head: .l, firstChar: "l", bopomofo: "ㄌㄩㄝ")
        fileprivate static let lüè = Info(a聲母: .l, a韻母: .ue, tone: .四, pinyinWithTone: "lüè", pinyinWithoutTone: "lve", head: .l, firstChar: "l", bopomofo: "ㄌㄩㄝ")
        fileprivate static let mā = Info(a聲母: .m, a韻母: .a, tone: .一, pinyinWithTone: "mā", pinyinWithoutTone: "ma", head: .m, firstChar: "m", bopomofo: "ㄇㄚ")
        fileprivate static let má = Info(a聲母: .m, a韻母: .a, tone: .二, pinyinWithTone: "má", pinyinWithoutTone: "ma", head: .m, firstChar: "m", bopomofo: "ㄇㄚ")
        fileprivate static let mǎ = Info(a聲母: .m, a韻母: .a, tone: .三, pinyinWithTone: "mǎ", pinyinWithoutTone: "ma", head: .m, firstChar: "m", bopomofo: "ㄇㄚ")
        fileprivate static let mà = Info(a聲母: .m, a韻母: .a, tone: .四, pinyinWithTone: "mà", pinyinWithoutTone: "ma", head: .m, firstChar: "m", bopomofo: "ㄇㄚ")
        fileprivate static let ma = Info(a聲母: .m, a韻母: .a, tone: .輕聲, pinyinWithTone: "ma", pinyinWithoutTone: "ma", head: .m, firstChar: "m", bopomofo: "ㄇㄚ")
        fileprivate static let mái = Info(a聲母: .m, a韻母: .ai, tone: .二, pinyinWithTone: "mái", pinyinWithoutTone: "mai", head: .m, firstChar: "m", bopomofo: "ㄇㄞ")
        fileprivate static let mǎi = Info(a聲母: .m, a韻母: .ai, tone: .三, pinyinWithTone: "mǎi", pinyinWithoutTone: "mai", head: .m, firstChar: "m", bopomofo: "ㄇㄞ")
        fileprivate static let mài = Info(a聲母: .m, a韻母: .ai, tone: .四, pinyinWithTone: "mài", pinyinWithoutTone: "mai", head: .m, firstChar: "m", bopomofo: "ㄇㄞ")
        fileprivate static let mān = Info(a聲母: .m, a韻母: .an, tone: .一, pinyinWithTone: "mān", pinyinWithoutTone: "man", head: .m, firstChar: "m", bopomofo: "ㄇㄢ")
        fileprivate static let mán = Info(a聲母: .m, a韻母: .an, tone: .二, pinyinWithTone: "mán", pinyinWithoutTone: "man", head: .m, firstChar: "m", bopomofo: "ㄇㄢ")
        fileprivate static let mǎn = Info(a聲母: .m, a韻母: .an, tone: .三, pinyinWithTone: "mǎn", pinyinWithoutTone: "man", head: .m, firstChar: "m", bopomofo: "ㄇㄢ")
        fileprivate static let màn = Info(a聲母: .m, a韻母: .an, tone: .四, pinyinWithTone: "màn", pinyinWithoutTone: "man", head: .m, firstChar: "m", bopomofo: "ㄇㄢ")
        fileprivate static let māng = Info(a聲母: .m, a韻母: .ang, tone: .一, pinyinWithTone: "māng", pinyinWithoutTone: "mang", head: .m, firstChar: "m", bopomofo: "ㄇㄤ")
        fileprivate static let máng = Info(a聲母: .m, a韻母: .ang, tone: .二, pinyinWithTone: "máng", pinyinWithoutTone: "mang", head: .m, firstChar: "m", bopomofo: "ㄇㄤ")
        fileprivate static let mǎng = Info(a聲母: .m, a韻母: .ang, tone: .三, pinyinWithTone: "mǎng", pinyinWithoutTone: "mang", head: .m, firstChar: "m", bopomofo: "ㄇㄤ")
        fileprivate static let māo = Info(a聲母: .m, a韻母: .ao, tone: .一, pinyinWithTone: "māo", pinyinWithoutTone: "mao", head: .m, firstChar: "m", bopomofo: "ㄇㄠ")
        fileprivate static let máo = Info(a聲母: .m, a韻母: .ao, tone: .二, pinyinWithTone: "máo", pinyinWithoutTone: "mao", head: .m, firstChar: "m", bopomofo: "ㄇㄠ")
        fileprivate static let mǎo = Info(a聲母: .m, a韻母: .ao, tone: .三, pinyinWithTone: "mǎo", pinyinWithoutTone: "mao", head: .m, firstChar: "m", bopomofo: "ㄇㄠ")
        fileprivate static let mào = Info(a聲母: .m, a韻母: .ao, tone: .四, pinyinWithTone: "mào", pinyinWithoutTone: "mao", head: .m, firstChar: "m", bopomofo: "ㄇㄠ")
        fileprivate static let mē = Info(a聲母: .m, a韻母: .e, tone: .一, pinyinWithTone: "mē", pinyinWithoutTone: "me", head: .m, firstChar: "m", bopomofo: "ㄇㄜ")
        fileprivate static let mè = Info(a聲母: .m, a韻母: .e, tone: .四, pinyinWithTone: "mè", pinyinWithoutTone: "me", head: .m, firstChar: "m", bopomofo: "ㄇㄜ")
        fileprivate static let me = Info(a聲母: .m, a韻母: .e, tone: .輕聲, pinyinWithTone: "me", pinyinWithoutTone: "me", head: .m, firstChar: "m", bopomofo: "ㄇㄜ")
        fileprivate static let méi = Info(a聲母: .m, a韻母: .ei, tone: .二, pinyinWithTone: "méi", pinyinWithoutTone: "mei", head: .m, firstChar: "m", bopomofo: "ㄇㄟ")
        fileprivate static let měi = Info(a聲母: .m, a韻母: .ei, tone: .三, pinyinWithTone: "měi", pinyinWithoutTone: "mei", head: .m, firstChar: "m", bopomofo: "ㄇㄟ")
        fileprivate static let mèi = Info(a聲母: .m, a韻母: .ei, tone: .四, pinyinWithTone: "mèi", pinyinWithoutTone: "mei", head: .m, firstChar: "m", bopomofo: "ㄇㄟ")
        fileprivate static let mēn = Info(a聲母: .m, a韻母: .en, tone: .一, pinyinWithTone: "mēn", pinyinWithoutTone: "men", head: .m, firstChar: "m", bopomofo: "ㄇㄣ")
        fileprivate static let mén = Info(a聲母: .m, a韻母: .en, tone: .二, pinyinWithTone: "mén", pinyinWithoutTone: "men", head: .m, firstChar: "m", bopomofo: "ㄇㄣ")
        fileprivate static let měn = Info(a聲母: .m, a韻母: .en, tone: .三, pinyinWithTone: "měn", pinyinWithoutTone: "men", head: .m, firstChar: "m", bopomofo: "ㄇㄣ")
        fileprivate static let mèn = Info(a聲母: .m, a韻母: .en, tone: .四, pinyinWithTone: "mèn", pinyinWithoutTone: "men", head: .m, firstChar: "m", bopomofo: "ㄇㄣ")
        fileprivate static let men = Info(a聲母: .m, a韻母: .en, tone: .輕聲, pinyinWithTone: "men", pinyinWithoutTone: "men", head: .m, firstChar: "m", bopomofo: "ㄇㄣ")
        fileprivate static let mēng = Info(a聲母: .m, a韻母: .eng, tone: .一, pinyinWithTone: "mēng", pinyinWithoutTone: "meng", head: .m, firstChar: "m", bopomofo: "ㄇㄥ")
        fileprivate static let méng = Info(a聲母: .m, a韻母: .eng, tone: .二, pinyinWithTone: "méng", pinyinWithoutTone: "meng", head: .m, firstChar: "m", bopomofo: "ㄇㄥ")
        fileprivate static let měng = Info(a聲母: .m, a韻母: .eng, tone: .三, pinyinWithTone: "měng", pinyinWithoutTone: "meng", head: .m, firstChar: "m", bopomofo: "ㄇㄥ")
        fileprivate static let mèng = Info(a聲母: .m, a韻母: .eng, tone: .四, pinyinWithTone: "mèng", pinyinWithoutTone: "meng", head: .m, firstChar: "m", bopomofo: "ㄇㄥ")
        fileprivate static let mī = Info(a聲母: .m, a韻母: .i, tone: .一, pinyinWithTone: "mī", pinyinWithoutTone: "mi", head: .m, firstChar: "m", bopomofo: "ㄇㄧ")
        fileprivate static let mí = Info(a聲母: .m, a韻母: .i, tone: .二, pinyinWithTone: "mí", pinyinWithoutTone: "mi", head: .m, firstChar: "m", bopomofo: "ㄇㄧ")
        fileprivate static let mǐ = Info(a聲母: .m, a韻母: .i, tone: .三, pinyinWithTone: "mǐ", pinyinWithoutTone: "mi", head: .m, firstChar: "m", bopomofo: "ㄇㄧ")
        fileprivate static let mì = Info(a聲母: .m, a韻母: .i, tone: .四, pinyinWithTone: "mì", pinyinWithoutTone: "mi", head: .m, firstChar: "m", bopomofo: "ㄇㄧ")
        fileprivate static let mián = Info(a聲母: .m, a韻母: .ian, tone: .二, pinyinWithTone: "mián", pinyinWithoutTone: "mian", head: .m, firstChar: "m", bopomofo: "ㄇㄧㄢ")
        fileprivate static let miǎn = Info(a聲母: .m, a韻母: .ian, tone: .三, pinyinWithTone: "miǎn", pinyinWithoutTone: "mian", head: .m, firstChar: "m", bopomofo: "ㄇㄧㄢ")
        fileprivate static let miàn = Info(a聲母: .m, a韻母: .ian, tone: .四, pinyinWithTone: "miàn", pinyinWithoutTone: "mian", head: .m, firstChar: "m", bopomofo: "ㄇㄧㄢ")
        fileprivate static let miāo = Info(a聲母: .m, a韻母: .iao, tone: .一, pinyinWithTone: "miāo", pinyinWithoutTone: "miao", head: .m, firstChar: "m", bopomofo: "ㄇㄧㄠ")
        fileprivate static let miáo = Info(a聲母: .m, a韻母: .iao, tone: .二, pinyinWithTone: "miáo", pinyinWithoutTone: "miao", head: .m, firstChar: "m", bopomofo: "ㄇㄧㄠ")
        fileprivate static let miǎo = Info(a聲母: .m, a韻母: .iao, tone: .三, pinyinWithTone: "miǎo", pinyinWithoutTone: "miao", head: .m, firstChar: "m", bopomofo: "ㄇㄧㄠ")
        fileprivate static let miào = Info(a聲母: .m, a韻母: .iao, tone: .四, pinyinWithTone: "miào", pinyinWithoutTone: "miao", head: .m, firstChar: "m", bopomofo: "ㄇㄧㄠ")
        fileprivate static let miē = Info(a聲母: .m, a韻母: .ie, tone: .一, pinyinWithTone: "miē", pinyinWithoutTone: "mie", head: .m, firstChar: "m", bopomofo: "ㄇㄧㄝ")
        fileprivate static let miè = Info(a聲母: .m, a韻母: .ie, tone: .四, pinyinWithTone: "miè", pinyinWithoutTone: "mie", head: .m, firstChar: "m", bopomofo: "ㄇㄧㄝ")
        fileprivate static let mín = Info(a聲母: .m, a韻母: .in, tone: .二, pinyinWithTone: "mín", pinyinWithoutTone: "min", head: .m, firstChar: "m", bopomofo: "ㄇㄧㄣ")
        fileprivate static let mǐn = Info(a聲母: .m, a韻母: .in, tone: .三, pinyinWithTone: "mǐn", pinyinWithoutTone: "min", head: .m, firstChar: "m", bopomofo: "ㄇㄧㄣ")
        fileprivate static let míng = Info(a聲母: .m, a韻母: .ing, tone: .二, pinyinWithTone: "míng", pinyinWithoutTone: "ming", head: .m, firstChar: "m", bopomofo: "ㄇㄧㄥ")
        fileprivate static let mǐng = Info(a聲母: .m, a韻母: .ing, tone: .三, pinyinWithTone: "mǐng", pinyinWithoutTone: "ming", head: .m, firstChar: "m", bopomofo: "ㄇㄧㄥ")
        fileprivate static let mìng = Info(a聲母: .m, a韻母: .ing, tone: .四, pinyinWithTone: "mìng", pinyinWithoutTone: "ming", head: .m, firstChar: "m", bopomofo: "ㄇㄧㄥ")
        fileprivate static let miù = Info(a聲母: .m, a韻母: .iu, tone: .四, pinyinWithTone: "miù", pinyinWithoutTone: "miu", head: .m, firstChar: "m", bopomofo: "ㄇㄧㄡ")
        fileprivate static let mō = Info(a聲母: .m, a韻母: .o, tone: .一, pinyinWithTone: "mō", pinyinWithoutTone: "mo", head: .m, firstChar: "m", bopomofo: "ㄇㄛ")
        fileprivate static let mó = Info(a聲母: .m, a韻母: .o, tone: .二, pinyinWithTone: "mó", pinyinWithoutTone: "mo", head: .m, firstChar: "m", bopomofo: "ㄇㄛ")
        fileprivate static let mǒ = Info(a聲母: .m, a韻母: .o, tone: .三, pinyinWithTone: "mǒ", pinyinWithoutTone: "mo", head: .m, firstChar: "m", bopomofo: "ㄇㄛ")
        fileprivate static let mò = Info(a聲母: .m, a韻母: .o, tone: .四, pinyinWithTone: "mò", pinyinWithoutTone: "mo", head: .m, firstChar: "m", bopomofo: "ㄇㄛ")
        fileprivate static let mo = Info(a聲母: .m, a韻母: .o, tone: .輕聲, pinyinWithTone: "mo", pinyinWithoutTone: "mo", head: .m, firstChar: "m", bopomofo: "ㄇㄛ")
        fileprivate static let mōu = Info(a聲母: .m, a韻母: .ou, tone: .一, pinyinWithTone: "mōu", pinyinWithoutTone: "mou", head: .m, firstChar: "m", bopomofo: "ㄇㄡ")
        fileprivate static let móu = Info(a聲母: .m, a韻母: .ou, tone: .二, pinyinWithTone: "móu", pinyinWithoutTone: "mou", head: .m, firstChar: "m", bopomofo: "ㄇㄡ")
        fileprivate static let mǒu = Info(a聲母: .m, a韻母: .ou, tone: .三, pinyinWithTone: "mǒu", pinyinWithoutTone: "mou", head: .m, firstChar: "m", bopomofo: "ㄇㄡ")
        fileprivate static let mòu = Info(a聲母: .m, a韻母: .ou, tone: .四, pinyinWithTone: "mòu", pinyinWithoutTone: "mou", head: .m, firstChar: "m", bopomofo: "ㄇㄡ")
        fileprivate static let mú = Info(a聲母: .m, a韻母: .u, tone: .二, pinyinWithTone: "mú", pinyinWithoutTone: "mu", head: .m, firstChar: "m", bopomofo: "ㄇㄨ")
        fileprivate static let mǔ = Info(a聲母: .m, a韻母: .u, tone: .三, pinyinWithTone: "mǔ", pinyinWithoutTone: "mu", head: .m, firstChar: "m", bopomofo: "ㄇㄨ")
        fileprivate static let mù = Info(a聲母: .m, a韻母: .u, tone: .四, pinyinWithTone: "mù", pinyinWithoutTone: "mu", head: .m, firstChar: "m", bopomofo: "ㄇㄨ")
        fileprivate static let nā = Info(a聲母: .n, a韻母: .a, tone: .一, pinyinWithTone: "nā", pinyinWithoutTone: "na", head: .n, firstChar: "n", bopomofo: "ㄋㄚ")
        fileprivate static let ná = Info(a聲母: .n, a韻母: .a, tone: .二, pinyinWithTone: "ná", pinyinWithoutTone: "na", head: .n, firstChar: "n", bopomofo: "ㄋㄚ")
        fileprivate static let nǎ = Info(a聲母: .n, a韻母: .a, tone: .三, pinyinWithTone: "nǎ", pinyinWithoutTone: "na", head: .n, firstChar: "n", bopomofo: "ㄋㄚ")
        fileprivate static let nà = Info(a聲母: .n, a韻母: .a, tone: .四, pinyinWithTone: "nà", pinyinWithoutTone: "na", head: .n, firstChar: "n", bopomofo: "ㄋㄚ")
        fileprivate static let na = Info(a聲母: .n, a韻母: .a, tone: .輕聲, pinyinWithTone: "na", pinyinWithoutTone: "na", head: .n, firstChar: "n", bopomofo: "ㄋㄚ")
        fileprivate static let nái = Info(a聲母: .n, a韻母: .ai, tone: .二, pinyinWithTone: "nái", pinyinWithoutTone: "nai", head: .n, firstChar: "n", bopomofo: "ㄋㄞ")
        fileprivate static let nǎi = Info(a聲母: .n, a韻母: .ai, tone: .三, pinyinWithTone: "nǎi", pinyinWithoutTone: "nai", head: .n, firstChar: "n", bopomofo: "ㄋㄞ")
        fileprivate static let nài = Info(a聲母: .n, a韻母: .ai, tone: .四, pinyinWithTone: "nài", pinyinWithoutTone: "nai", head: .n, firstChar: "n", bopomofo: "ㄋㄞ")
        fileprivate static let nān = Info(a聲母: .n, a韻母: .an, tone: .一, pinyinWithTone: "nān", pinyinWithoutTone: "nan", head: .n, firstChar: "n", bopomofo: "ㄋㄢ")
        fileprivate static let nán = Info(a聲母: .n, a韻母: .an, tone: .二, pinyinWithTone: "nán", pinyinWithoutTone: "nan", head: .n, firstChar: "n", bopomofo: "ㄋㄢ")
        fileprivate static let nǎn = Info(a聲母: .n, a韻母: .an, tone: .三, pinyinWithTone: "nǎn", pinyinWithoutTone: "nan", head: .n, firstChar: "n", bopomofo: "ㄋㄢ")
        fileprivate static let nàn = Info(a聲母: .n, a韻母: .an, tone: .四, pinyinWithTone: "nàn", pinyinWithoutTone: "nan", head: .n, firstChar: "n", bopomofo: "ㄋㄢ")
        fileprivate static let nāng = Info(a聲母: .n, a韻母: .ang, tone: .一, pinyinWithTone: "nāng", pinyinWithoutTone: "nang", head: .n, firstChar: "n", bopomofo: "ㄋㄤ")
        fileprivate static let náng = Info(a聲母: .n, a韻母: .ang, tone: .二, pinyinWithTone: "náng", pinyinWithoutTone: "nang", head: .n, firstChar: "n", bopomofo: "ㄋㄤ")
        fileprivate static let nǎng = Info(a聲母: .n, a韻母: .ang, tone: .三, pinyinWithTone: "nǎng", pinyinWithoutTone: "nang", head: .n, firstChar: "n", bopomofo: "ㄋㄤ")
        fileprivate static let nàng = Info(a聲母: .n, a韻母: .ang, tone: .四, pinyinWithTone: "nàng", pinyinWithoutTone: "nang", head: .n, firstChar: "n", bopomofo: "ㄋㄤ")
        fileprivate static let nāo = Info(a聲母: .n, a韻母: .ao, tone: .一, pinyinWithTone: "nāo", pinyinWithoutTone: "nao", head: .n, firstChar: "n", bopomofo: "ㄋㄠ")
        fileprivate static let náo = Info(a聲母: .n, a韻母: .ao, tone: .二, pinyinWithTone: "náo", pinyinWithoutTone: "nao", head: .n, firstChar: "n", bopomofo: "ㄋㄠ")
        fileprivate static let nǎo = Info(a聲母: .n, a韻母: .ao, tone: .三, pinyinWithTone: "nǎo", pinyinWithoutTone: "nao", head: .n, firstChar: "n", bopomofo: "ㄋㄠ")
        fileprivate static let nào = Info(a聲母: .n, a韻母: .ao, tone: .四, pinyinWithTone: "nào", pinyinWithoutTone: "nao", head: .n, firstChar: "n", bopomofo: "ㄋㄠ")
        fileprivate static let né = Info(a聲母: .n, a韻母: .e, tone: .二, pinyinWithTone: "né", pinyinWithoutTone: "ne", head: .n, firstChar: "n", bopomofo: "ㄋㄜ")
        fileprivate static let nè = Info(a聲母: .n, a韻母: .e, tone: .四, pinyinWithTone: "nè", pinyinWithoutTone: "ne", head: .n, firstChar: "n", bopomofo: "ㄋㄜ")
        fileprivate static let ne = Info(a聲母: .n, a韻母: .e, tone: .輕聲, pinyinWithTone: "ne", pinyinWithoutTone: "ne", head: .n, firstChar: "n", bopomofo: "ㄋㄜ")
        fileprivate static let něi = Info(a聲母: .n, a韻母: .ei, tone: .三, pinyinWithTone: "něi", pinyinWithoutTone: "nei", head: .n, firstChar: "n", bopomofo: "ㄋㄟ")
        fileprivate static let nèi = Info(a聲母: .n, a韻母: .ei, tone: .四, pinyinWithTone: "nèi", pinyinWithoutTone: "nei", head: .n, firstChar: "n", bopomofo: "ㄋㄟ")
        fileprivate static let nēn = Info(a聲母: .n, a韻母: .en, tone: .一, pinyinWithTone: "nēn", pinyinWithoutTone: "nen", head: .n, firstChar: "n", bopomofo: "ㄋㄣ")
        fileprivate static let něn = Info(a聲母: .n, a韻母: .en, tone: .三, pinyinWithTone: "něn", pinyinWithoutTone: "nen", head: .n, firstChar: "n", bopomofo: "ㄋㄣ")
        fileprivate static let nèn = Info(a聲母: .n, a韻母: .en, tone: .四, pinyinWithTone: "nèn", pinyinWithoutTone: "nen", head: .n, firstChar: "n", bopomofo: "ㄋㄣ")
        fileprivate static let néng = Info(a聲母: .n, a韻母: .eng, tone: .二, pinyinWithTone: "néng", pinyinWithoutTone: "neng", head: .n, firstChar: "n", bopomofo: "ㄋㄥ")
        fileprivate static let něng = Info(a聲母: .n, a韻母: .eng, tone: .三, pinyinWithTone: "něng", pinyinWithoutTone: "neng", head: .n, firstChar: "n", bopomofo: "ㄋㄥ")
        fileprivate static let nī = Info(a聲母: .n, a韻母: .i, tone: .一, pinyinWithTone: "nī", pinyinWithoutTone: "ni", head: .n, firstChar: "n", bopomofo: "ㄋㄧ")
        fileprivate static let ní = Info(a聲母: .n, a韻母: .i, tone: .二, pinyinWithTone: "ní", pinyinWithoutTone: "ni", head: .n, firstChar: "n", bopomofo: "ㄋㄧ")
        fileprivate static let nǐ = Info(a聲母: .n, a韻母: .i, tone: .三, pinyinWithTone: "nǐ", pinyinWithoutTone: "ni", head: .n, firstChar: "n", bopomofo: "ㄋㄧ")
        fileprivate static let nì = Info(a聲母: .n, a韻母: .i, tone: .四, pinyinWithTone: "nì", pinyinWithoutTone: "ni", head: .n, firstChar: "n", bopomofo: "ㄋㄧ")
        fileprivate static let niān = Info(a聲母: .n, a韻母: .ian, tone: .一, pinyinWithTone: "niān", pinyinWithoutTone: "nian", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄢ")
        fileprivate static let nián = Info(a聲母: .n, a韻母: .ian, tone: .二, pinyinWithTone: "nián", pinyinWithoutTone: "nian", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄢ")
        fileprivate static let niǎn = Info(a聲母: .n, a韻母: .ian, tone: .三, pinyinWithTone: "niǎn", pinyinWithoutTone: "nian", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄢ")
        fileprivate static let niàn = Info(a聲母: .n, a韻母: .ian, tone: .四, pinyinWithTone: "niàn", pinyinWithoutTone: "nian", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄢ")
        fileprivate static let niáng = Info(a聲母: .n, a韻母: .iang, tone: .二, pinyinWithTone: "niáng", pinyinWithoutTone: "niang", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄤ")
        fileprivate static let niàng = Info(a聲母: .n, a韻母: .iang, tone: .四, pinyinWithTone: "niàng", pinyinWithoutTone: "niang", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄤ")
        fileprivate static let niǎo = Info(a聲母: .n, a韻母: .iao, tone: .三, pinyinWithTone: "niǎo", pinyinWithoutTone: "niao", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄠ")
        fileprivate static let niào = Info(a聲母: .n, a韻母: .iao, tone: .四, pinyinWithTone: "niào", pinyinWithoutTone: "niao", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄠ")
        fileprivate static let niē = Info(a聲母: .n, a韻母: .ie, tone: .一, pinyinWithTone: "niē", pinyinWithoutTone: "nie", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄝ")
        fileprivate static let nié = Info(a聲母: .n, a韻母: .ie, tone: .二, pinyinWithTone: "nié", pinyinWithoutTone: "nie", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄝ")
        fileprivate static let niě = Info(a聲母: .n, a韻母: .ie, tone: .三, pinyinWithTone: "niě", pinyinWithoutTone: "nie", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄝ")
        fileprivate static let niè = Info(a聲母: .n, a韻母: .ie, tone: .四, pinyinWithTone: "niè", pinyinWithoutTone: "nie", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄝ")
        fileprivate static let nín = Info(a聲母: .n, a韻母: .in, tone: .二, pinyinWithTone: "nín", pinyinWithoutTone: "nin", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄣ")
        fileprivate static let nǐn = Info(a聲母: .n, a韻母: .in, tone: .三, pinyinWithTone: "nǐn", pinyinWithoutTone: "nin", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄣ")
        fileprivate static let níng = Info(a聲母: .n, a韻母: .ing, tone: .二, pinyinWithTone: "níng", pinyinWithoutTone: "ning", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄥ")
        fileprivate static let nǐng = Info(a聲母: .n, a韻母: .ing, tone: .三, pinyinWithTone: "nǐng", pinyinWithoutTone: "ning", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄥ")
        fileprivate static let nìng = Info(a聲母: .n, a韻母: .ing, tone: .四, pinyinWithTone: "nìng", pinyinWithoutTone: "ning", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄥ")
        fileprivate static let niū = Info(a聲母: .n, a韻母: .iu, tone: .一, pinyinWithTone: "niū", pinyinWithoutTone: "niu", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄡ")
        fileprivate static let niú = Info(a聲母: .n, a韻母: .iu, tone: .二, pinyinWithTone: "niú", pinyinWithoutTone: "niu", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄡ")
        fileprivate static let niǔ = Info(a聲母: .n, a韻母: .iu, tone: .三, pinyinWithTone: "niǔ", pinyinWithoutTone: "niu", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄡ")
        fileprivate static let niù = Info(a聲母: .n, a韻母: .iu, tone: .四, pinyinWithTone: "niù", pinyinWithoutTone: "niu", head: .n, firstChar: "n", bopomofo: "ㄋㄧㄡ")
        fileprivate static let nóng = Info(a聲母: .n, a韻母: .ong, tone: .二, pinyinWithTone: "nóng", pinyinWithoutTone: "nong", head: .n, firstChar: "n", bopomofo: "ㄋㄨㄥ")
        fileprivate static let nǒng = Info(a聲母: .n, a韻母: .ong, tone: .三, pinyinWithTone: "nǒng", pinyinWithoutTone: "nong", head: .n, firstChar: "n", bopomofo: "ㄋㄨㄥ")
        fileprivate static let nòng = Info(a聲母: .n, a韻母: .ong, tone: .四, pinyinWithTone: "nòng", pinyinWithoutTone: "nong", head: .n, firstChar: "n", bopomofo: "ㄋㄨㄥ")
        fileprivate static let nóu = Info(a聲母: .n, a韻母: .ou, tone: .二, pinyinWithTone: "nóu", pinyinWithoutTone: "nou", head: .n, firstChar: "n", bopomofo: "ㄋㄡ")
        fileprivate static let nòu = Info(a聲母: .n, a韻母: .ou, tone: .四, pinyinWithTone: "nòu", pinyinWithoutTone: "nou", head: .n, firstChar: "n", bopomofo: "ㄋㄡ")
        fileprivate static let nú = Info(a聲母: .n, a韻母: .u, tone: .二, pinyinWithTone: "nú", pinyinWithoutTone: "nu", head: .n, firstChar: "n", bopomofo: "ㄋㄨ")
        fileprivate static let nǔ = Info(a聲母: .n, a韻母: .u, tone: .三, pinyinWithTone: "nǔ", pinyinWithoutTone: "nu", head: .n, firstChar: "n", bopomofo: "ㄋㄨ")
        fileprivate static let nù = Info(a聲母: .n, a韻母: .u, tone: .四, pinyinWithTone: "nù", pinyinWithoutTone: "nu", head: .n, firstChar: "n", bopomofo: "ㄋㄨ")
        fileprivate static let nuán = Info(a聲母: .n, a韻母: .uan, tone: .二, pinyinWithTone: "nuán", pinyinWithoutTone: "nuan", head: .n, firstChar: "n", bopomofo: "ㄋㄨㄢ")
        fileprivate static let nuǎn = Info(a聲母: .n, a韻母: .uan, tone: .三, pinyinWithTone: "nuǎn", pinyinWithoutTone: "nuan", head: .n, firstChar: "n", bopomofo: "ㄋㄨㄢ")
        fileprivate static let nuàn = Info(a聲母: .n, a韻母: .uan, tone: .四, pinyinWithTone: "nuàn", pinyinWithoutTone: "nuan", head: .n, firstChar: "n", bopomofo: "ㄋㄨㄢ")
        fileprivate static let nún = Info(a聲母: .n, a韻母: .un, tone: .二, pinyinWithTone: "nún", pinyinWithoutTone: "nun", head: .n, firstChar: "n", bopomofo: "ㄋㄨㄣ")
        fileprivate static let nùn = Info(a聲母: .n, a韻母: .un, tone: .四, pinyinWithTone: "nùn", pinyinWithoutTone: "nun", head: .n, firstChar: "n", bopomofo: "ㄋㄨㄣ")
        fileprivate static let nuó = Info(a聲母: .n, a韻母: .uo, tone: .二, pinyinWithTone: "nuó", pinyinWithoutTone: "nuo", head: .n, firstChar: "n", bopomofo: "ㄋㄨㄛ")
        fileprivate static let nuǒ = Info(a聲母: .n, a韻母: .uo, tone: .三, pinyinWithTone: "nuǒ", pinyinWithoutTone: "nuo", head: .n, firstChar: "n", bopomofo: "ㄋㄨㄛ")
        fileprivate static let nuò = Info(a聲母: .n, a韻母: .uo, tone: .四, pinyinWithTone: "nuò", pinyinWithoutTone: "nuo", head: .n, firstChar: "n", bopomofo: "ㄋㄨㄛ")
        fileprivate static let nǚ = Info(a聲母: .n, a韻母: .v, tone: .三, pinyinWithTone: "nǚ", pinyinWithoutTone: "nv", head: .n, firstChar: "n", bopomofo: "ㄋㄨ")
        fileprivate static let nǜ = Info(a聲母: .n, a韻母: .v, tone: .四, pinyinWithTone: "nǜ", pinyinWithoutTone: "nv", head: .n, firstChar: "n", bopomofo: "ㄋㄨ")
        fileprivate static let nüè = Info(a聲母: .n, a韻母: .ue, tone: .四, pinyinWithTone: "nüè", pinyinWithoutTone: "nve", head: .n, firstChar: "n", bopomofo: "ㄋㄩㄝ")
        fileprivate static let ō = Info(a聲母: .none, a韻母: .o, tone: .一, pinyinWithTone: "ō", pinyinWithoutTone: "o", head: .o, firstChar: "o", bopomofo: "ㄛ")
        fileprivate static let ó = Info(a聲母: .none, a韻母: .o, tone: .二, pinyinWithTone: "ó", pinyinWithoutTone: "o", head: .o, firstChar: "o", bopomofo: "ㄛ")
        fileprivate static let ǒ = Info(a聲母: .none, a韻母: .o, tone: .三, pinyinWithTone: "ǒ", pinyinWithoutTone: "o", head: .o, firstChar: "o", bopomofo: "ㄛ")
        fileprivate static let ò = Info(a聲母: .none, a韻母: .o, tone: .四, pinyinWithTone: "ò", pinyinWithoutTone: "o", head: .o, firstChar: "o", bopomofo: "ㄛ")
        fileprivate static let o = Info(a聲母: .none, a韻母: .o, tone: .輕聲, pinyinWithTone: "o", pinyinWithoutTone: "o", head: .o, firstChar: "o", bopomofo: "ㄛ")
        fileprivate static let ōu = Info(a聲母: .none, a韻母: .ou, tone: .一, pinyinWithTone: "ōu", pinyinWithoutTone: "ou", head: .o, firstChar: "o", bopomofo: "ㄡ")
        fileprivate static let óu = Info(a聲母: .none, a韻母: .ou, tone: .二, pinyinWithTone: "óu", pinyinWithoutTone: "ou", head: .o, firstChar: "o", bopomofo: "ㄡ")
        fileprivate static let ǒu = Info(a聲母: .none, a韻母: .ou, tone: .三, pinyinWithTone: "ǒu", pinyinWithoutTone: "ou", head: .o, firstChar: "o", bopomofo: "ㄡ")
        fileprivate static let òu = Info(a聲母: .none, a韻母: .ou, tone: .四, pinyinWithTone: "òu", pinyinWithoutTone: "ou", head: .o, firstChar: "o", bopomofo: "ㄡ")
        fileprivate static let ou = Info(a聲母: .none, a韻母: .ou, tone: .輕聲, pinyinWithTone: "ou", pinyinWithoutTone: "ou", head: .o, firstChar: "o", bopomofo: "ㄡ")
        fileprivate static let pā = Info(a聲母: .p, a韻母: .a, tone: .一, pinyinWithTone: "pā", pinyinWithoutTone: "pa", head: .p, firstChar: "p", bopomofo: "ㄆㄚ")
        fileprivate static let pá = Info(a聲母: .p, a韻母: .a, tone: .二, pinyinWithTone: "pá", pinyinWithoutTone: "pa", head: .p, firstChar: "p", bopomofo: "ㄆㄚ")
        fileprivate static let pà = Info(a聲母: .p, a韻母: .a, tone: .四, pinyinWithTone: "pà", pinyinWithoutTone: "pa", head: .p, firstChar: "p", bopomofo: "ㄆㄚ")
        fileprivate static let pāi = Info(a聲母: .p, a韻母: .ai, tone: .一, pinyinWithTone: "pāi", pinyinWithoutTone: "pai", head: .p, firstChar: "p", bopomofo: "ㄆㄞ")
        fileprivate static let pái = Info(a聲母: .p, a韻母: .ai, tone: .二, pinyinWithTone: "pái", pinyinWithoutTone: "pai", head: .p, firstChar: "p", bopomofo: "ㄆㄞ")
        fileprivate static let pǎi = Info(a聲母: .p, a韻母: .ai, tone: .三, pinyinWithTone: "pǎi", pinyinWithoutTone: "pai", head: .p, firstChar: "p", bopomofo: "ㄆㄞ")
        fileprivate static let pài = Info(a聲母: .p, a韻母: .ai, tone: .四, pinyinWithTone: "pài", pinyinWithoutTone: "pai", head: .p, firstChar: "p", bopomofo: "ㄆㄞ")
        fileprivate static let pān = Info(a聲母: .p, a韻母: .an, tone: .一, pinyinWithTone: "pān", pinyinWithoutTone: "pan", head: .p, firstChar: "p", bopomofo: "ㄆㄢ")
        fileprivate static let pán = Info(a聲母: .p, a韻母: .an, tone: .二, pinyinWithTone: "pán", pinyinWithoutTone: "pan", head: .p, firstChar: "p", bopomofo: "ㄆㄢ")
        fileprivate static let pǎn = Info(a聲母: .p, a韻母: .an, tone: .三, pinyinWithTone: "pǎn", pinyinWithoutTone: "pan", head: .p, firstChar: "p", bopomofo: "ㄆㄢ")
        fileprivate static let pàn = Info(a聲母: .p, a韻母: .an, tone: .四, pinyinWithTone: "pàn", pinyinWithoutTone: "pan", head: .p, firstChar: "p", bopomofo: "ㄆㄢ")
        fileprivate static let pāng = Info(a聲母: .p, a韻母: .ang, tone: .一, pinyinWithTone: "pāng", pinyinWithoutTone: "pang", head: .p, firstChar: "p", bopomofo: "ㄆㄤ")
        fileprivate static let páng = Info(a聲母: .p, a韻母: .ang, tone: .二, pinyinWithTone: "páng", pinyinWithoutTone: "pang", head: .p, firstChar: "p", bopomofo: "ㄆㄤ")
        fileprivate static let pǎng = Info(a聲母: .p, a韻母: .ang, tone: .三, pinyinWithTone: "pǎng", pinyinWithoutTone: "pang", head: .p, firstChar: "p", bopomofo: "ㄆㄤ")
        fileprivate static let pàng = Info(a聲母: .p, a韻母: .ang, tone: .四, pinyinWithTone: "pàng", pinyinWithoutTone: "pang", head: .p, firstChar: "p", bopomofo: "ㄆㄤ")
        fileprivate static let pang = Info(a聲母: .p, a韻母: .ang, tone: .輕聲, pinyinWithTone: "pang", pinyinWithoutTone: "pang", head: .p, firstChar: "p", bopomofo: "ㄆㄤ")
        fileprivate static let pāo = Info(a聲母: .p, a韻母: .ao, tone: .一, pinyinWithTone: "pāo", pinyinWithoutTone: "pao", head: .p, firstChar: "p", bopomofo: "ㄆㄠ")
        fileprivate static let páo = Info(a聲母: .p, a韻母: .ao, tone: .二, pinyinWithTone: "páo", pinyinWithoutTone: "pao", head: .p, firstChar: "p", bopomofo: "ㄆㄠ")
        fileprivate static let pǎo = Info(a聲母: .p, a韻母: .ao, tone: .三, pinyinWithTone: "pǎo", pinyinWithoutTone: "pao", head: .p, firstChar: "p", bopomofo: "ㄆㄠ")
        fileprivate static let pào = Info(a聲母: .p, a韻母: .ao, tone: .四, pinyinWithTone: "pào", pinyinWithoutTone: "pao", head: .p, firstChar: "p", bopomofo: "ㄆㄠ")
        fileprivate static let pēi = Info(a聲母: .p, a韻母: .ei, tone: .一, pinyinWithTone: "pēi", pinyinWithoutTone: "pei", head: .p, firstChar: "p", bopomofo: "ㄆㄟ")
        fileprivate static let péi = Info(a聲母: .p, a韻母: .ei, tone: .二, pinyinWithTone: "péi", pinyinWithoutTone: "pei", head: .p, firstChar: "p", bopomofo: "ㄆㄟ")
        fileprivate static let pěi = Info(a聲母: .p, a韻母: .ei, tone: .三, pinyinWithTone: "pěi", pinyinWithoutTone: "pei", head: .p, firstChar: "p", bopomofo: "ㄆㄟ")
        fileprivate static let pèi = Info(a聲母: .p, a韻母: .ei, tone: .四, pinyinWithTone: "pèi", pinyinWithoutTone: "pei", head: .p, firstChar: "p", bopomofo: "ㄆㄟ")
        fileprivate static let pēn = Info(a聲母: .p, a韻母: .en, tone: .一, pinyinWithTone: "pēn", pinyinWithoutTone: "pen", head: .p, firstChar: "p", bopomofo: "ㄆㄣ")
        fileprivate static let pén = Info(a聲母: .p, a韻母: .en, tone: .二, pinyinWithTone: "pén", pinyinWithoutTone: "pen", head: .p, firstChar: "p", bopomofo: "ㄆㄣ")
        fileprivate static let pěn = Info(a聲母: .p, a韻母: .en, tone: .三, pinyinWithTone: "pěn", pinyinWithoutTone: "pen", head: .p, firstChar: "p", bopomofo: "ㄆㄣ")
        fileprivate static let pèn = Info(a聲母: .p, a韻母: .en, tone: .四, pinyinWithTone: "pèn", pinyinWithoutTone: "pen", head: .p, firstChar: "p", bopomofo: "ㄆㄣ")
        fileprivate static let pen = Info(a聲母: .p, a韻母: .en, tone: .輕聲, pinyinWithTone: "pen", pinyinWithoutTone: "pen", head: .p, firstChar: "p", bopomofo: "ㄆㄣ")
        fileprivate static let pēng = Info(a聲母: .p, a韻母: .eng, tone: .一, pinyinWithTone: "pēng", pinyinWithoutTone: "peng", head: .p, firstChar: "p", bopomofo: "ㄆㄥ")
        fileprivate static let péng = Info(a聲母: .p, a韻母: .eng, tone: .二, pinyinWithTone: "péng", pinyinWithoutTone: "peng", head: .p, firstChar: "p", bopomofo: "ㄆㄥ")
        fileprivate static let pěng = Info(a聲母: .p, a韻母: .eng, tone: .三, pinyinWithTone: "pěng", pinyinWithoutTone: "peng", head: .p, firstChar: "p", bopomofo: "ㄆㄥ")
        fileprivate static let pèng = Info(a聲母: .p, a韻母: .eng, tone: .四, pinyinWithTone: "pèng", pinyinWithoutTone: "peng", head: .p, firstChar: "p", bopomofo: "ㄆㄥ")
        fileprivate static let pī = Info(a聲母: .p, a韻母: .i, tone: .一, pinyinWithTone: "pī", pinyinWithoutTone: "pi", head: .p, firstChar: "p", bopomofo: "ㄆㄧ")
        fileprivate static let pí = Info(a聲母: .p, a韻母: .i, tone: .二, pinyinWithTone: "pí", pinyinWithoutTone: "pi", head: .p, firstChar: "p", bopomofo: "ㄆㄧ")
        fileprivate static let pǐ = Info(a聲母: .p, a韻母: .i, tone: .三, pinyinWithTone: "pǐ", pinyinWithoutTone: "pi", head: .p, firstChar: "p", bopomofo: "ㄆㄧ")
        fileprivate static let pì = Info(a聲母: .p, a韻母: .i, tone: .四, pinyinWithTone: "pì", pinyinWithoutTone: "pi", head: .p, firstChar: "p", bopomofo: "ㄆㄧ")
        fileprivate static let pi = Info(a聲母: .p, a韻母: .i, tone: .輕聲, pinyinWithTone: "pi", pinyinWithoutTone: "pi", head: .p, firstChar: "p", bopomofo: "ㄆㄧ")
        fileprivate static let piān = Info(a聲母: .p, a韻母: .ian, tone: .一, pinyinWithTone: "piān", pinyinWithoutTone: "pian", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄢ")
        fileprivate static let pián = Info(a聲母: .p, a韻母: .ian, tone: .二, pinyinWithTone: "pián", pinyinWithoutTone: "pian", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄢ")
        fileprivate static let piǎn = Info(a聲母: .p, a韻母: .ian, tone: .三, pinyinWithTone: "piǎn", pinyinWithoutTone: "pian", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄢ")
        fileprivate static let piàn = Info(a聲母: .p, a韻母: .ian, tone: .四, pinyinWithTone: "piàn", pinyinWithoutTone: "pian", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄢ")
        fileprivate static let piāo = Info(a聲母: .p, a韻母: .iao, tone: .一, pinyinWithTone: "piāo", pinyinWithoutTone: "piao", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄠ")
        fileprivate static let piáo = Info(a聲母: .p, a韻母: .iao, tone: .二, pinyinWithTone: "piáo", pinyinWithoutTone: "piao", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄠ")
        fileprivate static let piǎo = Info(a聲母: .p, a韻母: .iao, tone: .三, pinyinWithTone: "piǎo", pinyinWithoutTone: "piao", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄠ")
        fileprivate static let piào = Info(a聲母: .p, a韻母: .iao, tone: .四, pinyinWithTone: "piào", pinyinWithoutTone: "piao", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄠ")
        fileprivate static let piē = Info(a聲母: .p, a韻母: .ie, tone: .一, pinyinWithTone: "piē", pinyinWithoutTone: "pie", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄝ")
        fileprivate static let piě = Info(a聲母: .p, a韻母: .ie, tone: .三, pinyinWithTone: "piě", pinyinWithoutTone: "pie", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄝ")
        fileprivate static let piè = Info(a聲母: .p, a韻母: .ie, tone: .四, pinyinWithTone: "piè", pinyinWithoutTone: "pie", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄝ")
        fileprivate static let pīn = Info(a聲母: .p, a韻母: .in, tone: .一, pinyinWithTone: "pīn", pinyinWithoutTone: "pin", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄣ")
        fileprivate static let pín = Info(a聲母: .p, a韻母: .in, tone: .二, pinyinWithTone: "pín", pinyinWithoutTone: "pin", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄣ")
        fileprivate static let pǐn = Info(a聲母: .p, a韻母: .in, tone: .三, pinyinWithTone: "pǐn", pinyinWithoutTone: "pin", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄣ")
        fileprivate static let pìn = Info(a聲母: .p, a韻母: .in, tone: .四, pinyinWithTone: "pìn", pinyinWithoutTone: "pin", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄣ")
        fileprivate static let pīng = Info(a聲母: .p, a韻母: .ing, tone: .一, pinyinWithTone: "pīng", pinyinWithoutTone: "ping", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄥ")
        fileprivate static let píng = Info(a聲母: .p, a韻母: .ing, tone: .二, pinyinWithTone: "píng", pinyinWithoutTone: "ping", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄥ")
        fileprivate static let pǐng = Info(a聲母: .p, a韻母: .ing, tone: .三, pinyinWithTone: "pǐng", pinyinWithoutTone: "ping", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄥ")
        fileprivate static let pìng = Info(a聲母: .p, a韻母: .ing, tone: .四, pinyinWithTone: "pìng", pinyinWithoutTone: "ping", head: .p, firstChar: "p", bopomofo: "ㄆㄧㄥ")
        fileprivate static let pō = Info(a聲母: .p, a韻母: .o, tone: .一, pinyinWithTone: "pō", pinyinWithoutTone: "po", head: .p, firstChar: "p", bopomofo: "ㄆㄛ")
        fileprivate static let pó = Info(a聲母: .p, a韻母: .o, tone: .二, pinyinWithTone: "pó", pinyinWithoutTone: "po", head: .p, firstChar: "p", bopomofo: "ㄆㄛ")
        fileprivate static let pǒ = Info(a聲母: .p, a韻母: .o, tone: .三, pinyinWithTone: "pǒ", pinyinWithoutTone: "po", head: .p, firstChar: "p", bopomofo: "ㄆㄛ")
        fileprivate static let pò = Info(a聲母: .p, a韻母: .o, tone: .四, pinyinWithTone: "pò", pinyinWithoutTone: "po", head: .p, firstChar: "p", bopomofo: "ㄆㄛ")
        fileprivate static let po = Info(a聲母: .p, a韻母: .o, tone: .輕聲, pinyinWithTone: "po", pinyinWithoutTone: "po", head: .p, firstChar: "p", bopomofo: "ㄆㄛ")
        fileprivate static let pōu = Info(a聲母: .p, a韻母: .ou, tone: .一, pinyinWithTone: "pōu", pinyinWithoutTone: "pou", head: .p, firstChar: "p", bopomofo: "ㄆㄡ")
        fileprivate static let póu = Info(a聲母: .p, a韻母: .ou, tone: .二, pinyinWithTone: "póu", pinyinWithoutTone: "pou", head: .p, firstChar: "p", bopomofo: "ㄆㄡ")
        fileprivate static let pǒu = Info(a聲母: .p, a韻母: .ou, tone: .三, pinyinWithTone: "pǒu", pinyinWithoutTone: "pou", head: .p, firstChar: "p", bopomofo: "ㄆㄡ")
        fileprivate static let pòu = Info(a聲母: .p, a韻母: .ou, tone: .四, pinyinWithTone: "pòu", pinyinWithoutTone: "pou", head: .p, firstChar: "p", bopomofo: "ㄆㄡ")
        fileprivate static let pū = Info(a聲母: .p, a韻母: .u, tone: .一, pinyinWithTone: "pū", pinyinWithoutTone: "pu", head: .p, firstChar: "p", bopomofo: "ㄆㄨ")
        fileprivate static let pú = Info(a聲母: .p, a韻母: .u, tone: .二, pinyinWithTone: "pú", pinyinWithoutTone: "pu", head: .p, firstChar: "p", bopomofo: "ㄆㄨ")
        fileprivate static let pǔ = Info(a聲母: .p, a韻母: .u, tone: .三, pinyinWithTone: "pǔ", pinyinWithoutTone: "pu", head: .p, firstChar: "p", bopomofo: "ㄆㄨ")
        fileprivate static let pù = Info(a聲母: .p, a韻母: .u, tone: .四, pinyinWithTone: "pù", pinyinWithoutTone: "pu", head: .p, firstChar: "p", bopomofo: "ㄆㄨ")
        fileprivate static let qī = Info(a聲母: .q, a韻母: .i, tone: .一, pinyinWithTone: "qī", pinyinWithoutTone: "qi", head: .q, firstChar: "q", bopomofo: "ㄑㄧ")
        fileprivate static let qí = Info(a聲母: .q, a韻母: .i, tone: .二, pinyinWithTone: "qí", pinyinWithoutTone: "qi", head: .q, firstChar: "q", bopomofo: "ㄑㄧ")
        fileprivate static let qǐ = Info(a聲母: .q, a韻母: .i, tone: .三, pinyinWithTone: "qǐ", pinyinWithoutTone: "qi", head: .q, firstChar: "q", bopomofo: "ㄑㄧ")
        fileprivate static let qì = Info(a聲母: .q, a韻母: .i, tone: .四, pinyinWithTone: "qì", pinyinWithoutTone: "qi", head: .q, firstChar: "q", bopomofo: "ㄑㄧ")
        fileprivate static let qi = Info(a聲母: .q, a韻母: .i, tone: .輕聲, pinyinWithTone: "qi", pinyinWithoutTone: "qi", head: .q, firstChar: "q", bopomofo: "ㄑㄧ")
        fileprivate static let qiā = Info(a聲母: .q, a韻母: .ia, tone: .一, pinyinWithTone: "qiā", pinyinWithoutTone: "qia", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄚ")
        fileprivate static let qiǎ = Info(a聲母: .q, a韻母: .ia, tone: .三, pinyinWithTone: "qiǎ", pinyinWithoutTone: "qia", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄚ")
        fileprivate static let qià = Info(a聲母: .q, a韻母: .ia, tone: .四, pinyinWithTone: "qià", pinyinWithoutTone: "qia", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄚ")
        fileprivate static let qiān = Info(a聲母: .q, a韻母: .ian, tone: .一, pinyinWithTone: "qiān", pinyinWithoutTone: "qian", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄢ")
        fileprivate static let qián = Info(a聲母: .q, a韻母: .ian, tone: .二, pinyinWithTone: "qián", pinyinWithoutTone: "qian", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄢ")
        fileprivate static let qiǎn = Info(a聲母: .q, a韻母: .ian, tone: .三, pinyinWithTone: "qiǎn", pinyinWithoutTone: "qian", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄢ")
        fileprivate static let qiàn = Info(a聲母: .q, a韻母: .ian, tone: .四, pinyinWithTone: "qiàn", pinyinWithoutTone: "qian", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄢ")
        fileprivate static let qian = Info(a聲母: .q, a韻母: .ian, tone: .輕聲, pinyinWithTone: "qian", pinyinWithoutTone: "qian", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄢ")
        fileprivate static let qiāng = Info(a聲母: .q, a韻母: .iang, tone: .一, pinyinWithTone: "qiāng", pinyinWithoutTone: "qiang", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄤ")
        fileprivate static let qiáng = Info(a聲母: .q, a韻母: .iang, tone: .二, pinyinWithTone: "qiáng", pinyinWithoutTone: "qiang", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄤ")
        fileprivate static let qiǎng = Info(a聲母: .q, a韻母: .iang, tone: .三, pinyinWithTone: "qiǎng", pinyinWithoutTone: "qiang", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄤ")
        fileprivate static let qiàng = Info(a聲母: .q, a韻母: .iang, tone: .四, pinyinWithTone: "qiàng", pinyinWithoutTone: "qiang", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄤ")
        fileprivate static let qiāo = Info(a聲母: .q, a韻母: .iao, tone: .一, pinyinWithTone: "qiāo", pinyinWithoutTone: "qiao", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄠ")
        fileprivate static let qiáo = Info(a聲母: .q, a韻母: .iao, tone: .二, pinyinWithTone: "qiáo", pinyinWithoutTone: "qiao", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄠ")
        fileprivate static let qiǎo = Info(a聲母: .q, a韻母: .iao, tone: .三, pinyinWithTone: "qiǎo", pinyinWithoutTone: "qiao", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄠ")
        fileprivate static let qiào = Info(a聲母: .q, a韻母: .iao, tone: .四, pinyinWithTone: "qiào", pinyinWithoutTone: "qiao", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄠ")
        fileprivate static let qiē = Info(a聲母: .q, a韻母: .ie, tone: .一, pinyinWithTone: "qiē", pinyinWithoutTone: "qie", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄝ")
        fileprivate static let qié = Info(a聲母: .q, a韻母: .ie, tone: .二, pinyinWithTone: "qié", pinyinWithoutTone: "qie", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄝ")
        fileprivate static let qiě = Info(a聲母: .q, a韻母: .ie, tone: .三, pinyinWithTone: "qiě", pinyinWithoutTone: "qie", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄝ")
        fileprivate static let qiè = Info(a聲母: .q, a韻母: .ie, tone: .四, pinyinWithTone: "qiè", pinyinWithoutTone: "qie", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄝ")
        fileprivate static let qīn = Info(a聲母: .q, a韻母: .in, tone: .一, pinyinWithTone: "qīn", pinyinWithoutTone: "qin", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄣ")
        fileprivate static let qín = Info(a聲母: .q, a韻母: .in, tone: .二, pinyinWithTone: "qín", pinyinWithoutTone: "qin", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄣ")
        fileprivate static let qǐn = Info(a聲母: .q, a韻母: .in, tone: .三, pinyinWithTone: "qǐn", pinyinWithoutTone: "qin", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄣ")
        fileprivate static let qìn = Info(a聲母: .q, a韻母: .in, tone: .四, pinyinWithTone: "qìn", pinyinWithoutTone: "qin", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄣ")
        fileprivate static let qīng = Info(a聲母: .q, a韻母: .ing, tone: .一, pinyinWithTone: "qīng", pinyinWithoutTone: "qing", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄥ")
        fileprivate static let qíng = Info(a聲母: .q, a韻母: .ing, tone: .二, pinyinWithTone: "qíng", pinyinWithoutTone: "qing", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄥ")
        fileprivate static let qǐng = Info(a聲母: .q, a韻母: .ing, tone: .三, pinyinWithTone: "qǐng", pinyinWithoutTone: "qing", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄥ")
        fileprivate static let qìng = Info(a聲母: .q, a韻母: .ing, tone: .四, pinyinWithTone: "qìng", pinyinWithoutTone: "qing", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄥ")
        fileprivate static let qiōng = Info(a聲母: .q, a韻母: .iong, tone: .一, pinyinWithTone: "qiōng", pinyinWithoutTone: "qiong", head: .q, firstChar: "q", bopomofo: "ㄑㄩㄥ")
        fileprivate static let qióng = Info(a聲母: .q, a韻母: .iong, tone: .二, pinyinWithTone: "qióng", pinyinWithoutTone: "qiong", head: .q, firstChar: "q", bopomofo: "ㄑㄩㄥ")
        fileprivate static let qiǒng = Info(a聲母: .q, a韻母: .iong, tone: .三, pinyinWithTone: "qiǒng", pinyinWithoutTone: "qiong", head: .q, firstChar: "q", bopomofo: "ㄑㄩㄥ")
        fileprivate static let qiū = Info(a聲母: .q, a韻母: .iu, tone: .一, pinyinWithTone: "qiū", pinyinWithoutTone: "qiu", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄡ")
        fileprivate static let qiú = Info(a聲母: .q, a韻母: .iu, tone: .二, pinyinWithTone: "qiú", pinyinWithoutTone: "qiu", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄡ")
        fileprivate static let qiǔ = Info(a聲母: .q, a韻母: .iu, tone: .三, pinyinWithTone: "qiǔ", pinyinWithoutTone: "qiu", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄡ")
        fileprivate static let qiù = Info(a聲母: .q, a韻母: .iu, tone: .四, pinyinWithTone: "qiù", pinyinWithoutTone: "qiu", head: .q, firstChar: "q", bopomofo: "ㄑㄧㄡ")
        fileprivate static let qū = Info(a聲母: .q, a韻母: .u, tone: .一, pinyinWithTone: "qū", pinyinWithoutTone: "qu", head: .q, firstChar: "q", bopomofo: "ㄑㄩ")
        fileprivate static let qú = Info(a聲母: .q, a韻母: .u, tone: .二, pinyinWithTone: "qú", pinyinWithoutTone: "qu", head: .q, firstChar: "q", bopomofo: "ㄑㄩ")
        fileprivate static let qǔ = Info(a聲母: .q, a韻母: .u, tone: .三, pinyinWithTone: "qǔ", pinyinWithoutTone: "qu", head: .q, firstChar: "q", bopomofo: "ㄑㄩ")
        fileprivate static let qù = Info(a聲母: .q, a韻母: .u, tone: .四, pinyinWithTone: "qù", pinyinWithoutTone: "qu", head: .q, firstChar: "q", bopomofo: "ㄑㄩ")
        fileprivate static let quān = Info(a聲母: .q, a韻母: .uan, tone: .一, pinyinWithTone: "quān", pinyinWithoutTone: "quan", head: .q, firstChar: "q", bopomofo: "ㄑㄩㄢ")
        fileprivate static let quán = Info(a聲母: .q, a韻母: .uan, tone: .二, pinyinWithTone: "quán", pinyinWithoutTone: "quan", head: .q, firstChar: "q", bopomofo: "ㄑㄩㄢ")
        fileprivate static let quǎn = Info(a聲母: .q, a韻母: .uan, tone: .三, pinyinWithTone: "quǎn", pinyinWithoutTone: "quan", head: .q, firstChar: "q", bopomofo: "ㄑㄩㄢ")
        fileprivate static let quàn = Info(a聲母: .q, a韻母: .uan, tone: .四, pinyinWithTone: "quàn", pinyinWithoutTone: "quan", head: .q, firstChar: "q", bopomofo: "ㄑㄩㄢ")
        fileprivate static let quē = Info(a聲母: .q, a韻母: .ue, tone: .一, pinyinWithTone: "quē", pinyinWithoutTone: "que", head: .q, firstChar: "q", bopomofo: "ㄑㄩㄝ")
        fileprivate static let qué = Info(a聲母: .q, a韻母: .ue, tone: .二, pinyinWithTone: "qué", pinyinWithoutTone: "que", head: .q, firstChar: "q", bopomofo: "ㄑㄩㄝ")
        fileprivate static let què = Info(a聲母: .q, a韻母: .ue, tone: .四, pinyinWithTone: "què", pinyinWithoutTone: "que", head: .q, firstChar: "q", bopomofo: "ㄑㄩㄝ")
        fileprivate static let qūn = Info(a聲母: .q, a韻母: .un, tone: .一, pinyinWithTone: "qūn", pinyinWithoutTone: "qun", head: .q, firstChar: "q", bopomofo: "ㄑㄩㄣ")
        fileprivate static let qún = Info(a聲母: .q, a韻母: .un, tone: .二, pinyinWithTone: "qún", pinyinWithoutTone: "qun", head: .q, firstChar: "q", bopomofo: "ㄑㄩㄣ")
        fileprivate static let qǔn = Info(a聲母: .q, a韻母: .un, tone: .三, pinyinWithTone: "qǔn", pinyinWithoutTone: "qun", head: .q, firstChar: "q", bopomofo: "ㄑㄩㄣ")
        fileprivate static let rán = Info(a聲母: .r, a韻母: .an, tone: .二, pinyinWithTone: "rán", pinyinWithoutTone: "ran", head: .r, firstChar: "r", bopomofo: "ㄖㄢ")
        fileprivate static let rǎn = Info(a聲母: .r, a韻母: .an, tone: .三, pinyinWithTone: "rǎn", pinyinWithoutTone: "ran", head: .r, firstChar: "r", bopomofo: "ㄖㄢ")
        fileprivate static let rāng = Info(a聲母: .r, a韻母: .ang, tone: .一, pinyinWithTone: "rāng", pinyinWithoutTone: "rang", head: .r, firstChar: "r", bopomofo: "ㄖㄤ")
        fileprivate static let ráng = Info(a聲母: .r, a韻母: .ang, tone: .二, pinyinWithTone: "ráng", pinyinWithoutTone: "rang", head: .r, firstChar: "r", bopomofo: "ㄖㄤ")
        fileprivate static let rǎng = Info(a聲母: .r, a韻母: .ang, tone: .三, pinyinWithTone: "rǎng", pinyinWithoutTone: "rang", head: .r, firstChar: "r", bopomofo: "ㄖㄤ")
        fileprivate static let ràng = Info(a聲母: .r, a韻母: .ang, tone: .四, pinyinWithTone: "ràng", pinyinWithoutTone: "rang", head: .r, firstChar: "r", bopomofo: "ㄖㄤ")
        fileprivate static let ráo = Info(a聲母: .r, a韻母: .ao, tone: .二, pinyinWithTone: "ráo", pinyinWithoutTone: "rao", head: .r, firstChar: "r", bopomofo: "ㄖㄠ")
        fileprivate static let rǎo = Info(a聲母: .r, a韻母: .ao, tone: .三, pinyinWithTone: "rǎo", pinyinWithoutTone: "rao", head: .r, firstChar: "r", bopomofo: "ㄖㄠ")
        fileprivate static let rào = Info(a聲母: .r, a韻母: .ao, tone: .四, pinyinWithTone: "rào", pinyinWithoutTone: "rao", head: .r, firstChar: "r", bopomofo: "ㄖㄠ")
        fileprivate static let ré = Info(a聲母: .r, a韻母: .e, tone: .二, pinyinWithTone: "ré", pinyinWithoutTone: "re", head: .r, firstChar: "r", bopomofo: "ㄖㄜ")
        fileprivate static let rě = Info(a聲母: .r, a韻母: .e, tone: .三, pinyinWithTone: "rě", pinyinWithoutTone: "re", head: .r, firstChar: "r", bopomofo: "ㄖㄜ")
        fileprivate static let rè = Info(a聲母: .r, a韻母: .e, tone: .四, pinyinWithTone: "rè", pinyinWithoutTone: "re", head: .r, firstChar: "r", bopomofo: "ㄖㄜ")
        fileprivate static let rén = Info(a聲母: .r, a韻母: .en, tone: .二, pinyinWithTone: "rén", pinyinWithoutTone: "ren", head: .r, firstChar: "r", bopomofo: "ㄖㄣ")
        fileprivate static let rěn = Info(a聲母: .r, a韻母: .en, tone: .三, pinyinWithTone: "rěn", pinyinWithoutTone: "ren", head: .r, firstChar: "r", bopomofo: "ㄖㄣ")
        fileprivate static let rèn = Info(a聲母: .r, a韻母: .en, tone: .四, pinyinWithTone: "rèn", pinyinWithoutTone: "ren", head: .r, firstChar: "r", bopomofo: "ㄖㄣ")
        fileprivate static let rēng = Info(a聲母: .r, a韻母: .eng, tone: .一, pinyinWithTone: "rēng", pinyinWithoutTone: "reng", head: .r, firstChar: "r", bopomofo: "ㄖㄥ")
        fileprivate static let réng = Info(a聲母: .r, a韻母: .eng, tone: .二, pinyinWithTone: "réng", pinyinWithoutTone: "reng", head: .r, firstChar: "r", bopomofo: "ㄖㄥ")
        fileprivate static let rèng = Info(a聲母: .r, a韻母: .eng, tone: .四, pinyinWithTone: "rèng", pinyinWithoutTone: "reng", head: .r, firstChar: "r", bopomofo: "ㄖㄥ")
        fileprivate static let rì = Info(a聲母: .r, a韻母: .i, tone: .四, pinyinWithTone: "rì", pinyinWithoutTone: "ri", head: .r, firstChar: "r", bopomofo: "ㄖ")
        fileprivate static let róng = Info(a聲母: .r, a韻母: .ong, tone: .二, pinyinWithTone: "róng", pinyinWithoutTone: "rong", head: .r, firstChar: "r", bopomofo: "ㄖㄨㄥ")
        fileprivate static let rǒng = Info(a聲母: .r, a韻母: .ong, tone: .三, pinyinWithTone: "rǒng", pinyinWithoutTone: "rong", head: .r, firstChar: "r", bopomofo: "ㄖㄨㄥ")
        fileprivate static let ròng = Info(a聲母: .r, a韻母: .ong, tone: .四, pinyinWithTone: "ròng", pinyinWithoutTone: "rong", head: .r, firstChar: "r", bopomofo: "ㄖㄨㄥ")
        fileprivate static let róu = Info(a聲母: .r, a韻母: .ou, tone: .二, pinyinWithTone: "róu", pinyinWithoutTone: "rou", head: .r, firstChar: "r", bopomofo: "ㄖㄡ")
        fileprivate static let rǒu = Info(a聲母: .r, a韻母: .ou, tone: .三, pinyinWithTone: "rǒu", pinyinWithoutTone: "rou", head: .r, firstChar: "r", bopomofo: "ㄖㄡ")
        fileprivate static let ròu = Info(a聲母: .r, a韻母: .ou, tone: .四, pinyinWithTone: "ròu", pinyinWithoutTone: "rou", head: .r, firstChar: "r", bopomofo: "ㄖㄡ")
        fileprivate static let rū = Info(a聲母: .r, a韻母: .u, tone: .一, pinyinWithTone: "rū", pinyinWithoutTone: "ru", head: .r, firstChar: "r", bopomofo: "ㄖㄨ")
        fileprivate static let rú = Info(a聲母: .r, a韻母: .u, tone: .二, pinyinWithTone: "rú", pinyinWithoutTone: "ru", head: .r, firstChar: "r", bopomofo: "ㄖㄨ")
        fileprivate static let rǔ = Info(a聲母: .r, a韻母: .u, tone: .三, pinyinWithTone: "rǔ", pinyinWithoutTone: "ru", head: .r, firstChar: "r", bopomofo: "ㄖㄨ")
        fileprivate static let rù = Info(a聲母: .r, a韻母: .u, tone: .四, pinyinWithTone: "rù", pinyinWithoutTone: "ru", head: .r, firstChar: "r", bopomofo: "ㄖㄨ")
        fileprivate static let ruán = Info(a聲母: .r, a韻母: .uan, tone: .二, pinyinWithTone: "ruán", pinyinWithoutTone: "ruan", head: .r, firstChar: "r", bopomofo: "ㄖㄨㄢ")
        fileprivate static let ruǎn = Info(a聲母: .r, a韻母: .uan, tone: .三, pinyinWithTone: "ruǎn", pinyinWithoutTone: "ruan", head: .r, firstChar: "r", bopomofo: "ㄖㄨㄢ")
        fileprivate static let ruàn = Info(a聲母: .r, a韻母: .uan, tone: .四, pinyinWithTone: "ruàn", pinyinWithoutTone: "ruan", head: .r, firstChar: "r", bopomofo: "ㄖㄨㄢ")
        fileprivate static let ruí = Info(a聲母: .r, a韻母: .ui, tone: .二, pinyinWithTone: "ruí", pinyinWithoutTone: "rui", head: .r, firstChar: "r", bopomofo: "ㄖㄨㄟ")
        fileprivate static let ruǐ = Info(a聲母: .r, a韻母: .ui, tone: .三, pinyinWithTone: "ruǐ", pinyinWithoutTone: "rui", head: .r, firstChar: "r", bopomofo: "ㄖㄨㄟ")
        fileprivate static let ruì = Info(a聲母: .r, a韻母: .ui, tone: .四, pinyinWithTone: "ruì", pinyinWithoutTone: "rui", head: .r, firstChar: "r", bopomofo: "ㄖㄨㄟ")
        fileprivate static let rún = Info(a聲母: .r, a韻母: .un, tone: .二, pinyinWithTone: "rún", pinyinWithoutTone: "run", head: .r, firstChar: "r", bopomofo: "ㄖㄨㄣ")
        fileprivate static let rùn = Info(a聲母: .r, a韻母: .un, tone: .四, pinyinWithTone: "rùn", pinyinWithoutTone: "run", head: .r, firstChar: "r", bopomofo: "ㄖㄨㄣ")
        fileprivate static let ruó = Info(a聲母: .r, a韻母: .uo, tone: .二, pinyinWithTone: "ruó", pinyinWithoutTone: "ruo", head: .r, firstChar: "r", bopomofo: "ㄖㄨㄛ")
        fileprivate static let ruò = Info(a聲母: .r, a韻母: .uo, tone: .四, pinyinWithTone: "ruò", pinyinWithoutTone: "ruo", head: .r, firstChar: "r", bopomofo: "ㄖㄨㄛ")
        fileprivate static let sā = Info(a聲母: .s, a韻母: .a, tone: .一, pinyinWithTone: "sā", pinyinWithoutTone: "sa", head: .s, firstChar: "s", bopomofo: "ㄙㄚ")
        fileprivate static let sǎ = Info(a聲母: .s, a韻母: .a, tone: .三, pinyinWithTone: "sǎ", pinyinWithoutTone: "sa", head: .s, firstChar: "s", bopomofo: "ㄙㄚ")
        fileprivate static let sà = Info(a聲母: .s, a韻母: .a, tone: .四, pinyinWithTone: "sà", pinyinWithoutTone: "sa", head: .s, firstChar: "s", bopomofo: "ㄙㄚ")
        fileprivate static let sāi = Info(a聲母: .s, a韻母: .ai, tone: .一, pinyinWithTone: "sāi", pinyinWithoutTone: "sai", head: .s, firstChar: "s", bopomofo: "ㄙㄞ")
        fileprivate static let sǎi = Info(a聲母: .s, a韻母: .ai, tone: .三, pinyinWithTone: "sǎi", pinyinWithoutTone: "sai", head: .s, firstChar: "s", bopomofo: "ㄙㄞ")
        fileprivate static let sài = Info(a聲母: .s, a韻母: .ai, tone: .四, pinyinWithTone: "sài", pinyinWithoutTone: "sai", head: .s, firstChar: "s", bopomofo: "ㄙㄞ")
        fileprivate static let sai = Info(a聲母: .s, a韻母: .ai, tone: .輕聲, pinyinWithTone: "sai", pinyinWithoutTone: "sai", head: .s, firstChar: "s", bopomofo: "ㄙㄞ")
        fileprivate static let sān = Info(a聲母: .s, a韻母: .an, tone: .一, pinyinWithTone: "sān", pinyinWithoutTone: "san", head: .s, firstChar: "s", bopomofo: "ㄙㄢ")
        fileprivate static let sǎn = Info(a聲母: .s, a韻母: .an, tone: .三, pinyinWithTone: "sǎn", pinyinWithoutTone: "san", head: .s, firstChar: "s", bopomofo: "ㄙㄢ")
        fileprivate static let sàn = Info(a聲母: .s, a韻母: .an, tone: .四, pinyinWithTone: "sàn", pinyinWithoutTone: "san", head: .s, firstChar: "s", bopomofo: "ㄙㄢ")
        fileprivate static let san = Info(a聲母: .s, a韻母: .an, tone: .輕聲, pinyinWithTone: "san", pinyinWithoutTone: "san", head: .s, firstChar: "s", bopomofo: "ㄙㄢ")
        fileprivate static let sāng = Info(a聲母: .s, a韻母: .ang, tone: .一, pinyinWithTone: "sāng", pinyinWithoutTone: "sang", head: .s, firstChar: "s", bopomofo: "ㄙㄤ")
        fileprivate static let sǎng = Info(a聲母: .s, a韻母: .ang, tone: .三, pinyinWithTone: "sǎng", pinyinWithoutTone: "sang", head: .s, firstChar: "s", bopomofo: "ㄙㄤ")
        fileprivate static let sàng = Info(a聲母: .s, a韻母: .ang, tone: .四, pinyinWithTone: "sàng", pinyinWithoutTone: "sang", head: .s, firstChar: "s", bopomofo: "ㄙㄤ")
        fileprivate static let sang = Info(a聲母: .s, a韻母: .ang, tone: .輕聲, pinyinWithTone: "sang", pinyinWithoutTone: "sang", head: .s, firstChar: "s", bopomofo: "ㄙㄤ")
        fileprivate static let sāo = Info(a聲母: .s, a韻母: .ao, tone: .一, pinyinWithTone: "sāo", pinyinWithoutTone: "sao", head: .s, firstChar: "s", bopomofo: "ㄙㄠ")
        fileprivate static let sǎo = Info(a聲母: .s, a韻母: .ao, tone: .三, pinyinWithTone: "sǎo", pinyinWithoutTone: "sao", head: .s, firstChar: "s", bopomofo: "ㄙㄠ")
        fileprivate static let sào = Info(a聲母: .s, a韻母: .ao, tone: .四, pinyinWithTone: "sào", pinyinWithoutTone: "sao", head: .s, firstChar: "s", bopomofo: "ㄙㄠ")
        fileprivate static let sē = Info(a聲母: .s, a韻母: .e, tone: .一, pinyinWithTone: "sē", pinyinWithoutTone: "se", head: .s, firstChar: "s", bopomofo: "ㄙㄜ")
        fileprivate static let sè = Info(a聲母: .s, a韻母: .e, tone: .四, pinyinWithTone: "sè", pinyinWithoutTone: "se", head: .s, firstChar: "s", bopomofo: "ㄙㄜ")
        fileprivate static let sēn = Info(a聲母: .s, a韻母: .en, tone: .一, pinyinWithTone: "sēn", pinyinWithoutTone: "sen", head: .s, firstChar: "s", bopomofo: "ㄙㄣ")
        fileprivate static let sěn = Info(a聲母: .s, a韻母: .en, tone: .三, pinyinWithTone: "sěn", pinyinWithoutTone: "sen", head: .s, firstChar: "s", bopomofo: "ㄙㄣ")
        fileprivate static let sēng = Info(a聲母: .s, a韻母: .eng, tone: .一, pinyinWithTone: "sēng", pinyinWithoutTone: "seng", head: .s, firstChar: "s", bopomofo: "ㄙㄥ")
        fileprivate static let shā = Info(a聲母: .sh, a韻母: .a, tone: .一, pinyinWithTone: "shā", pinyinWithoutTone: "sha", head: .sh, firstChar: "s", bopomofo: "ㄕㄚ")
        fileprivate static let shá = Info(a聲母: .sh, a韻母: .a, tone: .二, pinyinWithTone: "shá", pinyinWithoutTone: "sha", head: .sh, firstChar: "s", bopomofo: "ㄕㄚ")
        fileprivate static let shǎ = Info(a聲母: .sh, a韻母: .a, tone: .三, pinyinWithTone: "shǎ", pinyinWithoutTone: "sha", head: .sh, firstChar: "s", bopomofo: "ㄕㄚ")
        fileprivate static let shà = Info(a聲母: .sh, a韻母: .a, tone: .四, pinyinWithTone: "shà", pinyinWithoutTone: "sha", head: .sh, firstChar: "s", bopomofo: "ㄕㄚ")
        fileprivate static let shāi = Info(a聲母: .sh, a韻母: .ai, tone: .一, pinyinWithTone: "shāi", pinyinWithoutTone: "shai", head: .sh, firstChar: "s", bopomofo: "ㄕㄞ")
        fileprivate static let shǎi = Info(a聲母: .sh, a韻母: .ai, tone: .三, pinyinWithTone: "shǎi", pinyinWithoutTone: "shai", head: .sh, firstChar: "s", bopomofo: "ㄕㄞ")
        fileprivate static let shài = Info(a聲母: .sh, a韻母: .ai, tone: .四, pinyinWithTone: "shài", pinyinWithoutTone: "shai", head: .sh, firstChar: "s", bopomofo: "ㄕㄞ")
        fileprivate static let shān = Info(a聲母: .sh, a韻母: .an, tone: .一, pinyinWithTone: "shān", pinyinWithoutTone: "shan", head: .sh, firstChar: "s", bopomofo: "ㄕㄢ")
        fileprivate static let shán = Info(a聲母: .sh, a韻母: .an, tone: .二, pinyinWithTone: "shán", pinyinWithoutTone: "shan", head: .sh, firstChar: "s", bopomofo: "ㄕㄢ")
        fileprivate static let shǎn = Info(a聲母: .sh, a韻母: .an, tone: .三, pinyinWithTone: "shǎn", pinyinWithoutTone: "shan", head: .sh, firstChar: "s", bopomofo: "ㄕㄢ")
        fileprivate static let shàn = Info(a聲母: .sh, a韻母: .an, tone: .四, pinyinWithTone: "shàn", pinyinWithoutTone: "shan", head: .sh, firstChar: "s", bopomofo: "ㄕㄢ")
        fileprivate static let shāng = Info(a聲母: .sh, a韻母: .ang, tone: .一, pinyinWithTone: "shāng", pinyinWithoutTone: "shang", head: .sh, firstChar: "s", bopomofo: "ㄕㄤ")
        fileprivate static let sháng = Info(a聲母: .sh, a韻母: .ang, tone: .二, pinyinWithTone: "sháng", pinyinWithoutTone: "shang", head: .sh, firstChar: "s", bopomofo: "ㄕㄤ")
        fileprivate static let shǎng = Info(a聲母: .sh, a韻母: .ang, tone: .三, pinyinWithTone: "shǎng", pinyinWithoutTone: "shang", head: .sh, firstChar: "s", bopomofo: "ㄕㄤ")
        fileprivate static let shàng = Info(a聲母: .sh, a韻母: .ang, tone: .四, pinyinWithTone: "shàng", pinyinWithoutTone: "shang", head: .sh, firstChar: "s", bopomofo: "ㄕㄤ")
        fileprivate static let shang = Info(a聲母: .sh, a韻母: .ang, tone: .輕聲, pinyinWithTone: "shang", pinyinWithoutTone: "shang", head: .sh, firstChar: "s", bopomofo: "ㄕㄤ")
        fileprivate static let shāo = Info(a聲母: .sh, a韻母: .ao, tone: .一, pinyinWithTone: "shāo", pinyinWithoutTone: "shao", head: .sh, firstChar: "s", bopomofo: "ㄕㄠ")
        fileprivate static let sháo = Info(a聲母: .sh, a韻母: .ao, tone: .二, pinyinWithTone: "sháo", pinyinWithoutTone: "shao", head: .sh, firstChar: "s", bopomofo: "ㄕㄠ")
        fileprivate static let shǎo = Info(a聲母: .sh, a韻母: .ao, tone: .三, pinyinWithTone: "shǎo", pinyinWithoutTone: "shao", head: .sh, firstChar: "s", bopomofo: "ㄕㄠ")
        fileprivate static let shào = Info(a聲母: .sh, a韻母: .ao, tone: .四, pinyinWithTone: "shào", pinyinWithoutTone: "shao", head: .sh, firstChar: "s", bopomofo: "ㄕㄠ")
        fileprivate static let shē = Info(a聲母: .sh, a韻母: .e, tone: .一, pinyinWithTone: "shē", pinyinWithoutTone: "she", head: .sh, firstChar: "s", bopomofo: "ㄕㄜ")
        fileprivate static let shé = Info(a聲母: .sh, a韻母: .e, tone: .二, pinyinWithTone: "shé", pinyinWithoutTone: "she", head: .sh, firstChar: "s", bopomofo: "ㄕㄜ")
        fileprivate static let shě = Info(a聲母: .sh, a韻母: .e, tone: .三, pinyinWithTone: "shě", pinyinWithoutTone: "she", head: .sh, firstChar: "s", bopomofo: "ㄕㄜ")
        fileprivate static let shè = Info(a聲母: .sh, a韻母: .e, tone: .四, pinyinWithTone: "shè", pinyinWithoutTone: "she", head: .sh, firstChar: "s", bopomofo: "ㄕㄜ")
        fileprivate static let shéi = Info(a聲母: .sh, a韻母: .ei, tone: .二, pinyinWithTone: "shéi", pinyinWithoutTone: "shei", head: .sh, firstChar: "s", bopomofo: "ㄕㄟ")
        fileprivate static let shēn = Info(a聲母: .sh, a韻母: .en, tone: .一, pinyinWithTone: "shēn", pinyinWithoutTone: "shen", head: .sh, firstChar: "s", bopomofo: "ㄕㄣ")
        fileprivate static let shén = Info(a聲母: .sh, a韻母: .en, tone: .二, pinyinWithTone: "shén", pinyinWithoutTone: "shen", head: .sh, firstChar: "s", bopomofo: "ㄕㄣ")
        fileprivate static let shěn = Info(a聲母: .sh, a韻母: .en, tone: .三, pinyinWithTone: "shěn", pinyinWithoutTone: "shen", head: .sh, firstChar: "s", bopomofo: "ㄕㄣ")
        fileprivate static let shèn = Info(a聲母: .sh, a韻母: .en, tone: .四, pinyinWithTone: "shèn", pinyinWithoutTone: "shen", head: .sh, firstChar: "s", bopomofo: "ㄕㄣ")
        fileprivate static let shēng = Info(a聲母: .sh, a韻母: .eng, tone: .一, pinyinWithTone: "shēng", pinyinWithoutTone: "sheng", head: .sh, firstChar: "s", bopomofo: "ㄕㄥ")
        fileprivate static let shéng = Info(a聲母: .sh, a韻母: .eng, tone: .二, pinyinWithTone: "shéng", pinyinWithoutTone: "sheng", head: .sh, firstChar: "s", bopomofo: "ㄕㄥ")
        fileprivate static let shěng = Info(a聲母: .sh, a韻母: .eng, tone: .三, pinyinWithTone: "shěng", pinyinWithoutTone: "sheng", head: .sh, firstChar: "s", bopomofo: "ㄕㄥ")
        fileprivate static let shèng = Info(a聲母: .sh, a韻母: .eng, tone: .四, pinyinWithTone: "shèng", pinyinWithoutTone: "sheng", head: .sh, firstChar: "s", bopomofo: "ㄕㄥ")
        fileprivate static let shī = Info(a聲母: .sh, a韻母: .i, tone: .一, pinyinWithTone: "shī", pinyinWithoutTone: "shi", head: .sh, firstChar: "s", bopomofo: "ㄕ")
        fileprivate static let shí = Info(a聲母: .sh, a韻母: .i, tone: .二, pinyinWithTone: "shí", pinyinWithoutTone: "shi", head: .sh, firstChar: "s", bopomofo: "ㄕ")
        fileprivate static let shǐ = Info(a聲母: .sh, a韻母: .i, tone: .三, pinyinWithTone: "shǐ", pinyinWithoutTone: "shi", head: .sh, firstChar: "s", bopomofo: "ㄕ")
        fileprivate static let shì = Info(a聲母: .sh, a韻母: .i, tone: .四, pinyinWithTone: "shì", pinyinWithoutTone: "shi", head: .sh, firstChar: "s", bopomofo: "ㄕ")
        fileprivate static let shi = Info(a聲母: .sh, a韻母: .i, tone: .輕聲, pinyinWithTone: "shi", pinyinWithoutTone: "shi", head: .sh, firstChar: "s", bopomofo: "ㄕ")
        fileprivate static let shōu = Info(a聲母: .sh, a韻母: .ou, tone: .一, pinyinWithTone: "shōu", pinyinWithoutTone: "shou", head: .sh, firstChar: "s", bopomofo: "ㄕㄡ")
        fileprivate static let shóu = Info(a聲母: .sh, a韻母: .ou, tone: .二, pinyinWithTone: "shóu", pinyinWithoutTone: "shou", head: .sh, firstChar: "s", bopomofo: "ㄕㄡ")
        fileprivate static let shǒu = Info(a聲母: .sh, a韻母: .ou, tone: .三, pinyinWithTone: "shǒu", pinyinWithoutTone: "shou", head: .sh, firstChar: "s", bopomofo: "ㄕㄡ")
        fileprivate static let shòu = Info(a聲母: .sh, a韻母: .ou, tone: .四, pinyinWithTone: "shòu", pinyinWithoutTone: "shou", head: .sh, firstChar: "s", bopomofo: "ㄕㄡ")
        fileprivate static let shū = Info(a聲母: .sh, a韻母: .u, tone: .一, pinyinWithTone: "shū", pinyinWithoutTone: "shu", head: .sh, firstChar: "s", bopomofo: "ㄕㄨ")
        fileprivate static let shú = Info(a聲母: .sh, a韻母: .u, tone: .二, pinyinWithTone: "shú", pinyinWithoutTone: "shu", head: .sh, firstChar: "s", bopomofo: "ㄕㄨ")
        fileprivate static let shǔ = Info(a聲母: .sh, a韻母: .u, tone: .三, pinyinWithTone: "shǔ", pinyinWithoutTone: "shu", head: .sh, firstChar: "s", bopomofo: "ㄕㄨ")
        fileprivate static let shù = Info(a聲母: .sh, a韻母: .u, tone: .四, pinyinWithTone: "shù", pinyinWithoutTone: "shu", head: .sh, firstChar: "s", bopomofo: "ㄕㄨ")
        fileprivate static let shuā = Info(a聲母: .sh, a韻母: .ua, tone: .一, pinyinWithTone: "shuā", pinyinWithoutTone: "shua", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄚ")
        fileprivate static let shuǎ = Info(a聲母: .sh, a韻母: .ua, tone: .三, pinyinWithTone: "shuǎ", pinyinWithoutTone: "shua", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄚ")
        fileprivate static let shuà = Info(a聲母: .sh, a韻母: .ua, tone: .四, pinyinWithTone: "shuà", pinyinWithoutTone: "shua", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄚ")
        fileprivate static let shuāi = Info(a聲母: .sh, a韻母: .uai, tone: .一, pinyinWithTone: "shuāi", pinyinWithoutTone: "shuai", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄞ")
        fileprivate static let shuǎi = Info(a聲母: .sh, a韻母: .uai, tone: .三, pinyinWithTone: "shuǎi", pinyinWithoutTone: "shuai", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄞ")
        fileprivate static let shuài = Info(a聲母: .sh, a韻母: .uai, tone: .四, pinyinWithTone: "shuài", pinyinWithoutTone: "shuai", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄞ")
        fileprivate static let shuān = Info(a聲母: .sh, a韻母: .uan, tone: .一, pinyinWithTone: "shuān", pinyinWithoutTone: "shuan", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄢ")
        fileprivate static let shuàn = Info(a聲母: .sh, a韻母: .uan, tone: .四, pinyinWithTone: "shuàn", pinyinWithoutTone: "shuan", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄢ")
        fileprivate static let shuāng = Info(a聲母: .sh, a韻母: .uang, tone: .一, pinyinWithTone: "shuāng", pinyinWithoutTone: "shuang", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄤ")
        fileprivate static let shuǎng = Info(a聲母: .sh, a韻母: .uang, tone: .三, pinyinWithTone: "shuǎng", pinyinWithoutTone: "shuang", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄤ")
        fileprivate static let shuàng = Info(a聲母: .sh, a韻母: .uang, tone: .四, pinyinWithTone: "shuàng", pinyinWithoutTone: "shuang", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄤ")
        fileprivate static let shuí = Info(a聲母: .sh, a韻母: .ui, tone: .二, pinyinWithTone: "shuí", pinyinWithoutTone: "shui", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄟ")
        fileprivate static let shuǐ = Info(a聲母: .sh, a韻母: .ui, tone: .三, pinyinWithTone: "shuǐ", pinyinWithoutTone: "shui", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄟ")
        fileprivate static let shuì = Info(a聲母: .sh, a韻母: .ui, tone: .四, pinyinWithTone: "shuì", pinyinWithoutTone: "shui", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄟ")
        fileprivate static let shūn = Info(a聲母: .sh, a韻母: .un, tone: .一, pinyinWithTone: "shūn", pinyinWithoutTone: "shun", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄣ")
        fileprivate static let shǔn = Info(a聲母: .sh, a韻母: .un, tone: .三, pinyinWithTone: "shǔn", pinyinWithoutTone: "shun", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄣ")
        fileprivate static let shùn = Info(a聲母: .sh, a韻母: .un, tone: .四, pinyinWithTone: "shùn", pinyinWithoutTone: "shun", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄣ")
        fileprivate static let shuō = Info(a聲母: .sh, a韻母: .uo, tone: .一, pinyinWithTone: "shuō", pinyinWithoutTone: "shuo", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄛ")
        fileprivate static let shuó = Info(a聲母: .sh, a韻母: .uo, tone: .二, pinyinWithTone: "shuó", pinyinWithoutTone: "shuo", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄛ")
        fileprivate static let shuò = Info(a聲母: .sh, a韻母: .uo, tone: .四, pinyinWithTone: "shuò", pinyinWithoutTone: "shuo", head: .sh, firstChar: "s", bopomofo: "ㄕㄨㄛ")
        fileprivate static let sī = Info(a聲母: .s, a韻母: .i, tone: .一, pinyinWithTone: "sī", pinyinWithoutTone: "si", head: .s, firstChar: "s", bopomofo: "ㄙ")
        fileprivate static let sǐ = Info(a聲母: .s, a韻母: .i, tone: .三, pinyinWithTone: "sǐ", pinyinWithoutTone: "si", head: .s, firstChar: "s", bopomofo: "ㄙ")
        fileprivate static let sì = Info(a聲母: .s, a韻母: .i, tone: .四, pinyinWithTone: "sì", pinyinWithoutTone: "si", head: .s, firstChar: "s", bopomofo: "ㄙ")
        fileprivate static let sōng = Info(a聲母: .s, a韻母: .ong, tone: .一, pinyinWithTone: "sōng", pinyinWithoutTone: "song", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄥ")
        fileprivate static let sǒng = Info(a聲母: .s, a韻母: .ong, tone: .三, pinyinWithTone: "sǒng", pinyinWithoutTone: "song", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄥ")
        fileprivate static let sòng = Info(a聲母: .s, a韻母: .ong, tone: .四, pinyinWithTone: "sòng", pinyinWithoutTone: "song", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄥ")
        fileprivate static let sōu = Info(a聲母: .s, a韻母: .ou, tone: .一, pinyinWithTone: "sōu", pinyinWithoutTone: "sou", head: .s, firstChar: "s", bopomofo: "ㄙㄡ")
        fileprivate static let sǒu = Info(a聲母: .s, a韻母: .ou, tone: .三, pinyinWithTone: "sǒu", pinyinWithoutTone: "sou", head: .s, firstChar: "s", bopomofo: "ㄙㄡ")
        fileprivate static let sòu = Info(a聲母: .s, a韻母: .ou, tone: .四, pinyinWithTone: "sòu", pinyinWithoutTone: "sou", head: .s, firstChar: "s", bopomofo: "ㄙㄡ")
        fileprivate static let sū = Info(a聲母: .s, a韻母: .u, tone: .一, pinyinWithTone: "sū", pinyinWithoutTone: "su", head: .s, firstChar: "s", bopomofo: "ㄙㄨ")
        fileprivate static let sú = Info(a聲母: .s, a韻母: .u, tone: .二, pinyinWithTone: "sú", pinyinWithoutTone: "su", head: .s, firstChar: "s", bopomofo: "ㄙㄨ")
        fileprivate static let sù = Info(a聲母: .s, a韻母: .u, tone: .四, pinyinWithTone: "sù", pinyinWithoutTone: "su", head: .s, firstChar: "s", bopomofo: "ㄙㄨ")
        fileprivate static let suān = Info(a聲母: .s, a韻母: .uan, tone: .一, pinyinWithTone: "suān", pinyinWithoutTone: "suan", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄢ")
        fileprivate static let suǎn = Info(a聲母: .s, a韻母: .uan, tone: .三, pinyinWithTone: "suǎn", pinyinWithoutTone: "suan", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄢ")
        fileprivate static let suàn = Info(a聲母: .s, a韻母: .uan, tone: .四, pinyinWithTone: "suàn", pinyinWithoutTone: "suan", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄢ")
        fileprivate static let suī = Info(a聲母: .s, a韻母: .ui, tone: .一, pinyinWithTone: "suī", pinyinWithoutTone: "sui", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄟ")
        fileprivate static let suí = Info(a聲母: .s, a韻母: .ui, tone: .二, pinyinWithTone: "suí", pinyinWithoutTone: "sui", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄟ")
        fileprivate static let suǐ = Info(a聲母: .s, a韻母: .ui, tone: .三, pinyinWithTone: "suǐ", pinyinWithoutTone: "sui", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄟ")
        fileprivate static let suì = Info(a聲母: .s, a韻母: .ui, tone: .四, pinyinWithTone: "suì", pinyinWithoutTone: "sui", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄟ")
        fileprivate static let sūn = Info(a聲母: .s, a韻母: .un, tone: .一, pinyinWithTone: "sūn", pinyinWithoutTone: "sun", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄣ")
        fileprivate static let sǔn = Info(a聲母: .s, a韻母: .un, tone: .三, pinyinWithTone: "sǔn", pinyinWithoutTone: "sun", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄣ")
        fileprivate static let sùn = Info(a聲母: .s, a韻母: .un, tone: .四, pinyinWithTone: "sùn", pinyinWithoutTone: "sun", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄣ")
        fileprivate static let suō = Info(a聲母: .s, a韻母: .uo, tone: .一, pinyinWithTone: "suō", pinyinWithoutTone: "suo", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄛ")
        fileprivate static let suǒ = Info(a聲母: .s, a韻母: .uo, tone: .三, pinyinWithTone: "suǒ", pinyinWithoutTone: "suo", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄛ")
        fileprivate static let suò = Info(a聲母: .s, a韻母: .uo, tone: .四, pinyinWithTone: "suò", pinyinWithoutTone: "suo", head: .s, firstChar: "s", bopomofo: "ㄙㄨㄛ")
        fileprivate static let tā = Info(a聲母: .t, a韻母: .a, tone: .一, pinyinWithTone: "tā", pinyinWithoutTone: "ta", head: .t, firstChar: "t", bopomofo: "ㄊㄚ")
        fileprivate static let tǎ = Info(a聲母: .t, a韻母: .a, tone: .三, pinyinWithTone: "tǎ", pinyinWithoutTone: "ta", head: .t, firstChar: "t", bopomofo: "ㄊㄚ")
        fileprivate static let tà = Info(a聲母: .t, a韻母: .a, tone: .四, pinyinWithTone: "tà", pinyinWithoutTone: "ta", head: .t, firstChar: "t", bopomofo: "ㄊㄚ")
        fileprivate static let ta = Info(a聲母: .t, a韻母: .a, tone: .輕聲, pinyinWithTone: "ta", pinyinWithoutTone: "ta", head: .t, firstChar: "t", bopomofo: "ㄊㄚ")
        fileprivate static let tāi = Info(a聲母: .t, a韻母: .ai, tone: .一, pinyinWithTone: "tāi", pinyinWithoutTone: "tai", head: .t, firstChar: "t", bopomofo: "ㄊㄞ")
        fileprivate static let tái = Info(a聲母: .t, a韻母: .ai, tone: .二, pinyinWithTone: "tái", pinyinWithoutTone: "tai", head: .t, firstChar: "t", bopomofo: "ㄊㄞ")
        fileprivate static let tǎi = Info(a聲母: .t, a韻母: .ai, tone: .三, pinyinWithTone: "tǎi", pinyinWithoutTone: "tai", head: .t, firstChar: "t", bopomofo: "ㄊㄞ")
        fileprivate static let tài = Info(a聲母: .t, a韻母: .ai, tone: .四, pinyinWithTone: "tài", pinyinWithoutTone: "tai", head: .t, firstChar: "t", bopomofo: "ㄊㄞ")
        fileprivate static let tān = Info(a聲母: .t, a韻母: .an, tone: .一, pinyinWithTone: "tān", pinyinWithoutTone: "tan", head: .t, firstChar: "t", bopomofo: "ㄊㄢ")
        fileprivate static let tán = Info(a聲母: .t, a韻母: .an, tone: .二, pinyinWithTone: "tán", pinyinWithoutTone: "tan", head: .t, firstChar: "t", bopomofo: "ㄊㄢ")
        fileprivate static let tǎn = Info(a聲母: .t, a韻母: .an, tone: .三, pinyinWithTone: "tǎn", pinyinWithoutTone: "tan", head: .t, firstChar: "t", bopomofo: "ㄊㄢ")
        fileprivate static let tàn = Info(a聲母: .t, a韻母: .an, tone: .四, pinyinWithTone: "tàn", pinyinWithoutTone: "tan", head: .t, firstChar: "t", bopomofo: "ㄊㄢ")
        fileprivate static let tāng = Info(a聲母: .t, a韻母: .ang, tone: .一, pinyinWithTone: "tāng", pinyinWithoutTone: "tang", head: .t, firstChar: "t", bopomofo: "ㄊㄤ")
        fileprivate static let táng = Info(a聲母: .t, a韻母: .ang, tone: .二, pinyinWithTone: "táng", pinyinWithoutTone: "tang", head: .t, firstChar: "t", bopomofo: "ㄊㄤ")
        fileprivate static let tǎng = Info(a聲母: .t, a韻母: .ang, tone: .三, pinyinWithTone: "tǎng", pinyinWithoutTone: "tang", head: .t, firstChar: "t", bopomofo: "ㄊㄤ")
        fileprivate static let tàng = Info(a聲母: .t, a韻母: .ang, tone: .四, pinyinWithTone: "tàng", pinyinWithoutTone: "tang", head: .t, firstChar: "t", bopomofo: "ㄊㄤ")
        fileprivate static let tāo = Info(a聲母: .t, a韻母: .ao, tone: .一, pinyinWithTone: "tāo", pinyinWithoutTone: "tao", head: .t, firstChar: "t", bopomofo: "ㄊㄠ")
        fileprivate static let táo = Info(a聲母: .t, a韻母: .ao, tone: .二, pinyinWithTone: "táo", pinyinWithoutTone: "tao", head: .t, firstChar: "t", bopomofo: "ㄊㄠ")
        fileprivate static let tǎo = Info(a聲母: .t, a韻母: .ao, tone: .三, pinyinWithTone: "tǎo", pinyinWithoutTone: "tao", head: .t, firstChar: "t", bopomofo: "ㄊㄠ")
        fileprivate static let tào = Info(a聲母: .t, a韻母: .ao, tone: .四, pinyinWithTone: "tào", pinyinWithoutTone: "tao", head: .t, firstChar: "t", bopomofo: "ㄊㄠ")
        fileprivate static let tè = Info(a聲母: .t, a韻母: .e, tone: .四, pinyinWithTone: "tè", pinyinWithoutTone: "te", head: .t, firstChar: "t", bopomofo: "ㄊㄜ")
        fileprivate static let tēng = Info(a聲母: .t, a韻母: .eng, tone: .一, pinyinWithTone: "tēng", pinyinWithoutTone: "teng", head: .t, firstChar: "t", bopomofo: "ㄊㄥ")
        fileprivate static let téng = Info(a聲母: .t, a韻母: .eng, tone: .二, pinyinWithTone: "téng", pinyinWithoutTone: "teng", head: .t, firstChar: "t", bopomofo: "ㄊㄥ")
        fileprivate static let tèng = Info(a聲母: .t, a韻母: .eng, tone: .四, pinyinWithTone: "tèng", pinyinWithoutTone: "teng", head: .t, firstChar: "t", bopomofo: "ㄊㄥ")
        fileprivate static let tī = Info(a聲母: .t, a韻母: .i, tone: .一, pinyinWithTone: "tī", pinyinWithoutTone: "ti", head: .t, firstChar: "t", bopomofo: "ㄊㄧ")
        fileprivate static let tí = Info(a聲母: .t, a韻母: .i, tone: .二, pinyinWithTone: "tí", pinyinWithoutTone: "ti", head: .t, firstChar: "t", bopomofo: "ㄊㄧ")
        fileprivate static let tǐ = Info(a聲母: .t, a韻母: .i, tone: .三, pinyinWithTone: "tǐ", pinyinWithoutTone: "ti", head: .t, firstChar: "t", bopomofo: "ㄊㄧ")
        fileprivate static let tì = Info(a聲母: .t, a韻母: .i, tone: .四, pinyinWithTone: "tì", pinyinWithoutTone: "ti", head: .t, firstChar: "t", bopomofo: "ㄊㄧ")
        fileprivate static let tiān = Info(a聲母: .t, a韻母: .ian, tone: .一, pinyinWithTone: "tiān", pinyinWithoutTone: "tian", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄢ")
        fileprivate static let tián = Info(a聲母: .t, a韻母: .ian, tone: .二, pinyinWithTone: "tián", pinyinWithoutTone: "tian", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄢ")
        fileprivate static let tiǎn = Info(a聲母: .t, a韻母: .ian, tone: .三, pinyinWithTone: "tiǎn", pinyinWithoutTone: "tian", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄢ")
        fileprivate static let tiàn = Info(a聲母: .t, a韻母: .ian, tone: .四, pinyinWithTone: "tiàn", pinyinWithoutTone: "tian", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄢ")
        fileprivate static let tian = Info(a聲母: .t, a韻母: .ian, tone: .輕聲, pinyinWithTone: "tian", pinyinWithoutTone: "tian", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄢ")
        fileprivate static let tiāo = Info(a聲母: .t, a韻母: .iao, tone: .一, pinyinWithTone: "tiāo", pinyinWithoutTone: "tiao", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄠ")
        fileprivate static let tiáo = Info(a聲母: .t, a韻母: .iao, tone: .二, pinyinWithTone: "tiáo", pinyinWithoutTone: "tiao", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄠ")
        fileprivate static let tiǎo = Info(a聲母: .t, a韻母: .iao, tone: .三, pinyinWithTone: "tiǎo", pinyinWithoutTone: "tiao", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄠ")
        fileprivate static let tiào = Info(a聲母: .t, a韻母: .iao, tone: .四, pinyinWithTone: "tiào", pinyinWithoutTone: "tiao", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄠ")
        fileprivate static let tiē = Info(a聲母: .t, a韻母: .ie, tone: .一, pinyinWithTone: "tiē", pinyinWithoutTone: "tie", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄝ")
        fileprivate static let tié = Info(a聲母: .t, a韻母: .ie, tone: .二, pinyinWithTone: "tié", pinyinWithoutTone: "tie", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄝ")
        fileprivate static let tiě = Info(a聲母: .t, a韻母: .ie, tone: .三, pinyinWithTone: "tiě", pinyinWithoutTone: "tie", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄝ")
        fileprivate static let tiè = Info(a聲母: .t, a韻母: .ie, tone: .四, pinyinWithTone: "tiè", pinyinWithoutTone: "tie", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄝ")
        fileprivate static let tīng = Info(a聲母: .t, a韻母: .ing, tone: .一, pinyinWithTone: "tīng", pinyinWithoutTone: "ting", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄥ")
        fileprivate static let tíng = Info(a聲母: .t, a韻母: .ing, tone: .二, pinyinWithTone: "tíng", pinyinWithoutTone: "ting", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄥ")
        fileprivate static let tǐng = Info(a聲母: .t, a韻母: .ing, tone: .三, pinyinWithTone: "tǐng", pinyinWithoutTone: "ting", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄥ")
        fileprivate static let tìng = Info(a聲母: .t, a韻母: .ing, tone: .四, pinyinWithTone: "tìng", pinyinWithoutTone: "ting", head: .t, firstChar: "t", bopomofo: "ㄊㄧㄥ")
        fileprivate static let tōng = Info(a聲母: .t, a韻母: .ong, tone: .一, pinyinWithTone: "tōng", pinyinWithoutTone: "tong", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄥ")
        fileprivate static let tóng = Info(a聲母: .t, a韻母: .ong, tone: .二, pinyinWithTone: "tóng", pinyinWithoutTone: "tong", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄥ")
        fileprivate static let tǒng = Info(a聲母: .t, a韻母: .ong, tone: .三, pinyinWithTone: "tǒng", pinyinWithoutTone: "tong", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄥ")
        fileprivate static let tòng = Info(a聲母: .t, a韻母: .ong, tone: .四, pinyinWithTone: "tòng", pinyinWithoutTone: "tong", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄥ")
        fileprivate static let tōu = Info(a聲母: .t, a韻母: .ou, tone: .一, pinyinWithTone: "tōu", pinyinWithoutTone: "tou", head: .t, firstChar: "t", bopomofo: "ㄊㄡ")
        fileprivate static let tóu = Info(a聲母: .t, a韻母: .ou, tone: .二, pinyinWithTone: "tóu", pinyinWithoutTone: "tou", head: .t, firstChar: "t", bopomofo: "ㄊㄡ")
        fileprivate static let tǒu = Info(a聲母: .t, a韻母: .ou, tone: .三, pinyinWithTone: "tǒu", pinyinWithoutTone: "tou", head: .t, firstChar: "t", bopomofo: "ㄊㄡ")
        fileprivate static let tòu = Info(a聲母: .t, a韻母: .ou, tone: .四, pinyinWithTone: "tòu", pinyinWithoutTone: "tou", head: .t, firstChar: "t", bopomofo: "ㄊㄡ")
        fileprivate static let tou = Info(a聲母: .t, a韻母: .ou, tone: .輕聲, pinyinWithTone: "tou", pinyinWithoutTone: "tou", head: .t, firstChar: "t", bopomofo: "ㄊㄡ")
        fileprivate static let tū = Info(a聲母: .t, a韻母: .u, tone: .一, pinyinWithTone: "tū", pinyinWithoutTone: "tu", head: .t, firstChar: "t", bopomofo: "ㄊㄨ")
        fileprivate static let tú = Info(a聲母: .t, a韻母: .u, tone: .二, pinyinWithTone: "tú", pinyinWithoutTone: "tu", head: .t, firstChar: "t", bopomofo: "ㄊㄨ")
        fileprivate static let tǔ = Info(a聲母: .t, a韻母: .u, tone: .三, pinyinWithTone: "tǔ", pinyinWithoutTone: "tu", head: .t, firstChar: "t", bopomofo: "ㄊㄨ")
        fileprivate static let tù = Info(a聲母: .t, a韻母: .u, tone: .四, pinyinWithTone: "tù", pinyinWithoutTone: "tu", head: .t, firstChar: "t", bopomofo: "ㄊㄨ")
        fileprivate static let tu = Info(a聲母: .t, a韻母: .u, tone: .輕聲, pinyinWithTone: "tu", pinyinWithoutTone: "tu", head: .t, firstChar: "t", bopomofo: "ㄊㄨ")
        fileprivate static let tuān = Info(a聲母: .t, a韻母: .uan, tone: .一, pinyinWithTone: "tuān", pinyinWithoutTone: "tuan", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄢ")
        fileprivate static let tuán = Info(a聲母: .t, a韻母: .uan, tone: .二, pinyinWithTone: "tuán", pinyinWithoutTone: "tuan", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄢ")
        fileprivate static let tuǎn = Info(a聲母: .t, a韻母: .uan, tone: .三, pinyinWithTone: "tuǎn", pinyinWithoutTone: "tuan", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄢ")
        fileprivate static let tuàn = Info(a聲母: .t, a韻母: .uan, tone: .四, pinyinWithTone: "tuàn", pinyinWithoutTone: "tuan", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄢ")
        fileprivate static let tuī = Info(a聲母: .t, a韻母: .ui, tone: .一, pinyinWithTone: "tuī", pinyinWithoutTone: "tui", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄟ")
        fileprivate static let tuí = Info(a聲母: .t, a韻母: .ui, tone: .二, pinyinWithTone: "tuí", pinyinWithoutTone: "tui", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄟ")
        fileprivate static let tuǐ = Info(a聲母: .t, a韻母: .ui, tone: .三, pinyinWithTone: "tuǐ", pinyinWithoutTone: "tui", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄟ")
        fileprivate static let tuì = Info(a聲母: .t, a韻母: .ui, tone: .四, pinyinWithTone: "tuì", pinyinWithoutTone: "tui", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄟ")
        fileprivate static let tūn = Info(a聲母: .t, a韻母: .un, tone: .一, pinyinWithTone: "tūn", pinyinWithoutTone: "tun", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄣ")
        fileprivate static let tún = Info(a聲母: .t, a韻母: .un, tone: .二, pinyinWithTone: "tún", pinyinWithoutTone: "tun", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄣ")
        fileprivate static let tǔn = Info(a聲母: .t, a韻母: .un, tone: .三, pinyinWithTone: "tǔn", pinyinWithoutTone: "tun", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄣ")
        fileprivate static let tùn = Info(a聲母: .t, a韻母: .un, tone: .四, pinyinWithTone: "tùn", pinyinWithoutTone: "tun", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄣ")
        fileprivate static let tun = Info(a聲母: .t, a韻母: .un, tone: .輕聲, pinyinWithTone: "tun", pinyinWithoutTone: "tun", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄣ")
        fileprivate static let tuō = Info(a聲母: .t, a韻母: .uo, tone: .一, pinyinWithTone: "tuō", pinyinWithoutTone: "tuo", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄛ")
        fileprivate static let tuó = Info(a聲母: .t, a韻母: .uo, tone: .二, pinyinWithTone: "tuó", pinyinWithoutTone: "tuo", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄛ")
        fileprivate static let tuǒ = Info(a聲母: .t, a韻母: .uo, tone: .三, pinyinWithTone: "tuǒ", pinyinWithoutTone: "tuo", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄛ")
        fileprivate static let tuò = Info(a聲母: .t, a韻母: .uo, tone: .四, pinyinWithTone: "tuò", pinyinWithoutTone: "tuo", head: .t, firstChar: "t", bopomofo: "ㄊㄨㄛ")
        fileprivate static let wā = Info(a聲母: .w, a韻母: .a, tone: .一, pinyinWithTone: "wā", pinyinWithoutTone: "wa", head: .w, firstChar: "w", bopomofo: "ㄨㄚ")
        fileprivate static let wá = Info(a聲母: .w, a韻母: .a, tone: .二, pinyinWithTone: "wá", pinyinWithoutTone: "wa", head: .w, firstChar: "w", bopomofo: "ㄨㄚ")
        fileprivate static let wǎ = Info(a聲母: .w, a韻母: .a, tone: .三, pinyinWithTone: "wǎ", pinyinWithoutTone: "wa", head: .w, firstChar: "w", bopomofo: "ㄨㄚ")
        fileprivate static let wà = Info(a聲母: .w, a韻母: .a, tone: .四, pinyinWithTone: "wà", pinyinWithoutTone: "wa", head: .w, firstChar: "w", bopomofo: "ㄨㄚ")
        fileprivate static let wa = Info(a聲母: .w, a韻母: .a, tone: .輕聲, pinyinWithTone: "wa", pinyinWithoutTone: "wa", head: .w, firstChar: "w", bopomofo: "ㄨㄚ")
        fileprivate static let wāi = Info(a聲母: .w, a韻母: .ai, tone: .一, pinyinWithTone: "wāi", pinyinWithoutTone: "wai", head: .w, firstChar: "w", bopomofo: "ㄨㄞ")
        fileprivate static let wǎi = Info(a聲母: .w, a韻母: .ai, tone: .三, pinyinWithTone: "wǎi", pinyinWithoutTone: "wai", head: .w, firstChar: "w", bopomofo: "ㄨㄞ")
        fileprivate static let wài = Info(a聲母: .w, a韻母: .ai, tone: .四, pinyinWithTone: "wài", pinyinWithoutTone: "wai", head: .w, firstChar: "w", bopomofo: "ㄨㄞ")
        fileprivate static let wān = Info(a聲母: .w, a韻母: .an, tone: .一, pinyinWithTone: "wān", pinyinWithoutTone: "wan", head: .w, firstChar: "w", bopomofo: "ㄨㄢ")
        fileprivate static let wán = Info(a聲母: .w, a韻母: .an, tone: .二, pinyinWithTone: "wán", pinyinWithoutTone: "wan", head: .w, firstChar: "w", bopomofo: "ㄨㄢ")
        fileprivate static let wǎn = Info(a聲母: .w, a韻母: .an, tone: .三, pinyinWithTone: "wǎn", pinyinWithoutTone: "wan", head: .w, firstChar: "w", bopomofo: "ㄨㄢ")
        fileprivate static let wàn = Info(a聲母: .w, a韻母: .an, tone: .四, pinyinWithTone: "wàn", pinyinWithoutTone: "wan", head: .w, firstChar: "w", bopomofo: "ㄨㄢ")
        fileprivate static let wāng = Info(a聲母: .w, a韻母: .ang, tone: .一, pinyinWithTone: "wāng", pinyinWithoutTone: "wang", head: .w, firstChar: "w", bopomofo: "ㄨㄤ")
        fileprivate static let wáng = Info(a聲母: .w, a韻母: .ang, tone: .二, pinyinWithTone: "wáng", pinyinWithoutTone: "wang", head: .w, firstChar: "w", bopomofo: "ㄨㄤ")
        fileprivate static let wǎng = Info(a聲母: .w, a韻母: .ang, tone: .三, pinyinWithTone: "wǎng", pinyinWithoutTone: "wang", head: .w, firstChar: "w", bopomofo: "ㄨㄤ")
        fileprivate static let wàng = Info(a聲母: .w, a韻母: .ang, tone: .四, pinyinWithTone: "wàng", pinyinWithoutTone: "wang", head: .w, firstChar: "w", bopomofo: "ㄨㄤ")
        fileprivate static let wēi = Info(a聲母: .w, a韻母: .ei, tone: .一, pinyinWithTone: "wēi", pinyinWithoutTone: "wei", head: .w, firstChar: "w", bopomofo: "ㄨㄟ")
        fileprivate static let wéi = Info(a聲母: .w, a韻母: .ei, tone: .二, pinyinWithTone: "wéi", pinyinWithoutTone: "wei", head: .w, firstChar: "w", bopomofo: "ㄨㄟ")
        fileprivate static let wěi = Info(a聲母: .w, a韻母: .ei, tone: .三, pinyinWithTone: "wěi", pinyinWithoutTone: "wei", head: .w, firstChar: "w", bopomofo: "ㄨㄟ")
        fileprivate static let wèi = Info(a聲母: .w, a韻母: .ei, tone: .四, pinyinWithTone: "wèi", pinyinWithoutTone: "wei", head: .w, firstChar: "w", bopomofo: "ㄨㄟ")
        fileprivate static let wēn = Info(a聲母: .w, a韻母: .en, tone: .一, pinyinWithTone: "wēn", pinyinWithoutTone: "wen", head: .w, firstChar: "w", bopomofo: "ㄨㄣ")
        fileprivate static let wén = Info(a聲母: .w, a韻母: .en, tone: .二, pinyinWithTone: "wén", pinyinWithoutTone: "wen", head: .w, firstChar: "w", bopomofo: "ㄨㄣ")
        fileprivate static let wěn = Info(a聲母: .w, a韻母: .en, tone: .三, pinyinWithTone: "wěn", pinyinWithoutTone: "wen", head: .w, firstChar: "w", bopomofo: "ㄨㄣ")
        fileprivate static let wèn = Info(a聲母: .w, a韻母: .en, tone: .四, pinyinWithTone: "wèn", pinyinWithoutTone: "wen", head: .w, firstChar: "w", bopomofo: "ㄨㄣ")
        fileprivate static let wēng = Info(a聲母: .w, a韻母: .eng, tone: .一, pinyinWithTone: "wēng", pinyinWithoutTone: "weng", head: .w, firstChar: "w", bopomofo: "ㄨㄥ")
        fileprivate static let wěng = Info(a聲母: .w, a韻母: .eng, tone: .三, pinyinWithTone: "wěng", pinyinWithoutTone: "weng", head: .w, firstChar: "w", bopomofo: "ㄨㄥ")
        fileprivate static let wèng = Info(a聲母: .w, a韻母: .eng, tone: .四, pinyinWithTone: "wèng", pinyinWithoutTone: "weng", head: .w, firstChar: "w", bopomofo: "ㄨㄥ")
        fileprivate static let wō = Info(a聲母: .w, a韻母: .o, tone: .一, pinyinWithTone: "wō", pinyinWithoutTone: "wo", head: .w, firstChar: "w", bopomofo: "ㄨㄛ")
        fileprivate static let wǒ = Info(a聲母: .w, a韻母: .o, tone: .三, pinyinWithTone: "wǒ", pinyinWithoutTone: "wo", head: .w, firstChar: "w", bopomofo: "ㄨㄛ")
        fileprivate static let wò = Info(a聲母: .w, a韻母: .o, tone: .四, pinyinWithTone: "wò", pinyinWithoutTone: "wo", head: .w, firstChar: "w", bopomofo: "ㄨㄛ")
        fileprivate static let wū = Info(a聲母: .w, a韻母: .u, tone: .一, pinyinWithTone: "wū", pinyinWithoutTone: "wu", head: .w, firstChar: "w", bopomofo: "ㄨ")
        fileprivate static let wú = Info(a聲母: .w, a韻母: .u, tone: .二, pinyinWithTone: "wú", pinyinWithoutTone: "wu", head: .w, firstChar: "w", bopomofo: "ㄨ")
        fileprivate static let wǔ = Info(a聲母: .w, a韻母: .u, tone: .三, pinyinWithTone: "wǔ", pinyinWithoutTone: "wu", head: .w, firstChar: "w", bopomofo: "ㄨ")
        fileprivate static let wù = Info(a聲母: .w, a韻母: .u, tone: .四, pinyinWithTone: "wù", pinyinWithoutTone: "wu", head: .w, firstChar: "w", bopomofo: "ㄨ")
        fileprivate static let xī = Info(a聲母: .x, a韻母: .i, tone: .一, pinyinWithTone: "xī", pinyinWithoutTone: "xi", head: .x, firstChar: "x", bopomofo: "ㄒㄧ")
        fileprivate static let xí = Info(a聲母: .x, a韻母: .i, tone: .二, pinyinWithTone: "xí", pinyinWithoutTone: "xi", head: .x, firstChar: "x", bopomofo: "ㄒㄧ")
        fileprivate static let xǐ = Info(a聲母: .x, a韻母: .i, tone: .三, pinyinWithTone: "xǐ", pinyinWithoutTone: "xi", head: .x, firstChar: "x", bopomofo: "ㄒㄧ")
        fileprivate static let xì = Info(a聲母: .x, a韻母: .i, tone: .四, pinyinWithTone: "xì", pinyinWithoutTone: "xi", head: .x, firstChar: "x", bopomofo: "ㄒㄧ")
        fileprivate static let xiā = Info(a聲母: .x, a韻母: .ia, tone: .一, pinyinWithTone: "xiā", pinyinWithoutTone: "xia", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄚ")
        fileprivate static let xiá = Info(a聲母: .x, a韻母: .ia, tone: .二, pinyinWithTone: "xiá", pinyinWithoutTone: "xia", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄚ")
        fileprivate static let xiǎ = Info(a聲母: .x, a韻母: .ia, tone: .三, pinyinWithTone: "xiǎ", pinyinWithoutTone: "xia", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄚ")
        fileprivate static let xià = Info(a聲母: .x, a韻母: .ia, tone: .四, pinyinWithTone: "xià", pinyinWithoutTone: "xia", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄚ")
        fileprivate static let xiān = Info(a聲母: .x, a韻母: .ian, tone: .一, pinyinWithTone: "xiān", pinyinWithoutTone: "xian", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄢ")
        fileprivate static let xián = Info(a聲母: .x, a韻母: .ian, tone: .二, pinyinWithTone: "xián", pinyinWithoutTone: "xian", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄢ")
        fileprivate static let xiǎn = Info(a聲母: .x, a韻母: .ian, tone: .三, pinyinWithTone: "xiǎn", pinyinWithoutTone: "xian", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄢ")
        fileprivate static let xiàn = Info(a聲母: .x, a韻母: .ian, tone: .四, pinyinWithTone: "xiàn", pinyinWithoutTone: "xian", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄢ")
        fileprivate static let xiāng = Info(a聲母: .x, a韻母: .iang, tone: .一, pinyinWithTone: "xiāng", pinyinWithoutTone: "xiang", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄤ")
        fileprivate static let xiáng = Info(a聲母: .x, a韻母: .iang, tone: .二, pinyinWithTone: "xiáng", pinyinWithoutTone: "xiang", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄤ")
        fileprivate static let xiǎng = Info(a聲母: .x, a韻母: .iang, tone: .三, pinyinWithTone: "xiǎng", pinyinWithoutTone: "xiang", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄤ")
        fileprivate static let xiàng = Info(a聲母: .x, a韻母: .iang, tone: .四, pinyinWithTone: "xiàng", pinyinWithoutTone: "xiang", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄤ")
        fileprivate static let xiāo = Info(a聲母: .x, a韻母: .iao, tone: .一, pinyinWithTone: "xiāo", pinyinWithoutTone: "xiao", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄠ")
        fileprivate static let xiáo = Info(a聲母: .x, a韻母: .iao, tone: .二, pinyinWithTone: "xiáo", pinyinWithoutTone: "xiao", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄠ")
        fileprivate static let xiǎo = Info(a聲母: .x, a韻母: .iao, tone: .三, pinyinWithTone: "xiǎo", pinyinWithoutTone: "xiao", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄠ")
        fileprivate static let xiào = Info(a聲母: .x, a韻母: .iao, tone: .四, pinyinWithTone: "xiào", pinyinWithoutTone: "xiao", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄠ")
        fileprivate static let xiē = Info(a聲母: .x, a韻母: .ie, tone: .一, pinyinWithTone: "xiē", pinyinWithoutTone: "xie", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄝ")
        fileprivate static let xié = Info(a聲母: .x, a韻母: .ie, tone: .二, pinyinWithTone: "xié", pinyinWithoutTone: "xie", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄝ")
        fileprivate static let xiě = Info(a聲母: .x, a韻母: .ie, tone: .三, pinyinWithTone: "xiě", pinyinWithoutTone: "xie", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄝ")
        fileprivate static let xiè = Info(a聲母: .x, a韻母: .ie, tone: .四, pinyinWithTone: "xiè", pinyinWithoutTone: "xie", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄝ")
        fileprivate static let xīn = Info(a聲母: .x, a韻母: .in, tone: .一, pinyinWithTone: "xīn", pinyinWithoutTone: "xin", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄣ")
        fileprivate static let xín = Info(a聲母: .x, a韻母: .in, tone: .二, pinyinWithTone: "xín", pinyinWithoutTone: "xin", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄣ")
        fileprivate static let xǐn = Info(a聲母: .x, a韻母: .in, tone: .三, pinyinWithTone: "xǐn", pinyinWithoutTone: "xin", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄣ")
        fileprivate static let xìn = Info(a聲母: .x, a韻母: .in, tone: .四, pinyinWithTone: "xìn", pinyinWithoutTone: "xin", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄣ")
        fileprivate static let xīng = Info(a聲母: .x, a韻母: .ing, tone: .一, pinyinWithTone: "xīng", pinyinWithoutTone: "xing", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄥ")
        fileprivate static let xíng = Info(a聲母: .x, a韻母: .ing, tone: .二, pinyinWithTone: "xíng", pinyinWithoutTone: "xing", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄥ")
        fileprivate static let xǐng = Info(a聲母: .x, a韻母: .ing, tone: .三, pinyinWithTone: "xǐng", pinyinWithoutTone: "xing", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄥ")
        fileprivate static let xìng = Info(a聲母: .x, a韻母: .ing, tone: .四, pinyinWithTone: "xìng", pinyinWithoutTone: "xing", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄥ")
        fileprivate static let xiōng = Info(a聲母: .x, a韻母: .iong, tone: .一, pinyinWithTone: "xiōng", pinyinWithoutTone: "xiong", head: .x, firstChar: "x", bopomofo: "ㄒㄩㄥ")
        fileprivate static let xióng = Info(a聲母: .x, a韻母: .iong, tone: .二, pinyinWithTone: "xióng", pinyinWithoutTone: "xiong", head: .x, firstChar: "x", bopomofo: "ㄒㄩㄥ")
        fileprivate static let xiǒng = Info(a聲母: .x, a韻母: .iong, tone: .三, pinyinWithTone: "xiǒng", pinyinWithoutTone: "xiong", head: .x, firstChar: "x", bopomofo: "ㄒㄩㄥ")
        fileprivate static let xiòng = Info(a聲母: .x, a韻母: .iong, tone: .四, pinyinWithTone: "xiòng", pinyinWithoutTone: "xiong", head: .x, firstChar: "x", bopomofo: "ㄒㄩㄥ")
        fileprivate static let xiū = Info(a聲母: .x, a韻母: .iu, tone: .一, pinyinWithTone: "xiū", pinyinWithoutTone: "xiu", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄡ")
        fileprivate static let xiú = Info(a聲母: .x, a韻母: .iu, tone: .二, pinyinWithTone: "xiú", pinyinWithoutTone: "xiu", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄡ")
        fileprivate static let xiǔ = Info(a聲母: .x, a韻母: .iu, tone: .三, pinyinWithTone: "xiǔ", pinyinWithoutTone: "xiu", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄡ")
        fileprivate static let xiù = Info(a聲母: .x, a韻母: .iu, tone: .四, pinyinWithTone: "xiù", pinyinWithoutTone: "xiu", head: .x, firstChar: "x", bopomofo: "ㄒㄧㄡ")
        fileprivate static let xū = Info(a聲母: .x, a韻母: .u, tone: .一, pinyinWithTone: "xū", pinyinWithoutTone: "xu", head: .x, firstChar: "x", bopomofo: "ㄒㄩ")
        fileprivate static let xú = Info(a聲母: .x, a韻母: .u, tone: .二, pinyinWithTone: "xú", pinyinWithoutTone: "xu", head: .x, firstChar: "x", bopomofo: "ㄒㄩ")
        fileprivate static let xǔ = Info(a聲母: .x, a韻母: .u, tone: .三, pinyinWithTone: "xǔ", pinyinWithoutTone: "xu", head: .x, firstChar: "x", bopomofo: "ㄒㄩ")
        fileprivate static let xù = Info(a聲母: .x, a韻母: .u, tone: .四, pinyinWithTone: "xù", pinyinWithoutTone: "xu", head: .x, firstChar: "x", bopomofo: "ㄒㄩ")
        fileprivate static let xu = Info(a聲母: .x, a韻母: .u, tone: .輕聲, pinyinWithTone: "xu", pinyinWithoutTone: "xu", head: .x, firstChar: "x", bopomofo: "ㄒㄩ")
        fileprivate static let xuān = Info(a聲母: .x, a韻母: .uan, tone: .一, pinyinWithTone: "xuān", pinyinWithoutTone: "xuan", head: .x, firstChar: "x", bopomofo: "ㄒㄩㄢ")
        fileprivate static let xuán = Info(a聲母: .x, a韻母: .uan, tone: .二, pinyinWithTone: "xuán", pinyinWithoutTone: "xuan", head: .x, firstChar: "x", bopomofo: "ㄒㄩㄢ")
        fileprivate static let xuǎn = Info(a聲母: .x, a韻母: .uan, tone: .三, pinyinWithTone: "xuǎn", pinyinWithoutTone: "xuan", head: .x, firstChar: "x", bopomofo: "ㄒㄩㄢ")
        fileprivate static let xuàn = Info(a聲母: .x, a韻母: .uan, tone: .四, pinyinWithTone: "xuàn", pinyinWithoutTone: "xuan", head: .x, firstChar: "x", bopomofo: "ㄒㄩㄢ")
        fileprivate static let xuē = Info(a聲母: .x, a韻母: .ue, tone: .一, pinyinWithTone: "xuē", pinyinWithoutTone: "xue", head: .x, firstChar: "x", bopomofo: "ㄒㄩㄝ")
        fileprivate static let xué = Info(a聲母: .x, a韻母: .ue, tone: .二, pinyinWithTone: "xué", pinyinWithoutTone: "xue", head: .x, firstChar: "x", bopomofo: "ㄒㄩㄝ")
        fileprivate static let xuě = Info(a聲母: .x, a韻母: .ue, tone: .三, pinyinWithTone: "xuě", pinyinWithoutTone: "xue", head: .x, firstChar: "x", bopomofo: "ㄒㄩㄝ")
        fileprivate static let xuè = Info(a聲母: .x, a韻母: .ue, tone: .四, pinyinWithTone: "xuè", pinyinWithoutTone: "xue", head: .x, firstChar: "x", bopomofo: "ㄒㄩㄝ")
        fileprivate static let xūn = Info(a聲母: .x, a韻母: .un, tone: .一, pinyinWithTone: "xūn", pinyinWithoutTone: "xun", head: .x, firstChar: "x", bopomofo: "ㄒㄩㄣ")
        fileprivate static let xún = Info(a聲母: .x, a韻母: .un, tone: .二, pinyinWithTone: "xún", pinyinWithoutTone: "xun", head: .x, firstChar: "x", bopomofo: "ㄒㄩㄣ")
        fileprivate static let xùn = Info(a聲母: .x, a韻母: .un, tone: .四, pinyinWithTone: "xùn", pinyinWithoutTone: "xun", head: .x, firstChar: "x", bopomofo: "ㄒㄩㄣ")
        fileprivate static let yā = Info(a聲母: .y, a韻母: .a, tone: .一, pinyinWithTone: "yā", pinyinWithoutTone: "ya", head: .y, firstChar: "y", bopomofo: "ㄧㄚ")
        fileprivate static let yá = Info(a聲母: .y, a韻母: .a, tone: .二, pinyinWithTone: "yá", pinyinWithoutTone: "ya", head: .y, firstChar: "y", bopomofo: "ㄧㄚ")
        fileprivate static let yǎ = Info(a聲母: .y, a韻母: .a, tone: .三, pinyinWithTone: "yǎ", pinyinWithoutTone: "ya", head: .y, firstChar: "y", bopomofo: "ㄧㄚ")
        fileprivate static let yà = Info(a聲母: .y, a韻母: .a, tone: .四, pinyinWithTone: "yà", pinyinWithoutTone: "ya", head: .y, firstChar: "y", bopomofo: "ㄧㄚ")
        fileprivate static let ya = Info(a聲母: .y, a韻母: .a, tone: .輕聲, pinyinWithTone: "ya", pinyinWithoutTone: "ya", head: .y, firstChar: "y", bopomofo: "ㄧㄚ")
        fileprivate static let yái = Info(a聲母: .y, a韻母: .ai, tone: .二, pinyinWithTone: "yái", pinyinWithoutTone: "yai", head: .y, firstChar: "y", bopomofo: "ㄧㄞ")
        fileprivate static let yān = Info(a聲母: .y, a韻母: .an, tone: .一, pinyinWithTone: "yān", pinyinWithoutTone: "yan", head: .y, firstChar: "y", bopomofo: "ㄧㄢ")
        fileprivate static let yán = Info(a聲母: .y, a韻母: .an, tone: .二, pinyinWithTone: "yán", pinyinWithoutTone: "yan", head: .y, firstChar: "y", bopomofo: "ㄧㄢ")
        fileprivate static let yǎn = Info(a聲母: .y, a韻母: .an, tone: .三, pinyinWithTone: "yǎn", pinyinWithoutTone: "yan", head: .y, firstChar: "y", bopomofo: "ㄧㄢ")
        fileprivate static let yàn = Info(a聲母: .y, a韻母: .an, tone: .四, pinyinWithTone: "yàn", pinyinWithoutTone: "yan", head: .y, firstChar: "y", bopomofo: "ㄧㄢ")
        fileprivate static let yāng = Info(a聲母: .y, a韻母: .ang, tone: .一, pinyinWithTone: "yāng", pinyinWithoutTone: "yang", head: .y, firstChar: "y", bopomofo: "ㄧㄤ")
        fileprivate static let yáng = Info(a聲母: .y, a韻母: .ang, tone: .二, pinyinWithTone: "yáng", pinyinWithoutTone: "yang", head: .y, firstChar: "y", bopomofo: "ㄧㄤ")
        fileprivate static let yǎng = Info(a聲母: .y, a韻母: .ang, tone: .三, pinyinWithTone: "yǎng", pinyinWithoutTone: "yang", head: .y, firstChar: "y", bopomofo: "ㄧㄤ")
        fileprivate static let yàng = Info(a聲母: .y, a韻母: .ang, tone: .四, pinyinWithTone: "yàng", pinyinWithoutTone: "yang", head: .y, firstChar: "y", bopomofo: "ㄧㄤ")
        fileprivate static let yāo = Info(a聲母: .y, a韻母: .ao, tone: .一, pinyinWithTone: "yāo", pinyinWithoutTone: "yao", head: .y, firstChar: "y", bopomofo: "ㄧㄠ")
        fileprivate static let yáo = Info(a聲母: .y, a韻母: .ao, tone: .二, pinyinWithTone: "yáo", pinyinWithoutTone: "yao", head: .y, firstChar: "y", bopomofo: "ㄧㄠ")
        fileprivate static let yǎo = Info(a聲母: .y, a韻母: .ao, tone: .三, pinyinWithTone: "yǎo", pinyinWithoutTone: "yao", head: .y, firstChar: "y", bopomofo: "ㄧㄠ")
        fileprivate static let yào = Info(a聲母: .y, a韻母: .ao, tone: .四, pinyinWithTone: "yào", pinyinWithoutTone: "yao", head: .y, firstChar: "y", bopomofo: "ㄧㄠ")
        fileprivate static let yē = Info(a聲母: .y, a韻母: .e, tone: .一, pinyinWithTone: "yē", pinyinWithoutTone: "ye", head: .y, firstChar: "y", bopomofo: "ㄧㄝ")
        fileprivate static let yé = Info(a聲母: .y, a韻母: .e, tone: .二, pinyinWithTone: "yé", pinyinWithoutTone: "ye", head: .y, firstChar: "y", bopomofo: "ㄧㄝ")
        fileprivate static let yě = Info(a聲母: .y, a韻母: .e, tone: .三, pinyinWithTone: "yě", pinyinWithoutTone: "ye", head: .y, firstChar: "y", bopomofo: "ㄧㄝ")
        fileprivate static let yè = Info(a聲母: .y, a韻母: .e, tone: .四, pinyinWithTone: "yè", pinyinWithoutTone: "ye", head: .y, firstChar: "y", bopomofo: "ㄧㄝ")
        fileprivate static let ye = Info(a聲母: .y, a韻母: .e, tone: .輕聲, pinyinWithTone: "ye", pinyinWithoutTone: "ye", head: .y, firstChar: "y", bopomofo: "ㄧㄝ")
        fileprivate static let yī = Info(a聲母: .y, a韻母: .i, tone: .一, pinyinWithTone: "yī", pinyinWithoutTone: "yi", head: .y, firstChar: "y", bopomofo: "ㄧ")
        fileprivate static let yí = Info(a聲母: .y, a韻母: .i, tone: .二, pinyinWithTone: "yí", pinyinWithoutTone: "yi", head: .y, firstChar: "y", bopomofo: "ㄧ")
        fileprivate static let yǐ = Info(a聲母: .y, a韻母: .i, tone: .三, pinyinWithTone: "yǐ", pinyinWithoutTone: "yi", head: .y, firstChar: "y", bopomofo: "ㄧ")
        fileprivate static let yì = Info(a聲母: .y, a韻母: .i, tone: .四, pinyinWithTone: "yì", pinyinWithoutTone: "yi", head: .y, firstChar: "y", bopomofo: "ㄧ")
        fileprivate static let yi = Info(a聲母: .y, a韻母: .i, tone: .輕聲, pinyinWithTone: "yi", pinyinWithoutTone: "yi", head: .y, firstChar: "y", bopomofo: "ㄧ")
        fileprivate static let yīn = Info(a聲母: .y, a韻母: .in, tone: .一, pinyinWithTone: "yīn", pinyinWithoutTone: "yin", head: .y, firstChar: "y", bopomofo: "ㄧㄣ")
        fileprivate static let yín = Info(a聲母: .y, a韻母: .in, tone: .二, pinyinWithTone: "yín", pinyinWithoutTone: "yin", head: .y, firstChar: "y", bopomofo: "ㄧㄣ")
        fileprivate static let yǐn = Info(a聲母: .y, a韻母: .in, tone: .三, pinyinWithTone: "yǐn", pinyinWithoutTone: "yin", head: .y, firstChar: "y", bopomofo: "ㄧㄣ")
        fileprivate static let yìn = Info(a聲母: .y, a韻母: .in, tone: .四, pinyinWithTone: "yìn", pinyinWithoutTone: "yin", head: .y, firstChar: "y", bopomofo: "ㄧㄣ")
        fileprivate static let yīng = Info(a聲母: .y, a韻母: .ing, tone: .一, pinyinWithTone: "yīng", pinyinWithoutTone: "ying", head: .y, firstChar: "y", bopomofo: "ㄧㄥ")
        fileprivate static let yíng = Info(a聲母: .y, a韻母: .ing, tone: .二, pinyinWithTone: "yíng", pinyinWithoutTone: "ying", head: .y, firstChar: "y", bopomofo: "ㄧㄥ")
        fileprivate static let yǐng = Info(a聲母: .y, a韻母: .ing, tone: .三, pinyinWithTone: "yǐng", pinyinWithoutTone: "ying", head: .y, firstChar: "y", bopomofo: "ㄧㄥ")
        fileprivate static let yìng = Info(a聲母: .y, a韻母: .ing, tone: .四, pinyinWithTone: "yìng", pinyinWithoutTone: "ying", head: .y, firstChar: "y", bopomofo: "ㄧㄥ")
        fileprivate static let yō = Info(a聲母: .y, a韻母: .o, tone: .一, pinyinWithTone: "yō", pinyinWithoutTone: "yo", head: .y, firstChar: "y", bopomofo: "ㄧㄛ")
        fileprivate static let yo = Info(a聲母: .y, a韻母: .o, tone: .輕聲, pinyinWithTone: "yo", pinyinWithoutTone: "yo", head: .y, firstChar: "y", bopomofo: "ㄧㄛ")
        fileprivate static let yōng = Info(a聲母: .y, a韻母: .ong, tone: .一, pinyinWithTone: "yōng", pinyinWithoutTone: "yong", head: .y, firstChar: "y", bopomofo: "ㄧㄨㄥ")
        fileprivate static let yóng = Info(a聲母: .y, a韻母: .ong, tone: .二, pinyinWithTone: "yóng", pinyinWithoutTone: "yong", head: .y, firstChar: "y", bopomofo: "ㄧㄨㄥ")
        fileprivate static let yǒng = Info(a聲母: .y, a韻母: .ong, tone: .三, pinyinWithTone: "yǒng", pinyinWithoutTone: "yong", head: .y, firstChar: "y", bopomofo: "ㄧㄨㄥ")
        fileprivate static let yòng = Info(a聲母: .y, a韻母: .ong, tone: .四, pinyinWithTone: "yòng", pinyinWithoutTone: "yong", head: .y, firstChar: "y", bopomofo: "ㄧㄨㄥ")
        fileprivate static let yōu = Info(a聲母: .y, a韻母: .ou, tone: .一, pinyinWithTone: "yōu", pinyinWithoutTone: "you", head: .y, firstChar: "y", bopomofo: "ㄧㄡ")
        fileprivate static let yóu = Info(a聲母: .y, a韻母: .ou, tone: .二, pinyinWithTone: "yóu", pinyinWithoutTone: "you", head: .y, firstChar: "y", bopomofo: "ㄧㄡ")
        fileprivate static let yǒu = Info(a聲母: .y, a韻母: .ou, tone: .三, pinyinWithTone: "yǒu", pinyinWithoutTone: "you", head: .y, firstChar: "y", bopomofo: "ㄧㄡ")
        fileprivate static let yòu = Info(a聲母: .y, a韻母: .ou, tone: .四, pinyinWithTone: "yòu", pinyinWithoutTone: "you", head: .y, firstChar: "y", bopomofo: "ㄧㄡ")
        fileprivate static let yū = Info(a聲母: .y, a韻母: .u, tone: .一, pinyinWithTone: "yū", pinyinWithoutTone: "yu", head: .y, firstChar: "y", bopomofo: "ㄩ")
        fileprivate static let yú = Info(a聲母: .y, a韻母: .u, tone: .二, pinyinWithTone: "yú", pinyinWithoutTone: "yu", head: .y, firstChar: "y", bopomofo: "ㄩ")
        fileprivate static let yǔ = Info(a聲母: .y, a韻母: .u, tone: .三, pinyinWithTone: "yǔ", pinyinWithoutTone: "yu", head: .y, firstChar: "y", bopomofo: "ㄩ")
        fileprivate static let yù = Info(a聲母: .y, a韻母: .u, tone: .四, pinyinWithTone: "yù", pinyinWithoutTone: "yu", head: .y, firstChar: "y", bopomofo: "ㄩ")
        fileprivate static let yuān = Info(a聲母: .y, a韻母: .uan, tone: .一, pinyinWithTone: "yuān", pinyinWithoutTone: "yuan", head: .y, firstChar: "y", bopomofo: "ㄩㄢ")
        fileprivate static let yuán = Info(a聲母: .y, a韻母: .uan, tone: .二, pinyinWithTone: "yuán", pinyinWithoutTone: "yuan", head: .y, firstChar: "y", bopomofo: "ㄩㄢ")
        fileprivate static let yuǎn = Info(a聲母: .y, a韻母: .uan, tone: .三, pinyinWithTone: "yuǎn", pinyinWithoutTone: "yuan", head: .y, firstChar: "y", bopomofo: "ㄩㄢ")
        fileprivate static let yuàn = Info(a聲母: .y, a韻母: .uan, tone: .四, pinyinWithTone: "yuàn", pinyinWithoutTone: "yuan", head: .y, firstChar: "y", bopomofo: "ㄩㄢ")
        fileprivate static let yuē = Info(a聲母: .y, a韻母: .ue, tone: .一, pinyinWithTone: "yuē", pinyinWithoutTone: "yue", head: .y, firstChar: "y", bopomofo: "ㄩㄝ")
        fileprivate static let yuě = Info(a聲母: .y, a韻母: .ue, tone: .三, pinyinWithTone: "yuě", pinyinWithoutTone: "yue", head: .y, firstChar: "y", bopomofo: "ㄩㄝ")
        fileprivate static let yuè = Info(a聲母: .y, a韻母: .ue, tone: .四, pinyinWithTone: "yuè", pinyinWithoutTone: "yue", head: .y, firstChar: "y", bopomofo: "ㄩㄝ")
        fileprivate static let yūn = Info(a聲母: .y, a韻母: .un, tone: .一, pinyinWithTone: "yūn", pinyinWithoutTone: "yun", head: .y, firstChar: "y", bopomofo: "ㄩㄣ")
        fileprivate static let yún = Info(a聲母: .y, a韻母: .un, tone: .二, pinyinWithTone: "yún", pinyinWithoutTone: "yun", head: .y, firstChar: "y", bopomofo: "ㄩㄣ")
        fileprivate static let yǔn = Info(a聲母: .y, a韻母: .un, tone: .三, pinyinWithTone: "yǔn", pinyinWithoutTone: "yun", head: .y, firstChar: "y", bopomofo: "ㄩㄣ")
        fileprivate static let yùn = Info(a聲母: .y, a韻母: .un, tone: .四, pinyinWithTone: "yùn", pinyinWithoutTone: "yun", head: .y, firstChar: "y", bopomofo: "ㄩㄣ")
        fileprivate static let zā = Info(a聲母: .z, a韻母: .a, tone: .一, pinyinWithTone: "zā", pinyinWithoutTone: "za", head: .z, firstChar: "z", bopomofo: "ㄗㄚ")
        fileprivate static let zá = Info(a聲母: .z, a韻母: .a, tone: .二, pinyinWithTone: "zá", pinyinWithoutTone: "za", head: .z, firstChar: "z", bopomofo: "ㄗㄚ")
        fileprivate static let zǎ = Info(a聲母: .z, a韻母: .a, tone: .三, pinyinWithTone: "zǎ", pinyinWithoutTone: "za", head: .z, firstChar: "z", bopomofo: "ㄗㄚ")
        fileprivate static let zāi = Info(a聲母: .z, a韻母: .ai, tone: .一, pinyinWithTone: "zāi", pinyinWithoutTone: "zai", head: .z, firstChar: "z", bopomofo: "ㄗㄞ")
        fileprivate static let zǎi = Info(a聲母: .z, a韻母: .ai, tone: .三, pinyinWithTone: "zǎi", pinyinWithoutTone: "zai", head: .z, firstChar: "z", bopomofo: "ㄗㄞ")
        fileprivate static let zài = Info(a聲母: .z, a韻母: .ai, tone: .四, pinyinWithTone: "zài", pinyinWithoutTone: "zai", head: .z, firstChar: "z", bopomofo: "ㄗㄞ")
        fileprivate static let zān = Info(a聲母: .z, a韻母: .an, tone: .一, pinyinWithTone: "zān", pinyinWithoutTone: "zan", head: .z, firstChar: "z", bopomofo: "ㄗㄢ")
        fileprivate static let zán = Info(a聲母: .z, a韻母: .an, tone: .二, pinyinWithTone: "zán", pinyinWithoutTone: "zan", head: .z, firstChar: "z", bopomofo: "ㄗㄢ")
        fileprivate static let zǎn = Info(a聲母: .z, a韻母: .an, tone: .三, pinyinWithTone: "zǎn", pinyinWithoutTone: "zan", head: .z, firstChar: "z", bopomofo: "ㄗㄢ")
        fileprivate static let zàn = Info(a聲母: .z, a韻母: .an, tone: .四, pinyinWithTone: "zàn", pinyinWithoutTone: "zan", head: .z, firstChar: "z", bopomofo: "ㄗㄢ")
        fileprivate static let zāng = Info(a聲母: .z, a韻母: .ang, tone: .一, pinyinWithTone: "zāng", pinyinWithoutTone: "zang", head: .z, firstChar: "z", bopomofo: "ㄗㄤ")
        fileprivate static let záng = Info(a聲母: .z, a韻母: .ang, tone: .二, pinyinWithTone: "záng", pinyinWithoutTone: "zang", head: .z, firstChar: "z", bopomofo: "ㄗㄤ")
        fileprivate static let zǎng = Info(a聲母: .z, a韻母: .ang, tone: .三, pinyinWithTone: "zǎng", pinyinWithoutTone: "zang", head: .z, firstChar: "z", bopomofo: "ㄗㄤ")
        fileprivate static let zàng = Info(a聲母: .z, a韻母: .ang, tone: .四, pinyinWithTone: "zàng", pinyinWithoutTone: "zang", head: .z, firstChar: "z", bopomofo: "ㄗㄤ")
        fileprivate static let zāo = Info(a聲母: .z, a韻母: .ao, tone: .一, pinyinWithTone: "zāo", pinyinWithoutTone: "zao", head: .z, firstChar: "z", bopomofo: "ㄗㄠ")
        fileprivate static let záo = Info(a聲母: .z, a韻母: .ao, tone: .二, pinyinWithTone: "záo", pinyinWithoutTone: "zao", head: .z, firstChar: "z", bopomofo: "ㄗㄠ")
        fileprivate static let zǎo = Info(a聲母: .z, a韻母: .ao, tone: .三, pinyinWithTone: "zǎo", pinyinWithoutTone: "zao", head: .z, firstChar: "z", bopomofo: "ㄗㄠ")
        fileprivate static let zào = Info(a聲母: .z, a韻母: .ao, tone: .四, pinyinWithTone: "zào", pinyinWithoutTone: "zao", head: .z, firstChar: "z", bopomofo: "ㄗㄠ")
        fileprivate static let zé = Info(a聲母: .z, a韻母: .e, tone: .二, pinyinWithTone: "zé", pinyinWithoutTone: "ze", head: .z, firstChar: "z", bopomofo: "ㄗㄜ")
        fileprivate static let zè = Info(a聲母: .z, a韻母: .e, tone: .四, pinyinWithTone: "zè", pinyinWithoutTone: "ze", head: .z, firstChar: "z", bopomofo: "ㄗㄜ")
        fileprivate static let zéi = Info(a聲母: .z, a韻母: .ei, tone: .二, pinyinWithTone: "zéi", pinyinWithoutTone: "zei", head: .z, firstChar: "z", bopomofo: "ㄗㄟ")
        fileprivate static let zēn = Info(a聲母: .z, a韻母: .en, tone: .一, pinyinWithTone: "zēn", pinyinWithoutTone: "zen", head: .z, firstChar: "z", bopomofo: "ㄗㄣ")
        fileprivate static let zěn = Info(a聲母: .z, a韻母: .en, tone: .三, pinyinWithTone: "zěn", pinyinWithoutTone: "zen", head: .z, firstChar: "z", bopomofo: "ㄗㄣ")
        fileprivate static let zèn = Info(a聲母: .z, a韻母: .en, tone: .四, pinyinWithTone: "zèn", pinyinWithoutTone: "zen", head: .z, firstChar: "z", bopomofo: "ㄗㄣ")
        fileprivate static let zēng = Info(a聲母: .z, a韻母: .eng, tone: .一, pinyinWithTone: "zēng", pinyinWithoutTone: "zeng", head: .z, firstChar: "z", bopomofo: "ㄗㄥ")
        fileprivate static let zèng = Info(a聲母: .z, a韻母: .eng, tone: .四, pinyinWithTone: "zèng", pinyinWithoutTone: "zeng", head: .z, firstChar: "z", bopomofo: "ㄗㄥ")
        fileprivate static let zhā = Info(a聲母: .zh, a韻母: .a, tone: .一, pinyinWithTone: "zhā", pinyinWithoutTone: "zha", head: .zh, firstChar: "z", bopomofo: "ㄓㄚ")
        fileprivate static let zhá = Info(a聲母: .zh, a韻母: .a, tone: .二, pinyinWithTone: "zhá", pinyinWithoutTone: "zha", head: .zh, firstChar: "z", bopomofo: "ㄓㄚ")
        fileprivate static let zhǎ = Info(a聲母: .zh, a韻母: .a, tone: .三, pinyinWithTone: "zhǎ", pinyinWithoutTone: "zha", head: .zh, firstChar: "z", bopomofo: "ㄓㄚ")
        fileprivate static let zhà = Info(a聲母: .zh, a韻母: .a, tone: .四, pinyinWithTone: "zhà", pinyinWithoutTone: "zha", head: .zh, firstChar: "z", bopomofo: "ㄓㄚ")
        fileprivate static let zhāi = Info(a聲母: .zh, a韻母: .ai, tone: .一, pinyinWithTone: "zhāi", pinyinWithoutTone: "zhai", head: .zh, firstChar: "z", bopomofo: "ㄓㄞ")
        fileprivate static let zhái = Info(a聲母: .zh, a韻母: .ai, tone: .二, pinyinWithTone: "zhái", pinyinWithoutTone: "zhai", head: .zh, firstChar: "z", bopomofo: "ㄓㄞ")
        fileprivate static let zhǎi = Info(a聲母: .zh, a韻母: .ai, tone: .三, pinyinWithTone: "zhǎi", pinyinWithoutTone: "zhai", head: .zh, firstChar: "z", bopomofo: "ㄓㄞ")
        fileprivate static let zhài = Info(a聲母: .zh, a韻母: .ai, tone: .四, pinyinWithTone: "zhài", pinyinWithoutTone: "zhai", head: .zh, firstChar: "z", bopomofo: "ㄓㄞ")
        fileprivate static let zhān = Info(a聲母: .zh, a韻母: .an, tone: .一, pinyinWithTone: "zhān", pinyinWithoutTone: "zhan", head: .zh, firstChar: "z", bopomofo: "ㄓㄢ")
        fileprivate static let zhán = Info(a聲母: .zh, a韻母: .an, tone: .二, pinyinWithTone: "zhán", pinyinWithoutTone: "zhan", head: .zh, firstChar: "z", bopomofo: "ㄓㄢ")
        fileprivate static let zhǎn = Info(a聲母: .zh, a韻母: .an, tone: .三, pinyinWithTone: "zhǎn", pinyinWithoutTone: "zhan", head: .zh, firstChar: "z", bopomofo: "ㄓㄢ")
        fileprivate static let zhàn = Info(a聲母: .zh, a韻母: .an, tone: .四, pinyinWithTone: "zhàn", pinyinWithoutTone: "zhan", head: .zh, firstChar: "z", bopomofo: "ㄓㄢ")
        fileprivate static let zhāng = Info(a聲母: .zh, a韻母: .ang, tone: .一, pinyinWithTone: "zhāng", pinyinWithoutTone: "zhang", head: .zh, firstChar: "z", bopomofo: "ㄓㄤ")
        fileprivate static let zhǎng = Info(a聲母: .zh, a韻母: .ang, tone: .三, pinyinWithTone: "zhǎng", pinyinWithoutTone: "zhang", head: .zh, firstChar: "z", bopomofo: "ㄓㄤ")
        fileprivate static let zhàng = Info(a聲母: .zh, a韻母: .ang, tone: .四, pinyinWithTone: "zhàng", pinyinWithoutTone: "zhang", head: .zh, firstChar: "z", bopomofo: "ㄓㄤ")
        fileprivate static let zhāo = Info(a聲母: .zh, a韻母: .ao, tone: .一, pinyinWithTone: "zhāo", pinyinWithoutTone: "zhao", head: .zh, firstChar: "z", bopomofo: "ㄓㄠ")
        fileprivate static let zháo = Info(a聲母: .zh, a韻母: .ao, tone: .二, pinyinWithTone: "zháo", pinyinWithoutTone: "zhao", head: .zh, firstChar: "z", bopomofo: "ㄓㄠ")
        fileprivate static let zhǎo = Info(a聲母: .zh, a韻母: .ao, tone: .三, pinyinWithTone: "zhǎo", pinyinWithoutTone: "zhao", head: .zh, firstChar: "z", bopomofo: "ㄓㄠ")
        fileprivate static let zhào = Info(a聲母: .zh, a韻母: .ao, tone: .四, pinyinWithTone: "zhào", pinyinWithoutTone: "zhao", head: .zh, firstChar: "z", bopomofo: "ㄓㄠ")
        fileprivate static let zhē = Info(a聲母: .zh, a韻母: .e, tone: .一, pinyinWithTone: "zhē", pinyinWithoutTone: "zhe", head: .zh, firstChar: "z", bopomofo: "ㄓㄜ")
        fileprivate static let zhé = Info(a聲母: .zh, a韻母: .e, tone: .二, pinyinWithTone: "zhé", pinyinWithoutTone: "zhe", head: .zh, firstChar: "z", bopomofo: "ㄓㄜ")
        fileprivate static let zhě = Info(a聲母: .zh, a韻母: .e, tone: .三, pinyinWithTone: "zhě", pinyinWithoutTone: "zhe", head: .zh, firstChar: "z", bopomofo: "ㄓㄜ")
        fileprivate static let zhè = Info(a聲母: .zh, a韻母: .e, tone: .四, pinyinWithTone: "zhè", pinyinWithoutTone: "zhe", head: .zh, firstChar: "z", bopomofo: "ㄓㄜ")
        fileprivate static let zhe = Info(a聲母: .zh, a韻母: .e, tone: .輕聲, pinyinWithTone: "zhe", pinyinWithoutTone: "zhe", head: .zh, firstChar: "z", bopomofo: "ㄓㄜ")
        fileprivate static let zhèi = Info(a聲母: .zh, a韻母: .ei, tone: .四, pinyinWithTone: "zhèi", pinyinWithoutTone: "zhei", head: .zh, firstChar: "z", bopomofo: "ㄓㄟ")
        fileprivate static let zhēn = Info(a聲母: .zh, a韻母: .en, tone: .一, pinyinWithTone: "zhēn", pinyinWithoutTone: "zhen", head: .zh, firstChar: "z", bopomofo: "ㄓㄣ")
        fileprivate static let zhěn = Info(a聲母: .zh, a韻母: .en, tone: .三, pinyinWithTone: "zhěn", pinyinWithoutTone: "zhen", head: .zh, firstChar: "z", bopomofo: "ㄓㄣ")
        fileprivate static let zhèn = Info(a聲母: .zh, a韻母: .en, tone: .四, pinyinWithTone: "zhèn", pinyinWithoutTone: "zhen", head: .zh, firstChar: "z", bopomofo: "ㄓㄣ")
        fileprivate static let zhēng = Info(a聲母: .zh, a韻母: .eng, tone: .一, pinyinWithTone: "zhēng", pinyinWithoutTone: "zheng", head: .zh, firstChar: "z", bopomofo: "ㄓㄥ")
        fileprivate static let zhěng = Info(a聲母: .zh, a韻母: .eng, tone: .三, pinyinWithTone: "zhěng", pinyinWithoutTone: "zheng", head: .zh, firstChar: "z", bopomofo: "ㄓㄥ")
        fileprivate static let zhèng = Info(a聲母: .zh, a韻母: .eng, tone: .四, pinyinWithTone: "zhèng", pinyinWithoutTone: "zheng", head: .zh, firstChar: "z", bopomofo: "ㄓㄥ")
        fileprivate static let zhī = Info(a聲母: .zh, a韻母: .i, tone: .一, pinyinWithTone: "zhī", pinyinWithoutTone: "zhi", head: .zh, firstChar: "z", bopomofo: "ㄓ")
        fileprivate static let zhí = Info(a聲母: .zh, a韻母: .i, tone: .二, pinyinWithTone: "zhí", pinyinWithoutTone: "zhi", head: .zh, firstChar: "z", bopomofo: "ㄓ")
        fileprivate static let zhǐ = Info(a聲母: .zh, a韻母: .i, tone: .三, pinyinWithTone: "zhǐ", pinyinWithoutTone: "zhi", head: .zh, firstChar: "z", bopomofo: "ㄓ")
        fileprivate static let zhì = Info(a聲母: .zh, a韻母: .i, tone: .四, pinyinWithTone: "zhì", pinyinWithoutTone: "zhi", head: .zh, firstChar: "z", bopomofo: "ㄓ")
        fileprivate static let zhōng = Info(a聲母: .zh, a韻母: .ong, tone: .一, pinyinWithTone: "zhōng", pinyinWithoutTone: "zhong", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄥ")
        fileprivate static let zhǒng = Info(a聲母: .zh, a韻母: .ong, tone: .三, pinyinWithTone: "zhǒng", pinyinWithoutTone: "zhong", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄥ")
        fileprivate static let zhòng = Info(a聲母: .zh, a韻母: .ong, tone: .四, pinyinWithTone: "zhòng", pinyinWithoutTone: "zhong", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄥ")
        fileprivate static let zhōu = Info(a聲母: .zh, a韻母: .ou, tone: .一, pinyinWithTone: "zhōu", pinyinWithoutTone: "zhou", head: .zh, firstChar: "z", bopomofo: "ㄓㄡ")
        fileprivate static let zhóu = Info(a聲母: .zh, a韻母: .ou, tone: .二, pinyinWithTone: "zhóu", pinyinWithoutTone: "zhou", head: .zh, firstChar: "z", bopomofo: "ㄓㄡ")
        fileprivate static let zhǒu = Info(a聲母: .zh, a韻母: .ou, tone: .三, pinyinWithTone: "zhǒu", pinyinWithoutTone: "zhou", head: .zh, firstChar: "z", bopomofo: "ㄓㄡ")
        fileprivate static let zhòu = Info(a聲母: .zh, a韻母: .ou, tone: .四, pinyinWithTone: "zhòu", pinyinWithoutTone: "zhou", head: .zh, firstChar: "z", bopomofo: "ㄓㄡ")
        fileprivate static let zhū = Info(a聲母: .zh, a韻母: .u, tone: .一, pinyinWithTone: "zhū", pinyinWithoutTone: "zhu", head: .zh, firstChar: "z", bopomofo: "ㄓㄨ")
        fileprivate static let zhú = Info(a聲母: .zh, a韻母: .u, tone: .二, pinyinWithTone: "zhú", pinyinWithoutTone: "zhu", head: .zh, firstChar: "z", bopomofo: "ㄓㄨ")
        fileprivate static let zhǔ = Info(a聲母: .zh, a韻母: .u, tone: .三, pinyinWithTone: "zhǔ", pinyinWithoutTone: "zhu", head: .zh, firstChar: "z", bopomofo: "ㄓㄨ")
        fileprivate static let zhù = Info(a聲母: .zh, a韻母: .u, tone: .四, pinyinWithTone: "zhù", pinyinWithoutTone: "zhu", head: .zh, firstChar: "z", bopomofo: "ㄓㄨ")
        fileprivate static let zhuā = Info(a聲母: .zh, a韻母: .ua, tone: .一, pinyinWithTone: "zhuā", pinyinWithoutTone: "zhua", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄚ")
        fileprivate static let zhuǎ = Info(a聲母: .zh, a韻母: .ua, tone: .三, pinyinWithTone: "zhuǎ", pinyinWithoutTone: "zhua", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄚ")
        fileprivate static let zhuāi = Info(a聲母: .zh, a韻母: .uai, tone: .一, pinyinWithTone: "zhuāi", pinyinWithoutTone: "zhuai", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄞ")
        fileprivate static let zhuǎi = Info(a聲母: .zh, a韻母: .uai, tone: .三, pinyinWithTone: "zhuǎi", pinyinWithoutTone: "zhuai", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄞ")
        fileprivate static let zhuài = Info(a聲母: .zh, a韻母: .uai, tone: .四, pinyinWithTone: "zhuài", pinyinWithoutTone: "zhuai", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄞ")
        fileprivate static let zhuān = Info(a聲母: .zh, a韻母: .uan, tone: .一, pinyinWithTone: "zhuān", pinyinWithoutTone: "zhuan", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄢ")
        fileprivate static let zhuǎn = Info(a聲母: .zh, a韻母: .uan, tone: .三, pinyinWithTone: "zhuǎn", pinyinWithoutTone: "zhuan", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄢ")
        fileprivate static let zhuàn = Info(a聲母: .zh, a韻母: .uan, tone: .四, pinyinWithTone: "zhuàn", pinyinWithoutTone: "zhuan", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄢ")
        fileprivate static let zhuāng = Info(a聲母: .zh, a韻母: .uang, tone: .一, pinyinWithTone: "zhuāng", pinyinWithoutTone: "zhuang", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄤ")
        fileprivate static let zhuǎng = Info(a聲母: .zh, a韻母: .uang, tone: .三, pinyinWithTone: "zhuǎng", pinyinWithoutTone: "zhuang", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄤ")
        fileprivate static let zhuàng = Info(a聲母: .zh, a韻母: .uang, tone: .四, pinyinWithTone: "zhuàng", pinyinWithoutTone: "zhuang", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄤ")
        fileprivate static let zhuī = Info(a聲母: .zh, a韻母: .ui, tone: .一, pinyinWithTone: "zhuī", pinyinWithoutTone: "zhui", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄟ")
        fileprivate static let zhuǐ = Info(a聲母: .zh, a韻母: .ui, tone: .三, pinyinWithTone: "zhuǐ", pinyinWithoutTone: "zhui", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄟ")
        fileprivate static let zhuì = Info(a聲母: .zh, a韻母: .ui, tone: .四, pinyinWithTone: "zhuì", pinyinWithoutTone: "zhui", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄟ")
        fileprivate static let zhūn = Info(a聲母: .zh, a韻母: .un, tone: .一, pinyinWithTone: "zhūn", pinyinWithoutTone: "zhun", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄣ")
        fileprivate static let zhǔn = Info(a聲母: .zh, a韻母: .un, tone: .三, pinyinWithTone: "zhǔn", pinyinWithoutTone: "zhun", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄣ")
        fileprivate static let zhùn = Info(a聲母: .zh, a韻母: .un, tone: .四, pinyinWithTone: "zhùn", pinyinWithoutTone: "zhun", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄣ")
        fileprivate static let zhuō = Info(a聲母: .zh, a韻母: .uo, tone: .一, pinyinWithTone: "zhuō", pinyinWithoutTone: "zhuo", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄛ")
        fileprivate static let zhuó = Info(a聲母: .zh, a韻母: .uo, tone: .二, pinyinWithTone: "zhuó", pinyinWithoutTone: "zhuo", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄛ")
        fileprivate static let zhuǒ = Info(a聲母: .zh, a韻母: .uo, tone: .三, pinyinWithTone: "zhuǒ", pinyinWithoutTone: "zhuo", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄛ")
        fileprivate static let zhuò = Info(a聲母: .zh, a韻母: .uo, tone: .四, pinyinWithTone: "zhuò", pinyinWithoutTone: "zhuo", head: .zh, firstChar: "z", bopomofo: "ㄓㄨㄛ")
        fileprivate static let zī = Info(a聲母: .z, a韻母: .i, tone: .一, pinyinWithTone: "zī", pinyinWithoutTone: "zi", head: .z, firstChar: "z", bopomofo: "ㄗ")
        fileprivate static let zí = Info(a聲母: .z, a韻母: .i, tone: .二, pinyinWithTone: "zí", pinyinWithoutTone: "zi", head: .z, firstChar: "z", bopomofo: "ㄗ")
        fileprivate static let zǐ = Info(a聲母: .z, a韻母: .i, tone: .三, pinyinWithTone: "zǐ", pinyinWithoutTone: "zi", head: .z, firstChar: "z", bopomofo: "ㄗ")
        fileprivate static let zì = Info(a聲母: .z, a韻母: .i, tone: .四, pinyinWithTone: "zì", pinyinWithoutTone: "zi", head: .z, firstChar: "z", bopomofo: "ㄗ")
        fileprivate static let zi = Info(a聲母: .z, a韻母: .i, tone: .輕聲, pinyinWithTone: "zi", pinyinWithoutTone: "zi", head: .z, firstChar: "z", bopomofo: "ㄗ")
        fileprivate static let zōng = Info(a聲母: .z, a韻母: .ong, tone: .一, pinyinWithTone: "zōng", pinyinWithoutTone: "zong", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄥ")
        fileprivate static let zǒng = Info(a聲母: .z, a韻母: .ong, tone: .三, pinyinWithTone: "zǒng", pinyinWithoutTone: "zong", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄥ")
        fileprivate static let zòng = Info(a聲母: .z, a韻母: .ong, tone: .四, pinyinWithTone: "zòng", pinyinWithoutTone: "zong", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄥ")
        fileprivate static let zōu = Info(a聲母: .z, a韻母: .ou, tone: .一, pinyinWithTone: "zōu", pinyinWithoutTone: "zou", head: .z, firstChar: "z", bopomofo: "ㄗㄡ")
        fileprivate static let zǒu = Info(a聲母: .z, a韻母: .ou, tone: .三, pinyinWithTone: "zǒu", pinyinWithoutTone: "zou", head: .z, firstChar: "z", bopomofo: "ㄗㄡ")
        fileprivate static let zòu = Info(a聲母: .z, a韻母: .ou, tone: .四, pinyinWithTone: "zòu", pinyinWithoutTone: "zou", head: .z, firstChar: "z", bopomofo: "ㄗㄡ")
        fileprivate static let zū = Info(a聲母: .z, a韻母: .u, tone: .一, pinyinWithTone: "zū", pinyinWithoutTone: "zu", head: .z, firstChar: "z", bopomofo: "ㄗㄨ")
        fileprivate static let zú = Info(a聲母: .z, a韻母: .u, tone: .二, pinyinWithTone: "zú", pinyinWithoutTone: "zu", head: .z, firstChar: "z", bopomofo: "ㄗㄨ")
        fileprivate static let zǔ = Info(a聲母: .z, a韻母: .u, tone: .三, pinyinWithTone: "zǔ", pinyinWithoutTone: "zu", head: .z, firstChar: "z", bopomofo: "ㄗㄨ")
        fileprivate static let zù = Info(a聲母: .z, a韻母: .u, tone: .四, pinyinWithTone: "zù", pinyinWithoutTone: "zu", head: .z, firstChar: "z", bopomofo: "ㄗㄨ")
        fileprivate static let zuān = Info(a聲母: .z, a韻母: .uan, tone: .一, pinyinWithTone: "zuān", pinyinWithoutTone: "zuan", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄢ")
        fileprivate static let zuǎn = Info(a聲母: .z, a韻母: .uan, tone: .三, pinyinWithTone: "zuǎn", pinyinWithoutTone: "zuan", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄢ")
        fileprivate static let zuàn = Info(a聲母: .z, a韻母: .uan, tone: .四, pinyinWithTone: "zuàn", pinyinWithoutTone: "zuan", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄢ")
        fileprivate static let zuī = Info(a聲母: .z, a韻母: .ui, tone: .一, pinyinWithTone: "zuī", pinyinWithoutTone: "zui", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄟ")
        fileprivate static let zuǐ = Info(a聲母: .z, a韻母: .ui, tone: .三, pinyinWithTone: "zuǐ", pinyinWithoutTone: "zui", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄟ")
        fileprivate static let zuì = Info(a聲母: .z, a韻母: .ui, tone: .四, pinyinWithTone: "zuì", pinyinWithoutTone: "zui", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄟ")
        fileprivate static let zūn = Info(a聲母: .z, a韻母: .un, tone: .一, pinyinWithTone: "zūn", pinyinWithoutTone: "zun", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄣ")
        fileprivate static let zǔn = Info(a聲母: .z, a韻母: .un, tone: .三, pinyinWithTone: "zǔn", pinyinWithoutTone: "zun", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄣ")
        fileprivate static let zùn = Info(a聲母: .z, a韻母: .un, tone: .四, pinyinWithTone: "zùn", pinyinWithoutTone: "zun", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄣ")
        fileprivate static let zuō = Info(a聲母: .z, a韻母: .uo, tone: .一, pinyinWithTone: "zuō", pinyinWithoutTone: "zuo", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄛ")
        fileprivate static let zuó = Info(a聲母: .z, a韻母: .uo, tone: .二, pinyinWithTone: "zuó", pinyinWithoutTone: "zuo", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄛ")
        fileprivate static let zuǒ = Info(a聲母: .z, a韻母: .uo, tone: .三, pinyinWithTone: "zuǒ", pinyinWithoutTone: "zuo", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄛ")
        fileprivate static let zuò = Info(a聲母: .z, a韻母: .uo, tone: .四, pinyinWithTone: "zuò", pinyinWithoutTone: "zuo", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄛ")
        fileprivate static let zuo = Info(a聲母: .z, a韻母: .uo, tone: .輕聲, pinyinWithTone: "zuo", pinyinWithoutTone: "zuo", head: .z, firstChar: "z", bopomofo: "ㄗㄨㄛ")
        fileprivate static let none = Info(a聲母: .none, a韻母: .none, tone: .輕聲, pinyinWithTone: "none", pinyinWithoutTone: "none", head: .none, firstChar: " ", bopomofo: "")
    }
    
    public var info: Info {
        switch self {
        case .ā:
            return .ā
        case .á:
            return .á
        case .ǎ:
            return .ǎ
        case .à:
            return .à
        case .a:
            return .a
        case .āi:
            return .āi
        case .ái:
            return .ái
        case .ǎi:
            return .ǎi
        case .ài:
            return .ài
        case .ān:
            return .ān
        case .án:
            return .án
        case .ǎn:
            return .ǎn
        case .àn:
            return .àn
        case .āng:
            return .āng
        case .áng:
            return .áng
        case .ǎng:
            return .ǎng
        case .àng:
            return .àng
        case .āo:
            return .āo
        case .áo:
            return .áo
        case .ǎo:
            return .ǎo
        case .ào:
            return .ào
        case .bā:
            return .bā
        case .bá:
            return .bá
        case .bǎ:
            return .bǎ
        case .bà:
            return .bà
        case .ba:
            return .ba
        case .bāi:
            return .bāi
        case .bái:
            return .bái
        case .bǎi:
            return .bǎi
        case .bài:
            return .bài
        case .bān:
            return .bān
        case .bǎn:
            return .bǎn
        case .bàn:
            return .bàn
        case .bāng:
            return .bāng
        case .bǎng:
            return .bǎng
        case .bàng:
            return .bàng
        case .bāo:
            return .bāo
        case .báo:
            return .báo
        case .bǎo:
            return .bǎo
        case .bào:
            return .bào
        case .bēi:
            return .bēi
        case .běi:
            return .běi
        case .bèi:
            return .bèi
        case .bei:
            return .bei
        case .bēn:
            return .bēn
        case .běn:
            return .běn
        case .bèn:
            return .bèn
        case .bēng:
            return .bēng
        case .béng:
            return .béng
        case .běng:
            return .běng
        case .bèng:
            return .bèng
        case .bī:
            return .bī
        case .bí:
            return .bí
        case .bǐ:
            return .bǐ
        case .bì:
            return .bì
        case .biān:
            return .biān
        case .biǎn:
            return .biǎn
        case .biàn:
            return .biàn
        case .bian:
            return .bian
        case .biāo:
            return .biāo
        case .biáo:
            return .biáo
        case .biǎo:
            return .biǎo
        case .biào:
            return .biào
        case .biē:
            return .biē
        case .bié:
            return .bié
        case .biě:
            return .biě
        case .biè:
            return .biè
        case .bīn:
            return .bīn
        case .bǐn:
            return .bǐn
        case .bìn:
            return .bìn
        case .bīng:
            return .bīng
        case .bǐng:
            return .bǐng
        case .bìng:
            return .bìng
        case .bō:
            return .bō
        case .bó:
            return .bó
        case .bǒ:
            return .bǒ
        case .bò:
            return .bò
        case .bo:
            return .bo
        case .bū:
            return .bū
        case .bú:
            return .bú
        case .bǔ:
            return .bǔ
        case .bù:
            return .bù
        case .cā:
            return .cā
        case .cǎ:
            return .cǎ
        case .cà:
            return .cà
        case .cāi:
            return .cāi
        case .cái:
            return .cái
        case .cǎi:
            return .cǎi
        case .cài:
            return .cài
        case .cān:
            return .cān
        case .cán:
            return .cán
        case .cǎn:
            return .cǎn
        case .càn:
            return .càn
        case .cāng:
            return .cāng
        case .cáng:
            return .cáng
        case .cǎng:
            return .cǎng
        case .càng:
            return .càng
        case .cāo:
            return .cāo
        case .cáo:
            return .cáo
        case .cǎo:
            return .cǎo
        case .cào:
            return .cào
        case .cè:
            return .cè
        case .cēn:
            return .cēn
        case .cén:
            return .cén
        case .cēng:
            return .cēng
        case .céng:
            return .céng
        case .cèng:
            return .cèng
        case .chā:
            return .chā
        case .chá:
            return .chá
        case .chǎ:
            return .chǎ
        case .chà:
            return .chà
        case .cha:
            return .cha
        case .chāi:
            return .chāi
        case .chái:
            return .chái
        case .chǎi:
            return .chǎi
        case .chài:
            return .chài
        case .chān:
            return .chān
        case .chán:
            return .chán
        case .chǎn:
            return .chǎn
        case .chàn:
            return .chàn
        case .chāng:
            return .chāng
        case .cháng:
            return .cháng
        case .chǎng:
            return .chǎng
        case .chàng:
            return .chàng
        case .chang:
            return .chang
        case .chāo:
            return .chāo
        case .cháo:
            return .cháo
        case .chǎo:
            return .chǎo
        case .chào:
            return .chào
        case .chē:
            return .chē
        case .chě:
            return .chě
        case .chè:
            return .chè
        case .chēn:
            return .chēn
        case .chén:
            return .chén
        case .chěn:
            return .chěn
        case .chèn:
            return .chèn
        case .chen:
            return .chen
        case .chēng:
            return .chēng
        case .chéng:
            return .chéng
        case .chěng:
            return .chěng
        case .chèng:
            return .chèng
        case .chī:
            return .chī
        case .chí:
            return .chí
        case .chǐ:
            return .chǐ
        case .chì:
            return .chì
        case .chi:
            return .chi
        case .chōng:
            return .chōng
        case .chóng:
            return .chóng
        case .chǒng:
            return .chǒng
        case .chòng:
            return .chòng
        case .chōu:
            return .chōu
        case .chóu:
            return .chóu
        case .chǒu:
            return .chǒu
        case .chòu:
            return .chòu
        case .chou:
            return .chou
        case .chū:
            return .chū
        case .chú:
            return .chú
        case .chǔ:
            return .chǔ
        case .chù:
            return .chù
        case .chu:
            return .chu
        case .chuā:
            return .chuā
        case .chuāi:
            return .chuāi
        case .chuái:
            return .chuái
        case .chuǎi:
            return .chuǎi
        case .chuài:
            return .chuài
        case .chuān:
            return .chuān
        case .chuán:
            return .chuán
        case .chuǎn:
            return .chuǎn
        case .chuàn:
            return .chuàn
        case .chuāng:
            return .chuāng
        case .chuáng:
            return .chuáng
        case .chuǎng:
            return .chuǎng
        case .chuàng:
            return .chuàng
        case .chuī:
            return .chuī
        case .chuí:
            return .chuí
        case .chuì:
            return .chuì
        case .chūn:
            return .chūn
        case .chún:
            return .chún
        case .chǔn:
            return .chǔn
        case .chuō:
            return .chuō
        case .chuó:
            return .chuó
        case .chuò:
            return .chuò
        case .chuo:
            return .chuo
        case .cī:
            return .cī
        case .cí:
            return .cí
        case .cǐ:
            return .cǐ
        case .cì:
            return .cì
        case .cōng:
            return .cōng
        case .cóng:
            return .cóng
        case .còng:
            return .còng
        case .cǒu:
            return .cǒu
        case .còu:
            return .còu
        case .cū:
            return .cū
        case .cú:
            return .cú
        case .cǔ:
            return .cǔ
        case .cù:
            return .cù
        case .cuān:
            return .cuān
        case .cuán:
            return .cuán
        case .cuàn:
            return .cuàn
        case .cuī:
            return .cuī
        case .cuí:
            return .cuí
        case .cuǐ:
            return .cuǐ
        case .cuì:
            return .cuì
        case .cūn:
            return .cūn
        case .cún:
            return .cún
        case .cǔn:
            return .cǔn
        case .cùn:
            return .cùn
        case .cuō:
            return .cuō
        case .cuó:
            return .cuó
        case .cuǒ:
            return .cuǒ
        case .cuò:
            return .cuò
        case .dā:
            return .dā
        case .dá:
            return .dá
        case .dǎ:
            return .dǎ
        case .dà:
            return .dà
        case .da:
            return .da
        case .dāi:
            return .dāi
        case .dǎi:
            return .dǎi
        case .dài:
            return .dài
        case .dān:
            return .dān
        case .dán:
            return .dán
        case .dǎn:
            return .dǎn
        case .dàn:
            return .dàn
        case .dāng:
            return .dāng
        case .dǎng:
            return .dǎng
        case .dàng:
            return .dàng
        case .dāo:
            return .dāo
        case .dáo:
            return .dáo
        case .dǎo:
            return .dǎo
        case .dào:
            return .dào
        case .dē:
            return .dē
        case .dé:
            return .dé
        case .de:
            return .de
        case .dēi:
            return .dēi
        case .děi:
            return .děi
        case .dēn:
            return .dēn
        case .dèn:
            return .dèn
        case .dēng:
            return .dēng
        case .děng:
            return .děng
        case .dèng:
            return .dèng
        case .dī:
            return .dī
        case .dí:
            return .dí
        case .dǐ:
            return .dǐ
        case .dì:
            return .dì
        case .diǎ:
            return .diǎ
        case .diān:
            return .diān
        case .diǎn:
            return .diǎn
        case .diàn:
            return .diàn
        case .diāo:
            return .diāo
        case .diǎo:
            return .diǎo
        case .diào:
            return .diào
        case .diē:
            return .diē
        case .dié:
            return .dié
        case .diè:
            return .diè
        case .dīng:
            return .dīng
        case .díng:
            return .díng
        case .dǐng:
            return .dǐng
        case .dìng:
            return .dìng
        case .diū:
            return .diū
        case .dōng:
            return .dōng
        case .dǒng:
            return .dǒng
        case .dòng:
            return .dòng
        case .dōu:
            return .dōu
        case .dóu:
            return .dóu
        case .dǒu:
            return .dǒu
        case .dòu:
            return .dòu
        case .dū:
            return .dū
        case .dú:
            return .dú
        case .dǔ:
            return .dǔ
        case .dù:
            return .dù
        case .duān:
            return .duān
        case .duǎn:
            return .duǎn
        case .duàn:
            return .duàn
        case .duī:
            return .duī
        case .duǐ:
            return .duǐ
        case .duì:
            return .duì
        case .dūn:
            return .dūn
        case .dún:
            return .dún
        case .dǔn:
            return .dǔn
        case .dùn:
            return .dùn
        case .duō:
            return .duō
        case .duó:
            return .duó
        case .duǒ:
            return .duǒ
        case .duò:
            return .duò
        case .duo:
            return .duo
        case .ē:
            return .ē
        case .é:
            return .é
        case .ě:
            return .ě
        case .è:
            return .è
        case .ēi:
            return .ēi
        case .éi:
            return .éi
        case .ěi:
            return .ěi
        case .èi:
            return .èi
        case .ēn:
            return .ēn
        case .ěn:
            return .ěn
        case .èn:
            return .èn
        case .ēng:
            return .ēng
        case .ér:
            return .ér
        case .ěr:
            return .ěr
        case .èr:
            return .èr
        case .er:
            return .er
        case .fā:
            return .fā
        case .fá:
            return .fá
        case .fǎ:
            return .fǎ
        case .fà:
            return .fà
        case .fān:
            return .fān
        case .fán:
            return .fán
        case .fǎn:
            return .fǎn
        case .fàn:
            return .fàn
        case .fāng:
            return .fāng
        case .fáng:
            return .fáng
        case .fǎng:
            return .fǎng
        case .fàng:
            return .fàng
        case .fang:
            return .fang
        case .fēi:
            return .fēi
        case .féi:
            return .féi
        case .fěi:
            return .fěi
        case .fèi:
            return .fèi
        case .fēn:
            return .fēn
        case .fén:
            return .fén
        case .fěn:
            return .fěn
        case .fèn:
            return .fèn
        case .fēng:
            return .fēng
        case .féng:
            return .féng
        case .fěng:
            return .fěng
        case .fèng:
            return .fèng
        case .fiào:
            return .fiào
        case .fó:
            return .fó
        case .fōu:
            return .fōu
        case .fóu:
            return .fóu
        case .fǒu:
            return .fǒu
        case .fòu:
            return .fòu
        case .fū:
            return .fū
        case .fú:
            return .fú
        case .fǔ:
            return .fǔ
        case .fù:
            return .fù
        case .fu:
            return .fu
        case .gā:
            return .gā
        case .gá:
            return .gá
        case .gǎ:
            return .gǎ
        case .gà:
            return .gà
        case .gāi:
            return .gāi
        case .gǎi:
            return .gǎi
        case .gài:
            return .gài
        case .gān:
            return .gān
        case .gán:
            return .gán
        case .gǎn:
            return .gǎn
        case .gàn:
            return .gàn
        case .gāng:
            return .gāng
        case .gǎng:
            return .gǎng
        case .gàng:
            return .gàng
        case .gāo:
            return .gāo
        case .gǎo:
            return .gǎo
        case .gào:
            return .gào
        case .gē:
            return .gē
        case .gé:
            return .gé
        case .gě:
            return .gě
        case .gè:
            return .gè
        case .gěi:
            return .gěi
        case .gēn:
            return .gēn
        case .gén:
            return .gén
        case .gěn:
            return .gěn
        case .gèn:
            return .gèn
        case .gēng:
            return .gēng
        case .gěng:
            return .gěng
        case .gèng:
            return .gèng
        case .gōng:
            return .gōng
        case .gǒng:
            return .gǒng
        case .gòng:
            return .gòng
        case .gōu:
            return .gōu
        case .gǒu:
            return .gǒu
        case .gòu:
            return .gòu
        case .gū:
            return .gū
        case .gú:
            return .gú
        case .gǔ:
            return .gǔ
        case .gù:
            return .gù
        case .guā:
            return .guā
        case .guǎ:
            return .guǎ
        case .guà:
            return .guà
        case .guāi:
            return .guāi
        case .guái:
            return .guái
        case .guǎi:
            return .guǎi
        case .guài:
            return .guài
        case .guān:
            return .guān
        case .guǎn:
            return .guǎn
        case .guàn:
            return .guàn
        case .guāng:
            return .guāng
        case .guǎng:
            return .guǎng
        case .guàng:
            return .guàng
        case .guī:
            return .guī
        case .guí:
            return .guí
        case .guǐ:
            return .guǐ
        case .guì:
            return .guì
        case .gūn:
            return .gūn
        case .gǔn:
            return .gǔn
        case .gùn:
            return .gùn
        case .guō:
            return .guō
        case .guó:
            return .guó
        case .guǒ:
            return .guǒ
        case .guò:
            return .guò
        case .guo:
            return .guo
        case .hā:
            return .hā
        case .há:
            return .há
        case .hǎ:
            return .hǎ
        case .hà:
            return .hà
        case .hāi:
            return .hāi
        case .hái:
            return .hái
        case .hǎi:
            return .hǎi
        case .hài:
            return .hài
        case .hān:
            return .hān
        case .hán:
            return .hán
        case .hǎn:
            return .hǎn
        case .hàn:
            return .hàn
        case .han:
            return .han
        case .hāng:
            return .hāng
        case .háng:
            return .háng
        case .hǎng:
            return .hǎng
        case .hàng:
            return .hàng
        case .hāo:
            return .hāo
        case .háo:
            return .háo
        case .hǎo:
            return .hǎo
        case .hào:
            return .hào
        case .hē:
            return .hē
        case .hé:
            return .hé
        case .hè:
            return .hè
        case .hēi:
            return .hēi
        case .hēn:
            return .hēn
        case .hén:
            return .hén
        case .hěn:
            return .hěn
        case .hèn:
            return .hèn
        case .hēng:
            return .hēng
        case .héng:
            return .héng
        case .hèng:
            return .hèng
        case .hōng:
            return .hōng
        case .hóng:
            return .hóng
        case .hǒng:
            return .hǒng
        case .hòng:
            return .hòng
        case .hōu:
            return .hōu
        case .hóu:
            return .hóu
        case .hǒu:
            return .hǒu
        case .hòu:
            return .hòu
        case .hū:
            return .hū
        case .hú:
            return .hú
        case .hǔ:
            return .hǔ
        case .hù:
            return .hù
        case .huā:
            return .huā
        case .huá:
            return .huá
        case .huǎ:
            return .huǎ
        case .huà:
            return .huà
        case .huāi:
            return .huāi
        case .huái:
            return .huái
        case .huài:
            return .huài
        case .huān:
            return .huān
        case .huán:
            return .huán
        case .huǎn:
            return .huǎn
        case .huàn:
            return .huàn
        case .huāng:
            return .huāng
        case .huáng:
            return .huáng
        case .huǎng:
            return .huǎng
        case .huàng:
            return .huàng
        case .huī:
            return .huī
        case .huí:
            return .huí
        case .huǐ:
            return .huǐ
        case .huì:
            return .huì
        case .hūn:
            return .hūn
        case .hún:
            return .hún
        case .hǔn:
            return .hǔn
        case .hùn:
            return .hùn
        case .huō:
            return .huō
        case .huó:
            return .huó
        case .huǒ:
            return .huǒ
        case .huò:
            return .huò
        case .huo:
            return .huo
        case .jà:
            return .jà
        case .jī:
            return .jī
        case .jí:
            return .jí
        case .jǐ:
            return .jǐ
        case .jì:
            return .jì
        case .ji:
            return .ji
        case .jiā:
            return .jiā
        case .jiá:
            return .jiá
        case .jiǎ:
            return .jiǎ
        case .jià:
            return .jià
        case .jia:
            return .jia
        case .jiān:
            return .jiān
        case .jiǎn:
            return .jiǎn
        case .jiàn:
            return .jiàn
        case .jiāng:
            return .jiāng
        case .jiǎng:
            return .jiǎng
        case .jiàng:
            return .jiàng
        case .jiāo:
            return .jiāo
        case .jiáo:
            return .jiáo
        case .jiǎo:
            return .jiǎo
        case .jiào:
            return .jiào
        case .jiē:
            return .jiē
        case .jié:
            return .jié
        case .jiě:
            return .jiě
        case .jiè:
            return .jiè
        case .jie:
            return .jie
        case .jīn:
            return .jīn
        case .jǐn:
            return .jǐn
        case .jìn:
            return .jìn
        case .jīng:
            return .jīng
        case .jǐng:
            return .jǐng
        case .jìng:
            return .jìng
        case .jiōng:
            return .jiōng
        case .jiǒng:
            return .jiǒng
        case .jiòng:
            return .jiòng
        case .jiū:
            return .jiū
        case .jiǔ:
            return .jiǔ
        case .jiù:
            return .jiù
        case .jū:
            return .jū
        case .jú:
            return .jú
        case .jǔ:
            return .jǔ
        case .jù:
            return .jù
        case .ju:
            return .ju
        case .juān:
            return .juān
        case .juán:
            return .juán
        case .juǎn:
            return .juǎn
        case .juàn:
            return .juàn
        case .juē:
            return .juē
        case .jué:
            return .jué
        case .juě:
            return .juě
        case .juè:
            return .juè
        case .jūn:
            return .jūn
        case .jǔn:
            return .jǔn
        case .jùn:
            return .jùn
        case .kā:
            return .kā
        case .kǎ:
            return .kǎ
        case .kà:
            return .kà
        case .kāi:
            return .kāi
        case .kǎi:
            return .kǎi
        case .kài:
            return .kài
        case .kān:
            return .kān
        case .kǎn:
            return .kǎn
        case .kàn:
            return .kàn
        case .kāng:
            return .kāng
        case .káng:
            return .káng
        case .kǎng:
            return .kǎng
        case .kàng:
            return .kàng
        case .kāo:
            return .kāo
        case .káo:
            return .káo
        case .kǎo:
            return .kǎo
        case .kào:
            return .kào
        case .kē:
            return .kē
        case .ké:
            return .ké
        case .kě:
            return .kě
        case .kè:
            return .kè
        case .ke:
            return .ke
        case .kēi:
            return .kēi
        case .kěn:
            return .kěn
        case .kèn:
            return .kèn
        case .kēng:
            return .kēng
        case .kěng:
            return .kěng
        case .kōng:
            return .kōng
        case .kǒng:
            return .kǒng
        case .kòng:
            return .kòng
        case .kōu:
            return .kōu
        case .kǒu:
            return .kǒu
        case .kòu:
            return .kòu
        case .kū:
            return .kū
        case .kǔ:
            return .kǔ
        case .kù:
            return .kù
        case .kuā:
            return .kuā
        case .kuǎ:
            return .kuǎ
        case .kuà:
            return .kuà
        case .kuāi:
            return .kuāi
        case .kuǎi:
            return .kuǎi
        case .kuài:
            return .kuài
        case .kuān:
            return .kuān
        case .kuǎn:
            return .kuǎn
        case .kuāng:
            return .kuāng
        case .kuáng:
            return .kuáng
        case .kuǎng:
            return .kuǎng
        case .kuàng:
            return .kuàng
        case .kuī:
            return .kuī
        case .kuí:
            return .kuí
        case .kuǐ:
            return .kuǐ
        case .kuì:
            return .kuì
        case .kūn:
            return .kūn
        case .kǔn:
            return .kǔn
        case .kùn:
            return .kùn
        case .kuǒ:
            return .kuǒ
        case .kuò:
            return .kuò
        case .lā:
            return .lā
        case .lá:
            return .lá
        case .lǎ:
            return .lǎ
        case .là:
            return .là
        case .la:
            return .la
        case .lái:
            return .lái
        case .lǎi:
            return .lǎi
        case .lài:
            return .lài
        case .lán:
            return .lán
        case .lǎn:
            return .lǎn
        case .làn:
            return .làn
        case .lan:
            return .lan
        case .lāng:
            return .lāng
        case .láng:
            return .láng
        case .lǎng:
            return .lǎng
        case .làng:
            return .làng
        case .lāo:
            return .lāo
        case .láo:
            return .láo
        case .lǎo:
            return .lǎo
        case .lào:
            return .lào
        case .lē:
            return .lē
        case .lè:
            return .lè
        case .le:
            return .le
        case .lēi:
            return .lēi
        case .léi:
            return .léi
        case .lěi:
            return .lěi
        case .lèi:
            return .lèi
        case .lei:
            return .lei
        case .lēng:
            return .lēng
        case .léng:
            return .léng
        case .lěng:
            return .lěng
        case .lèng:
            return .lèng
        case .lī:
            return .lī
        case .lí:
            return .lí
        case .lǐ:
            return .lǐ
        case .lì:
            return .lì
        case .li:
            return .li
        case .liǎ:
            return .liǎ
        case .liān:
            return .liān
        case .lián:
            return .lián
        case .liǎn:
            return .liǎn
        case .liàn:
            return .liàn
        case .liáng:
            return .liáng
        case .liǎng:
            return .liǎng
        case .liàng:
            return .liàng
        case .liang:
            return .liang
        case .liāo:
            return .liāo
        case .liáo:
            return .liáo
        case .liǎo:
            return .liǎo
        case .liào:
            return .liào
        case .liē:
            return .liē
        case .lié:
            return .lié
        case .liě:
            return .liě
        case .liè:
            return .liè
        case .lie:
            return .lie
        case .līn:
            return .līn
        case .lín:
            return .lín
        case .lǐn:
            return .lǐn
        case .lìn:
            return .lìn
        case .līng:
            return .līng
        case .líng:
            return .líng
        case .lǐng:
            return .lǐng
        case .lìng:
            return .lìng
        case .liū:
            return .liū
        case .liú:
            return .liú
        case .liǔ:
            return .liǔ
        case .liù:
            return .liù
        case .lo:
            return .lo
        case .lōng:
            return .lōng
        case .lóng:
            return .lóng
        case .lǒng:
            return .lǒng
        case .lòng:
            return .lòng
        case .lōu:
            return .lōu
        case .lóu:
            return .lóu
        case .lǒu:
            return .lǒu
        case .lòu:
            return .lòu
        case .lou:
            return .lou
        case .lū:
            return .lū
        case .lú:
            return .lú
        case .lǔ:
            return .lǔ
        case .lù:
            return .lù
        case .lu:
            return .lu
        case .luán:
            return .luán
        case .luǎn:
            return .luǎn
        case .luàn:
            return .luàn
        case .lūn:
            return .lūn
        case .lún:
            return .lún
        case .lǔn:
            return .lǔn
        case .lùn:
            return .lùn
        case .luō:
            return .luō
        case .luó:
            return .luó
        case .luǒ:
            return .luǒ
        case .luò:
            return .luò
        case .luo:
            return .luo
        case .lǘ:
            return .lǘ
        case .lǚ:
            return .lǚ
        case .lǜ:
            return .lǜ
        case .lüě:
            return .lüě
        case .lüè:
            return .lüè
        case .mā:
            return .mā
        case .má:
            return .má
        case .mǎ:
            return .mǎ
        case .mà:
            return .mà
        case .ma:
            return .ma
        case .mái:
            return .mái
        case .mǎi:
            return .mǎi
        case .mài:
            return .mài
        case .mān:
            return .mān
        case .mán:
            return .mán
        case .mǎn:
            return .mǎn
        case .màn:
            return .màn
        case .māng:
            return .māng
        case .máng:
            return .máng
        case .mǎng:
            return .mǎng
        case .māo:
            return .māo
        case .máo:
            return .máo
        case .mǎo:
            return .mǎo
        case .mào:
            return .mào
        case .mē:
            return .mē
        case .mè:
            return .mè
        case .me:
            return .me
        case .méi:
            return .méi
        case .měi:
            return .měi
        case .mèi:
            return .mèi
        case .mēn:
            return .mēn
        case .mén:
            return .mén
        case .měn:
            return .měn
        case .mèn:
            return .mèn
        case .men:
            return .men
        case .mēng:
            return .mēng
        case .méng:
            return .méng
        case .měng:
            return .měng
        case .mèng:
            return .mèng
        case .mī:
            return .mī
        case .mí:
            return .mí
        case .mǐ:
            return .mǐ
        case .mì:
            return .mì
        case .mián:
            return .mián
        case .miǎn:
            return .miǎn
        case .miàn:
            return .miàn
        case .miāo:
            return .miāo
        case .miáo:
            return .miáo
        case .miǎo:
            return .miǎo
        case .miào:
            return .miào
        case .miē:
            return .miē
        case .miè:
            return .miè
        case .mín:
            return .mín
        case .mǐn:
            return .mǐn
        case .míng:
            return .míng
        case .mǐng:
            return .mǐng
        case .mìng:
            return .mìng
        case .miù:
            return .miù
        case .mō:
            return .mō
        case .mó:
            return .mó
        case .mǒ:
            return .mǒ
        case .mò:
            return .mò
        case .mo:
            return .mo
        case .mōu:
            return .mōu
        case .móu:
            return .móu
        case .mǒu:
            return .mǒu
        case .mòu:
            return .mòu
        case .mú:
            return .mú
        case .mǔ:
            return .mǔ
        case .mù:
            return .mù
        case .nā:
            return .nā
        case .ná:
            return .ná
        case .nǎ:
            return .nǎ
        case .nà:
            return .nà
        case .na:
            return .na
        case .nái:
            return .nái
        case .nǎi:
            return .nǎi
        case .nài:
            return .nài
        case .nān:
            return .nān
        case .nán:
            return .nán
        case .nǎn:
            return .nǎn
        case .nàn:
            return .nàn
        case .nāng:
            return .nāng
        case .náng:
            return .náng
        case .nǎng:
            return .nǎng
        case .nàng:
            return .nàng
        case .nāo:
            return .nāo
        case .náo:
            return .náo
        case .nǎo:
            return .nǎo
        case .nào:
            return .nào
        case .né:
            return .né
        case .nè:
            return .nè
        case .ne:
            return .ne
        case .něi:
            return .něi
        case .nèi:
            return .nèi
        case .nēn:
            return .nēn
        case .něn:
            return .něn
        case .nèn:
            return .nèn
        case .néng:
            return .néng
        case .něng:
            return .něng
        case .nī:
            return .nī
        case .ní:
            return .ní
        case .nǐ:
            return .nǐ
        case .nì:
            return .nì
        case .niān:
            return .niān
        case .nián:
            return .nián
        case .niǎn:
            return .niǎn
        case .niàn:
            return .niàn
        case .niáng:
            return .niáng
        case .niàng:
            return .niàng
        case .niǎo:
            return .niǎo
        case .niào:
            return .niào
        case .niē:
            return .niē
        case .nié:
            return .nié
        case .niě:
            return .niě
        case .niè:
            return .niè
        case .nín:
            return .nín
        case .nǐn:
            return .nǐn
        case .níng:
            return .níng
        case .nǐng:
            return .nǐng
        case .nìng:
            return .nìng
        case .niū:
            return .niū
        case .niú:
            return .niú
        case .niǔ:
            return .niǔ
        case .niù:
            return .niù
        case .nóng:
            return .nóng
        case .nǒng:
            return .nǒng
        case .nòng:
            return .nòng
        case .nóu:
            return .nóu
        case .nòu:
            return .nòu
        case .nú:
            return .nú
        case .nǔ:
            return .nǔ
        case .nù:
            return .nù
        case .nuán:
            return .nuán
        case .nuǎn:
            return .nuǎn
        case .nuàn:
            return .nuàn
        case .nún:
            return .nún
        case .nùn:
            return .nùn
        case .nuó:
            return .nuó
        case .nuǒ:
            return .nuǒ
        case .nuò:
            return .nuò
        case .nǚ:
            return .nǚ
        case .nǜ:
            return .nǜ
        case .nüè:
            return .nüè
        case .ō:
            return .ō
        case .ó:
            return .ó
        case .ǒ:
            return .ǒ
        case .ò:
            return .ò
        case .o:
            return .o
        case .ōu:
            return .ōu
        case .óu:
            return .óu
        case .ǒu:
            return .ǒu
        case .òu:
            return .òu
        case .ou:
            return .ou
        case .pā:
            return .pā
        case .pá:
            return .pá
        case .pà:
            return .pà
        case .pāi:
            return .pāi
        case .pái:
            return .pái
        case .pǎi:
            return .pǎi
        case .pài:
            return .pài
        case .pān:
            return .pān
        case .pán:
            return .pán
        case .pǎn:
            return .pǎn
        case .pàn:
            return .pàn
        case .pāng:
            return .pāng
        case .páng:
            return .páng
        case .pǎng:
            return .pǎng
        case .pàng:
            return .pàng
        case .pang:
            return .pang
        case .pāo:
            return .pāo
        case .páo:
            return .páo
        case .pǎo:
            return .pǎo
        case .pào:
            return .pào
        case .pēi:
            return .pēi
        case .péi:
            return .péi
        case .pěi:
            return .pěi
        case .pèi:
            return .pèi
        case .pēn:
            return .pēn
        case .pén:
            return .pén
        case .pěn:
            return .pěn
        case .pèn:
            return .pèn
        case .pen:
            return .pen
        case .pēng:
            return .pēng
        case .péng:
            return .péng
        case .pěng:
            return .pěng
        case .pèng:
            return .pèng
        case .pī:
            return .pī
        case .pí:
            return .pí
        case .pǐ:
            return .pǐ
        case .pì:
            return .pì
        case .pi:
            return .pi
        case .piān:
            return .piān
        case .pián:
            return .pián
        case .piǎn:
            return .piǎn
        case .piàn:
            return .piàn
        case .piāo:
            return .piāo
        case .piáo:
            return .piáo
        case .piǎo:
            return .piǎo
        case .piào:
            return .piào
        case .piē:
            return .piē
        case .piě:
            return .piě
        case .piè:
            return .piè
        case .pīn:
            return .pīn
        case .pín:
            return .pín
        case .pǐn:
            return .pǐn
        case .pìn:
            return .pìn
        case .pīng:
            return .pīng
        case .píng:
            return .píng
        case .pǐng:
            return .pǐng
        case .pìng:
            return .pìng
        case .pō:
            return .pō
        case .pó:
            return .pó
        case .pǒ:
            return .pǒ
        case .pò:
            return .pò
        case .po:
            return .po
        case .pōu:
            return .pōu
        case .póu:
            return .póu
        case .pǒu:
            return .pǒu
        case .pòu:
            return .pòu
        case .pū:
            return .pū
        case .pú:
            return .pú
        case .pǔ:
            return .pǔ
        case .pù:
            return .pù
        case .qī:
            return .qī
        case .qí:
            return .qí
        case .qǐ:
            return .qǐ
        case .qì:
            return .qì
        case .qi:
            return .qi
        case .qiā:
            return .qiā
        case .qiǎ:
            return .qiǎ
        case .qià:
            return .qià
        case .qiān:
            return .qiān
        case .qián:
            return .qián
        case .qiǎn:
            return .qiǎn
        case .qiàn:
            return .qiàn
        case .qian:
            return .qian
        case .qiāng:
            return .qiāng
        case .qiáng:
            return .qiáng
        case .qiǎng:
            return .qiǎng
        case .qiàng:
            return .qiàng
        case .qiāo:
            return .qiāo
        case .qiáo:
            return .qiáo
        case .qiǎo:
            return .qiǎo
        case .qiào:
            return .qiào
        case .qiē:
            return .qiē
        case .qié:
            return .qié
        case .qiě:
            return .qiě
        case .qiè:
            return .qiè
        case .qīn:
            return .qīn
        case .qín:
            return .qín
        case .qǐn:
            return .qǐn
        case .qìn:
            return .qìn
        case .qīng:
            return .qīng
        case .qíng:
            return .qíng
        case .qǐng:
            return .qǐng
        case .qìng:
            return .qìng
        case .qiōng:
            return .qiōng
        case .qióng:
            return .qióng
        case .qiǒng:
            return .qiǒng
        case .qiū:
            return .qiū
        case .qiú:
            return .qiú
        case .qiǔ:
            return .qiǔ
        case .qiù:
            return .qiù
        case .qū:
            return .qū
        case .qú:
            return .qú
        case .qǔ:
            return .qǔ
        case .qù:
            return .qù
        case .quān:
            return .quān
        case .quán:
            return .quán
        case .quǎn:
            return .quǎn
        case .quàn:
            return .quàn
        case .quē:
            return .quē
        case .qué:
            return .qué
        case .què:
            return .què
        case .qūn:
            return .qūn
        case .qún:
            return .qún
        case .qǔn:
            return .qǔn
        case .rán:
            return .rán
        case .rǎn:
            return .rǎn
        case .rāng:
            return .rāng
        case .ráng:
            return .ráng
        case .rǎng:
            return .rǎng
        case .ràng:
            return .ràng
        case .ráo:
            return .ráo
        case .rǎo:
            return .rǎo
        case .rào:
            return .rào
        case .ré:
            return .ré
        case .rě:
            return .rě
        case .rè:
            return .rè
        case .rén:
            return .rén
        case .rěn:
            return .rěn
        case .rèn:
            return .rèn
        case .rēng:
            return .rēng
        case .réng:
            return .réng
        case .rèng:
            return .rèng
        case .rì:
            return .rì
        case .róng:
            return .róng
        case .rǒng:
            return .rǒng
        case .ròng:
            return .ròng
        case .róu:
            return .róu
        case .rǒu:
            return .rǒu
        case .ròu:
            return .ròu
        case .rū:
            return .rū
        case .rú:
            return .rú
        case .rǔ:
            return .rǔ
        case .rù:
            return .rù
        case .ruán:
            return .ruán
        case .ruǎn:
            return .ruǎn
        case .ruàn:
            return .ruàn
        case .ruí:
            return .ruí
        case .ruǐ:
            return .ruǐ
        case .ruì:
            return .ruì
        case .rún:
            return .rún
        case .rùn:
            return .rùn
        case .ruó:
            return .ruó
        case .ruò:
            return .ruò
        case .sā:
            return .sā
        case .sǎ:
            return .sǎ
        case .sà:
            return .sà
        case .sāi:
            return .sāi
        case .sǎi:
            return .sǎi
        case .sài:
            return .sài
        case .sai:
            return .sai
        case .sān:
            return .sān
        case .sǎn:
            return .sǎn
        case .sàn:
            return .sàn
        case .san:
            return .san
        case .sāng:
            return .sāng
        case .sǎng:
            return .sǎng
        case .sàng:
            return .sàng
        case .sang:
            return .sang
        case .sāo:
            return .sāo
        case .sǎo:
            return .sǎo
        case .sào:
            return .sào
        case .sē:
            return .sē
        case .sè:
            return .sè
        case .sēn:
            return .sēn
        case .sěn:
            return .sěn
        case .sēng:
            return .sēng
        case .shā:
            return .shā
        case .shá:
            return .shá
        case .shǎ:
            return .shǎ
        case .shà:
            return .shà
        case .shāi:
            return .shāi
        case .shǎi:
            return .shǎi
        case .shài:
            return .shài
        case .shān:
            return .shān
        case .shán:
            return .shán
        case .shǎn:
            return .shǎn
        case .shàn:
            return .shàn
        case .shāng:
            return .shāng
        case .sháng:
            return .sháng
        case .shǎng:
            return .shǎng
        case .shàng:
            return .shàng
        case .shang:
            return .shang
        case .shāo:
            return .shāo
        case .sháo:
            return .sháo
        case .shǎo:
            return .shǎo
        case .shào:
            return .shào
        case .shē:
            return .shē
        case .shé:
            return .shé
        case .shě:
            return .shě
        case .shè:
            return .shè
        case .shéi:
            return .shéi
        case .shēn:
            return .shēn
        case .shén:
            return .shén
        case .shěn:
            return .shěn
        case .shèn:
            return .shèn
        case .shēng:
            return .shēng
        case .shéng:
            return .shéng
        case .shěng:
            return .shěng
        case .shèng:
            return .shèng
        case .shī:
            return .shī
        case .shí:
            return .shí
        case .shǐ:
            return .shǐ
        case .shì:
            return .shì
        case .shi:
            return .shi
        case .shōu:
            return .shōu
        case .shóu:
            return .shóu
        case .shǒu:
            return .shǒu
        case .shòu:
            return .shòu
        case .shū:
            return .shū
        case .shú:
            return .shú
        case .shǔ:
            return .shǔ
        case .shù:
            return .shù
        case .shuā:
            return .shuā
        case .shuǎ:
            return .shuǎ
        case .shuà:
            return .shuà
        case .shuāi:
            return .shuāi
        case .shuǎi:
            return .shuǎi
        case .shuài:
            return .shuài
        case .shuān:
            return .shuān
        case .shuàn:
            return .shuàn
        case .shuāng:
            return .shuāng
        case .shuǎng:
            return .shuǎng
        case .shuàng:
            return .shuàng
        case .shuí:
            return .shuí
        case .shuǐ:
            return .shuǐ
        case .shuì:
            return .shuì
        case .shūn:
            return .shūn
        case .shǔn:
            return .shǔn
        case .shùn:
            return .shùn
        case .shuō:
            return .shuō
        case .shuó:
            return .shuó
        case .shuò:
            return .shuò
        case .sī:
            return .sī
        case .sǐ:
            return .sǐ
        case .sì:
            return .sì
        case .sōng:
            return .sōng
        case .sǒng:
            return .sǒng
        case .sòng:
            return .sòng
        case .sōu:
            return .sōu
        case .sǒu:
            return .sǒu
        case .sòu:
            return .sòu
        case .sū:
            return .sū
        case .sú:
            return .sú
        case .sù:
            return .sù
        case .suān:
            return .suān
        case .suǎn:
            return .suǎn
        case .suàn:
            return .suàn
        case .suī:
            return .suī
        case .suí:
            return .suí
        case .suǐ:
            return .suǐ
        case .suì:
            return .suì
        case .sūn:
            return .sūn
        case .sǔn:
            return .sǔn
        case .sùn:
            return .sùn
        case .suō:
            return .suō
        case .suǒ:
            return .suǒ
        case .suò:
            return .suò
        case .tā:
            return .tā
        case .tǎ:
            return .tǎ
        case .tà:
            return .tà
        case .ta:
            return .ta
        case .tāi:
            return .tāi
        case .tái:
            return .tái
        case .tǎi:
            return .tǎi
        case .tài:
            return .tài
        case .tān:
            return .tān
        case .tán:
            return .tán
        case .tǎn:
            return .tǎn
        case .tàn:
            return .tàn
        case .tāng:
            return .tāng
        case .táng:
            return .táng
        case .tǎng:
            return .tǎng
        case .tàng:
            return .tàng
        case .tāo:
            return .tāo
        case .táo:
            return .táo
        case .tǎo:
            return .tǎo
        case .tào:
            return .tào
        case .tè:
            return .tè
        case .tēng:
            return .tēng
        case .téng:
            return .téng
        case .tèng:
            return .tèng
        case .tī:
            return .tī
        case .tí:
            return .tí
        case .tǐ:
            return .tǐ
        case .tì:
            return .tì
        case .tiān:
            return .tiān
        case .tián:
            return .tián
        case .tiǎn:
            return .tiǎn
        case .tiàn:
            return .tiàn
        case .tian:
            return .tian
        case .tiāo:
            return .tiāo
        case .tiáo:
            return .tiáo
        case .tiǎo:
            return .tiǎo
        case .tiào:
            return .tiào
        case .tiē:
            return .tiē
        case .tié:
            return .tié
        case .tiě:
            return .tiě
        case .tiè:
            return .tiè
        case .tīng:
            return .tīng
        case .tíng:
            return .tíng
        case .tǐng:
            return .tǐng
        case .tìng:
            return .tìng
        case .tōng:
            return .tōng
        case .tóng:
            return .tóng
        case .tǒng:
            return .tǒng
        case .tòng:
            return .tòng
        case .tōu:
            return .tōu
        case .tóu:
            return .tóu
        case .tǒu:
            return .tǒu
        case .tòu:
            return .tòu
        case .tou:
            return .tou
        case .tū:
            return .tū
        case .tú:
            return .tú
        case .tǔ:
            return .tǔ
        case .tù:
            return .tù
        case .tu:
            return .tu
        case .tuān:
            return .tuān
        case .tuán:
            return .tuán
        case .tuǎn:
            return .tuǎn
        case .tuàn:
            return .tuàn
        case .tuī:
            return .tuī
        case .tuí:
            return .tuí
        case .tuǐ:
            return .tuǐ
        case .tuì:
            return .tuì
        case .tūn:
            return .tūn
        case .tún:
            return .tún
        case .tǔn:
            return .tǔn
        case .tùn:
            return .tùn
        case .tun:
            return .tun
        case .tuō:
            return .tuō
        case .tuó:
            return .tuó
        case .tuǒ:
            return .tuǒ
        case .tuò:
            return .tuò
        case .wā:
            return .wā
        case .wá:
            return .wá
        case .wǎ:
            return .wǎ
        case .wà:
            return .wà
        case .wa:
            return .wa
        case .wāi:
            return .wāi
        case .wǎi:
            return .wǎi
        case .wài:
            return .wài
        case .wān:
            return .wān
        case .wán:
            return .wán
        case .wǎn:
            return .wǎn
        case .wàn:
            return .wàn
        case .wāng:
            return .wāng
        case .wáng:
            return .wáng
        case .wǎng:
            return .wǎng
        case .wàng:
            return .wàng
        case .wēi:
            return .wēi
        case .wéi:
            return .wéi
        case .wěi:
            return .wěi
        case .wèi:
            return .wèi
        case .wēn:
            return .wēn
        case .wén:
            return .wén
        case .wěn:
            return .wěn
        case .wèn:
            return .wèn
        case .wēng:
            return .wēng
        case .wěng:
            return .wěng
        case .wèng:
            return .wèng
        case .wō:
            return .wō
        case .wǒ:
            return .wǒ
        case .wò:
            return .wò
        case .wū:
            return .wū
        case .wú:
            return .wú
        case .wǔ:
            return .wǔ
        case .wù:
            return .wù
        case .xī:
            return .xī
        case .xí:
            return .xí
        case .xǐ:
            return .xǐ
        case .xì:
            return .xì
        case .xiā:
            return .xiā
        case .xiá:
            return .xiá
        case .xiǎ:
            return .xiǎ
        case .xià:
            return .xià
        case .xiān:
            return .xiān
        case .xián:
            return .xián
        case .xiǎn:
            return .xiǎn
        case .xiàn:
            return .xiàn
        case .xiāng:
            return .xiāng
        case .xiáng:
            return .xiáng
        case .xiǎng:
            return .xiǎng
        case .xiàng:
            return .xiàng
        case .xiāo:
            return .xiāo
        case .xiáo:
            return .xiáo
        case .xiǎo:
            return .xiǎo
        case .xiào:
            return .xiào
        case .xiē:
            return .xiē
        case .xié:
            return .xié
        case .xiě:
            return .xiě
        case .xiè:
            return .xiè
        case .xīn:
            return .xīn
        case .xín:
            return .xín
        case .xǐn:
            return .xǐn
        case .xìn:
            return .xìn
        case .xīng:
            return .xīng
        case .xíng:
            return .xíng
        case .xǐng:
            return .xǐng
        case .xìng:
            return .xìng
        case .xiōng:
            return .xiōng
        case .xióng:
            return .xióng
        case .xiǒng:
            return .xiǒng
        case .xiòng:
            return .xiòng
        case .xiū:
            return .xiū
        case .xiú:
            return .xiú
        case .xiǔ:
            return .xiǔ
        case .xiù:
            return .xiù
        case .xū:
            return .xū
        case .xú:
            return .xú
        case .xǔ:
            return .xǔ
        case .xù:
            return .xù
        case .xu:
            return .xu
        case .xuān:
            return .xuān
        case .xuán:
            return .xuán
        case .xuǎn:
            return .xuǎn
        case .xuàn:
            return .xuàn
        case .xuē:
            return .xuē
        case .xué:
            return .xué
        case .xuě:
            return .xuě
        case .xuè:
            return .xuè
        case .xūn:
            return .xūn
        case .xún:
            return .xún
        case .xùn:
            return .xùn
        case .yā:
            return .yā
        case .yá:
            return .yá
        case .yǎ:
            return .yǎ
        case .yà:
            return .yà
        case .ya:
            return .ya
        case .yái:
            return .yái
        case .yān:
            return .yān
        case .yán:
            return .yán
        case .yǎn:
            return .yǎn
        case .yàn:
            return .yàn
        case .yāng:
            return .yāng
        case .yáng:
            return .yáng
        case .yǎng:
            return .yǎng
        case .yàng:
            return .yàng
        case .yāo:
            return .yāo
        case .yáo:
            return .yáo
        case .yǎo:
            return .yǎo
        case .yào:
            return .yào
        case .yē:
            return .yē
        case .yé:
            return .yé
        case .yě:
            return .yě
        case .yè:
            return .yè
        case .ye:
            return .ye
        case .yī:
            return .yī
        case .yí:
            return .yí
        case .yǐ:
            return .yǐ
        case .yì:
            return .yì
        case .yi:
            return .yi
        case .yīn:
            return .yīn
        case .yín:
            return .yín
        case .yǐn:
            return .yǐn
        case .yìn:
            return .yìn
        case .yīng:
            return .yīng
        case .yíng:
            return .yíng
        case .yǐng:
            return .yǐng
        case .yìng:
            return .yìng
        case .yō:
            return .yō
        case .yo:
            return .yo
        case .yōng:
            return .yōng
        case .yóng:
            return .yóng
        case .yǒng:
            return .yǒng
        case .yòng:
            return .yòng
        case .yōu:
            return .yōu
        case .yóu:
            return .yóu
        case .yǒu:
            return .yǒu
        case .yòu:
            return .yòu
        case .yū:
            return .yū
        case .yú:
            return .yú
        case .yǔ:
            return .yǔ
        case .yù:
            return .yù
        case .yuān:
            return .yuān
        case .yuán:
            return .yuán
        case .yuǎn:
            return .yuǎn
        case .yuàn:
            return .yuàn
        case .yuē:
            return .yuē
        case .yuě:
            return .yuě
        case .yuè:
            return .yuè
        case .yūn:
            return .yūn
        case .yún:
            return .yún
        case .yǔn:
            return .yǔn
        case .yùn:
            return .yùn
        case .zā:
            return .zā
        case .zá:
            return .zá
        case .zǎ:
            return .zǎ
        case .zāi:
            return .zāi
        case .zǎi:
            return .zǎi
        case .zài:
            return .zài
        case .zān:
            return .zān
        case .zán:
            return .zán
        case .zǎn:
            return .zǎn
        case .zàn:
            return .zàn
        case .zāng:
            return .zāng
        case .záng:
            return .záng
        case .zǎng:
            return .zǎng
        case .zàng:
            return .zàng
        case .zāo:
            return .zāo
        case .záo:
            return .záo
        case .zǎo:
            return .zǎo
        case .zào:
            return .zào
        case .zé:
            return .zé
        case .zè:
            return .zè
        case .zéi:
            return .zéi
        case .zēn:
            return .zēn
        case .zěn:
            return .zěn
        case .zèn:
            return .zèn
        case .zēng:
            return .zēng
        case .zèng:
            return .zèng
        case .zhā:
            return .zhā
        case .zhá:
            return .zhá
        case .zhǎ:
            return .zhǎ
        case .zhà:
            return .zhà
        case .zhāi:
            return .zhāi
        case .zhái:
            return .zhái
        case .zhǎi:
            return .zhǎi
        case .zhài:
            return .zhài
        case .zhān:
            return .zhān
        case .zhán:
            return .zhán
        case .zhǎn:
            return .zhǎn
        case .zhàn:
            return .zhàn
        case .zhāng:
            return .zhāng
        case .zhǎng:
            return .zhǎng
        case .zhàng:
            return .zhàng
        case .zhāo:
            return .zhāo
        case .zháo:
            return .zháo
        case .zhǎo:
            return .zhǎo
        case .zhào:
            return .zhào
        case .zhē:
            return .zhē
        case .zhé:
            return .zhé
        case .zhě:
            return .zhě
        case .zhè:
            return .zhè
        case .zhe:
            return .zhe
        case .zhèi:
            return .zhèi
        case .zhēn:
            return .zhēn
        case .zhěn:
            return .zhěn
        case .zhèn:
            return .zhèn
        case .zhēng:
            return .zhēng
        case .zhěng:
            return .zhěng
        case .zhèng:
            return .zhèng
        case .zhī:
            return .zhī
        case .zhí:
            return .zhí
        case .zhǐ:
            return .zhǐ
        case .zhì:
            return .zhì
        case .zhōng:
            return .zhōng
        case .zhǒng:
            return .zhǒng
        case .zhòng:
            return .zhòng
        case .zhōu:
            return .zhōu
        case .zhóu:
            return .zhóu
        case .zhǒu:
            return .zhǒu
        case .zhòu:
            return .zhòu
        case .zhū:
            return .zhū
        case .zhú:
            return .zhú
        case .zhǔ:
            return .zhǔ
        case .zhù:
            return .zhù
        case .zhuā:
            return .zhuā
        case .zhuǎ:
            return .zhuǎ
        case .zhuāi:
            return .zhuāi
        case .zhuǎi:
            return .zhuǎi
        case .zhuài:
            return .zhuài
        case .zhuān:
            return .zhuān
        case .zhuǎn:
            return .zhuǎn
        case .zhuàn:
            return .zhuàn
        case .zhuāng:
            return .zhuāng
        case .zhuǎng:
            return .zhuǎng
        case .zhuàng:
            return .zhuàng
        case .zhuī:
            return .zhuī
        case .zhuǐ:
            return .zhuǐ
        case .zhuì:
            return .zhuì
        case .zhūn:
            return .zhūn
        case .zhǔn:
            return .zhǔn
        case .zhùn:
            return .zhùn
        case .zhuō:
            return .zhuō
        case .zhuó:
            return .zhuó
        case .zhuǒ:
            return .zhuǒ
        case .zhuò:
            return .zhuò
        case .zī:
            return .zī
        case .zí:
            return .zí
        case .zǐ:
            return .zǐ
        case .zì:
            return .zì
        case .zi:
            return .zi
        case .zōng:
            return .zōng
        case .zǒng:
            return .zǒng
        case .zòng:
            return .zòng
        case .zōu:
            return .zōu
        case .zǒu:
            return .zǒu
        case .zòu:
            return .zòu
        case .zū:
            return .zū
        case .zú:
            return .zú
        case .zǔ:
            return .zǔ
        case .zù:
            return .zù
        case .zuān:
            return .zuān
        case .zuǎn:
            return .zuǎn
        case .zuàn:
            return .zuàn
        case .zuī:
            return .zuī
        case .zuǐ:
            return .zuǐ
        case .zuì:
            return .zuì
        case .zūn:
            return .zūn
        case .zǔn:
            return .zǔn
        case .zùn:
            return .zùn
        case .zuō:
            return .zuō
        case .zuó:
            return .zuó
        case .zuǒ:
            return .zuǒ
        case .zuò:
            return .zuò
        case .zuo:
            return .zuo
        case .none:
            return .none
        }
    }
}


