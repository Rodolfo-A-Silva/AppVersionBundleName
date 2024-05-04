//
//  ViewController.swift
//  AppVersionBundleName
//
//  Created by rodolfo silva on 03/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Imprime a versão completa do aplicativo, incluindo a versão e o número da build.
        print("App Version: \(Bundle.appVersion())")

        // Imprime apenas o número da versão do aplicativo.
        print("Version Number: \(Bundle.versionNum())")

        // Imprime apenas o número da build do aplicativo.
        print("Build Number: \(Bundle.buildNum())")

        // Imprime o nome do aplicativo como definido em Info.plist.
        print("App Name: \(Bundle.appName())")

        // Imprime o identificador do pacote do aplicativo, geralmente usado em configurações de API e SDKs.
        print("Bundle Identifier: \(Bundle.bundleIdentifier())")

        // Verifica e imprime se o aplicativo está atualmente compilado em modo de depuração.
        print("Is Debug Mode: \(Bundle.isDebug())")

        // Imprime a versão do sistema operacional iOS do dispositivo atual.
        print("System Version: \(Bundle.systemVersion())")

        // Imprime o modelo do dispositivo, o que pode ajudar no diagnóstico de problemas relacionados ao hardware.
        print("Device Model: \(Bundle.deviceModel())")
        
    }

}

public extension Bundle {
    /// Retorna a versão formatada do aplicativo, incluindo a versão e o número da build.
    static func appVersion() -> String {
        let versionNum = versionNum()
        let buildNum = buildNum()
        return "App Version: \(versionNum) (Build \(buildNum))"
    }

    /// Retorna o número da versão do aplicativo.
    static func versionNum() -> String {
        return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "Unknown"
    }
    
    /// Retorna o número da build do aplicativo.
    static func buildNum() -> String {
        return Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? "Unknown"
    }

    /// Retorna o nome do aplicativo.
    static func appName() -> String {
        return Bundle.main.infoDictionary?["CFBundleName"] as? String ?? "Unknown"
    }

    /// Retorna o identificador do pacote.
    static func bundleIdentifier() -> String {
        return Bundle.main.bundleIdentifier ?? "Unknown"
    }

    /// Verifica se o aplicativo está sendo executado em modo de depuração.
    static func isDebug() -> Bool {
        #if DEBUG
        return true
        #else
        return false
        #endif
    }

    /// Retorna um valor personalizado do Info.plist baseado na chave fornecida.
    static func customValue(forKey key: String) -> String? {
        return Bundle.main.infoDictionary?[key] as? String
    }

    /// Retorna a versão do sistema operacional do dispositivo.
    static func systemVersion() -> String {
        return UIDevice.current.systemVersion
    }

    /// Retorna o modelo do dispositivo.
    static func deviceModel() -> String {
        return UIDevice.current.model
    }
}

