package com.estrongs.android.pop.view.utils;

import android.graphics.Bitmap;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.y;

public class v
{
  public int A;
  public String B;
  public String C;
  public String a;
  public String b;
  public String c;
  public String[] d;
  public String e;
  public String f;
  public String g;
  public String h;
  public String i;
  public String j;
  public Bitmap k = null;
  public Bitmap[] l = null;
  public y[] m = null;
  public Bitmap[] n = null;
  public y[] o = null;
  public boolean p = false;
  public int q = 0;
  public y r = null;
  public String s;
  public long t = 0L;
  public long u = 0L;
  public int v = 0;
  public boolean w = true;
  public int x = 0;
  public boolean y = false;
  public boolean z = false;
  
  public boolean a()
  {
    return (A & 0x1) != 0;
  }
  
  public boolean b()
  {
    return (A & 0x2) != 0;
  }
  
  public String c()
  {
    if ((e != null) && (e.startsWith("market://"))) {
      return e;
    }
    if ((FexApplication.a().m()) && (C != null) && (C.length() > 0)) {
      return C;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */