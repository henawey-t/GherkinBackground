//
//  Configurator.m
//  GherkinBackgroundUITests
//
//  Created by Ahmed Henawey on 21/01/2022.
//

#import <Foundation/Foundation.h>
#import "GherkinBackgroundUITests-Swift.h"

__attribute__((constructor))
void Configurator(void) {
    [[Loader new] setup];
}
