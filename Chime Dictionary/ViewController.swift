//
//  ViewController.swift
//  Chime Dictionary
//
//  Created by Resonance on 17/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

import UIKit
import DnA
import Pinyin
import Canto
import CantoFuzzyDict
import BaseDictionary

class ViewController: UIViewController {
    @IBOutlet private weak var textField: UITextField?
    @IBOutlet private weak var textView: UITextView?
    private var pinyinDictionary: PinyinDictionary?
    private var cantoDictionary: CantoDictionary?
    private var cantoFuzzyDict: FuzzyDictionary?
    private var dictImpl: DictionaryImpl<TempEntry<CantoSyllable>>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        try? testCantoDict()
//        try? testPinyinDict()
        try? testCantoFuzzyDict()
    }
    
    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
        guard let textFieldText = sender.text,
            let cantoDictionary = cantoDictionary else { return }
        
        textView?.text = "\(cantoDictionary.convertToSyllables(from: textFieldText))"
    }
    
    @IBAction func pinyinFieldEditingChanged(_ sender: UITextField) {
        guard let textFieldText = sender.text,
            let pinyinDictionary = pinyinDictionary else { return }
        
        textView?.text = "\(pinyinDictionary.convertToSyllables(from: textFieldText))"
    }
    
    @IBAction func cantoFuzzyFieldEditingChanged(_ sender: UITextField) {
        guard let textFieldText = sender.text,
            let fuzzyDictionary = cantoFuzzyDict else { return }
        
        textView?.text = "\(fuzzyDictionary.convertToSyllables(from: textFieldText))"
    }
    
    private func prepareChinasSource() -> [(String, Pinyin.Syllables)] {
        let path = "/Users/Resonance/Downloads/moedict-data-csld-master/dict-csld.txt"
        let dictionary = StringDictionary(separator: "=")
        do {
            try dictionary.load(path: path)
        } catch {
            debugPrint("failed to read file \(path), \(error)")
            return []
        }
        
        let entrySet = dictionary.entrySet
        var map = [String : Pinyin.Syllables]()
        map.reserveCapacity(entrySet.count)
        
        for entry in entrySet {
            guard let args = entry.value?.components(separatedBy: "<br>陸⃝"), args.count == 2 else { continue }
            let chinas = (roc: args[0], prc: args[1])
            
            do {
                let rocs = try chinas.roc.split(separator: "　").map { bopomofo -> Pinyin.Syllable in
                    guard let syllable = Syllable(bopomofo: String(bopomofo)) else {
                        throw Error(message: String(bopomofo))
                    }
                    return syllable
                }
                
                let prcs = try chinas.prc.split(separator: "　").map { bopomofo -> Pinyin.Syllable in
                    guard let syllable = Syllable(bopomofo: String(bopomofo)) else {
                        throw Error(message: String(bopomofo))
                    }
                    return syllable
                }
                
                map[entry.key] = .chinas(roc: rocs, prc: prcs)
            } catch {
                debugPrint(error)
            }
        }
        
        return Array(map)
    }

    private func testAho() {
        let datUrl = URL(fileURLWithPath: "/Users/Resonance/Documents/HanLP/data/dictionary/CoreNatureDictionary.mini.txt")
        
        let lines = try! String(contentsOf: datUrl).split(separator: "\n").map({ String($0) })
        let map: [String : String] = lines.reduce(into: [:]) {
            let word = $1.components(separatedBy: .whitespaces)[0]
            $0[word] = word
        }
        
        let sortedMap = map.sorted { $0.key < $1.key }
        var act = AhoCorasickDoubleArrayTrie<String>()
        act.build(map: sortedMap)
        
        for (key, _) in sortedMap {
            let entries = act.parse(text: key)
        }
    }
    
    private func testProtobuf() {
        let datUrl = URL(fileURLWithPath: "/Users/Resonance/Desktop/Example.pb")
        if let data = try? Data(contentsOf: datUrl) {
            let act = AhoCorasickDoubleArrayTrie<String>(serializedData: data)
        }
    }
    
    private func testCantoDict() throws {
        let datUrl = URL(fileURLWithPath: "/Users/Resonance/Desktop/CantoDict.pb")
        if let data = try? Data(contentsOf: datUrl) {
            cantoDictionary = CantoDictionary(serializedData: data)
        } else {
            cantoDictionary = CantoDictionary()
            let data = try cantoDictionary?.serializedData()
            try data?.write(to: datUrl)
        }
    }
    
    private func testPinyinDict() throws {
        let datUrl = URL(fileURLWithPath: "/Users/Resonance/Desktop/PinyinDict.pb")
        if let data = try? Data(contentsOf: datUrl) {
            pinyinDictionary = PinyinDictionary(serializedData: data)
        } else {
            pinyinDictionary = PinyinDictionary()
            let data = try pinyinDictionary?.serializedData()
            try data?.write(to: datUrl)
        }
    }
    
    private func testCantoFuzzyDict() throws {
        if let fuzzyUrl = Bundle.main.url(forResource: "CantoFuzzyDict", withExtension: "pb"),
            let data = try? Data(contentsOf: fuzzyUrl) {
            cantoFuzzyDict = FuzzyDictionary(serializedData: data)
        } else {
            let externalUrl = URL(fileURLWithPath: "/Users/Resonance/Desktop/CantoFuzzyDict.pb")
            
            if let data = try? Data(contentsOf: externalUrl),
                let cantoFuzzyDict = FuzzyDictionary(serializedData: data) {
                self.cantoFuzzyDict = cantoFuzzyDict
                return
            }
            
            cantoFuzzyDict = FuzzyDictionary()
            let data = try cantoFuzzyDict?.serializedData()
            try data?.write(to: externalUrl)
        }
    }
}

extension String : Serializable {
    public func serializedData() throws -> Data {
        if let data = data(using: .utf8) {
            return data
        }
        throw SerializationError()
    }
    
    public init?(serializedData: Data) {
        self.init(data: serializedData, encoding: .utf8)
    }
}

struct SerializationError : Swift.Error {
}

private struct Error : Swift.Error {
    let message: String
}
