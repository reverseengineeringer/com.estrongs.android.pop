package com.estrongs.android.pop.app.compress;

import com.estrongs.android.d.h;
import com.estrongs.io.a.a.a;

class bd
  implements h
{
  bd(bb parambb) {}
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    bb.b(a).b(paramBoolean1);
    bb.b(a).a(paramBoolean2);
    synchronized (bb.b(a))
    {
      bb.b(a).notify();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */