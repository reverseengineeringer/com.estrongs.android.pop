package com.estrongs.android.ui.theme;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.util.ab;
import com.estrongs.android.widget.ProgressTextView;

class ak
  implements ab
{
  ak(ai paramai, Handler paramHandler, Context paramContext) {}
  
  public void a(Object paramObject)
  {
    if (a != null)
    {
      paramObject = new Message();
      what = 13;
      a.sendMessage((Message)paramObject);
    }
  }
  
  public void a(Object paramObject, long paramLong1, long paramLong2)
  {
    if (ai.a(c) != null) {
      ai.a(c).a((int)(100L * paramLong2 / paramLong1));
    }
  }
  
  public void a(Object paramObject, Throwable paramThrowable)
  {
    ai.a(c, false);
    if (a != null)
    {
      paramObject = new Message();
      what = 13;
      a.sendMessage((Message)paramObject);
    }
  }
  
  public void b(Object paramObject)
  {
    ai.a(c, false);
    if (a != null)
    {
      paramObject = new Message();
      what = 12;
      obj = c.b;
      a.sendMessage((Message)paramObject);
    }
    ai.a(c, b);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */