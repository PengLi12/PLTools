//
//  ProgressView.swift
//  TestProject
//
//  Created by mac mini 2 on 2020/11/27.
//

import UIKit


open class ProgressView: UIView {
    
  public  var progress: Float = 0.0 {
        didSet {
            progressView.snp.remakeConstraints { (make) in
                make.left.top.bottom.equalTo(self)
                make.width.equalTo(self).multipliedBy(progress).priority(.medium)
            }
            var fillProgress = Int(progress * 100)
            if fillProgress >= 100 {
                fillProgress = 100
            }
            label.text = "\(fillProgress)%"
        }
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        layout()
    }
    
    public func layout() {
        progressView.snp.makeConstraints { (make) in
            make.left.top.bottom.equalTo(self)
            make.width.equalTo(self).multipliedBy(0.0).priority(.medium)
        }
        label.snp.makeConstraints { (make) in
            make.center.equalTo(progressView)
        }
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK:懒加载
    public lazy var progressView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 89/255.0, green: 186/255.0, blue: 115/255.0, alpha: 1)
        self.addSubview(view)
        return view
    }()
    
    public lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 13)
        progressView.addSubview(label)
        return label
    }()
}
