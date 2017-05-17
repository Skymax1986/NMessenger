//
//  ICameraViewController.swift
//  nMessenger
//
//  Created by Alexander Dodatko on 5/17/17.
//  Copyright © 2017 Ebay Inc. All rights reserved.
//

import Foundation

import Photos
import AVFoundation


public typealias CameraPermissionCallback       = (Bool) -> Void
public typealias PhotoLibraryPermissionCallback = (Bool) -> Void


public protocol ICameraViewController : class
{
    weak var cameraDelegate: CameraViewDelegate?   { get set }
    
    var cameraAuthStatus   : AVAuthorizationStatus { get set }
    var photoLibAuthStatus : PHAuthorizationStatus { get set }

    func isCameraPermissionGranted(_ completion:@escaping CameraPermissionCallback)
    func requestPhotoLibraryPermissions(_ completion: @escaping PhotoLibraryPermissionCallback)
}

