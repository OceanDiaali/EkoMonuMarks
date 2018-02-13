=begin
class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'ekomonumarks'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end
=end
##########################
class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
   @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
   monuMapController = MonuMapController.alloc.init
   navigationController = UINavigationController.alloc.initWithRootViewController(monuMapController)
   @window.rootViewController = navigationController
   @window.makeKeyAndVisible
  end
end 