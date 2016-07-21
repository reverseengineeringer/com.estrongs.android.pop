package android.support.v4.os;

import android.os.Bundle;

class m
  implements Runnable
{
  final int a;
  final Bundle b;
  
  m(ResultReceiver paramResultReceiver, int paramInt, Bundle paramBundle)
  {
    a = paramInt;
    b = paramBundle;
  }
  
  public void run()
  {
    c.a(a, b);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.os.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */