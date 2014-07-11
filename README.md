# foundation-demo
Simple demo app to practice with Zurb foundation

This app was based off of [https://github.com/mdenomy/neat-demo](https://github.com/mdenomy/neat-demo)

**This is not intended to be a fully functioning app.**  

It only exists to play around with Foundation

** NOTE: I also used this repo to demonstrate PageObjects for a talk at Launch Academy in July 2014, see [Demo of Page Objects](#page_objects) below ** 

## Seeding the Database
To set up the application with some sample data, seed the database with the following command 
**rake db:seed** 

## Responsive Design
The styling is set up to change the number of columns when displayed on a mobile device, a tablet, or if 
if the browser window gets resized.

The Top Bar includes a menu that is only displayed on mobile devices that displays the mav items.

## <a id="page_objects"></a>Demo of Page Objects
I used this repo to demonstate page objects.  To see the overall workflow check out the following branches in order

+ manager-adds-event
+ introduce-page-objects
+ events-on-homepage
+ order-events
+ limit-events-on-homepage
+ base-page-object

The slides for the talk are available at 

[http://www.slideshare.net/mdenomy/writing-maintainable-tests-with-page-objects](http://www.slideshare.net/mdenomy/writing-maintainable-tests-with-page-objects)




