package com.baidu.scenery.process;

public final class AndroidAppProcess$NotAndroidAppProcessException
  extends Exception
{
  public AndroidAppProcess$NotAndroidAppProcessException(int paramInt)
  {
    super(String.format("The process %d does not belong to any application", new Object[] { Integer.valueOf(paramInt) }));
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.AndroidAppProcess.NotAndroidAppProcessException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */