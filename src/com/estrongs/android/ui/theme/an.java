package com.estrongs.android.ui.theme;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.util.af;
import com.estrongs.android.widget.ProgressTextView;

class an
  implements af
{
  an(al paramal, Handler paramHandler, Context paramContext) {}
  
  public void downloadCompleted(Object paramObject)
  {
    al.a(c, false);
    if (a != null)
    {
      paramObject = new Message();
      what = 12;
      obj = c.c;
      a.sendMessage((Message)paramObject);
    }
    al.a(c, b);
  }
  
  public void downloadError(Object paramObject, Throwable paramThrowable)
  {
    al.a(c, false);
    if (a != null)
    {
      paramObject = new Message();
      what = 13;
      a.sendMessage((Message)paramObject);
    }
  }
  
  public void downloadProgress(Object paramObject, long paramLong1, long paramLong2)
  {
    if (al.a(c) != null) {
      al.a(c).a((int)(100L * paramLong2 / paramLong1));
    }
  }
  
  public void downloadStarted(Object paramObject)
  {
    if (a != null)
    {
      paramObject = new Message();
      what = 13;
      a.sendMessage((Message)paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */