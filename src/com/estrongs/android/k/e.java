package com.estrongs.android.k;

public abstract class e
{
  private boolean a;
  private boolean b;
  private String c;
  private long d;
  
  public e(String paramString, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    c = paramString;
    b = paramBoolean1;
    a = paramBoolean2;
    d = paramLong;
  }
  
  public void a(long paramLong)
  {
    d = paramLong;
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public void b(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public boolean e()
  {
    return a;
  }
  
  public boolean f()
  {
    return b;
  }
  
  public String g()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.k.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */