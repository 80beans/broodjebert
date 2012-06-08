class MenuController < UIViewController

  def init
    if super
      self.tabBarItem = UITabBarItem.alloc.initWithTitle('Menu', image: UIImage.imageNamed("menu.png"), tag:1)
    end
    self
  end
  
  def loadView
    self.view = UIImageView.alloc.init
    view.contentMode = UIViewContentModeScaleAspectFill
    view.image = UIImage.imageNamed("menu.jpg")
  end

end
