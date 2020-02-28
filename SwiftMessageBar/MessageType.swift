//
//  Copyright © 2018 Schnaub. All rights reserved.
//

import UIKit

public enum MessageType {
  case error, success, info

  func background(fromConfig config: SwiftMessageBar.Config) -> MessageBackground {
    switch self {
    case .error:
      return config.errorBackground
    case .info:
      return config.infoBackground
    case .success:
      return config.successBackground
    }
  }

  func image(fromConfig config: SwiftMessageBar.Config) -> UIImage? {
    switch self {
    case .error:
      return config.errorIcon
    case .info:
      return config.infoIcon
    case .success:
      return config.successIcon
    }
  }

}
