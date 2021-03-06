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


## Schema

### Models

#### User

| Property      | Type          | Description  |
| --- | --- | --- |
| phoneNUmber      | String | User's phone number |
| profilePicture      | PFFileObject     |   User's profile picture |
| interests | [Strings]      |    User's interests used for buyers to find like-minded sellers |
| numberOfItemsBought | Int | Number of products user has bought |
| numberOfItemsUpForSale | Int | Number of products user has listed that are available for purchase |
| numberOfItemsSold | Int | Number of products user has sold |
| favoritedProducts | [Product] | Products user has "liked" on the feed |
| purchasedProducts | [Product] | Products user had bought |

#### Product

| Property      | Type          | Description  |
| ------------- | ------------- | ----- |
| name      | String | User's phone number |
| blurb      | String     |   Name of the product given by seller |
| price | Double      |    Price of the product set by seller |
| picture | PFFileObject | Picture of the product uploaded by seller |
| tags | [String] | Tags assigned to the product allowing users' to search for it by tag |
| seller | User | User who listed the product for sale|
| isPurchased | Bool | True if a user has bought the product |
| purchaser | User | User who bought the product |
| favoritedUser | [User] | Users who have "liked" the product on the feed |
| latitude | Double | Latitude coordinate of the product |
| longitude | Double | Longitude coordinate of the product |

### Networking

#### List of network requests by screen

* Login Screen
    * (Read/GET) Log in user
    ![](https://i.imgur.com/NseuxzM.png)
* Signup Screen
    * (Create/POST) Signup new user
* Home Feed Screen
    * (find/READ) Query all recent products available to purchase
    ![](https://i.imgur.com/9JvFxV0.png)
    * (find/READ) Query all products with tags specified by user
    * (Update/PUT) "Like" product
* List Product Screen
     * (Create/POST) List product for sale
     ![](https://i.imgur.com/ie7t4Rd.png)
* Detailed Product Screen
    * (Update/PUT) Buy product
* Transactions Screen
    * (find/READ) Query all products user has bought
    * (find/READ) Query all products user has sold
* Favorites Screen
    * (find/READ) Query all products user has "liked"
    * (Update/PUT) "Unlike" product
* Profile Screen
    * (Read/GET) Query current user
* Edit Profile Screen
    * (Update/PUT) Edit user profile information


## Video Walkthrough

Here's a walkthrough of implemented user stories:

Signing Up A New User

<img src='http://g.recordit.co/pa1T9gxWlC.gif' title='Edit Profile Walkthrough' width='' alt='Edit Profile Walkthrough' />

Home Feed

<img src='http://g.recordit.co/ugprygz0H6.gif' title='Home Feed/Search Walkthrough' width='' alt='Home Feed/Search Walkthrough' />

Product Map

<img src='http://g.recordit.co/dw2P5OMbIj.gif' title='Map Walkthrough' width='' alt='Map Walkthrough' />

Buying a Product

<img src='http://g.recordit.co/jL43Itv7Yu.gif' title='Buy Product Walkthrough' width='' alt='Buy Product Walkthrough' />

Liking a Product

<img src='http://g.recordit.co/WTcKAHb5Kt.gif' title='Favorite Product Walkthrough' width='' alt='Favorite Product Walkthrough' />

Editing User Information

<img src='http://g.recordit.co/xta85oUe2x.gif' title='Edit Profile Walkthrough' width='' alt='Edit Profile Walkthrough' />

## Presentation

Here's our group's [presentation](https://docs.google.com/presentation/d/1K4hWnZvDNBNhtFP86CC2isnme1pPXQQFDEsXKq6Rmbc/edit?usp=sharing) for CodePath at UCI's Demo Day 6/8/19.
