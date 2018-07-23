package cn.edu.scau.cmi.liangzaoqing.client;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

public class CheckHomework {
	public static void main(String[] args) throws IOException {
		String path = "E:\\360云同步盘\\2：教学相关\\3 学生提交的作业\\2017学年第（2）学期《软件体系结构》学生提交的实验报告";
		File score=new File("score.txt");
		PrintWriter output=new PrintWriter(score);
		getFileList(new File(path),output);
		output.close();
	}

	public static void getFileList(File source, PrintWriter output) throws IOException {
	
		
		
		if (source.isDirectory()) {
//			文件夹
			File[] files = source.listFiles();
			for (int i = 0; i < files.length; i++) {
				File file=files[i];
				System.out.println(file.getName());
//				output.println(file.getName());
				getFileList(file,output);
			}
		} else{
			String fname = source.getAbsolutePath();
			output.println(fname);
//			System.out.println(fname);
		}
		
		
	}
}
