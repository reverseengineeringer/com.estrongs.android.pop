package com.estrongs.android.pop.app.messagebox;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

public class a
  extends Handler
{
  private WeakReference<b> a;
  
  public a(b paramb)
  {
    a = new WeakReference(paramb);
  }
  
  public void handleMessage(Message paramMessage)
  {
    b localb = (b)a.get();
    if (localb != null) {
      localb.a(paramMessage);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */