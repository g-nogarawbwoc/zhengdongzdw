package com.fc.test.common.quartz.task;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.fc.test.mapper.auto.TsysUserMapper;
import com.fc.test.model.auto.TsysUser;
import com.fc.test.model.auto.TsysUserExample;

/**
 *测试类
 * @CLASSNAME   RyTask
 * @Description 定时调度具体工作类
 * @Auther Jan  橙寂
 * @DATE 2019/9/2 0002 15:33
 */
@Component("ryTask")
public class RyTask {
	@Autowired
	private TsysUserMapper tsysUserMapper;
    /**
     * 无参的任务
     */
    public void runTask1()
    {
        System.out.println("正在执行定时任务，无参方法");
    }

    /**
     * 有参任务
     * 目前仅执行常见的数据类型  Integer Long  带L  string  带 ''  bool Double 带 d
     * @param a
     * @param b
     */
    public void runTask2(Integer a,Long b,String c,Boolean d,Double e)
    {
    	List<TsysUser> list=  tsysUserMapper.selectByExample(new TsysUserExample());
    	System.err.println("用户查询num："+list.size());
        System.out.println("正在执行定时任务，带多个参数的方法"+a+"   "+b+" "+c+"  "+d+" "+e);

    }
}
