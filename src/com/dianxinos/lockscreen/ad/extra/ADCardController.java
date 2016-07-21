package com.dianxinos.lockscreen.ad.extra;

import android.content.Context;
import com.duapps.ad.f;
import com.duapps.ad.j;

public class ADCardController
  implements j
{
  private static final String a = ADCardController.class.getSimpleName();
  private f b;
  private Context c;
  private int d;
  private BaseCardView e;
  private e f;
  
  public ADCardController(Context paramContext, int paramInt)
  {
    this(paramContext, paramInt, 1);
  }
  
  public ADCardController(Context paramContext, int paramInt1, int paramInt2)
  {
    c = paramContext.getApplicationContext();
    d = paramInt1;
    b = new f(paramContext, paramInt1, paramInt2);
  }
  
  public void a()
  {
    b.a();
  }
  
  public void a(ADCardController.ADCardType paramADCardType)
  {
    b.a(new a(this, paramADCardType));
    b.d();
  }
  
  public void a(e parame)
  {
    f = parame;
  }
  
  public void a(String[] paramArrayOfString) {}
  
  public void b()
  {
    if (e != null)
    {
      e.e();
      e = null;
    }
    if (f != null) {
      f = null;
    }
    b.e();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ad.extra.ADCardController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */