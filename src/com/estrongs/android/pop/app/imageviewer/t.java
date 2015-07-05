package com.estrongs.android.pop.app.imageviewer;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import com.estrongs.android.pop.app.imageviewer.gallery.e;
import java.util.ArrayList;

public class t
{
  private final ArrayList<w> a = new ArrayList();
  private boolean b;
  private Thread c;
  private ContentResolver d;
  private String e = "Image Loader - Mini";
  
  public t()
  {
    c();
  }
  
  public t(String paramString)
  {
    e = paramString;
    c();
  }
  
  private void c()
  {
    if (c != null) {
      return;
    }
    b = false;
    Thread localThread = new Thread(new x(this, null));
    localThread.setName(e);
    c = localThread;
    localThread.start();
  }
  
  public Bitmap a(e parame)
  {
    return parame.h();
  }
  
  public void a(e parame, v paramv, int paramInt)
  {
    if (c == null) {
      c();
    }
    synchronized (a)
    {
      parame = new w(parame, paramv, paramInt);
      a.add(parame);
      a.notifyAll();
      return;
    }
  }
  
  public int[] a()
  {
    synchronized (a)
    {
      int j = a.size();
      int[] arrayOfInt = new int[j];
      int i = 0;
      while (i < j)
      {
        arrayOfInt[i] = a.get(i)).c;
        i += 1;
      }
      a.clear();
      return arrayOfInt;
    }
  }
  
  public void b()
  {
    synchronized (a)
    {
      b = true;
      a.notifyAll();
      if ((c == null) || (d == null)) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */