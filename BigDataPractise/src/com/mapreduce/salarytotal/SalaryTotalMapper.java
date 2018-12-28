package com.mapreduce.salarytotal;

import java.io.IOException;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

public class SalaryTotalMapper extends Mapper<LongWritable, Text, IntWritable, IntWritable>{

	@Override
	protected void map(LongWritable key, Text value,
			Mapper<LongWritable, Text, IntWritable, IntWritable>.Context context)
			throws IOException, InterruptedException {

		// get data
		String data = value.toString();
		
		// �ִʣ������ŷֿ�
		String[] words = data.split(",");
		
		// ���
		context.write(new IntWritable(Integer.parseInt(words[7])), new IntWritable(Integer.parseInt(words[5])));
	}
	
}