//
//  TokenDriver.swift
//  github.tokens
//
//  Created by alexander aspman on 2022-11-19.
//

import CryptoTokenKit

class TokenDriver: TKSmartCardTokenDriver, TKSmartCardTokenDriverDelegate {

    func tokenDriver(_ driver: TKSmartCardTokenDriver, createTokenFor smartCard: TKSmartCard, aid AID: Data?) throws -> TKSmartCardToken {
        return try Token(smartCard: smartCard, aid: AID, tokenDriver: self)
    }

}
