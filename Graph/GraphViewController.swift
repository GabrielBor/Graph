//
//  ViewController.swift
//  Graph
//
//  Created by Gabriel de Sousa Borges on 08/09/16.
//  Copyright © 2016 Gabriel Borges. All rights reserved.
//

import UIKit

class GraphViewController: UIViewController, BEMSimpleLineGraphDataSource, BEMSimpleLineGraphDelegate {

    var points: NSMutableArray = [40.0, 45.0, 20.0, 50.0]
    @IBOutlet var myGraph: BEMSimpleLineGraphView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configGraphs()
    }
    
    func configGraphs() {
        
        myGraph.delegate = self
        myGraph.dataSource = self
        
        //Bazier
        myGraph.enableBezierCurve = true
        
        //color graph
        myGraph.colorLine = UIColor(red: 71/255, green: 225/255, blue: 182/255, alpha: 1)
        myGraph.colorTop = UIColor(red: 46/255, green: 139/255, blue: 176/255, alpha: 1)
        myGraph.colorBottom = UIColor(red: 46/255, green: 139/255, blue: 176/255, alpha: 1)
        myGraph.colorPoint = UIColor.whiteColor()
        myGraph.colorReferenceLines = UIColor.whiteColor()
        
        //line, point and displayPoup
        myGraph.widthLine = 5
        myGraph.alwaysDisplayDots = true
        myGraph.alwaysDisplayPopUpLabels = true
        myGraph.colorBackgroundPopUplabel = UIColor.whiteColor()
        myGraph.alphaPopUpView = 0
        myGraph.colorTextPopUpLabel = UIColor.whiteColor()
        myGraph.sizePoint = 10
        myGraph.alphaCircleDots = 1
        
        //AnimationGraph
        myGraph.animationGraphStyle = BEMLineAnimation.Draw
        myGraph.animationGraphEntranceTime = 1
        
        // Enable and disable various graph properties and axis displays
        myGraph.enableTouchReport = true
        myGraph.enablePopUpReport = true
        myGraph.enableYAxisLabel = false
        myGraph.autoScaleYAxis = true
        myGraph.enableReferenceXAxisLines = true
        myGraph.enableReferenceYAxisLines = true
        myGraph.enableReferenceAxisFrame = true
        
        myGraph.reloadGraph()
    }
    
    //MARK - DATASOURCE
    func numberOfPointsInLineGraph(graph: BEMSimpleLineGraphView) -> Int {
        return points.count
    }
    
    func lineGraph(graph: BEMSimpleLineGraphView, valueForPointAtIndex index: Int) -> CGFloat {
        return CGFloat(points.objectAtIndex(index) as! NSNumber)
    }
    
    //MARK - DELEGATE
    func numberOfGapsBetweenLabelsOnLineGraph(graph: BEMSimpleLineGraphView) -> Int {
        return 0
    }
    
    func lineGraph(graph: BEMSimpleLineGraphView, labelOnXAxisForIndex index: Int) -> String {
        return "ola"
    }
    
    //PoupLabels
    func popUpSuffixForlineGraph(graph: BEMSimpleLineGraphView) -> String {
        return " MB"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

