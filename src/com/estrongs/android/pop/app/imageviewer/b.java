package com.estrongs.android.pop.app.imageviewer;

import com.estrongs.android.pop.app.imageviewer.gallery.e;
import java.lang.ref.SoftReference;

public class b
{
  e a;
  SoftReference<an> b;
  
  public b()
  {
    c();
  }
  
  public an a()
  {
    Object localObject;
    if (b == null) {
      localObject = null;
    }
    an localan;
    do
    {
      return (an)localObject;
      localan = (an)b.get();
      localObject = localan;
    } while (localan != null);
    return null;
  }
  
  public boolean b()
  {
    an localan = a();
    return (localan != null) && (!localan.g());
  }
  
  public void c()
  {
    a = null;
    if (b != null)
    {
      an localan = (an)b.get();
      if (localan != null) {
        localan.h();
      }
    }
    b = null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */