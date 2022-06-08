//
//  HomeViewController.swift
//  HomeModule
//
//  Created by 张文博 on 2022/6/7.
//

import UIKit
import SnapKit
import Then
import NetCore
public class HomeViewController: UIViewController {

    lazy var backBtn = UIButton().then {
       $0.setTitle("返回", for: .normal)
       $0.setTitleColor(.white, for: .normal)
       $0.titleLabel?.font = UIFont.systemFont(ofSize: 16)
       $0.titleLabel?.textAlignment = .left
       $0.backgroundColor = .red
       $0.addTarget(self, action: #selector(backClick(sender:)), for: .touchUpInside)
   }

    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(backBtn)
        backBtn.snp.makeConstraints { make in
            make.left.equalTo(view).offset(10)
            make.top.equalTo(view).offset(88)
            make.size.equalTo(CGSize(width: 100, height: 50))
        }
        
    }
    
    @objc func backClick(sender:UIButton) {
        self.dismiss(animated: true, completion: nil)
        NetCore().request()
        NetCore().openRequest()
        NetCore().openRequest1()
        NetCore().openRequest2()
        NetCore().openRequest3()

    }
    


}
