<?php
// +----------------------------------------------------------------------
// Author: hejob@20150825
// Class: Carousel
// +----------------------------------------------------------------------
namespace Admin\Logic;

/**
 * 文档模型子模型 - 滚动栏内容模型
 */
class CarouselLogic extends BaseLogic{
    /* 自动验证规则 */
    protected $_validate = array(
        array('cover_id', 'require', '请上传附件！', self::MUST_VALIDATE , 'regex', self::MODEL_BOTH),
    );

}
