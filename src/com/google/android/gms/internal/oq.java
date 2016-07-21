package com.google.android.gms.internal;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@me
public class oq
{
  private final Context a;
  private String b;
  private final float c;
  private float d;
  private float e;
  private float f;
  private int g = 0;
  
  public oq(Context paramContext)
  {
    a = paramContext;
    c = getResourcesgetDisplayMetricsdensity;
  }
  
  public oq(Context paramContext, String paramString)
  {
    this(paramContext);
    b = paramString;
  }
  
  private void a()
  {
    if (!(a instanceof Activity))
    {
      b.c("Can not create dialog without Activity Context");
      return;
    }
    String str = b(b);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(a);
    localBuilder.setMessage(str);
    localBuilder.setTitle("Ad Information");
    localBuilder.setPositiveButton("Share", new or(this, str));
    localBuilder.setNegativeButton("Close", new os(this));
    localBuilder.create().show();
  }
  
  static String b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      paramString = "No debug information";
    }
    Object localObject;
    do
    {
      return paramString;
      paramString = paramString.replaceAll("\\+", "%20");
      localObject = new Uri.Builder().encodedQuery(paramString).build();
      paramString = new StringBuilder();
      localObject = ae.e().a((Uri)localObject);
      Iterator localIterator = ((Map)localObject).keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        paramString.append(str).append(" = ").append((String)((Map)localObject).get(str)).append("\n\n");
      }
      localObject = paramString.toString().trim();
      paramString = (String)localObject;
    } while (!TextUtils.isEmpty((CharSequence)localObject));
    return "No debug information";
  }
  
  void a(int paramInt, float paramFloat1, float paramFloat2)
  {
    if (paramInt == 0)
    {
      g = 0;
      d = paramFloat1;
      e = paramFloat2;
      f = paramFloat2;
    }
    label24:
    label224:
    do
    {
      do
      {
        break label24;
        do
        {
          return;
        } while (g == -1);
        if (paramInt != 2) {
          break;
        }
        if (paramFloat2 > e) {
          e = paramFloat2;
        }
        while (e - f > 30.0F * c)
        {
          g = -1;
          return;
          if (paramFloat2 < f) {
            f = paramFloat2;
          }
        }
        if ((g == 0) || (g == 2)) {
          if (paramFloat1 - d >= 50.0F * c) {
            d = paramFloat1;
          }
        }
        for (g += 1;; g += 1)
        {
          do
          {
            if ((g != 1) && (g != 3)) {
              break label224;
            }
            if (paramFloat1 <= d) {
              break;
            }
            d = paramFloat1;
            return;
          } while (((g != 1) && (g != 3)) || (paramFloat1 - d > -50.0F * c));
          d = paramFloat1;
        }
      } while ((g != 2) || (paramFloat1 >= d));
      d = paramFloat1;
      return;
    } while ((paramInt != 1) || (g != 4));
    a();
  }
  
  public void a(MotionEvent paramMotionEvent)
  {
    int j = paramMotionEvent.getHistorySize();
    int i = 0;
    while (i < j)
    {
      a(paramMotionEvent.getActionMasked(), paramMotionEvent.getHistoricalX(0, i), paramMotionEvent.getHistoricalY(0, i));
      i += 1;
    }
    a(paramMotionEvent.getActionMasked(), paramMotionEvent.getX(), paramMotionEvent.getY());
  }
  
  public void a(String paramString)
  {
    b = paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.oq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */