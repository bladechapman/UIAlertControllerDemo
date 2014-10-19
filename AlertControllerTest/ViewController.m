//
//  ViewController.m
//  AlertControllerTest
//
//  Created by Blade on 10/18/14.
//  Copyright (c) 2014 Blade Chapman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

# pragma mark - UIAlertViews
- (IBAction)showAlert:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"ALERT!"
                                                                             message:@"This is the message body"
                                                                      preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction *action) {
                                                              [self testHandler:action];
                                                          }];
    [alertController addAction:defaultAction];

    [self presentViewController:alertController animated:YES completion:^{
        [self dismissCallback];
    }];
}

- (IBAction)showOkCancel:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"ALERT"
                                                                             message:@"This is the message body"
                                                                      preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction *action) {
                                                         [self testHandler:action];
                                                     }];
    [alertController addAction:okAction];

    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction *action) {
                                                             [self testHandler:action];
                                                         }];
    [alertController addAction:cancelAction];

    [self presentViewController:alertController animated:YES completion:^{
        [self dismissCallback];
    }];

}

- (IBAction)showOkCancelDestroy:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"ALERT"
                                                                             message:@"This is the message body"
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction *action) {
                                                            [self testHandler:action];
                                                     }];
    [alertController addAction:okAction];

    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction *action) {
                                                             [self testHandler:action];
                                                         }];
    [alertController addAction:cancelAction];

    UIAlertAction *destroyAction = [UIAlertAction actionWithTitle:@"Destroy!" style:UIAlertActionStyleDestructive
                                                          handler:^(UIAlertAction *action) {
                                                              [self testHandler:action];
                                                          }];
    [alertController addAction:destroyAction];

    [self presentViewController:alertController animated:YES completion:^{
        [self dismissCallback];
    }];
}

# pragma mark - UIActionSheets
- (IBAction)showAlertAction:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"ALERT!"
                                                                             message:@"This is the message body"
                                                                      preferredStyle:UIAlertControllerStyleActionSheet];

    UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction *action) {
                                                              [self testHandler:action];
                                                          }];
    [alertController addAction:defaultAction];

    [self presentViewController:alertController animated:YES completion:^{
        [self dismissCallback];
    }];
}

- (IBAction)showOkCancelAction:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"ALERT"
                                                                             message:@"This is the message body"
                                                                      preferredStyle:UIAlertControllerStyleActionSheet];

    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction *action) {
                                                         [self testHandler:action];
                                                     }];
    [alertController addAction:okAction];

    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction *action) {
                                                             [self testHandler:action];
                                                         }];
    [alertController addAction:cancelAction];

    [self presentViewController:alertController animated:YES completion:^{
        [self dismissCallback];
    }];

}

- (IBAction)showOkCancelDestroyAction:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"ALERT"
                                                                             message:@"This is the message body"
                                                                      preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction *action) {
                                                         [self testHandler:action];
                                                     }];
    [alertController addAction:okAction];

    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel
                                                         handler:^(UIAlertAction *action) {
                                                             [self testHandler:action];
                                                         }];
    [alertController addAction:cancelAction];

    UIAlertAction *destroyAction = [UIAlertAction actionWithTitle:@"Destroy!" style:UIAlertActionStyleDestructive
                                                          handler:^(UIAlertAction *action) {
                                                              [self testHandler:action];
                                                          }];
    [alertController addAction:destroyAction];

    [self presentViewController:alertController animated:YES completion:^{
        [self dismissCallback];
    }];
}

# pragma mark - handler callback functions
- (void)testHandler:(UIAlertAction *)action {
    NSLog(@"Handled %@", [action description]);
}

# pragma mark - completion callback functions
- (void)dismissCallback {
    NSLog(@"Dismiss callback");
}
@end
