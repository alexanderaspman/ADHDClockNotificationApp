//
//  ToggleFlashStrobeLightNotification.swift
//  ADHDClockNotificationApp
//
//  Created by alexander aspman on 2022-10-28.
//

import Foundation

func toggleFlash() {
    guard let device = AVCaptureDevice.default(for: AVMediaType.video) else { return }
    guard device.hasTorch else { return }

    do {
        try device.lockForConfiguration()

        if (device.torchMode == AVCaptureDevice.TorchMode.on) {
            device.torchMode = AVCaptureDevice.TorchMode.off
        } else {
            do {
                try device.setTorchModeOn(level: 1.0)
            } catch {
                print(error)
            }
        }

        device.unlockForConfiguration()
    } catch {
        print(error)
    }
}
