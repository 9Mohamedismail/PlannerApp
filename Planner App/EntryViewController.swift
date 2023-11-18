//
//  EntryViewController.swift
//  Planner App
//
//  Created by Mohamed Ismail on 11/16/23.
//

import UIKit

class EntryViewController: UIViewController {

    @IBOutlet var titleField: UITextField!
    @IBOutlet var noteField: UITextView!

    public var completion: ((String, String) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        titleField.becomeFirstResponder()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSave))
    }

    @objc func didTapSave() {
        if let text = titleField.text, !text.isEmpty, !noteField.text.isEmpty {
            completion?(text, noteField.text)

            // Save the note to UserDefaults
            saveNoteToUserDefaults(title: text, note: noteField.text)
        }
    }

    func saveNoteToUserDefaults(title: String, note: String) {
        var savedNotes = UserDefaults.standard.array(forKey: "savedNotes") as? [[String: String]] ?? []
        savedNotes.append(["title": title, "note": note])
        UserDefaults.standard.set(savedNotes, forKey: "savedNotes")
    }


}
