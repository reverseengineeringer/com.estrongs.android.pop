package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.net.Uri;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.formats.a;
import com.google.android.gms.ads.internal.formats.c;
import com.google.android.gms.ads.internal.formats.f;
import com.google.android.gms.ads.internal.formats.h;
import com.google.android.gms.ads.internal.formats.o;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.ads.internal.w;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@me
public class ls
  implements Callable<ng>
{
  private static final long a = TimeUnit.SECONDS.toMillis(60L);
  private final Context b;
  private final ox c;
  private final w d;
  private final aj e;
  private final bj f;
  private final Object g = new Object();
  private final nh h;
  private boolean i;
  private int j;
  private List<String> k;
  
  public ls(Context paramContext, w paramw, bj parambj, ox paramox, aj paramaj, nh paramnh)
  {
    b = paramContext;
    d = paramw;
    c = paramox;
    f = parambj;
    h = paramnh;
    e = paramaj;
    i = false;
    j = -2;
    k = null;
  }
  
  private o a(bh parambh, ly paramly, JSONObject paramJSONObject)
  {
    if (b()) {
      return null;
    }
    Object localObject = b(paramJSONObject.getJSONObject("tracking_urls_and_actions"), "impression_tracking_urls");
    if (localObject == null) {}
    for (localObject = null;; localObject = Arrays.asList((Object[])localObject))
    {
      k = ((List)localObject);
      paramly = paramly.a(this, paramJSONObject);
      if (paramly != null) {
        break;
      }
      b.b("Failed to retrieve ad assets.");
      return null;
    }
    paramly.a(new h(b, d, parambh, e, paramJSONObject, paramly, h.a.l));
    return paramly;
  }
  
  private ng a(o paramo)
  {
    for (;;)
    {
      synchronized (g)
      {
        int n = j;
        int m = n;
        if (paramo == null)
        {
          m = n;
          if (j == -2) {
            m = 0;
          }
        }
        if (m != -2)
        {
          paramo = null;
          return new ng(h.a.d, null, h.b.e, m, h.b.g, k, h.b.m, h.b.l, h.a.j, false, null, null, null, null, null, 0L, h.d, h.b.h, h.f, h.g, h.b.p, h.h, paramo, h.a.y);
        }
      }
    }
  }
  
  private po<c> a(JSONObject paramJSONObject, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1) {}
    for (paramJSONObject = paramJSONObject.getString("url"); TextUtils.isEmpty(paramJSONObject); paramJSONObject = paramJSONObject.optString("url"))
    {
      a(0, paramBoolean1);
      return new pk(null);
    }
    if (paramBoolean2) {
      return new pk(new c(null, Uri.parse(paramJSONObject)));
    }
    return c.a(paramJSONObject, new lx(this, paramBoolean1, paramJSONObject));
  }
  
  private Integer a(JSONObject paramJSONObject, String paramString)
  {
    try
    {
      paramJSONObject = paramJSONObject.getJSONObject(paramString);
      int m = Color.rgb(paramJSONObject.getInt("r"), paramJSONObject.getInt("g"), paramJSONObject.getInt("b"));
      return Integer.valueOf(m);
    }
    catch (JSONException paramJSONObject) {}
    return null;
  }
  
  private JSONObject a(bh parambh)
  {
    if (b()) {
      return null;
    }
    pj localpj = new pj();
    lz locallz = new lz(this);
    lt locallt = new lt(this, parambh, locallz, localpj);
    a = locallt;
    parambh.a("/nativeAdPreProcess", locallt);
    parambh.a("google.afma.nativeAds.preProcessJsonGmsg", new JSONObject(h.b.d));
    return (JSONObject)localpj.get(a, TimeUnit.MILLISECONDS);
  }
  
  private void a(o paramo, bh parambh)
  {
    if (!(paramo instanceof f)) {
      return;
    }
    Object localObject = (f)paramo;
    paramo = new lz(this);
    localObject = new lv(this, (f)localObject);
    a = ((fq)localObject);
    parambh.a("/nativeAdCustomClick", (fq)localObject);
  }
  
  private void a(ej paramej, String paramString)
  {
    try
    {
      es locales = d.b(paramej.k());
      if (locales != null) {
        locales.a(paramej, paramString);
      }
      return;
    }
    catch (RemoteException paramej)
    {
      b.d("Failed to call onCustomClick for asset " + paramString + ".", paramej);
    }
  }
  
  private String[] b(JSONObject paramJSONObject, String paramString)
  {
    paramJSONObject = paramJSONObject.optJSONArray(paramString);
    if (paramJSONObject == null) {
      return null;
    }
    paramString = new String[paramJSONObject.length()];
    int m = 0;
    while (m < paramJSONObject.length())
    {
      paramString[m] = paramJSONObject.getString(m);
      m += 1;
    }
    return paramString;
  }
  
  private bh c()
  {
    if (b()) {
      return null;
    }
    String str = (String)cz.Z.c();
    if (h.b.c.indexOf("https") == 0) {}
    for (Object localObject = "https:";; localObject = "http:")
    {
      localObject = (String)localObject + str;
      localObject = (bh)f.a(b, h.a.l, (String)localObject, e).get(a, TimeUnit.MILLISECONDS);
      ((bh)localObject).a(d, d, d, d, false, null, null, null, null);
      return (bh)localObject;
    }
  }
  
  protected ly a(JSONObject paramJSONObject)
  {
    if (b()) {
      return null;
    }
    String str = paramJSONObject.getString("template_id");
    boolean bool1;
    if (h.a.D != null)
    {
      bool1 = h.a.D.c;
      if (h.a.D == null) {
        break label98;
      }
    }
    label98:
    for (boolean bool2 = h.a.D.e;; bool2 = false)
    {
      if (!"2".equals(str)) {
        break label103;
      }
      return new ma(bool1, bool2);
      bool1 = false;
      break;
    }
    label103:
    if ("1".equals(str)) {
      return new mb(bool1, bool2);
    }
    if ("3".equals(str))
    {
      str = paramJSONObject.getString("custom_template_id");
      pj localpj = new pj();
      oe.a.post(new lu(this, localpj, str));
      if (localpj.get(a, TimeUnit.MILLISECONDS) != null) {
        return new mc(bool1);
      }
      b.b("No handler for custom template: " + paramJSONObject.getString("custom_template_id"));
    }
    for (;;)
    {
      return null;
      a(0);
    }
  }
  
  public ng a()
  {
    try
    {
      Object localObject1 = c();
      Object localObject2 = a((bh)localObject1);
      localObject2 = a((bh)localObject1, a((JSONObject)localObject2), (JSONObject)localObject2);
      a((o)localObject2, (bh)localObject1);
      localObject1 = a((o)localObject2);
      return (ng)localObject1;
    }
    catch (JSONException localJSONException)
    {
      b.d("Malformed native JSON response.", localJSONException);
      if (!i) {
        a(0);
      }
      return a(null);
    }
    catch (TimeoutException localTimeoutException)
    {
      for (;;)
      {
        b.d("Timeout when loading native ad.", localTimeoutException);
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
    catch (ExecutionException localExecutionException)
    {
      for (;;) {}
    }
    catch (CancellationException localCancellationException)
    {
      for (;;) {}
    }
  }
  
  public po<c> a(JSONObject paramJSONObject, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1) {}
    for (paramJSONObject = paramJSONObject.getJSONObject(paramString);; paramJSONObject = paramJSONObject.optJSONObject(paramString))
    {
      paramString = paramJSONObject;
      if (paramJSONObject == null) {
        paramString = new JSONObject();
      }
      return a(paramString, paramBoolean1, paramBoolean2);
    }
  }
  
  public List<po<c>> a(JSONObject paramJSONObject, String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean1) {}
    ArrayList localArrayList;
    for (paramJSONObject = paramJSONObject.getJSONArray(paramString);; paramJSONObject = paramJSONObject.optJSONArray(paramString))
    {
      localArrayList = new ArrayList();
      if ((paramJSONObject != null) && (paramJSONObject.length() != 0)) {
        break;
      }
      a(0, paramBoolean1);
      return localArrayList;
    }
    if (paramBoolean3) {}
    for (int m = paramJSONObject.length();; m = 1)
    {
      int n = 0;
      while (n < m)
      {
        JSONObject localJSONObject = paramJSONObject.getJSONObject(n);
        paramString = localJSONObject;
        if (localJSONObject == null) {
          paramString = new JSONObject();
        }
        localArrayList.add(a(paramString, paramBoolean1, paramBoolean2));
        n += 1;
      }
    }
    return localArrayList;
  }
  
  public Future<c> a(JSONObject paramJSONObject, String paramString, boolean paramBoolean)
  {
    paramString = paramJSONObject.getJSONObject(paramString);
    boolean bool = paramString.optBoolean("require", true);
    paramJSONObject = paramString;
    if (paramString == null) {
      paramJSONObject = new JSONObject();
    }
    return a(paramJSONObject, bool, paramBoolean);
  }
  
  public void a(int paramInt)
  {
    synchronized (g)
    {
      i = true;
      j = paramInt;
      return;
    }
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      a(paramInt);
    }
  }
  
  public po<a> b(JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.optJSONObject("attribution");
    if (paramJSONObject == null) {
      return new pk(null);
    }
    String str = paramJSONObject.optString("text");
    int m = paramJSONObject.optInt("text_size", -1);
    Integer localInteger1 = a(paramJSONObject, "text_color");
    Integer localInteger2 = a(paramJSONObject, "bg_color");
    return pl.a(a(paramJSONObject, "image", false, false), new lw(this, str, localInteger2, localInteger1, m));
  }
  
  public boolean b()
  {
    synchronized (g)
    {
      boolean bool = i;
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */