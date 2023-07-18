//
//  DoordashLocalAuth.swift
//  Authenticator
//
//  Created by Dhaval Adhav on 7/10/23.
//  Copyright © 2023 Apple. All rights reserved.
//

//import Foundation
//import LocalAuthentication
//
//protocol DoordashLocalAuthProtocol {
//
//    func canEvaluatePolicy(_ policy: LAPolicy, error: NSErrorPointer) -> Bool
//
//    func evaluatePolicy(_ policy: LAPolicy, localizedReason: String) async throws -> Bool
//
//    func setLocalizedCancelTitle(to title: String)
//
//    func setLocalizedFallbackTitle(to title: String)
//
//    func setLocalizedReason(to title: String)
//
//    func resetAuth()
//
//    var biometryType: LABiometryType { get }
//}
//
//class DoordashLocalAuth: DoordashLocalAuthProtocol {
//
//    // MARK: - properties
//
//    private var context: LAContext = LAContext()
//
//    func canEvaluatePolicy(_ policy: LAPolicy, error: NSErrorPointer) -> Bool {
//
//        context.canEvaluatePolicy(policy, error: error)
//    }
//
//    func evaluatePolicy(_ policy: LAPolicy, localizedReason: String) async throws -> Bool {
//
//        // Get a fresh context for each evaluation policy. If you use the same context on multiple attempts
//        //  (by commenting out the next line), then a previously successful authentication
//        //  causes the next policy evaluation to succeed without testing biometry again.
//        //  That's usually not what you want.
//        context = LAContext()
//
//        do {
//            let result = try await context.evaluatePolicy(policy, localizedReason: context.localizedReason)
//            return result
//        } catch {
//            throw error
//        }
//    }
//
//    var biometryType: LABiometryType {
//        return context.biometryType
//    }
//
//
//    func setLocalizedCancelTitle(to title: String) {
//        context.localizedCancelTitle = title
//    }
//
//    func setLocalizedFallbackTitle(to title: String) {
//        context.localizedFallbackTitle = title
//    }
//
//    /// This property is overwritten if an authentication reason is provided in evaluatePolicy(_:localizedReason:reply:).
//    /// This property is not displayed when FaceId is triggered. It is shown when a passcode is used for authentication
//    func setLocalizedReason(to title: String) {
//        context.localizedReason = title
//    }
//
//    func resetAuth() {
//        context.invalidate()
//    }
//}
//
//struct SomeErr: Error {
//
//
//}
//
//extension LAContext: DoordashLocalAuthContext {
//
//}
