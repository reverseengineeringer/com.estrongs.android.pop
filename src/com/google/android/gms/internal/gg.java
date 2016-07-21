package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.client.m;
import com.google.android.gms.ads.internal.overlay.t;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONObject;

@me
public final class gg
  implements fq
{
  private final Map<qa, Integer> a = new WeakHashMap();
  
  private static int a(Context paramContext, Map<String, String> paramMap, String paramString, int paramInt)
  {
    paramMap = (String)paramMap.get(paramString);
    int i = paramInt;
    if (paramMap != null) {}
    try
    {
      i = m.a().a(paramContext, Integer.parseInt(paramMap));
      return i;
    }
    catch (NumberFormatException paramContext)
    {
      b.e("Could not parse " + paramString + " in a video GMSG: " + paramMap);
    }
    return paramInt;
  }
  
  public void a(qa paramqa, Map<String, String> paramMap)
  {
    Object localObject2 = (String)paramMap.get("action");
    if (localObject2 == null) {
      b.e("Action missing from video GMSG.");
    }
    int i;
    int j;
    for (;;)
    {
      return;
      if (b.a(3))
      {
        localObject1 = new JSONObject(paramMap);
        ((JSONObject)localObject1).remove("google.afma.Notify_dt");
        b.a("Video GMSG: " + (String)localObject2 + " " + ((JSONObject)localObject1).toString());
      }
      if ("background".equals(localObject2))
      {
        paramMap = (String)paramMap.get("color");
        if (TextUtils.isEmpty(paramMap))
        {
          b.e("Color parameter missing from color video GMSG.");
          return;
        }
        try
        {
          i = Color.parseColor(paramMap);
          paramMap = paramqa.f();
          if (paramMap != null)
          {
            paramMap = paramMap.b();
            if (paramMap != null)
            {
              paramMap.setBackgroundColor(i);
              return;
            }
          }
        }
        catch (IllegalArgumentException paramqa)
        {
          b.e("Invalid color parameter in video GMSG.");
          return;
        }
        a.put(paramqa, Integer.valueOf(i));
        return;
      }
      localObject1 = paramqa.f();
      if (localObject1 == null)
      {
        b.e("Could not get ad overlay for a video GMSG.");
        return;
      }
      boolean bool1 = "new".equals(localObject2);
      boolean bool2 = "position".equals(localObject2);
      if ((bool1) || (bool2))
      {
        localObject2 = paramqa.getContext();
        j = a((Context)localObject2, paramMap, "x", 0);
        int k = a((Context)localObject2, paramMap, "y", 0);
        int m = a((Context)localObject2, paramMap, "w", -1);
        int n = a((Context)localObject2, paramMap, "h", -1);
        try
        {
          i = Integer.parseInt((String)paramMap.get("player"));
          if ((bool1) && (((zzd)localObject1).b() == null))
          {
            ((zzd)localObject1).a(j, k, m, n, i);
            if (!a.containsKey(paramqa)) {
              continue;
            }
            i = ((Integer)a.get(paramqa)).intValue();
            ((zzd)localObject1).b().setBackgroundColor(i);
          }
        }
        catch (NumberFormatException paramMap)
        {
          for (;;)
          {
            i = 0;
          }
          ((zzd)localObject1).a(j, k, m, n);
          return;
        }
      }
    }
    Object localObject1 = ((zzd)localObject1).b();
    if (localObject1 == null)
    {
      t.a(paramqa);
      return;
    }
    if ("click".equals(localObject2))
    {
      paramqa = paramqa.getContext();
      i = a(paramqa, paramMap, "x", 0);
      j = a(paramqa, paramMap, "y", 0);
      long l = SystemClock.uptimeMillis();
      paramqa = MotionEvent.obtain(l, l, 0, i, j, 0);
      ((t)localObject1).a(paramqa);
      paramqa.recycle();
      return;
    }
    if ("currentTime".equals(localObject2))
    {
      paramqa = (String)paramMap.get("time");
      if (paramqa == null)
      {
        b.e("Time parameter missing from currentTime video GMSG.");
        return;
      }
      try
      {
        ((t)localObject1).a((int)(Float.parseFloat(paramqa) * 1000.0F));
        return;
      }
      catch (NumberFormatException paramMap)
      {
        b.e("Could not parse time parameter from currentTime video GMSG: " + paramqa);
        return;
      }
    }
    if ("hide".equals(localObject2))
    {
      ((t)localObject1).setVisibility(4);
      return;
    }
    if ("load".equals(localObject2))
    {
      ((t)localObject1).g();
      return;
    }
    if ("mimetype".equals(localObject2))
    {
      ((t)localObject1).setMimeType((String)paramMap.get("mimetype"));
      return;
    }
    if ("muted".equals(localObject2))
    {
      if (Boolean.parseBoolean((String)paramMap.get("muted")))
      {
        ((t)localObject1).j();
        return;
      }
      ((t)localObject1).k();
      return;
    }
    if ("pause".equals(localObject2))
    {
      ((t)localObject1).h();
      return;
    }
    if ("play".equals(localObject2))
    {
      ((t)localObject1).i();
      return;
    }
    if ("show".equals(localObject2))
    {
      ((t)localObject1).setVisibility(0);
      return;
    }
    if ("src".equals(localObject2))
    {
      ((t)localObject1).a((String)paramMap.get("src"));
      return;
    }
    if ("volume".equals(localObject2))
    {
      paramqa = (String)paramMap.get("volume");
      if (paramqa == null)
      {
        b.e("Level parameter missing from volume video GMSG.");
        return;
      }
      try
      {
        ((t)localObject1).a(Float.parseFloat(paramqa));
        return;
      }
      catch (NumberFormatException paramMap)
      {
        b.e("Could not parse volume parameter from volume video GMSG: " + paramqa);
        return;
      }
    }
    if ("watermark".equals(localObject2))
    {
      ((t)localObject1).l();
      return;
    }
    b.e("Unknown video action: " + (String)localObject2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */