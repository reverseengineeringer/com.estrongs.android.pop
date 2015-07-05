package com.estrongs.android.ui.dialog;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.util.ab;

class kk
  implements ab
{
  kk(kf paramkf) {}
  
  public void a(Object paramObject) {}
  
  public void a(Object paramObject, long paramLong1, long paramLong2)
  {
    ca).d = Long.valueOf(paramLong1);
    ca).e = Long.valueOf(paramLong2);
    paramObject = kf.n(a).obtainMessage(8);
    kf.n(a).sendMessage((Message)paramObject);
  }
  
  public void a(Object paramObject, Throwable paramThrowable)
  {
    paramObject = kf.n(a).obtainMessage(10);
    kf.n(a).sendMessage((Message)paramObject);
  }
  
  public void b(Object paramObject)
  {
    paramObject = kf.n(a).obtainMessage(9);
    kf.n(a).sendMessage((Message)paramObject);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.kk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */