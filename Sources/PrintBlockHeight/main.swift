import ZcashLightClientKit
import Dispatch

let kZcashNetwork = ZcashNetworkBuilder.network(for: .testnet)

let service = LightWalletGRPCService(endpoint: LightWalletEndpoint(address: "lightwalletd.testnet.electriccoin.co", port: 9067, secure: true))


do {
    let latestBlockHeight = try service.latestBlockHeight()
    print("latest block height for testnet: \(latestBlockHeight)")
}
catch {
    print(error)
}

