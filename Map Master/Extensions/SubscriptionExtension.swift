//
//  SubscriptionExtension.swift
//  astrology_for_every_day
//
//  Created by Rostyslav on 17.01.2023.
//

import Foundation
import RevenueCat

extension SubscriptionPeriod{
    var durationTitle: String{
        switch self.unit{
        case .day: return "day"
        case .week: return "week"
        case .month: return "month"
        case.year: return "year"
        @unknown default: return "Unknown"
        }
    }
    var periodTitle: String{
        let periodString = "\(self.value) \(self.durationTitle)"
        let pluralized = self.value > 1 ? periodString + "s" : periodString
        return pluralized
    }
}

extension Package{
    func terms(for package: Package) -> String{
        if let intro = package.storeProduct.introductoryDiscount{
            if intro.price == 0{
                return "\(intro.subscriptionPeriod.periodTitle) free trial"
            }else{
                return "\(package.localizedIntroductoryPriceString!) for \(intro.subscriptionPeriod.periodTitle)"
            }
        }else{
            return "Unlocks Premium"
        }
    }
}
