package com.estrongs.android.util;

public class m
  extends Thread
{
  protected boolean g = false;
  
  public m(String paramString)
  {
    super(paramString);
  }
  
  public void a()
  {
    if (isAlive())
    {
      g = true;
      interrupt();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */