class DataController < UITableViewController

  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTitle('Openingstijden', image: UIImage.imageNamed("time.png"), tag:1)
    end
    self
  end

  def viewDidLoad
    @data = ["Openingstijden", "Maandag: dicht", "Dinsdag: 8h-18h", "Woensdag: 8h-18h", "Donderdag: 8h-18h", "Vrijdag: 8h-21h", "Zaterdag: 10h-18h", "Zondag: 10h-18h"]
  end

  def viewWillAppear(animated)
    navigationController.setNavigationBarHidden(true, animated:true)
  end

  def tableView(tableView, numberOfRowsInSection:section)
    @data.size
  end

  CELLID = 'CellIdentifier'
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(CELLID) || begin
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELLID)
      cell
    end

    cell.textLabel.text = @data[indexPath.row]
    cell.textLabel.font = UIFont.boldSystemFontOfSize(14) unless indexPath.row == 0
    cell
  end

  def tableView(tableView, heightForRowAtIndexPath:indexPath)
    50
  end
  
end
