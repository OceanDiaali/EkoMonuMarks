class MonuListController < UITableViewController
    CELLID = 'CellId'

    def init
        self.tabBarItem = UITabBarItem.alloc.initWithTitle('Videos', image:UIImage.imageNamed('video.png'), tag:2)
        self
    end

    def viewDidLoad
        view.dataSource = view.delegate = self
      end

    def viewWillAppear(animated)
        navigationController.setNavigationBarHidden(true, animated:true)
      end

    def tableView(tableView, numberOfRowsInSection:section)
        MonuMark.all.count
    end  
      
    def tableView(tableView, cellForRowAtIndexPath:indexPath)
        cell = tableView.dequeueReusableCellWithIdentifier(CELLID) || begin
          cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELLID)
          cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton
          cell
        end # for dequeue..line 12
 
        cell.textLabel.text = MonuMark.all[indexPath.row].title
        cell
    end
    
    def tableView(tableView, accessoryButtonTappedForRowWithIndexPath:indexPath)
        monumark = MonuMark.all[indexPath.row]
        navigationController.pushViewController(monuDetailController, animated:true)
        monuDetailController.showDetailsForMonuMark(monumark)
    end

    private

    def monuDetailController
        @monuDetailController ||= MonuDetailController.alloc.init
    end

end # end of class