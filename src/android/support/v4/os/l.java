package android.support.v4.os;

import android.os.Bundle;
import android.os.Handler;

class l
  extends d
{
  l(ResultReceiver paramResultReceiver) {}
  
  public void a(int paramInt, Bundle paramBundle)
  {
    if (a.c != null)
    {
      a.c.post(new m(a, paramInt, paramBundle));
      return;
    }
    a.a(paramInt, paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.os.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */