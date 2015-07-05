package com.estrongs.fs;

public class c
{
  static final String[] a = { "COMM", "FILESYSTEM", "NAMED_PIPE", "PRINTER", "SERVER", "SHARE", "WORKGROUP" };
  public String b = null;
  public String c = null;
  public boolean d;
  public long e = 0L;
  public int f = 0;
  public int g = 0;
  public long h = 0L;
  public long i = 0L;
  public long j = 0L;
  public boolean k;
  public boolean l;
  public boolean m;
  public boolean n = false;
  public String o = null;
  public String p = null;
  public int q = 0;
  
  public c(String paramString)
  {
    b = paramString;
  }
  
  public void a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 64: 
      c = a[0];
      return;
    case 1: 
      c = a[1];
      return;
    case 16: 
      c = a[2];
      return;
    case 32: 
      c = a[3];
      return;
    case 4: 
      c = a[6];
      return;
    case 8: 
      c = a[4];
      return;
    }
    c = a[5];
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */