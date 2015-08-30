using Toybox.Application as App;
using Toybox.WatchUi as Ui;

class VO2MaxApp extends App.AppBase {

    //! onStart() is called on application start up
    function onStart() {
    }

    //! onStop() is called when your application is exiting
    function onStop() {
    }

    //! Return the initial view of your application here
    function getInitialView() {
        return [ new VO2MaxView(), new VO2MaxDelegate() ];
    }

}

class VO2MaxDelegate extends Ui.BehaviorDelegate {

    function onMenu() {
        Ui.pushView(new Rez.Menus.MainMenu(), new VO2MaxMenuDelegate(), Ui.SLIDE_UP);
        return true;
    }

}