class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
   @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
   monuMapController = MonuMapController.alloc.init
   monuListController = MonuListController.alloc.init

   
   tabBarController = UITabBarController.alloc.init
   tabBarController.viewControllers = [monuMapController, monuListController]
   tabBarController.view.backgroundColor = UIColor.greenColor
   
   navigationController = UINavigationController.alloc.initWithRootViewController(tabBarController)
  
   @window.rootViewController = navigationController
   @window.makeKeyAndVisible
  end
end 