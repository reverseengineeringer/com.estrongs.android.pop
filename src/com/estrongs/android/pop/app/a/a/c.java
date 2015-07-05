package com.estrongs.android.pop.app.a.a;

public abstract class c
{
  protected int a = 0;
  protected int b = -1;
  protected int c = 0;
  
  protected abstract int a(int paramInt);
  
  protected abstract void a();
  
  protected abstract void b();
  
  public void b(int paramInt)
  {
    if (a != paramInt) {}
    for (int i = 1;; i = 0)
    {
      a = paramInt;
      if (i != 0) {
        a();
      }
      return;
    }
  }
  
  public abstract void c();
  
  public void c(int paramInt)
  {
    b = paramInt;
    b();
  }
  
  public abstract int d();
  
  public void d(int paramInt)
  {
    c = paramInt;
  }
  
  public abstract int e();
  
  public int e(int paramInt)
  {
    if (a == 0) {
      return -1;
    }
    if (c == 1) {
      return b % a;
    }
    return a(paramInt);
  }
  
  public abstract int f();
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */