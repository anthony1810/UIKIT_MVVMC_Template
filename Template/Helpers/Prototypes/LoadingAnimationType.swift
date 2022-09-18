//
//  LoadingAnimationType.swift
//  RxTemplate
//
//  Created by Anthony Tran on 25/03/2022.
//

import Foundation
import Lottie

typealias LoadingWithLottie = (type: LoadingAnimationType, isLoading: Bool)

enum LoadingAnimationType {
    case home
    case detail
    
    private var skeletonView: UIView {
        switch self {
       
        default: return UIView()
        }
    }
}

extension LoadingAnimationType {
    var animationView: UIView {
        switch self {
        case .detail:
            return makeLoadingSkeletonView(skeletonView)
        default:
            return UIView()
        }
    }
}

extension LoadingAnimationType {
    private func makeLoadingSkeletonView(_ skeletonView: UIView) -> UIView {
        let view = UIView(frame: .zero)
        view.backgroundColor = .white
        
        view.addSubview(skeletonView)
        skeletonView.snp.makeConstraints { (make) in
            make.top.left.right.equalTo(view)
        }
        
        return view
    }
}
