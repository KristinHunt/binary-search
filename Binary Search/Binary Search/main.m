//
//  main.m
//  Binary Search
//
//  Created by Kristin Hunt on 10/20/15.
//  Copyright © 2015 Krispy. All rights reserved.
//

#import <Foundation/Foundation.h>

int binarySearch (int target, int min, int max, NSArray* array) {
  
  int mid = (min + max)/2;
  
  if (target == [array[mid] intValue]) {
    return mid;
  } else if (target < [array[mid] intValue]) {
    int intNewMax = mid - 1;
    return binarySearch(target, min, intNewMax, array);
  } else if (target > [array[min] intValue]) {
    int intNewMin = mid +1;
    return binarySearch(target, intNewMin, max, array);
  }
//  
//  if (mid < max) {
//    NSLog(@"what do I type here");
//  }

  return 0;

}

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    NSArray *myArray = @[@4, @10, @19, @28, @40, @66, @81, @99];
    
    int index = binarySearch(66, 0, (int)myArray.count-1, myArray);
    NSLog(@"The number found was %d", index);
    
    
//    NSNumber *targetNumber = @80;
//    
//    int mid;
//    int min = 0;
//    int max = (int)[myArray count] - 1;
//    
//    BOOL numberFound = NO;
//    
//    while (min <= max) {
//      
//      mid = (min + max)/2;
//      
//      if ([targetNumber intValue] == [myArray[mid] intValue]) {
//        NSLog(@"Yes, that number was found at index %d", mid);
//        numberFound = YES;
//        break;
//      } else if ([targetNumber intValue] < [myArray[mid] intValue]) {
//        max = mid -1;
//      } else if ([targetNumber intValue] > [myArray[mid] intValue]) {
//        min = mid + 1;
//      }
//      if (!numberFound) {
//        NSLog(@"Your number wasn't found");
//      }
    
  }
    return 0;
}