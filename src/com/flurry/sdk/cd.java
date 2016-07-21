package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.inmobi.commons.InMobi;
import com.inmobi.monetization.IMInterstitial;
import java.lang.reflect.Method;

public class cd
  extends bi
{
  private static final String b = cd.class.getSimpleName();
  private static final Method c = e();
  private final String d;
  private IMInterstitial e;
  private cd.a f;
  
  public cd(Context paramContext, s params, Bundle paramBundle)
  {
    super(paramContext, params);
    d = paramBundle.getString("com.flurry.inmobi.MY_APP_ID");
    InMobi.initialize((Activity)c(), d);
  }
  
  private void a(IMInterstitial paramIMInterstitial, cd.a parama)
  {
    if (paramIMInterstitial == null) {}
    for (;;)
    {
      return;
      try
      {
        if (c != null)
        {
          c.invoke(paramIMInterstitial, new Object[] { parama });
          return;
        }
      }
      catch (Exception paramIMInterstitial)
      {
        kg.a(3, b, "InMobi set listener failed.");
      }
    }
  }
  
  private static Method e()
  {
    Method[] arrayOfMethod = IMInterstitial.class.getMethods();
    int j = arrayOfMethod.length;
    int i = 0;
    while (i < j)
    {
      Method localMethod = arrayOfMethod[i];
      String str = localMethod.getName();
      if ((str.equals("setIMInterstitialListener")) || (str.equals("setImInterstitialListener"))) {
        return localMethod;
      }
      i += 1;
    }
    return null;
  }
  
  public void a()
  {
    e = new IMInterstitial((Activity)c(), d);
    f = new cd.a(this, null);
    a(e, f);
    e.loadInterstitial();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */