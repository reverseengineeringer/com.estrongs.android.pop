package com.estrongs.android.scanner.d;

import android.database.Cursor;
import com.estrongs.android.pop.app.imageviewer.gallery.g;

class o
  implements l
{
  o(m paramm, String paramString) {}
  
  public void a(Cursor paramCursor)
  {
    com.estrongs.android.util.l.e(b.a, "DirStoreInfo, path:" + a + ", count:" + paramCursor.getCount());
  }
  
  public void b(Cursor paramCursor)
  {
    boolean bool = true;
    long l = paramCursor.getLong(0);
    int i = paramCursor.getInt(1);
    int j = paramCursor.getInt(2);
    if (i == 1) {}
    for (;;)
    {
      paramCursor = new q(l, bool, j);
      m.c().a(a, paramCursor);
      return;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */