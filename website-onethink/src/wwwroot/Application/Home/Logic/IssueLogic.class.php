<?php
//-------------------------------
// author@hejob
// Issue模型

namespace Home\Logic;

/**
 * 文档模型子模型 - Issue模型
 */
class IssueLogic extends BaseLogic{
	/* 自动验证规则 */
	protected $_validate = array(
		array('content', 'require', '内容不能为空！', self::MUST_VALIDATE , 'regex', self::MODEL_BOTH),
	);

	/* 自动完成规则 */
	protected $_auto = array();

}
