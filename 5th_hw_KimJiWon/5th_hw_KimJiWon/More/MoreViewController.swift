//
//  ViewController.swift
//  3rd_hw_KimJiWon
//
//  Created by KIM JIWON on 9/20/24.
//

import UIKit

class MoreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 배경 색상 설정 (선택 사항)
        view.backgroundColor = .white
        
        // 이미지 생성
        let appleImage = UIImage(systemName: "applelogo") // 기본 사과 이미지
        
        // 이미지 뷰 생성
        let imageView = UIImageView(image: appleImage)
        
        // 이미지 뷰의 크기 및 위치 설정
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit // 이미지 비율 유지
        view.addSubview(imageView)
        
        // 제약 조건 설정
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 100), // 이미지 너비
            imageView.heightAnchor.constraint(equalToConstant: 100) // 이미지 높이
        ])
    }
}

