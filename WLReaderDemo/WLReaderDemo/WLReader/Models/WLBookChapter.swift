//
//  WLBookChapter.swift
//  DTCoreTextDemo
//
//  Created by 李伟 on 2024/5/17.
//  章节模型

import Foundation
import DTCoreText

class WLBookChapter: NSObject {
    // 章节id
    var chapterId:String!
    // 章节的source
    var chapterSrc:String!
    /// 章节标题
    var title:String!
    /// 是否隐藏
    var linear:Bool!
    /// 章节完整地址
    var fullHref:URL!
    var href:String!
    /// 是否是一级标题
    var isFirstTitle:Bool! = false
    /// 当前章节分页
    var pages:[WLBookPage]! = [WLBookPage]()
    /// 当前章节的所有内容
    var chapterContentAttr:NSMutableAttributedString!
    /// 当前是第几章
    var chapterIndex:Int! = 0
    /// 当前节对应的章，这个是处理有嵌套级的时候,在切换上一章下一章的时候用的, 只有有子章节时才会生效，否则是和chapterIndex一样的
    var parentChapterIndex:Int! = 0
    /// 用于滚动模式
    var contentHeight:CGFloat! = 0
    /// 是否强制分页,比如更改字体，字号，行间距等需要强制分页，默认是不需要的
    var forcePaging:Bool = false
    // 书籍类型
    var bookType:WLBookType!
    // 记录每一个章节对应的节点的location
    var locationWithFragmentIDMap:[String:Int]! = [String:Int]()
}


