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



