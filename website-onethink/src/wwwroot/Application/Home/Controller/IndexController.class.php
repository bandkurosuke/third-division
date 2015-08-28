<?php
// +----------------------------------------------------------------------
// | OneThink [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013 http://www.onethink.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: 麦当苗儿 <zuojiazi@vip.qq.com> <http://www.zjzit.cn>
// +----------------------------------------------------------------------

namespace Home\Controller;
use OT\DataDictionary;

/**
 * 前台首页控制器
 * 主要获取首页聚合数据
 */
class IndexController extends HomeController {

	//系统首页
    public function index(){

        $category = D('Category')->getTree();
        $lists    = D('Document')->lists(null);

        $this->assign('category',$category);//栏目
        $this->assign('lists',$lists);//列表
        $this->assign('page',D('Document')->page);//分页

        //滚动栏
        $Category = D('Category');
        $postersCat = $Category->info('carousels');
        $postersCatId = $postersCat['id'];
        if ($postersCatId > 0) {
            $posterDocs = D('Document')->lists($postersCatId, "level DESC"); //no extra logic data
            $posters = array();
            foreach ($posterDocs as $doc) {
                $poster = array();
                $posterData = D('Carousel', 'Logic')->find($doc['id']);

                $poster['id'] = $doc['id'];
                $poster['title'] = $doc['title'];
                $poster['cover_id'] = $doc['cover_id'];
                $poster['url'] = $posterData['url'];
                $posters[] = $poster;
            }
            $this->assign('posters', $posters);
        }
                 
        $this->display();
    }

}