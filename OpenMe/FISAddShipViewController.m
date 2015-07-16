//
//  FISAddShipViewController.m
//  OpenMe
//
//  Created by Chris Gonzales on 9/17/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAddShipViewController.h"
#import "FISPiratesDataStore.h"
#import "Ship.h"
#import "Ship+FISExtraShipMethods.h"
#import "Engine.h"

@interface FISAddShipViewController ()
@property (weak, nonatomic) IBOutlet UITextField *shipNameField;
@property (weak, nonatomic) IBOutlet UITextField *engineTypeField;

@end

@implementation FISAddShipViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonTapped:(id)sender {
    
    
    
    FISPiratesDataStore *store = [FISPiratesDataStore sharedPiratesDataStore];
    
    
    NSDictionary *newThing = @{@"name" : self.shipNameField.text,
                               @"engineType": self.engineTypeField.text};
    
    
   Ship *newShip = [Ship shipFromDictionary:newThing andContext:store.managedObjectContext];
    
    [self.pirate addShipsObject:newShip];

    [[NSNotificationCenter defaultCenter] postNotificationName:@"AddingStuff" object:nil userInfo:nil];
    

    //Call on your method to reach out to the NS... [pass it what it

    
    
//    
//
//  
    

    
    
//    [store save];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
