package com.estrongs.android.scanner.a;

public abstract class e
{
  private final int a;
  private final String b;
  private String c;
  private final boolean d;
  private boolean e;
  private boolean f;
  
  public e()
  {
    a = 0;
    b = null;
    d = true;
  }
  
  public e(int paramInt, String paramString)
  {
    a = paramInt;
    b = paramString;
    d = false;
    e = false;
    f = false;
  }
  
  public final void a(String paramString)
  {
    c = paramString;
  }
  
  public final void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public final void b(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public final int c()
  {
    return a;
  }
  
  public final String d()
  {
    return b;
  }
  
  public final boolean e()
  {
    return d;
  }
  
  public final boolean f()
  {
    return f;
  }
  
  public final String g()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */