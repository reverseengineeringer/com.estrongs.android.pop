package com.estrongs.android.ui.dialog;

import android.os.Handler;
import com.estrongs.android.util.ab;
import com.estrongs.android.util.y;

final class kl
  implements ab
{
  public void a(Object paramObject) {}
  
  public void a(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void a(Object paramObject, Throwable paramThrowable)
  {
    paramObject = (y)paramObject;
    paramThrowable = (Handler)d;
    paramThrowable.sendMessage(paramThrowable.obtainMessage(6, Boolean.valueOf(((y)paramObject).i())));
  }
  
  public void b(Object paramObject)
  {
    Object localObject = (y)paramObject;
    paramObject = ((y)localObject).d();
    if (paramObject != null) {}
    for (paramObject = kf.a((String)paramObject);; paramObject = null)
    {
      localObject = (Handler)d;
      ((Handler)localObject).sendMessage(((Handler)localObject).obtainMessage(7, paramObject));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */