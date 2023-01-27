//
//  RectangleScene.swift
//  FurnitureMeasurment
//
//  Created by Mohamed Salah on 26/01/2023.
//

import Foundation
import UIKit
import SceneKit
import ARKit
struct Rectangle{
   static func createTheMeasureingRectangle(width: CGFloat, height: CGFloat)-> SCNNode {
        // Create a new SCNPlane with a width and a height
       let cube = SCNBox(width: width, height: height, length: 1, chamferRadius: 0.01)

        // Create a new material
        let material = SCNMaterial()

        // Set the material's diffuse color
        material.diffuse.contents = UIImage(named: "art.scnassets/grid.png")

        // Assign the material to the rectangle's geometry
       cube.materials = [material]
       // Create a new SCNNode to hold the rectangle
       let cubeNode = SCNNode(geometry: cube)

       // Position the rectangle in the scene
      cubeNode.position = SCNVector3(0, 0, -1)
        
        return cubeNode
    }
    static func furnitureDimenstions(){
        
    }
   
}
