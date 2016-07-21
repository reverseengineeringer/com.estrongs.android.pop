package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.gms.ads.g;
import com.google.android.gms.f;
import com.google.android.gms.internal.me;

@me
public final class zzj
{
  private final g[] a;
  private final String b;
  
  public zzj(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.getResources().obtainAttributes(paramAttributeSet, f.AdsAttrs);
    paramAttributeSet = paramContext.getString(f.AdsAttrs_adSize);
    String str = paramContext.getString(f.AdsAttrs_adSizes);
    int i;
    if (!TextUtils.isEmpty(paramAttributeSet))
    {
      i = 1;
      if (TextUtils.isEmpty(str)) {
        break label106;
      }
      label53:
      if ((i == 0) || (j != 0)) {
        break label112;
      }
    }
    for (a = a(paramAttributeSet);; a = a(str))
    {
      b = paramContext.getString(f.AdsAttrs_adUnitId);
      if (!TextUtils.isEmpty(b)) {
        return;
      }
      throw new IllegalArgumentException("Required XML attribute \"adUnitId\" was missing.");
      i = 0;
      break;
      label106:
      j = 0;
      break label53;
      label112:
      if ((i != 0) || (j == 0)) {
        break label133;
      }
    }
    label133:
    if ((i != 0) && (j != 0)) {
      throw new IllegalArgumentException("Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both.");
    }
    throw new IllegalArgumentException("Required XML attribute \"adSize\" was missing.");
  }
  
  private static g[] a(String paramString)
  {
    String[] arrayOfString1 = paramString.split("\\s*,\\s*");
    g[] arrayOfg = new g[arrayOfString1.length];
    int i = 0;
    if (i < arrayOfString1.length)
    {
      String str = arrayOfString1[i].trim();
      String[] arrayOfString2;
      if (str.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$"))
      {
        arrayOfString2 = str.split("[xX]");
        arrayOfString2[0] = arrayOfString2[0].trim();
        arrayOfString2[1] = arrayOfString2[1].trim();
      }
      for (;;)
      {
        try
        {
          if ("FULL_WIDTH".equals(arrayOfString2[0]))
          {
            j = -1;
            boolean bool = "AUTO_HEIGHT".equals(arrayOfString2[1]);
            if (!bool) {
              continue;
            }
            k = -2;
            arrayOfg[i] = new g(j, k);
            i += 1;
            break;
          }
          int j = Integer.parseInt(arrayOfString2[0]);
          continue;
          int k = Integer.parseInt(arrayOfString2[1]);
          continue;
          if (!"BANNER".equals(str)) {
            break label199;
          }
        }
        catch (NumberFormatException paramString)
        {
          throw new IllegalArgumentException("Could not parse XML attribute \"adSize\": " + str);
        }
        arrayOfg[i] = g.a;
        continue;
        label199:
        if ("LARGE_BANNER".equals(str))
        {
          arrayOfg[i] = g.c;
        }
        else if ("FULL_BANNER".equals(str))
        {
          arrayOfg[i] = g.b;
        }
        else if ("LEADERBOARD".equals(str))
        {
          arrayOfg[i] = g.d;
        }
        else if ("MEDIUM_RECTANGLE".equals(str))
        {
          arrayOfg[i] = g.e;
        }
        else if ("SMART_BANNER".equals(str))
        {
          arrayOfg[i] = g.g;
        }
        else
        {
          if (!"WIDE_SKYSCRAPER".equals(str)) {
            break label319;
          }
          arrayOfg[i] = g.f;
        }
      }
      label319:
      throw new IllegalArgumentException("Could not parse XML attribute \"adSize\": " + str);
    }
    if (arrayOfg.length == 0) {
      throw new IllegalArgumentException("Could not parse XML attribute \"adSize\": " + paramString);
    }
    return arrayOfg;
  }
  
  public String a()
  {
    return b;
  }
  
  public g[] a(boolean paramBoolean)
  {
    if ((!paramBoolean) && (a.length != 1)) {
      throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.zzj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */