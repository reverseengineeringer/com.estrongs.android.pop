package com.estrongs.io.archive.sevenzip;

import android.os.ConditionVariable;
import com.estrongs.a.a;
import com.estrongs.a.a.p;
import java.io.File;

class m
  implements p
{
  m(j paramj) {}
  
  public void a(a parama, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 4) {
      if (a.b.d.exists()) {
        if (a.b.d.delete()) {
          f.a(a.b.b, a.b.g, a.b.d, a.b.e, a.b.h, a.b.i, a.b.j, a.b.k, a.b.c);
        }
      }
    }
    do
    {
      do
      {
        do
        {
          return;
          a.b.i[0] = false;
          f.a(a.b.b, a.b.c);
        } while (!a.b.k);
        a.b.h.open();
        return;
        f.a(a.b.b, a.b.g, a.b.d, a.b.e, a.b.h, a.b.i, a.b.j, a.b.k, a.b.c);
        return;
      } while (paramInt2 != 5);
      a.b.e.delete();
      a.b.i[0] = false;
    } while (!a.b.k);
    a.b.h.open();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.sevenzip.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */