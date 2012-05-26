SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE IF NOT EXISTS `post` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Slug` varchar(300) COLLATE utf8_bin NOT NULL,
  `Title` varchar(200) COLLATE utf8_bin NOT NULL,
  `Content` mediumtext COLLATE utf8_bin NOT NULL,
  `Created` datetime NOT NULL,
  `Author` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=170 ;


INSERT INTO `post` (`Id`, `Slug`, `Title`, `Content`, `Created`, `Author`) VALUES
(1, '23', '关于此次域名及空间的更换', '在我向大家解释此次空间及域名更换事件之前.我想大家很有必要了解一下Willerce Blog使用的两个域名注册时间及主机相关资料. Willerce.cn是我在去年6.30日左右注册的.也就是说.这个域名马上要到期了.并且,我不愿意为它继费,理由会在后文提起.而Willerce.com这个域名是我在决定更换域名及空间后注册的.不到半小时生效.博客使用Willerce.cn时.使用的是美国DreamHost空间,不得不说,DreamHost很好,它不断在改善.这个DH空间是由rojoro免费提供的.而现在用的是HM空间.由帕兰发起的<a href="http://parandroid.com/hostmonster-host-share-hm-080518/">HoustMonster空间合租</a>.空间速度怎么样?你自己可以感受到.我是福建网通,我感觉.中等偏上.作为一个国外空间.这样的速度令我十分满意.\r\n\r\n那么,我为什么要从DH空间转到HM空间呢?上述使用的两个主机合租,都是由国人发起,<a href="http://www.rojoro.cn/">Rojoro</a>的DH空间免费提供使用到10月份.然后根据要求,要缴纳100元的主机服务费.HM这边的呢.是由<a href="http://parandroid.com/">帕兰</a>发起,有三种方案,具体你可以看看<a href="http://parandroid.com/hostmonster-host-share-hm-080518/">帕兰的介绍</a>.倒不是因为那几十块钱。我转到HM空间的理由是,我想在国外的服务商注册COM米,而帕兰提供name.com代购服务.并且,在速度上,我无法判断它和DH哪个更好，而且，帕兰的QQ长时间在线，租国外的空间时，发起者的服务非常重要。\r\n\r\n那为什么要换CN域名呢？其实我更喜欢CN域名，因为它比较短。但是，我在注册这个CN域名时，选错了服务商，只能说这是个垃圾服务器，后台无法更改DNS，每次解析，都是等上相当长的时间，最长两天过。我曾想过将这个CN米转向成网，但是非常的麻烦。于是我放弃了。这都是我决定换COM米的原因，而且，COM是国际顶米，还是比较好吧。\r\n\r\n<strong>概括域名及空间更换的原因：CN域名的服务商的服务让我无法忍受，于是转向COM米。提供代购的帕兰的空间不错，于是决定一起转了。</strong>\r\n\r\n这次在HM上租的空间，只能绑一个域名，我也不想做太多的操作，如301转赂，其实我也不会做，不想费那份功夫。决定删掉原空间日志，在原空间的404写上域名更换。而index.php页直接跳转。\r\n\r\n一般来说，像我这样的博客，换域名及空间造成你的不便，比如友情链接，那么你在没有通知我的情况下，可以直接去掉我的链接。对于和本博交换友情链接的朋友，稍后，将发MAIL通知。\r\n\r\nPS:  现在博客已经平民化了,从以前大家去BSP注册博客,到现在,大家都学着搭建一个属于自己的博客.什么,你还没有? OK,我来帮你,你几乎可以以零成本搭建一个个性化的博客.\r\n首先,博客程序方面,我推荐你用<a title="Wordpress" href="http://wordpress.org" target="_blank">Wordpress</a>来自美国,拥有众多的第三方插件及模版,它是一个英文版本,如果你不习惯用英文界面的管理后台,你可以到<a title="Wordpress中文论坛" href="http://wordpress.org.cn" target="_blank">Wordpress中文论坛</a>下载到它的中文版本.\r\n\r\n接着,就是要拥有一个属于自己的主机空间,也就是服务器了.国内免费的好空间太少了,用DH空间吧.Wordpress中文平台为我们提供了高达2G的空间,你可以<a title="免费的2GDreamhost空间" href="http://www.wopus.org/wopus-sponsor-wordpress-hosting-plan-third.html" target="_blank">到这里</a>查看并得到2G的空间.\r\n\r\n接着,你需要拥有一个顶级域名,什么,想找个免费的二级域名? 现在中国顶级CN域名首年注册才1元钱,到<a href="http://www.84dns.cn/" target="_blank">光影互联</a>注册一个CN域名吧,如果你有那么一点银子,可以选择注册COM或Net域名,域名价格在<a href="http://idc.wopus.org/domain" target="_blank">这里</a>.\r\n\r\n好着.接下来.到这里,你一定加入了空间赞助群.关于Wordpress的安装,上传,可以问问群里的朋友,也可以到<a href="http://bbs.wopus.org/" target="_blank">Wordpress中文社区</a>看看.\r\n下载主题到这里: <a href="http://themes.wopus.org/">http://themes.wopus.org/</a>\r\n下载插件到这里: <a href="http://themes.wopus.org/">http://plugins.wopus.org/</a>', '2008-06-15 06:03:07', 'willerce'),
(2, '1', 'Hello world!', '2008年3月24日19时到家，也表示我的学生生涯正式结束了。\r\n\r\n我开始想念每天的晨铃后，与阳一起坐在座位上吃早餐，让我们拥有这项权利被我与阳视为老刘同志唯一英明的决定，我还想念早晨第二节课后充裕的课间操时间，我们集体放水，然后一起去食堂吃早点，我也想念晚自修后与“六零一”兄弟一起到三更吃夜宵。偶尔，我们会扛上几箱酒到房间里大醉一场。\r\n\r\n我发现对高中整个生活的回忆，除了吃，接着就是睡，课堂上睡觉，回宿舍后睡觉，还有的话，可能就是帮阳和宝泡妞。\r\n\r\n离开学校后，我搭建了这个博客，开始记录我新的生活，Hello world!这个标题也很应景，新的生活，新的世界。\r\n\r\n我的未来会怎么样呢？', '2008-03-26 05:14:14', 'willerce'),
(3, '2', '百度HI试用报告.', '从前天.也就是24日晚im.baidu.com开放后.我就申请了体验.一直在等待.今天早上.部分网站开始收到百度的邀请信.\r\n\r\n晚上.一凡在QQ上发了个图.我的第一反应是.一凡用上HI了.于是我登入空间.激活帐号.就可以体验HI了.\r\n\r\nHI的界面感觉有点跟风.和MSN.TM都有相似之处.说实话.个人认为有点土.在设置界面.和QQ也差不多.就是功能没QQ那边多.希望HI的功能简单实用就好.收费项目不要那么多.一位百度的副经理说.HI没有公司的盈利压力.继续希望永远不要有.\r\n\r\n群功能还没体验到.我还没得到资格.要邀请30位好友使用后才可以建一个群.\r\n\r\n在使用过程中.我看了一下任务管理器.HI占用的内存大概在四千多K.是QQ的四分之一.是MSN的二分之一.\r\n\r\nHI有一个创新的体验.就是聊天过程中.如果你连续发消息.在显示中.会只显示一条.举个例子.在QQ或MSN中.你如果连续发消息是这样的.\r\n<p style="text-align: justify; padding-left: 30px;"><span style="color: #ff6600;">小明 21:53:45</span></p>\r\n<p style="text-align: justify; padding-left: 30px;"><span style="color: #ff6600;">真的么?</span></p>\r\n<p style="text-align: justify; padding-left: 30px;"><span style="color: #ff6600;">小明 21:53:46</span></p>\r\n<p style="text-align: justify; padding-left: 30px;"><span style="color: #ff6600;">什么?</span></p>\r\n<p style="text-align: justify;">而在HI中是这样的.</p>\r\n<p style="text-align: justify; padding-left: 30px;"><span style="color: #ff6600;">小明 21:53:45</span></p>\r\n<p style="text-align: justify; padding-left: 30px;"><span style="color: #ff6600;">真的么?\r\n什么? </span></p>\r\n<p style="text-align: justify;">也就是说连续的几条(没有被对方中断)是直接归纳到一条中的.不知道这个新体验会不会得到认可呢? 这样也有可能在归纳过程中造成误会.我还是比较赞同QQ.MSN那样的.</p>\r\n<p style="text-align: justify;">一个新的软件.难免有界面.功能.安全方面的问题.我向百度反馈了以下几条.希望HI能打败QQ.</p>\r\n<p style="text-align: justify; padding-left: 30px;">1.大头像和小头像大小差不多.希望小头像可以再小一些.</p>\r\n<p style="text-align: justify; padding-left: 30px;">2.多人聊天可以刷屏.我现在还没加入群.群应该也可以刷吧.</p>\r\n<p style="text-align: justify; padding-left: 30px;">3.有消息来时.应该有快捷快式打开聊天框.还要有快捷快式聊天框关闭.在设置里.有这样的选项.但好像不灵.不能用默认的.要设置一下才行.但是没关闭窗口的快捷健的选项.</p>\r\n<p style="text-align: justify; padding-left: 30px;">4.截图发送后.在对方中显示得很小.也无法扩大观看.但在聊天记录中正常显示.但有些图片会消息变成一片空白.</p>', '2008-03-26 14:10:05', 'willerce'),
(4, '3', 'firefox和ie的css兼容问题', '对于某些内容可变的层（比如用户评论），我们希望它有个最小的高度（比如30px），这样的话，即使内容只有一行字，也不会太难看；同时又希望在内容比较多的时候，层的高度能自动撑开，也就是要求height: auto。这时候就可以设置css的min-height属性。min-height在Firefox里有效，但IE无法识别。可以使用下面这个解决方案：\r\n<pre lang="css" line="1">\r\n.div_class{\r\n    min-height:30px;\r\n    height:auto !important;\r\n    height:30px;\r\n}\r\n</pre>\r\n\r\n第一行设置 min-height:30px;对Firefox有效；第二行height:auto !important;也对Firefox有效，后面紧跟的“!important”是Firefox专用的一个标记，带有这个标记的设置具有最高优先级，之后的设置都无效。所以第三行的height:30px对Firefox无效了；同时，由于IE无法识别min-height和“! important”，所以只有第三行有效，由于IE默认就是高度自适应的，所以即使设置了30px的高度，只要内容很多，也会自动撑开，不需要设置 height:auto。最后，上述代码产生如下效果：\r\n<!--more-->\r\n对于Firefox，等同于:\r\n<pre lang="css" line="1">\r\n.div_class{\r\n    min-height:30px;\r\n    height:auto;\r\n}\r\n</pre>\r\n对于IE，等同于：\r\n<pre lang="css" line="1">\r\n.div_class{\r\n    height:30px;\r\n}\r\n</pre>\r\n\r\n“!important” 是个非常好用的东西，如果你写过几个月的跨浏览器的CSS代码，就很容易被Firefox和IE之间的差别而感到恼火。比如padding属性就是一个例子。\r\n\r\n假设这样一个层：\r\n\r\n<pre lang="css" line="1">\r\n.div_name {\r\n    width:100px;\r\n    padding:10px;\r\n}\r\n</pre>\r\n\r\n在IE里面，层的宽度是100px，四周的余空为10px；但是对于Firefox，层的宽度变成了100px+10px+10px=120px，对于宽度敏感的设计来说，整个就混乱了。怎么办呢？还是求助于“!important”吧。只要这样写就可以了：\r\n<pre lang="css" line="1">\r\n.div_name {\r\n    width:80px !important;\r\n    width:100px;\r\n    padding:10px;\r\n}\r\n</pre>\r\n因为80+10+10=100。正好让宽度 变成100px。\r\n\r\n有时候，我们给一个层加上边框 ，在Firefox里面也会出现宽度增加的情况，比如：\r\n<pre lang="css" line="1">\r\n.div_name {\r\n    width:100px;\r\n    padding:10px;\r\n    border:2px solid #ccc;\r\n}\r\n</pre>\r\n上面这个层，在Firefox里面的实际宽度等于100+10+10+2+2=124px，因为边框也会增加宽度。怎么办呢，还是靠“!important”，这样写就可以了：\r\n<pre lang="css" line="1">\r\n.div_name {\r\n    width:76px !important;\r\n    width:100px;\r\n    padding:10px;\r\n    border:2px solid #ccc;\r\n}\r\n</pre>\r\n写CSS经常要做这样的计算，还要写很多!important，苦了设计师们，什么时候IE和Firefox的CSS标准统一就好了。', '2008-03-28 15:56:19', 'willerce'),
(5, '4', '觉醒吧！非主流效仿者！', '非主流,前几年开始听到的一个词语.字面理解.非主流就是不是主流的意思.也就是上面解释的意思 另类 不盲从潮流的一种意识.\r\n一直觉得是很高尚的一个东西.开头听到这些我会想到一些非常让人觉得牛X轰轰的PUNK一族或者是ROCK的The Beatles这类英雄的忠实追随者.感觉上我会觉得这些本属于anni baby书中的那些小资 中层阶级的东西.\r\n经过几年随着80年代末90年代初的中学生成长.社会对这个词语的推崇的蔓延.慢慢开始平民化.糜烂化.恶心化.\r\n这个蜕变让很多东西变得很畸形.人群的穿着习惯.说话的语气.乃至用词还有生活习惯.严重点说就是社会风气开始病态发展.\r\n前一段时间在MOP看到一张帖子.我都还跟DAVID讨论过.题目叫《八十后是颓废的一代》\r\n我有同感的说.他帖子里说的有很多是正确的.八十后，也就是我们这一代人.装忧郁.装颓废.眼高手低.\r\n心胸狭窄.我都接受.我们能意识到我们错了.我们在改变.在向我们父辈爷爷辈检讨.在承受那些行为带来的生活压力和社会压力.\r\n但是你们呢?八十末九十初的年轻人.你们还傻不拉讥的在那青黄不接的年代继续模仿\r\n我们的那些坏习惯你们完全吻合而且变本加利.如果要我发张帖子来说的话.你们就是没落的一代.\r\n先从语言上来说吧.\r\n拿个上QQ来说.\r\n好好的话不说.张口闭口就是 偶,藕,欧;l.粉~稀饭.酱紫偶太耐a了 代表你时尚 .来不来就给我打个orz fighting 说明你哈日哈韩.\r\n我惹得起你Y2. 该个QQ名字 来不来你就弄点莽的.\r\n\r\n<!--more-->\r\n啥子 某男子 呀 某女子呀.名字有个风的 就叫 风bi 名字有个颖的就叫 颖bi 我就不明白名字如果有个曹的叫啥子 .这些就不说了嘛.你要去恶心任由你自己.\r\n写个QQ签名就更吓人了.满行都是我看不懂的生辟字.他故意去找可能他们语文老师的妈都不认识的字符来表达他们的幼稚想法.例如：\r\n\r\n侽亼记注钕亼徥佣来疼 伱媞ズ羙丽嘚揷筁げ 僦会笑啲连眼睛都没峟啲尛孩吇\r\n\r\n噎苆祉裀囿祢\r\n\r\nヤ 男魜```｛简箪蹴恏？- .﹎_.\r\n.﹎_.无聊鲥菗菗烟\r\n﹎__ 轵爱壹个女魜\r\n两个魜在一起ーー┈\r\n\r\n爱上⒈个嗿翫啲爷们*\r\n\r\n看着字体就难受.看到内容我简直就难受得不能再难受了.？你们有必要这样来推销你们的个性吗???要个性也得找点洋文好吗??\r\n你这洋不洋土不土的 你当你是abc（啊，白痴）?\r\n\r\n好好的QQ空间的留言看着舒舒服服的.你的签名档要弄个恐怖恶心的 什么那个针把下巴刺流血.\r\n\r\n绑得象SM一样的虐待呀这些.现在有些人更‘非主流’.签名档是俩男女小朋友.衣服脱得干干净净.做些自己觉得很诱惑的恶心动作.男的一副自豪.女的一副高潮.我说爷猥琐了这么多年也没这么猥琐的.\r\nML这么多年也没见这么ML的..\r\n\r\nQQ日志也是那么几个字.一个标题进去 完全搞不懂他们想表达什么意思..？ 要不一句歌词.要不一句生僻字.再不就是写一段老公我爱你 老婆我想你之类的.然后对象就在里面回复.老婆我也爱你.老公我打你PP.那个恶心劲.我现在都浑身麻.对这些我管不着.也不该多说过过问.但是你不能在QQ像册都放些AU（劲舞团的简称,以下的都用AU.主要是方便)的截图吧.还在下面加点什么 老公 我永远耐你 。老婆.你好性感之类的吧. 算了 就算那样我也能容忍你们.但是你总不能在第二个相集里放的都是男人亲男人 女人玩女人的照片吧. 看了你的空间我只觉得是你在玩我..好吗？就算这样吧.你也不该在第三个我期盼你容颜出现的象集里面放几张只照了你眼睛.鼻子 头发 手指甲.乃至眼睫毛的照片吧...要不就是借位.视频照拍得跟公主似的 眼睛弄得比牛还大.谁还不知道PS的液化工具吗?眼线当眼影用.还美名叫烟熏装 完事儿 还要拿笔刷弄个鳃红.还要全选打象素的羽化.弄个高斯模糊.看着跟卡通片一样 真人长得跟母猪似的.你糊弄谁呀? 大哥.你拍个视频照就拍嘛 我没话说.你来不来的还摆点POSE.什么拿个台灯把脸弄得惨白.刷白的脸下你用手指摆了个很酷的.\r\n你手指上的铁戒指也没给你丢脸.闪闪发光如铂金一般.就这样也行 不过你一个大男人 你没必要把耳针都来个特写吧??\r\n不是我受够了..真的 看到你们的大哥哥大姐姐都受够了.\r\n\r\n再来说说打扮吧.\r\n\r\n现在有个新词语叫潮人.潮得凶的就叫潮爆了.走到大街上唰一片的.爆炸头.黑得吓人的黑眼圈.满手都是首饰 NIKE板鞋.下面一条牛仔裤 .levi''s 大多数人还喜欢弄根铁链子来吊在身上 上面的衣服基本上就BAPE G-STAR CK 了.初见我都觉得洋气到无敌.我们这代人.拽着钱买个JJ NIKE360都得再三思量.\r\n敢情你们这群潮人都是上流社会的纨跨子弟.我没猜错的话.你们这一身潮少说也得上3000吧.我们这些小拜金主义也得看着你们哭..后来才发现.满街道都是外贸商店.后来想想觉得你们穿LV D&amp;G都是应该的.\r\n你们的dunk傻孩子们 把我们这些只买的起便宜货的人弄成真正的傻子了..\r\n这些都算好的.最恶心就是那群初中的孩子了.可能觉得买假的都贵了.直接去M/B 买点花车货 。再弄点哈韩版衣服来穿着.特别是男的头发夹得漂起来 走路的时候像草一样飘来飘去.女的就买点以前日本AV里女优穿的泡泡袜.看着很可爱.但是你要学就得学象一点吧..注意看 人家穿那个都配双皮鞋.你不喜欢可以穿板鞋嘛.没必要弄‘非一般感觉’的运动鞋配着嘛.看着真的象民国时的国民士兵...走起路来蹦蹦跳跳.你真以为穿上AV女优的袜 你就有AV女优的气质?？\r\n\r\n再说爱好吧\r\n玩AU.照视频照片.甚至现在流行玩同性恋.在这我不否定你喜欢***.毕竟这帖不谈那话题.但是请你们搞清楚.同性恋的PT之分.有人觉得自己是个T.就弄得象个男的一样 说话.走路.走到街上别人都看不出了.就差下面那根东西了..有些P一会看到这个加油好男儿的谁谁谁谁 又帅气得很.那个宫s里谁谁谁又可爱得很.你又爱得死去活来.我在想你有病.你连les是什么意思都不懂.还弄得自己时尚得很.几个字的英文都念不出.我又何必去强求你去理解一个社会异类人群的含义呢?\r\n女人跟女人产生爱情才能叫les.你喜欢一个女的去假扮一个男的人.你为什么不正正当当的去喜欢一个男人???可怜了我没恋爱的兄弟们.在街上看到几个小美女.就算他们傻得不用下功夫也能上钩.你还得花心思去考虑。探究下她是不是les...\r\n哎,追求时尚的你们.自己觉得自己非主流的你们.让世界变得病态...\r\n至于AU我就不多说了.懒得听到那些‘舞蹈专家’在QQ群里大呼小叫.\r\n来 某某某.跳一盘.我跳你个头呀.拉你到天府广场.让你站在毛主席脚下.给你80分贝的HIP-HOP 你TMD脚都动不灵活.进个迪吧.你还学人家玩大风车.连几个俯卧撑都做不下来...你还玩倒立.\r\n说起劲舞家族你一套一套的..某某某我老公在多少区爱踩谁就踩谁..来吧 接踩吧.\r\n我不知道你说这些词的时候晕不晕 你没觉得语法不对?\r\n说起AU感情你一套一套的.某某某老公又帅得很 又视频过 象郭品超 象胡歌. 你视频的时候就看到你那老公比狮子狗还长的头发下面只留下半个巴掌大的嘴巴.你就能看出他帅??说不顶他少双脚是个瘸子你都不知道?不过也符合清理人家车祸弄断了双腿 想在游戏中继续他的艺术人生?不行吗?\r\n\r\n最后说思想.\r\n这群小朋友绝大多数没受过高等教育.有的甚至连高中都没念.有的整日碌碌无为的泡在网吧.没钱怎么办?\r\n怕什么有染黄头发的戴耳环骑125的帅哥领着吃串串 骑125摩托车兜风 .白天就睡在网吧的沙发上.晚上就借5块钱上网.\r\n好一点的就跟着大哥哥们进迪厅感受下社会主义改革大浪潮.享受下哥哥们的爱.要不就跟自己的‘男朋友’（帅气的T）逛滨江路.进进西餐厅KTV.唱唱《你那该死的温柔》我不知道他们脑袋里到底有没有明白他们存在的价值 有没有明白父母养育他们的价值? 整天跟父母吵架.整天抱着本韩国青春杂志幻想自己是女主角.整天在日记里写.自己多么不幸 多么忧郁.拿个相机你能在厕所的镜子面前站一天.参加个超级女生你可以在烈日奄奄下苦侯.看到有人说你们偶像 ** ** 如何如何.你把世界上最粗俗的话都能说出来.家里一只猫狗生病了 你看着比你老妈子还心痛. 人家说你一句 你要给人家一刀.你们比我们有脾气. 你们骂老师.敢打家长.敢离家出走.敢割脉自杀. 敢在网吧上接吻 敢在大街上抽烟. 敢看了我的文章 不屑一顾.继续你们的非主流路线.\r\n\r\n我,一个比你们大一点的圈外人 又能做什么呢?\r\n\r\n时代就是这么滑过的.转眼你们到了我们这个时候.或者再大很多.回头看看自己.是感慨.还是悲哀..\r\n人总会一步一步长大.等你们明白你们傻的时候 希望你还知道明天的太阳是在你们头上 而不是在你们脚下.我没资格教育任何人.我这篇文章大部分是泄愤. 但是最后的几句是真诚.\r\n\r\n想想我们过去的青春,懵懂.可笑.但是并不悲哀....\r\n\r\n最后一句.那些贫瘠的精神生活造就的低级趣味.\r\n\r\n你们还是放弃吧.!\r\n\r\n我渴望你们来反驳我..但是你有那个能力?我又何苦在这说这些呢？\r\n\r\n非主流---不是祖国未来的希望.漫漫流走吧...、', '2008-03-30 03:00:00', 'willerce'),
(6, '5', '我使用国内虚拟空间的经历', '<p>我的第一个虚拟空间是我表哥给我的，他在动易那租了台服务器，于是我也鸡犬升天的得到了这个大便宜。后来，因为某些原因,服务器不续租了。然后我就加入了浩浩荡荡的"寻空间"大军，用过免费的，收费的，现在就来说说用过的几个主机的感受我的感受。</p>\r\n<p><strong>炎黄盛世服务器合租\r\n</strong>机房比较多，也比较便宜的空间，用户很多，有公布用户名单和网址，这给我们购买前提供了很大的方便，快不快看看他们的网站就行了，我租的时候还没出双线，当时我租了个两百多块的电信线路，速度不错，但网通访问就有点慢，感觉还是比较稳定的，客服的服务态度非常好，反应速度快，目前我用过的，就数这个最好了.总结:推荐新手使用.价格低.客服态度好.大部分问题能够得到及时解决.</p>\r\n\r\n<p><strong>易安IDC</strong>\r\n这是个上海的IDC，空间很贵，现在我的手头有两个这样的空间，都是双线的，速度还不错，但是价格比较高，从性价比来看算是很贵的了，而且可能不是专业IDC，可能是兼职的，也可能是他自己的剩余服务器资源，客服一般晚上才处理问题，在用FTP的时候经常出现too many user的提示，然后就是无期限的等待。从去年十月份和客服联系了，说明了这个问题，到现在还没有给我解决，给我的答案是：过会儿再连接…总结:价格较高.国内速度不错，客服反应速度较慢。</p>\r\n<p><strong>81IDC</strong>\r\n这个是一个网友告诉我的，他曾经做过这个IDC的代理，当时我用两个域名和他换了一个空间，转到我帐户名下后，用上的第一感觉是很快，很快，真的很快。但是第二天，我就进不了空间了，我问了客服，客服告诉我，那个网友让客服转告我：他不换了，空间转回他帐下去了，当时我就很生气，和他那个网友联系不上，就和客服理论，但是就是不还给我，我说我帐下的东西，你凭什么转走？客服说他去了解一下，就没回应了。再过了一段时间，我一朋友要换空间，我推荐他用81的了。虽然生气，但是他家的空间确实不错，而且不贵，后来.在MYSQL数据转移问题上客服解决不了(就是将原空间的数据转移到81)，在沟通时，客服态度非常棒。总结：81的空间真的很不错，支持月付下次我就租81的。</p>\r\n<p>上面三个IDC是我用过的，可能我在购买前比较仔细，买的空间一直不差。有发现国内的IDC在试用时给你快的，好的空间，等你买了，钱交齐了，就找个理由，给你换个空间，然后你就会发现，空间怎么这么慢呀，客服怎么都没反应呀？？所以在国内买空间时就注意：</p>\r\n<ul>\r\n	<li>美国的空间，我不是很了解，就是用过而已。</li>\r\n	<li>最好购买支持月付的空间，这样在发现空间有问题后，不不至于损失太大，但月付的价格一般都会比年付贵一些</li>\r\n	<li>在购买前最好问问朋友，让他们推荐一个，这样就比较保险了</li>\r\n</ul>', '2008-03-30 10:16:41', 'willerce'),