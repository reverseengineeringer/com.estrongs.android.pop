package com.estrongs.android.ui.dialog;

import android.os.Handler;
import com.estrongs.android.util.aa;
import com.estrongs.android.util.af;

final class kw
  implements af
{
  public void downloadCompleted(Object paramObject)
  {
    Object localObject = (aa)paramObject;
    paramObject = ((aa)localObject).d();
    if (paramObject != null) {}
    for (paramObject = kq.a((String)paramObject);; paramObject = null)
    {
      localObject = (Handler)d;
      ((Handler)localObject).sendMessage(((Handler)localObject).obtainMessage(7, paramObject));
      return;
    }
  }
  
  public void downloadError(Object paramObject, Throwable paramThrowable)
  {
    paramObject = (aa)paramObject;
    paramThrowable = (Handler)d;
    paramThrowable.sendMessage(paramThrowable.obtainMessage(6, Boolean.valueOf(((aa)paramObject).j())));
  }
  
  public void downloadProgress(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void downloadStarted(Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */