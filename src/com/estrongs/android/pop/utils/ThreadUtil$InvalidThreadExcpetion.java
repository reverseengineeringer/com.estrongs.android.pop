package com.estrongs.android.pop.utils;

public class ThreadUtil$InvalidThreadExcpetion
  extends RuntimeException
{
  public ThreadUtil$InvalidThreadExcpetion()
  {
    super("An attempt was made to invoke an operation which can only be executed by the non user-interface thread from user-interface thread");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.ThreadUtil.InvalidThreadExcpetion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */