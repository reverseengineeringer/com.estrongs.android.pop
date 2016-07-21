package com.estrongs.android.pop.app.ad.a;

import android.content.Context;
import android.view.View;
import com.flurry.android.FlurryAgent;
import com.flurry.android.ads.FlurryAdNative;
import com.flurry.android.ads.FlurryAdTargeting;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class a
{
  private static a b;
  private Context a;
  private d c = new d(this, null);
  private c d;
  private List<FlurryAdNative> e = new ArrayList();
  private List<FlurryAdNative> f = new ArrayList();
  private List<FlurryAdNative> g = new ArrayList();
  private int h = 0;
  private e i;
  private String[] j = { "SV", "ZW", "LK", "PY", "NP", "HT", "BW", "GL", "PM", "MS", "PR", "KH", "AF", "ID", "AE", "MH", "KG", "GU", "WS", "NF", "LA", "LB", "MC", "FI", "JP", "AZ", "KW", "DK", "MA", "ER", "KR", "BB", "MF", "SX", "MY", "ES", "MQ", "RE", "GP", "TV", "BN", "GR", "SC", "TC", "SA", "TT", "AG", "NC", "NL", "KY", "BZ", "KN", "CW", "CO", "GD", "LC", "CN", "DM", "BS", "KZ", "BM", "AI", "SM", "IQ", "AD", "RO", "VC", "PE", "IT", "BR", "LI", "MX", "CL", "TR", "IO", "BQ", "AR", "TG", "PF", "FK", "IL", "MU", "LR", "BT", "GA", "ST", "GE", "PL", "BI", "CK", "GN", "CG", "CI", "AO", "CY", "SI", "HU", "ML", "CD", "PT", "EE", "HR", "AX", "DO", "ME", "PG", "BJ", "GF", "SR", "SK", "MK", "GT", "SZ", "CZ", "LV", "BG", "LT", "BA", "HN", "MV", "BY", "UA", "BO", "YT", "MT", "GQ", "VN", "RU", "RS", "AL", "GM", "YE", "MD", "CV", "TH", "LY", "AM", "SL", "PS", "SO", "GW", "AW", "VG", "MM", "ET", "BF", "DJ", "GY", "GI", "MR", "TL", "NE", "FJ", "IN", "DE", "IR", "NO", "SY", "TN", "CM", "NI", "SD", "MG", "SN", "IS", "MW", "CU", "KM", "VI", "SS", "VU", "MP", "TD", "FM", "FO", "CF", "SB", "AS", "TO", "NR", "SH", "WF" };
  
  public static a a()
  {
    if (b == null) {}
    try
    {
      if (b == null) {
        b = new a();
      }
      return b;
    }
    finally {}
  }
  
  private void a(FlurryAdNative paramFlurryAdNative, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramFlurryAdNative.removeTrackingView();
      paramFlurryAdNative.destroy();
    }
    if (e.contains(paramFlurryAdNative)) {
      e.remove(paramFlurryAdNative);
    }
    if (f.contains(paramFlurryAdNative)) {
      f.remove(paramFlurryAdNative);
    }
  }
  
  private boolean a(FlurryAdNative paramFlurryAdNative)
  {
    if ((paramFlurryAdNative.isReady()) && (!paramFlurryAdNative.isExpired()))
    {
      if (paramFlurryAdNative.isVideoAd()) {
        if ((!paramFlurryAdNative.isReady()) || (paramFlurryAdNative.isExpired()) || (paramFlurryAdNative.getAsset("headline") == null) || (paramFlurryAdNative.getAsset("videoUrl") == null) || (paramFlurryAdNative.getAsset("source") == null)) {}
      }
      while ((paramFlurryAdNative.isReady()) && (!paramFlurryAdNative.isExpired()) && (paramFlurryAdNative.getAsset("headline") != null) && (paramFlurryAdNative.getAsset("secHqImage") != null) && (paramFlurryAdNative.getAsset("source") != null))
      {
        return true;
        return false;
      }
      return false;
    }
    return false;
  }
  
  private void b(Context paramContext)
  {
    if (f.size() < 2)
    {
      Object localObject = com.estrongs.android.j.c.a(paramContext);
      if (localObject != null)
      {
        ((com.estrongs.android.j.c)localObject).a("A_flurry_request");
        ((com.estrongs.android.j.c)localObject).c("analysis", "A_flurry_request");
      }
      paramContext = new FlurryAdNative(paramContext, "result page 1");
      paramContext.setListener(c);
      localObject = new FlurryAdTargeting();
      ((FlurryAdTargeting)localObject).setEnableTestAds(false);
      paramContext.setTargeting((FlurryAdTargeting)localObject);
      paramContext.fetchAd();
      f.add(paramContext);
    }
  }
  
  private boolean c()
  {
    boolean bool2 = false;
    String str1 = Locale.getDefault().getCountry();
    String[] arrayOfString = j;
    int m = arrayOfString.length;
    int k = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (k < m)
      {
        String str2 = arrayOfString[k];
        if ((str1 != null) && (str1.equalsIgnoreCase(str2))) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      k += 1;
    }
  }
  
  public View a(FlurryAdNative paramFlurryAdNative, e parame)
  {
    if (paramFlurryAdNative == null) {
      return null;
    }
    View localView = f.a(a, paramFlurryAdNative);
    a(paramFlurryAdNative, false);
    g.add(paramFlurryAdNative);
    i = parame;
    return localView;
  }
  
  public FlurryAdNative a(int paramInt)
  {
    Object localObject = null;
    if (paramInt >= e.size()) {}
    FlurryAdNative localFlurryAdNative;
    do
    {
      do
      {
        return (FlurryAdNative)localObject;
      } while (e.size() <= 0);
      localFlurryAdNative = (FlurryAdNative)e.get(paramInt);
      localObject = localFlurryAdNative;
    } while (!localFlurryAdNative.isExpired());
    a(localFlurryAdNative, true);
    return a(paramInt);
  }
  
  public void a(Context paramContext)
  {
    a = paramContext;
    FlurryAgent.setLogEnabled(true);
    FlurryAgent.init(paramContext, "VGJ8FBHGJQ4SQQ3NCXVF");
  }
  
  public void b()
  {
    if (c()) {
      return;
    }
    h = 0;
    b(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ad.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */