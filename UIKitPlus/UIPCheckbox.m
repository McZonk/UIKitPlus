//
//  UIPCheckbox.m
//  Plus
//
//  Created by Maximilian Christ on 5/30/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "UIPCheckbox.h"

@implementation UIPCheckbox

- (id)initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
	if(self) {
		[self addTarget:self action:@selector(touchUpInside:) forControlEvents:UIControlEventTouchUpInside];
	}
	return self;
}

- (id)initWithCoder:(NSCoder*)coder {
	self = [super initWithCoder:coder];
	if(self) {
		[self addTarget:self action:@selector(touchUpInside:) forControlEvents:UIControlEventTouchUpInside];
	}
	return self;
}

- (void)touchUpInside:(UIEvent*)event {
	self.selected = !self.selected;
	
	[self sendActionsForControlEvents:UIControlEventValueChanged];
}

@end
