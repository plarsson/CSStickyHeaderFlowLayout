/*
 * This file is part of the CSStickyHeaderFlowLayout package.
 * (c) James Tang <j@jamztang.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#import "CSStickyHeaderFlowLayoutAttributes.h"

@implementation CSStickyHeaderFlowLayoutAttributes

- (id)copyWithZone:(NSZone *)zone
{
    CSStickyHeaderFlowLayoutAttributes *newAttributes = [super copyWithZone:zone];
    newAttributes->_progressiveness =_progressiveness;
    newAttributes->_sticky = _sticky;
    
    return newAttributes;
}

- (BOOL)isEqual:(id)other {
    
    if ([((CSStickyHeaderFlowLayoutAttributes *) other) sticky] != [self sticky]) {
        return NO;
    }
    
    if ([((CSStickyHeaderFlowLayoutAttributes *) other) progressiveness] != [self progressiveness]) {
        return NO;
    }
    
    return [super isEqual:other];
}

@end
