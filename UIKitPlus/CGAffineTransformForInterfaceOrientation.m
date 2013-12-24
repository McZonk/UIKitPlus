#include "CGAffineTransformForInterfaceOrientation.h"

CGAffineTransform CGAffineTransformForInterfaceOrientation(UIInterfaceOrientation orientation) {	
	if(orientation == UIInterfaceOrientationLandscapeLeft) {
		return CGAffineTransformMakeRotation(M_PI * 1.5f);
	} else if(orientation == UIInterfaceOrientationLandscapeRight) {
		return CGAffineTransformMakeRotation(M_PI * 0.5f);
	} else if(orientation == UIInterfaceOrientationPortraitUpsideDown) {
		return CGAffineTransformMakeRotation(M_PI);
	} else {
		return CGAffineTransformIdentity;
	}
}
