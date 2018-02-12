//
//  SecondViewController.swift
//  TableSegueing
//
//  Created by Macbook on 12/02/2018.
//  Copyright © 2018 Lodge Farm Apps. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
	
	var person: Person?
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
}

extension SecondViewController: UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return person?.friends.count ?? 0
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "secondTableCell", for: indexPath)
		guard let friends = person?.friends else { return cell }
		cell.textLabel?.text = friends[indexPath.row].name
		return cell
	}
}

