package com.wwft.common.aspect;

import org.aspectj.lang.ProceedingJoinPoint;

/*
 * FileName : PojoAspectJ.java
 *	:: XML �� ���������� aspect �� ����   
  */
public class LogAspectJ {

	///Constructor
	public LogAspectJ() {
		System.out.println("\nCommon :: "+this.getClass()+"\n");
	}
	
	//Around  Advice
	public Object invoke(ProceedingJoinPoint joinPoint) throws Throwable {
			
		System.out.println("");
		System.out.println("[Around before] Ÿ�� �޼ҵ�:"+
							joinPoint.getTarget().getClass().getName() +"."+
							joinPoint.getSignature().getName());
		
		if(joinPoint.getArgs().length !=0){
			System.out.println("[Around before] �޼ҵ忡 ���޵Ǵ� ���� : "+ joinPoint.getArgs()[0]);
		}
		//==> Ÿ�� ��ü�� Method �� ȣ�� �ϴ� �κ� 
		Object obj = joinPoint.proceed();

		System.out.println("[Around after] Ÿ�� ��ü return value: "+obj);
		System.out.println("");
		
		return obj;
	}
	
}//end of class