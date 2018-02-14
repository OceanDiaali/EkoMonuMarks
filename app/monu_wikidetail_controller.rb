class MonuWikiDetailController < UIViewController
    def viewDidLoad
        view.backgroundColor = UIColor.greenColor
    end

    def loadView
        self.view = UIWebView.alloc.init
    end

    def viewWillAppear(animated)
        navigationController.setNavigationBarHidden(false, animated:true)
    end

    def showWikiDetailsForMonuMark(monumark)
        navigationItem.title = monumark.title
        request = NSURLRequest.requestWithURL(monumark.url)
        self.view.loadRequest(request)
    end
end