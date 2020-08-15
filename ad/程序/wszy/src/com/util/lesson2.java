//-------------------------请加下面QQ获取完整代码 ID:2000--------------------------
//-----------------更多毕设,课设下载地址: www.wisdomdd.cn-------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------请加下面QQ获取完整代码----------------------------
//-------------------------请加下面QQ获取完整代码 ID:2000--------------------------
//-----------------更多毕设,课设下载地址: www.wisdomdd.cn-------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------请加下面QQ获取完整代码----------------------------
package com.util;

import java.util.ArrayList;
import java.util.List;

public class lesson2
{
	public static void main(String[] args)
	{
		/*int suoyoudeshu[]={1,2,3,4,5};
		int geshu=5;
        int suijishu[]=Random(suoyoudeshu,geshu);
        for(int k=0;k<suijishu.length;k++)
        {
        	System.out.println(suijishu[k]);
        
        }*/
		ArrayList<Integer> list=new ArrayList<Integer>();
		list.add(1);
		list.add(2);
		list.add(3);
		
		int suijishu[]=Random(list,4);
        for(int k=0;k<suijishu.length;k++)
        {
        	System.out.println(suijishu[k]);
        }
	}

	public static int[] Random(int suoyoudeshu[],int geshu)
	{
		if(suoyoudeshu.length<geshu)
		{
			return suoyoudeshu;
		}
		
		int[] numbers = suoyoudeshu;
		int n=numbers.length;
		for (int i = 0; i < numbers.length; i++)
		{
			numbers[i] = i + 1;
		}
		int[] result = new int[geshu];
		for (int i = 0; i < result.length; i++)

		{

			int r = (int) (Math.random() * n);

			result[i] = numbers[r];

			numbers[r] = numbers[n - 1];

			n--;

		}
		
		return result;  

	}
	
	public static int[] Random(List<Integer> list,int geshu)
	{
		int[] numbers = new int[list.size()];
		for(int i=0;i<list.size();i++)
		{
			numbers[i]=list.get(i);
		}
		
		if(numbers.length<geshu)
		{
			return numbers;
		}
		
		int n=numbers.length;
		for (int i = 0; i < numbers.length; i++)
		{
			numbers[i] = i + 1;
		}
		int[] result = new int[geshu];
		for (int i = 0; i < result.length; i++)

		{

			int r = (int) (Math.random() * n);

			result[i] = numbers[r];

			numbers[r] = numbers[n - 1];

			n--;

		}
		
		return result;  
	}


}//-------------------------请加下面QQ获取完整代码 ID:2000--------------------------
//-----------------更多毕设,课设下载地址: www.wisdomdd.cn-------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------请加下面QQ获取完整代码----------------------------
//-------------------------请加下面QQ获取完整代码 ID:2000--------------------------
//-----------------更多毕设,课设下载地址: www.wisdomdd.cn-------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------作者QQ: 549710689-----------------------------
//-------------------------请加下面QQ获取完整代码----------------------------
