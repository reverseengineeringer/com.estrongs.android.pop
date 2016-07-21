package com.estrongs.android.pop.app.analysis;

import android.os.Handler;
import android.os.Message;
import java.util.concurrent.CopyOnWriteArrayList;

class d
  implements j
{
  d(a parama) {}
  
  public void a(CopyOnWriteArrayList<com.estrongs.android.b.a.a> paramCopyOnWriteArrayList, String paramString)
  {
    if (!paramString.equals(a.c(a))) {
      return;
    }
    paramString = Message.obtain();
    what = 2;
    obj = paramCopyOnWriteArrayList;
    a.d(a).sendMessage(paramString);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */