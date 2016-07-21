package com.duapps.ad.stats;

import android.content.Context;
import com.duapps.ad.base.l;
import com.duapps.ad.coin.CoinManager;
import org.json.JSONException;
import org.json.JSONStringer;

public class x
{
  public static void a(Context paramContext, String paramString)
  {
    a(paramContext, "toolbox_coin", b(paramContext, paramString));
  }
  
  public static void a(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    a(paramContext, "toolbox_coin", b(paramContext, paramString, paramInt1, paramInt2));
  }
  
  private static void a(Context paramContext, String paramString1, String paramString2)
  {
    if (l.a()) {
      l.c("ToolStatsReport", "category = " + paramString1 + ", content : " + paramString2);
    }
  }
  
  private static String b(Context paramContext, String paramString)
  {
    try
    {
      paramContext = new JSONStringer().object().key("action").value("gain_coin").key("ac").value(CoinManager.a(paramContext).b()).key("mid").value(paramString);
      paramContext.endObject();
      paramContext = paramContext.toString();
      return paramContext;
    }
    catch (JSONException paramContext) {}
    return "";
  }
  
  private static String b(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    try
    {
      paramContext = new JSONStringer().object().key("action").value("gain_coin_res").key("ac").value(CoinManager.a(paramContext).b()).key("mid").value(paramString).key("resp_code").value(paramInt1).key("coin_diff").value(paramInt2);
      paramContext.endObject();
      paramContext = paramContext.toString();
      return paramContext;
    }
    catch (JSONException paramContext) {}
    return "";
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */