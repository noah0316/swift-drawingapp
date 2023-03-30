//
//  SceneDelegate.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/27.
//

import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = scene as? UIWindowScene
        else { return }
        
        let window = UIWindow(windowScene: windowScene)
        let maxPosition = Position(x: UIScreen.main.bounds.maxX, y: UIScreen.main.bounds.maxY)
        let minPosition = Position(x: UIScreen.main.bounds.minX, y: UIScreen.main.bounds.minY)
        let rectangleFactory = RectangleFactory(
            ingridientFactory: RandomViewIngridientFactory(maxPosition: maxPosition, minPosition: minPosition),
            identifierFactory: RandomIdentifierFactory()
        )
        window.rootViewController = ViewController(rectangleFactory: rectangleFactory, logger: SystemLogger())
        window.makeKeyAndVisible()
        self.window = window
    }
}
