package com.estrongs.android.ui.theme;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.util.af;

class am
  implements af
{
  am(al paramal, Handler paramHandler) {}
  
  public void downloadCompleted(Object paramObject)
  {
    al.b(b, false);
    if (a != null)
    {
      paramObject = new Message();
      what = 13;
      a.sendMessage((Message)paramObject);
    }
  }
  
  public void downloadError(Object paramObject, Throwable paramThrowable)
  {
    al.a(b, false);
  }
  
  public void downloadProgress(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void downloadStarted(Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */