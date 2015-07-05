package com.estrongs.fs.impl.local;

public class q
{
  public int a = -1;
  public int b = -1;
  public int c = -1;
  private String d = "";
  private boolean e = false;
  
  private q(String paramString)
  {
    d = paramString;
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    try
    {
      notify();
      return;
    }
    finally {}
  }
  
  private void a(boolean paramBoolean)
  {
    e = paramBoolean;
    try
    {
      notify();
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */