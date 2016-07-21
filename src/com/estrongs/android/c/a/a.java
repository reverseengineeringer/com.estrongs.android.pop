package com.estrongs.android.c.a;

import android.content.Context;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.dianxinos.DXStatService.stat.TokenManager;
import com.estrongs.android.pop.FexApplication;

public class a
{
  public static void a(Context paramContext)
  {
    AppsFlyerProperties.a().a(true);
    AppsFlyerLib.b(TokenManager.getToken(FexApplication.a()));
    AppsFlyerLib.c("meYpyd4vP6L7yiswPFhQ7H");
    AppsFlyerLib.a(paramContext);
  }
  
  public static void b(Context paramContext)
  {
    AppsFlyerLib.b(TokenManager.getToken(paramContext));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.c.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */