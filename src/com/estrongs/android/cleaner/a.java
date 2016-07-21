package com.estrongs.android.cleaner;

import com.estrongs.android.cleaner.b.c;
import com.estrongs.android.util.l;

public class a
{
  private static final String a = a.class.getName();
  private static int b = 1;
  private static com.estrongs.android.cleaner.b.a d = null;
  private b c;
  
  public a()
  {
    this(1);
  }
  
  public a(int paramInt)
  {
    l.c("Cleaner", "init cleaner client...");
    if (b != paramInt) {
      b = 0;
    }
    try
    {
      if (d == null)
      {
        l.c("Cleaner", "create new context instance...");
        d = c.a(b);
      }
      c = new b();
      return;
    }
    finally {}
  }
  
  public long a()
  {
    if (d == null) {
      return 0L;
    }
    return d.b();
  }
  
  public void a(e parame)
  {
    if (d == null) {
      return;
    }
    d.a(this, parame);
  }
  
  public long b()
  {
    if (d == null) {
      return 0L;
    }
    return d.c();
  }
  
  public long c()
  {
    if (d == null) {
      return 0L;
    }
    return d.d();
  }
  
  public void d()
  {
    if (d == null) {
      return;
    }
    d.a(this, b);
  }
  
  public void e()
  {
    try
    {
      if (d == null) {
        return;
      }
      if (d.a(this) == 0)
      {
        l.c("Cleaner", "mScanContext = null");
        d.g();
        d.f();
        d = null;
      }
      return;
    }
    finally {}
  }
  
  public void f()
  {
    try
    {
      if (d == null) {
        return;
      }
      if (d.a(this) == 0)
      {
        l.c("Cleaner", "mScanContext = null");
        d.h();
        d.f();
        d = null;
      }
      return;
    }
    finally {}
  }
  
  public void g()
  {
    try
    {
      if (d == null) {
        return;
      }
      c.a(d.e());
      if (d.a(this) == 0)
      {
        l.c("Cleaner", "mScanContext = null");
        d.i();
        d.f();
        d = null;
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */