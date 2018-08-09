package cn.edu.scau.cmi.liangzaoqing.client;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

public class CheckHomework {
	public static void main(String[] args) throws IOException {
		String path = "F:\\360安全云盘同步版\\4：食品何博士\\食用农产品追溯文档";
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