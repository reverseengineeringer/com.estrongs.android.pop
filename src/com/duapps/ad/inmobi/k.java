package com.duapps.ad.inmobi;

import android.content.Context;

public class k
  implements Runnable
{
  private Context a;
  private boolean b;
  private IMData c;
  
  public k(Context paramContext, boolean paramBoolean, IMData paramIMData)
  {
    a = paramContext.getApplicationContext();
    b = paramBoolean;
    c = paramIMData;
  }
  
  public void run()
  {
    if (b)
    {
      i.a(a).b(c);
      return;
    }
    i.a(a).a(c);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.inmobi.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */