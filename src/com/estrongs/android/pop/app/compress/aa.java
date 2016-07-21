package com.estrongs.android.pop.app.compress;

import com.estrongs.android.d.h;
import com.estrongs.io.a.a.a;

class aa
  implements h
{
  aa(l paraml) {}
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    l.a(a).b(paramBoolean1);
    l.a(a).a(paramBoolean2);
    synchronized (l.a(a))
    {
      l.a(a).notify();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */