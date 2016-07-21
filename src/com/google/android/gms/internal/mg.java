package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.request.s;
import com.google.android.gms.ads.internal.request.u;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

@me
public final class mg
  extends s
{
  private static final Object a = new Object();
  private static mg b;
  private final Context c;
  private final mf d;
  private final co e;
  private final gr f;
  
  mg(Context paramContext, co paramco, mf parammf)
  {
    c = paramContext;
    d = parammf;
    e = paramco;
    if (paramContext.getApplicationContext() != null) {
      paramContext = paramContext.getApplicationContext();
    }
    for (;;)
    {
      f = new gr(paramContext, new VersionInfoParcel(7895000, 7895000, true), paramco.a(), new mn(this), new he());
      return;
    }
  }
  
  private static AdResponseParcel a(Context paramContext, gr paramgr, co paramco, mf parammf, AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    b.a("Starting ad request from service.");
    cz.a(paramContext);
    dh localdh = new dh(((Boolean)cz.G.c()).booleanValue(), "load_ad", e.c);
    if ((b > 10) && (F != -1L)) {
      localdh.a(localdh.a(F), new String[] { "cts" });
    }
    dg localdg = localdh.a();
    c.a();
    Object localObject = ae.k().a(paramContext);
    if (m == -1)
    {
      b.a("Device is offline.");
      return new AdResponseParcel(2);
    }
    if (b >= 7) {}
    mq localmq;
    for (String str1 = A;; str1 = UUID.randomUUID().toString())
    {
      localmq = new mq(str1, g.packageName);
      if (d.d == null) {
        break;
      }
      str2 = d.d.getString("_ad");
      if (str2 == null) {
        break;
      }
      return mp.a(paramContext, paramAdRequestInfoParcel, str2);
    }
    Location localLocation = c.a(250L);
    String str2 = d.a(paramContext, h.packageName);
    List localList = b.a(paramAdRequestInfoParcel);
    String str3 = e.a(i);
    localObject = mp.a(paramContext, paramAdRequestInfoParcel, (mv)localObject, f.a(paramContext), localLocation, paramco, str2, str3, localList);
    if (b < 7) {}
    try
    {
      ((JSONObject)localObject).put("request_id", str1);
      if (localObject == null) {
        return new AdResponseParcel(0);
      }
      str1 = ((JSONObject)localObject).toString();
      localdh.a(localdg, new String[] { "arc" });
      localObject = localdh.a();
      if (((Boolean)cz.c.c()).booleanValue()) {
        oe.a.post(new mh(paramgr, localmq, localdh, (dg)localObject, str1));
      }
      for (;;)
      {
        try
        {
          paramco = (mu)localmq.b().get(10L, TimeUnit.SECONDS);
          if (paramco != null) {
            continue;
          }
          paramContext = new AdResponseParcel(0);
          return paramContext;
        }
        catch (Exception paramContext)
        {
          paramContext = new AdResponseParcel(0);
          return paramContext;
          if (paramco.a() == -2) {
            continue;
          }
          paramContext = new AdResponseParcel(paramco.a());
          return paramContext;
          if (localdh.e() == null) {
            continue;
          }
          localdh.a(localdh.e(), new String[] { "rur" });
          paramgr = null;
          if (!paramco.f()) {
            continue;
          }
          paramgr = a.a(h.packageName);
          paramgr = a(paramAdRequestInfoParcel, paramContext, l.c, paramco.d(), paramgr, str2, paramco, localdh);
          if (y != 1) {
            continue;
          }
          d.b(paramContext, h.packageName);
          localdh.a(localdg, new String[] { "tts" });
          A = localdh.c();
          return paramgr;
        }
        finally
        {
          oe.a.post(new ml(localmq));
        }
        oe.a.post(new mk(paramContext, paramAdRequestInfoParcel, localmq, localdh, (dg)localObject, str1, paramco));
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
  }
  
  public static AdResponseParcel a(AdRequestInfoParcel paramAdRequestInfoParcel, Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, mu parammu, dh paramdh)
  {
    dg localdg;
    if (paramdh != null) {
      localdg = paramdh.a();
    }
    try
    {
      localmt = new mt(paramAdRequestInfoParcel);
      b.a("AdRequestServiceImpl: Sending request: " + paramString2);
      paramAdRequestInfoParcel = new URL(paramString2);
      l = ae.i().b();
      i = 0;
      paramString2 = (HttpURLConnection)paramAdRequestInfoParcel.openConnection();
    }
    catch (IOException paramAdRequestInfoParcel)
    {
      try
      {
        for (;;)
        {
          mt localmt;
          long l;
          int i;
          ae.e().a(paramContext, paramString1, false, paramString2);
          if (!TextUtils.isEmpty(paramString3)) {
            paramString2.addRequestProperty("x-afma-drt-cookie", paramString3);
          }
          if (!TextUtils.isEmpty(paramString4)) {
            paramString2.addRequestProperty("Authorization", "Bearer " + paramString4);
          }
          if ((parammu != null) && (!TextUtils.isEmpty(parammu.c())))
          {
            paramString2.setDoOutput(true);
            localObject = parammu.c().getBytes();
            paramString2.setFixedLengthStreamingMode(localObject.length);
            BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(paramString2.getOutputStream());
            localBufferedOutputStream.write((byte[])localObject);
            localBufferedOutputStream.close();
          }
          int j = paramString2.getResponseCode();
          Object localObject = paramString2.getHeaderFields();
          if ((j >= 200) && (j < 300))
          {
            paramAdRequestInfoParcel = paramAdRequestInfoParcel.toString();
            paramContext = ae.e().a(new InputStreamReader(paramString2.getInputStream()));
            a(paramAdRequestInfoParcel, (Map)localObject, paramContext, j);
            localmt.a(paramAdRequestInfoParcel, (Map)localObject, paramContext);
            if (paramdh != null) {
              paramdh.a(localdg, new String[] { "ufe" });
            }
            paramAdRequestInfoParcel = localmt.a(l);
            return paramAdRequestInfoParcel;
            localdg = null;
          }
          else
          {
            a(paramAdRequestInfoParcel.toString(), (Map)localObject, null, j);
            if ((j >= 300) && (j < 400))
            {
              paramAdRequestInfoParcel = paramString2.getHeaderField("Location");
              if (TextUtils.isEmpty(paramAdRequestInfoParcel))
              {
                b.e("No location header to follow redirect.");
                paramAdRequestInfoParcel = new AdResponseParcel(0);
                return paramAdRequestInfoParcel;
              }
              paramAdRequestInfoParcel = new URL(paramAdRequestInfoParcel);
              i += 1;
              if (i > 5)
              {
                b.e("Too many redirects.");
                paramAdRequestInfoParcel = new AdResponseParcel(0);
                return paramAdRequestInfoParcel;
              }
            }
            else
            {
              b.e("Received error HTTP response code: " + j);
              paramAdRequestInfoParcel = new AdResponseParcel(0);
              return paramAdRequestInfoParcel;
            }
            localmt.a((Map)localObject);
            paramString2.disconnect();
          }
        }
      }
      finally
      {
        paramString2.disconnect();
      }
      paramAdRequestInfoParcel = paramAdRequestInfoParcel;
      b.e("Error while connecting to ad server: " + paramAdRequestInfoParcel.getMessage());
      return new AdResponseParcel(2);
    }
  }
  
  public static mg a(Context paramContext, co paramco, mf parammf)
  {
    synchronized (a)
    {
      if (b == null)
      {
        Context localContext = paramContext;
        if (paramContext.getApplicationContext() != null) {
          localContext = paramContext.getApplicationContext();
        }
        b = new mg(localContext, paramco, parammf);
      }
      paramContext = b;
      return paramContext;
    }
  }
  
  private static void a(String paramString1, Map<String, List<String>> paramMap, String paramString2, int paramInt)
  {
    if (b.a(2))
    {
      b.d("Http Response: {\n  URL:\n    " + paramString1 + "\n  Headers:");
      if (paramMap != null)
      {
        paramString1 = paramMap.keySet().iterator();
        while (paramString1.hasNext())
        {
          Object localObject = (String)paramString1.next();
          b.d("    " + (String)localObject + ":");
          localObject = ((List)paramMap.get(localObject)).iterator();
          while (((Iterator)localObject).hasNext())
          {
            String str = (String)((Iterator)localObject).next();
            b.d("      " + str);
          }
        }
      }
      b.d("  Body:");
      if (paramString2 != null)
      {
        int i = 0;
        while (i < Math.min(paramString2.length(), 100000))
        {
          b.d(paramString2.substring(i, Math.min(paramString2.length(), i + 1000)));
          i += 1000;
        }
      }
      b.d("    null");
      b.d("  Response Code:\n    " + paramInt + "\n}");
    }
  }
  
  private static qd b(String paramString, dh paramdh, dg paramdg)
  {
    return new mm(paramdh, paramdg, paramString);
  }
  
  public AdResponseParcel a(AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    return a(c, f, e, d, paramAdRequestInfoParcel);
  }
  
  public void a(AdRequestInfoParcel paramAdRequestInfoParcel, u paramu)
  {
    ae.h().a(c, l);
    oe.b(new mo(this, paramAdRequestInfoParcel, paramu));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.mg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */