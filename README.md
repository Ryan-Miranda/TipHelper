# Pre-work - *TipHelper*

**TipHelper** is a tip calculator application for iOS.

Submitted by: **Ryan Miranda**

Time spent: *4* hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [x] Using locale-specific currency
* [ ] Using currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/isEkqWADdF.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [Recordit](http://recordit.co).

## Notes

Describe any challenges encountered while building the app.

Overall, re-learning to use Xcode was difficult at times. Additionally, setting the default segment of the segmented control became tedious.

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.


# Schema 

User
| Property               | Type         | Description                                               |
| ---------------------- |:------------:| ---------------------------------------------------------:|
| phoneNumber            | String       | User’s phone number                                       |
| profilePicture         | PFFileObject | User’s profile picture                                    |
| interests              | Strings      | User’s interests used for buyers to find sellers          |
| numberOfItemsBought    | Int          | Number of products user has bought                        |
| numberOfItemsUpForSale | Int          | Number of products user has listed available for purchase |
| numberOfItemsSold      | Int          | Number of products user has sold                          |
| favoritedProducts      | Product      | Products user has “liked” on the feed                     |
| purchasedProducts      | Product      | Products user has bought                                  |

| Property      | Type          | Description  |
| ------------- | ------------- | ----- |
| phoneNUmber      | String | User's phone number |
| profilePicture      | PFFileObject     |   User's profile picture |
| interests | [Strings]      |    User's interests used for buyers to find like-minded sellers |
| numberOfItemsBought | Int | Number of products user has bought |
| numberOfItemsUpForSale | Int | Number of products user has listed that are available for purchase |
| numberOfItemsSold | Int | Number of products user has sold |
| favoritedProducts | [Product] | Products user has "liked" on the feed |
| purchasedProducts | [Product] | Products user had bought |
