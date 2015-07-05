package com.estrongs.a.b;

public class a
{
  public static String a(int paramInt)
  {
    StackTraceElement[] arrayOfStackTraceElement = new Throwable().getStackTrace();
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramInt;
    if (paramInt == -1) {
      i = arrayOfStackTraceElement.length;
    }
    paramInt = 0;
    while (paramInt < i)
    {
      StackTraceElement localStackTraceElement = arrayOfStackTraceElement[paramInt];
      localStringBuffer.append(localStackTraceElement.getClassName() + "." + localStackTraceElement.getMethodName() + "(...);");
      localStringBuffer.append(paramInt + "--" + localStackTraceElement.getMethodName());
      paramInt += 1;
    }
    return localStringBuffer.toString();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */