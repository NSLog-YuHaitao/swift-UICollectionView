# swift-UICollectionView

##### 个人链接

* [个人博客](https://nslog-yuhaitao.github.io ) : 个人博客主页
* [iOS频道(iOSPD)](http://www.jianshu.com/collection/d76ac79331c6): 这是我个人整理的一个技术专题, 这里的文章都是比较有技术含量(不断更新)!
* 微信公众号 : 

![微信公众号.jpg](http://upload-images.jianshu.io/upload_images/2248913-22bc242c26133c62.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

* 详情请见: [http://www.jianshu.com/p/b18294d11979](http://www.jianshu.com/p/b18294d11979)
* 敬请关注,代码将持续更新...


##### 前言:</br>
* UICollectionView类负责管理数据的有序集合以及以自定义布局的模式来呈现这些数据，它提供了一些常用的表格（table）功能，此外还增加了许多单栏布局。UICollectionView支持可以用于实现多列网格、 平铺的布局、 圆形的布局和更多的自定义布局，甚至你可以动态地改变它的布局。
* 当将一个集合视图添加到您的用户界面，您的应用程序的主要工作是管理与该集合视图关联的数据。集合视图的数据源对象，是一个对象，符合 UICollectionViewDataSource 协议，提供由您的应用程序数据集合中视图分成单个的item，然后可以分为节为演示文稿中获取其数据。item是您想要呈现的数据的最小单位。例如，在照片的应用程序，item可能是一个单一的图像。集合视图使用一个cell来呈现item，这是您的数据源配置，并提供 UICollectionViewCell 类的一个实例。
* 除了将它嵌入在您的用户界面，您可以使用 UICollectionView 对象的方法以确保item的可视化表示匹配您的数据源对象中的顺序。因此，每当您添加、 删除或重新排列您的集合中的数据，您可以使用此类的方法来插入、 删除和重新排列相应cell的状态。您还使用集合视图对象来管理所选的item。
* 接下来写一个程序实现照片墙的功能,先看一下效果图:</br>

![照片墙](http://upload-images.jianshu.io/upload_images/2248913-eedc2c62194806d0.gif?imageMogr2/auto-orient/strip)

###### 代码分析:
1.创建collectionView

~~~
        layout = UICollectionViewFlowLayout.init()//初始化UICollectionViewFlowLayout
        layout.minimumLineSpacing = 10//垂直最小距离
        layout.minimumInteritemSpacing = 10//水平最小距离
        layout.itemSize = CGSize.init(width: 100, height:130)//item的大小
        
        collectionView = UICollectionView.init(frame: CGRect.init(x: 0, y: 0, width: width, height: height), collectionViewLayout: layout)//初始化UICollectionView
        collectionView.backgroundColor = UIColor.white//背景色
        collectionView.showsVerticalScrollIndicator = false//去除垂直滚动条
        collectionView.showsHorizontalScrollIndicator = false//去除水平滚动条
        collectionView.dataSource = self//代理方法
        collectionView.delegate = self
        self.view.addSubview(collectionView)//添加主视图
        collectionView.register(picCollectionViewCell.classForCoder() ,forCellWithReuseIdentifier: "cellID")//注册cell
~~~

2.自定制cell

~~~
class picCollectionViewCell: UICollectionViewCell {
    var iv:UIImageView?
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.createIv()
    }
    
    public func createIv() -> Void {
        iv = UIImageView.init(frame:CGRect.init(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        self.addSubview(iv!)
    }
   
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
~~~

3.图片详情页面

~~~
    let height = UIScreen.main.bounds.size.height
    let width = UIScreen.main.bounds.size.width
    
    var iv : UIImageView = UIImageView.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "详情"
        
        self.showiv()
    }
    
    func showiv() -> Void {
        iv.frame = CGRect.init(x: 0, y: 0, width: width, height: height)
        iv.contentMode = UIViewContentMode.scaleAspectFit
        self.view.addSubview(iv)
    }
~~~

#####  时间: 2016.11.29 17:00

##### 声明

* 所有文章出自 [海涛丶Larry 的博客](https://nslog-yuhaitao.github.io ) !
* 未经本人允许不得转载, 转载请标明来源与作者, 谢谢合作! 