package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Color;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.SearchAdRequestParcel;
import com.google.android.gms.ads.internal.client.m;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.appdatasearch.DocumentContents;
import com.google.android.gms.appdatasearch.DocumentSection;
import com.google.android.gms.appdatasearch.UsageInfo;
import com.google.android.gms.common.internal.i;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@me
public final class mp
{
  private static final SimpleDateFormat a = new SimpleDateFormat("yyyyMMdd", Locale.US);
  
  public static AdResponseParcel a(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, String paramString)
  {
    JSONObject localJSONObject;
    String str1;
    String str2;
    String str3;
    boolean bool1;
    long l2;
    String str4;
    long l1;
    label107:
    Object localObject1;
    int i;
    label246:
    Object localObject2;
    label284:
    int j;
    for (;;)
    {
      try
      {
        localJSONObject = new JSONObject(paramString);
        str1 = localJSONObject.optString("ad_base_url", null);
        str2 = localJSONObject.optString("ad_url", null);
        str3 = localJSONObject.optString("ad_size", null);
        if ((paramAdRequestInfoParcel == null) || (n == 0)) {
          break label817;
        }
        bool1 = true;
        if (bool1)
        {
          paramString = localJSONObject.optString("ad_json", null);
          l2 = -1L;
          str4 = localJSONObject.optString("debug_dialog", null);
          if (!localJSONObject.has("interstitial_timeout")) {
            break label823;
          }
          l1 = (localJSONObject.getDouble("interstitial_timeout") * 1000.0D);
          localObject1 = localJSONObject.optString("orientation", null);
          i = -1;
          if ("portrait".equals(localObject1))
          {
            i = ae.g().b();
            if (TextUtils.isEmpty(paramString)) {
              continue;
            }
            if (!TextUtils.isEmpty(str1)) {
              break label808;
            }
            b.e("Could not parse the mediation config: Missing required ad_base_url field");
            return new AdResponseParcel(0);
          }
        }
        else
        {
          paramString = localJSONObject.optString("ad_html", null);
          continue;
        }
        if (!"landscape".equals(localObject1)) {
          continue;
        }
        i = ae.g().a();
        continue;
        if (!TextUtils.isEmpty(str2))
        {
          localObject1 = mg.a(paramAdRequestInfoParcel, paramContext, l.c, str2, null, null, null, null);
          str1 = c;
          str2 = d;
          l2 = o;
          localObject2 = localJSONObject.optJSONArray("click_urls");
          if (localObject1 != null) {
            break label416;
          }
          paramContext = null;
          if (localObject2 == null) {
            break;
          }
          paramString = paramContext;
          if (paramContext != null) {
            break label831;
          }
          paramString = new LinkedList();
          break label831;
          if (j >= ((JSONArray)localObject2).length()) {
            break label837;
          }
          paramString.add(((JSONArray)localObject2).getString(j));
          j += 1;
          continue;
        }
        paramAdRequestInfoParcel = new StringBuilder().append("Could not parse the mediation config: Missing required ");
        if (bool1)
        {
          paramContext = "ad_json";
          b.e(paramContext + " or " + "ad_url" + " field.");
          paramContext = new AdResponseParcel(0);
          return paramContext;
        }
      }
      catch (JSONException paramContext)
      {
        b.e("Could not parse the mediation config: " + paramContext.getMessage());
        return new AdResponseParcel(0);
      }
      paramContext = "ad_html";
      continue;
      label416:
      paramContext = e;
    }
    label425:
    Object localObject3 = localJSONObject.optJSONArray("impression_urls");
    if (localObject1 == null) {
      paramContext = null;
    }
    while (localObject3 != null)
    {
      paramString = paramContext;
      if (paramContext != null) {
        break label843;
      }
      paramString = new LinkedList();
      break label843;
      label463:
      while (j < ((JSONArray)localObject3).length())
      {
        paramString.add(((JSONArray)localObject3).getString(j));
        j += 1;
      }
      paramContext = g;
      continue;
      label505:
      JSONArray localJSONArray = localJSONObject.optJSONArray("manual_impression_urls");
      if (localObject1 == null) {}
      for (paramContext = null; localJSONArray != null; paramContext = k)
      {
        paramString = paramContext;
        if (paramContext != null) {
          break label855;
        }
        paramString = new LinkedList();
        break label855;
        label543:
        while (j < localJSONArray.length())
        {
          paramString.add(localJSONArray.getString(j));
          j += 1;
        }
      }
    }
    for (;;)
    {
      j = i;
      if (localObject1 != null)
      {
        if (m != -1) {
          i = m;
        }
        j = i;
        if (h > 0L) {
          l1 = h;
        }
      }
      for (;;)
      {
        localObject1 = localJSONObject.optString("active_view");
        paramString = null;
        boolean bool2 = localJSONObject.optBoolean("ad_is_javascript", false);
        if (bool2) {
          paramString = localJSONObject.optString("ad_passback_url", null);
        }
        boolean bool3 = localJSONObject.optBoolean("mediation", false);
        boolean bool4 = localJSONObject.optBoolean("custom_render_allowed", false);
        boolean bool5 = localJSONObject.optBoolean("content_url_opted_out", true);
        boolean bool6 = localJSONObject.optBoolean("prefetch", false);
        j = localJSONObject.optInt("oauth2_token_status", 0);
        long l3 = localJSONObject.optLong("refresh_interval_milliseconds", -1L);
        paramContext = new AdResponseParcel(paramAdRequestInfoParcel, str1, str2, (List)localObject2, (List)localObject3, l1, bool3, localJSONObject.optLong("mediation_config_cache_time_milliseconds", -1L), paramContext, l3, i, str3, l2, str4, bool2, paramString, (String)localObject1, bool4, bool1, q, bool5, bool6, j);
        return paramContext;
        i = j;
      }
      continue;
      localObject3 = paramContext;
      break label505;
      localObject2 = paramContext;
      break label425;
      label808:
      localObject1 = null;
      str2 = paramString;
      break label246;
      label817:
      bool1 = false;
      break;
      label823:
      l1 = -1L;
      break label107;
      label831:
      j = 0;
      break label284;
      label837:
      localObject2 = paramString;
      break label425;
      label843:
      j = 0;
      break label463;
      localObject3 = paramString;
      break label505;
      label855:
      j = 0;
      break label543;
      paramContext = paramString;
    }
  }
  
  /* Error */
  private static UsageInfo a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: new 248	com/google/android/gms/common/api/o
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 251	com/google/android/gms/common/api/o:<init>	(Landroid/content/Context;)V
    //   8: getstatic 256	com/google/android/gms/appdatasearch/e:b	Lcom/google/android/gms/common/api/a;
    //   11: invokevirtual 259	com/google/android/gms/common/api/o:a	(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/o;
    //   14: invokevirtual 262	com/google/android/gms/common/api/o:b	()Lcom/google/android/gms/common/api/n;
    //   17: astore_0
    //   18: aload_0
    //   19: invokeinterface 266 1 0
    //   24: new 268	com/google/android/gms/appdatasearch/a
    //   27: dup
    //   28: invokespecial 269	com/google/android/gms/appdatasearch/a:<init>	()V
    //   31: iconst_1
    //   32: invokevirtual 272	com/google/android/gms/appdatasearch/a:a	(Z)Lcom/google/android/gms/appdatasearch/a;
    //   35: aload_1
    //   36: invokevirtual 275	com/google/android/gms/appdatasearch/a:a	(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/a;
    //   39: invokevirtual 278	com/google/android/gms/appdatasearch/a:a	()Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;
    //   42: astore_1
    //   43: getstatic 281	com/google/android/gms/appdatasearch/e:c	Lcom/google/android/gms/appdatasearch/p;
    //   46: aload_0
    //   47: aload_1
    //   48: invokeinterface 286 3 0
    //   53: lconst_1
    //   54: getstatic 292	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   57: invokeinterface 297 4 0
    //   62: checkcast 299	com/google/android/gms/appdatasearch/GetRecentContextCall$Response
    //   65: astore_1
    //   66: aload_1
    //   67: ifnull +13 -> 80
    //   70: aload_1
    //   71: invokevirtual 302	com/google/android/gms/appdatasearch/GetRecentContextCall$Response:a	()Lcom/google/android/gms/common/api/Status;
    //   74: invokevirtual 307	com/google/android/gms/common/api/Status:e	()Z
    //   77: ifne +21 -> 98
    //   80: ldc_w 309
    //   83: invokestatic 311	com/google/android/gms/ads/internal/util/client/b:c	(Ljava/lang/String;)V
    //   86: aload_0
    //   87: ifnull +9 -> 96
    //   90: aload_0
    //   91: invokeinterface 313 1 0
    //   96: aconst_null
    //   97: areturn
    //   98: aload_1
    //   99: getfield 315	com/google/android/gms/appdatasearch/GetRecentContextCall$Response:b	Ljava/util/List;
    //   102: ifnull +15 -> 117
    //   105: aload_1
    //   106: getfield 315	com/google/android/gms/appdatasearch/GetRecentContextCall$Response:b	Ljava/util/List;
    //   109: invokeinterface 317 1 0
    //   114: ifeq +21 -> 135
    //   117: ldc_w 319
    //   120: invokestatic 311	com/google/android/gms/ads/internal/util/client/b:c	(Ljava/lang/String;)V
    //   123: aload_0
    //   124: ifnull -28 -> 96
    //   127: aload_0
    //   128: invokeinterface 313 1 0
    //   133: aconst_null
    //   134: areturn
    //   135: aload_1
    //   136: getfield 315	com/google/android/gms/appdatasearch/GetRecentContextCall$Response:b	Ljava/util/List;
    //   139: iconst_0
    //   140: invokeinterface 323 2 0
    //   145: checkcast 325	com/google/android/gms/appdatasearch/UsageInfo
    //   148: astore_2
    //   149: aload_2
    //   150: astore_1
    //   151: aload_0
    //   152: ifnull +11 -> 163
    //   155: aload_0
    //   156: invokeinterface 313 1 0
    //   161: aload_2
    //   162: astore_1
    //   163: aload_1
    //   164: areturn
    //   165: astore_0
    //   166: aconst_null
    //   167: astore_0
    //   168: ldc_w 327
    //   171: invokestatic 103	com/google/android/gms/ads/internal/util/client/b:e	(Ljava/lang/String;)V
    //   174: aload_0
    //   175: ifnull +41 -> 216
    //   178: aload_0
    //   179: invokeinterface 313 1 0
    //   184: aconst_null
    //   185: astore_1
    //   186: goto -23 -> 163
    //   189: astore_1
    //   190: aconst_null
    //   191: astore_0
    //   192: aload_0
    //   193: ifnull +9 -> 202
    //   196: aload_0
    //   197: invokeinterface 313 1 0
    //   202: aload_1
    //   203: athrow
    //   204: astore_1
    //   205: goto -13 -> 192
    //   208: astore_1
    //   209: goto -17 -> 192
    //   212: astore_1
    //   213: goto -45 -> 168
    //   216: aconst_null
    //   217: astore_1
    //   218: goto -55 -> 163
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	221	0	paramContext	Context
    //   0	221	1	paramString	String
    //   148	14	2	localUsageInfo	UsageInfo
    // Exception table:
    //   from	to	target	type
    //   0	18	165	java/lang/SecurityException
    //   0	18	189	finally
    //   18	66	204	finally
    //   70	80	204	finally
    //   80	86	204	finally
    //   98	117	204	finally
    //   117	123	204	finally
    //   135	149	204	finally
    //   168	174	208	finally
    //   18	66	212	java/lang/SecurityException
    //   70	80	212	java/lang/SecurityException
    //   80	86	212	java/lang/SecurityException
    //   98	117	212	java/lang/SecurityException
    //   117	123	212	java/lang/SecurityException
    //   135	149	212	java/lang/SecurityException
  }
  
  private static Integer a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0) {
      return Integer.valueOf(i);
    }
  }
  
  private static String a(int paramInt)
  {
    return String.format(Locale.US, "#%06x", new Object[] { Integer.valueOf(0xFFFFFF & paramInt) });
  }
  
  private static String a(NativeAdOptionsParcel paramNativeAdOptionsParcel)
  {
    if (paramNativeAdOptionsParcel != null) {}
    for (int i = d;; i = 0) {
      switch (i)
      {
      default: 
        return "any";
      }
    }
    return "portrait";
    return "landscape";
  }
  
  /* Error */
  public static JSONObject a(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, mv parammv, na paramna, Location paramLocation, co paramco, String paramString1, String paramString2, List<String> paramList)
  {
    // Byte code:
    //   0: new 351	java/util/HashMap
    //   3: dup
    //   4: invokespecial 352	java/util/HashMap:<init>	()V
    //   7: astore 4
    //   9: aload 8
    //   11: invokeinterface 355 1 0
    //   16: ifle +20 -> 36
    //   19: aload 4
    //   21: ldc_w 357
    //   24: ldc_w 359
    //   27: aload 8
    //   29: invokestatic 363	android/text/TextUtils:join	(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    //   32: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   35: pop
    //   36: aload_1
    //   37: getfield 370	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:c	Landroid/os/Bundle;
    //   40: ifnull +16 -> 56
    //   43: aload 4
    //   45: ldc_w 372
    //   48: aload_1
    //   49: getfield 370	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:c	Landroid/os/Bundle;
    //   52: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   55: pop
    //   56: aload 4
    //   58: aload_1
    //   59: getfield 375	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    //   62: invokestatic 378	com/google/android/gms/internal/mp:a	(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    //   65: aload 4
    //   67: ldc_w 379
    //   70: aload_1
    //   71: getfield 382	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:e	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   74: getfield 385	com/google/android/gms/ads/internal/client/AdSizeParcel:c	Ljava/lang/String;
    //   77: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   80: pop
    //   81: aload_1
    //   82: getfield 382	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:e	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   85: getfield 387	com/google/android/gms/ads/internal/client/AdSizeParcel:g	I
    //   88: iconst_m1
    //   89: if_icmpne +15 -> 104
    //   92: aload 4
    //   94: ldc_w 389
    //   97: ldc_w 391
    //   100: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   103: pop
    //   104: aload_1
    //   105: getfield 382	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:e	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   108: getfield 392	com/google/android/gms/ads/internal/client/AdSizeParcel:d	I
    //   111: bipush -2
    //   113: if_icmpne +15 -> 128
    //   116: aload 4
    //   118: ldc_w 394
    //   121: ldc_w 396
    //   124: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   127: pop
    //   128: aload_1
    //   129: getfield 382	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:e	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   132: getfield 400	com/google/android/gms/ads/internal/client/AdSizeParcel:i	[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   135: ifnull +172 -> 307
    //   138: new 163	java/lang/StringBuilder
    //   141: dup
    //   142: invokespecial 164	java/lang/StringBuilder:<init>	()V
    //   145: astore 8
    //   147: aload_1
    //   148: getfield 382	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:e	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   151: getfield 400	com/google/android/gms/ads/internal/client/AdSizeParcel:i	[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   154: astore 13
    //   156: aload 13
    //   158: arraylength
    //   159: istore 11
    //   161: iconst_0
    //   162: istore 9
    //   164: iload 9
    //   166: iload 11
    //   168: if_icmpge +128 -> 296
    //   171: aload 13
    //   173: iload 9
    //   175: aaload
    //   176: astore 14
    //   178: aload 8
    //   180: invokevirtual 401	java/lang/StringBuilder:length	()I
    //   183: ifeq +12 -> 195
    //   186: aload 8
    //   188: ldc_w 403
    //   191: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: pop
    //   195: aload 14
    //   197: getfield 387	com/google/android/gms/ads/internal/client/AdSizeParcel:g	I
    //   200: iconst_m1
    //   201: if_icmpne +75 -> 276
    //   204: aload 14
    //   206: getfield 405	com/google/android/gms/ads/internal/client/AdSizeParcel:h	I
    //   209: i2f
    //   210: aload_2
    //   211: getfield 411	com/google/android/gms/internal/mv:r	F
    //   214: fdiv
    //   215: f2i
    //   216: istore 10
    //   218: aload 8
    //   220: iload 10
    //   222: invokevirtual 414	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   225: pop
    //   226: aload 8
    //   228: ldc_w 416
    //   231: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: pop
    //   235: aload 14
    //   237: getfield 392	com/google/android/gms/ads/internal/client/AdSizeParcel:d	I
    //   240: bipush -2
    //   242: if_icmpne +44 -> 286
    //   245: aload 14
    //   247: getfield 418	com/google/android/gms/ads/internal/client/AdSizeParcel:e	I
    //   250: i2f
    //   251: aload_2
    //   252: getfield 411	com/google/android/gms/internal/mv:r	F
    //   255: fdiv
    //   256: f2i
    //   257: istore 10
    //   259: aload 8
    //   261: iload 10
    //   263: invokevirtual 414	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   266: pop
    //   267: iload 9
    //   269: iconst_1
    //   270: iadd
    //   271: istore 9
    //   273: goto -109 -> 164
    //   276: aload 14
    //   278: getfield 387	com/google/android/gms/ads/internal/client/AdSizeParcel:g	I
    //   281: istore 10
    //   283: goto -65 -> 218
    //   286: aload 14
    //   288: getfield 392	com/google/android/gms/ads/internal/client/AdSizeParcel:d	I
    //   291: istore 10
    //   293: goto -34 -> 259
    //   296: aload 4
    //   298: ldc_w 420
    //   301: aload 8
    //   303: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   306: pop
    //   307: aload_1
    //   308: getfield 50	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:n	I
    //   311: ifeq +73 -> 384
    //   314: aload 4
    //   316: ldc_w 422
    //   319: aload_1
    //   320: getfield 50	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:n	I
    //   323: invokestatic 334	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   326: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   329: pop
    //   330: aload 4
    //   332: ldc_w 424
    //   335: aload_1
    //   336: getfield 426	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:o	Ljava/util/List;
    //   339: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   342: pop
    //   343: aload 4
    //   345: ldc_w 428
    //   348: aload_1
    //   349: getfield 432	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:D	Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;
    //   352: invokestatic 434	com/google/android/gms/internal/mp:a	(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)Ljava/lang/String;
    //   355: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   358: pop
    //   359: aload_1
    //   360: getfield 437	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:E	Ljava/util/List;
    //   363: invokeinterface 317 1 0
    //   368: ifne +16 -> 384
    //   371: aload 4
    //   373: ldc_w 439
    //   376: aload_1
    //   377: getfield 437	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:E	Ljava/util/List;
    //   380: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   383: pop
    //   384: aload 4
    //   386: ldc_w 441
    //   389: aload_1
    //   390: getfield 444	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:f	Ljava/lang/String;
    //   393: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   396: pop
    //   397: aload 4
    //   399: ldc_w 446
    //   402: aload_1
    //   403: getfield 449	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:g	Landroid/content/pm/ApplicationInfo;
    //   406: getfield 454	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   409: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   412: pop
    //   413: aload_1
    //   414: getfield 457	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:h	Landroid/content/pm/PackageInfo;
    //   417: ifnull +22 -> 439
    //   420: aload 4
    //   422: ldc_w 459
    //   425: aload_1
    //   426: getfield 457	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:h	Landroid/content/pm/PackageInfo;
    //   429: getfield 464	android/content/pm/PackageInfo:versionCode	I
    //   432: invokestatic 334	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   435: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   438: pop
    //   439: aload 4
    //   441: ldc_w 466
    //   444: aload 7
    //   446: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   449: pop
    //   450: aload 4
    //   452: ldc_w 468
    //   455: aload_1
    //   456: getfield 471	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:j	Ljava/lang/String;
    //   459: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   462: pop
    //   463: aload 4
    //   465: ldc_w 473
    //   468: aload_1
    //   469: getfield 475	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:k	Ljava/lang/String;
    //   472: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   475: pop
    //   476: aload 4
    //   478: ldc_w 477
    //   481: aload_1
    //   482: getfield 118	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:l	Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    //   485: getfield 124	com/google/android/gms/ads/internal/util/client/VersionInfoParcel:c	Ljava/lang/String;
    //   488: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   491: pop
    //   492: aload 4
    //   494: aload_2
    //   495: aload_3
    //   496: invokestatic 480	com/google/android/gms/internal/mp:a	(Ljava/util/HashMap;Lcom/google/android/gms/internal/mv;Lcom/google/android/gms/internal/na;)V
    //   499: aload 4
    //   501: ldc_w 482
    //   504: aload 5
    //   506: invokevirtual 485	com/google/android/gms/internal/co:b	()I
    //   509: invokestatic 334	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   512: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   515: pop
    //   516: aload 4
    //   518: ldc_w 487
    //   521: getstatic 492	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   524: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   527: pop
    //   528: aload 4
    //   530: ldc_w 494
    //   533: getstatic 497	android/os/Build:MODEL	Ljava/lang/String;
    //   536: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   539: pop
    //   540: aload_1
    //   541: getfield 375	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    //   544: getfield 501	com/google/android/gms/ads/internal/client/AdRequestParcel:b	I
    //   547: iconst_2
    //   548: if_icmplt +25 -> 573
    //   551: aload_1
    //   552: getfield 375	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    //   555: getfield 504	com/google/android/gms/ads/internal/client/AdRequestParcel:l	Landroid/location/Location;
    //   558: ifnull +15 -> 573
    //   561: aload 4
    //   563: aload_1
    //   564: getfield 375	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    //   567: getfield 504	com/google/android/gms/ads/internal/client/AdRequestParcel:l	Landroid/location/Location;
    //   570: invokestatic 507	com/google/android/gms/internal/mp:a	(Ljava/util/HashMap;Landroid/location/Location;)V
    //   573: aload_1
    //   574: getfield 508	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:b	I
    //   577: iconst_2
    //   578: if_icmplt +16 -> 594
    //   581: aload 4
    //   583: ldc_w 510
    //   586: aload_1
    //   587: getfield 512	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:m	Landroid/os/Bundle;
    //   590: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   593: pop
    //   594: aload_1
    //   595: getfield 508	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:b	I
    //   598: iconst_4
    //   599: if_icmplt +26 -> 625
    //   602: aload_1
    //   603: getfield 240	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:q	Z
    //   606: ifeq +19 -> 625
    //   609: aload 4
    //   611: ldc_w 514
    //   614: aload_1
    //   615: getfield 240	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:q	Z
    //   618: invokestatic 519	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   621: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   624: pop
    //   625: aload_1
    //   626: getfield 508	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:b	I
    //   629: iconst_4
    //   630: if_icmplt +31 -> 661
    //   633: aload_1
    //   634: getfield 522	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:p	Landroid/os/Bundle;
    //   637: ifnull +24 -> 661
    //   640: aload_1
    //   641: getfield 522	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:p	Landroid/os/Bundle;
    //   644: astore_3
    //   645: aload_0
    //   646: aload_1
    //   647: aload_3
    //   648: invokestatic 525	com/google/android/gms/internal/mp:a	(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Bundle;)V
    //   651: aload 4
    //   653: ldc_w 527
    //   656: aload_3
    //   657: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   660: pop
    //   661: aload_1
    //   662: getfield 508	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:b	I
    //   665: iconst_5
    //   666: if_icmplt +274 -> 940
    //   669: aload 4
    //   671: ldc_w 529
    //   674: aload_1
    //   675: getfield 532	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:u	F
    //   678: invokestatic 537	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   681: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   684: pop
    //   685: aload 4
    //   687: ldc_w 539
    //   690: aload_1
    //   691: getfield 542	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:t	I
    //   694: invokestatic 334	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   697: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   700: pop
    //   701: aload 4
    //   703: ldc_w 544
    //   706: aload_1
    //   707: getfield 547	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:s	I
    //   710: invokestatic 334	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   713: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   716: pop
    //   717: aload_1
    //   718: getfield 508	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:b	I
    //   721: bipush 6
    //   723: if_icmplt +104 -> 827
    //   726: aload_1
    //   727: getfield 550	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:v	Ljava/lang/String;
    //   730: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   733: istore 12
    //   735: iload 12
    //   737: ifne +23 -> 760
    //   740: aload 4
    //   742: ldc_w 552
    //   745: new 31	org/json/JSONObject
    //   748: dup
    //   749: aload_1
    //   750: getfield 550	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:v	Ljava/lang/String;
    //   753: invokespecial 34	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   756: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   759: pop
    //   760: getstatic 558	com/google/android/gms/internal/cz:V	Lcom/google/android/gms/internal/cr;
    //   763: invokevirtual 563	com/google/android/gms/internal/cr:c	()Ljava/lang/Object;
    //   766: checkcast 516	java/lang/Boolean
    //   769: invokevirtual 566	java/lang/Boolean:booleanValue	()Z
    //   772: ifeq +39 -> 811
    //   775: aload_1
    //   776: getfield 569	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:w	Z
    //   779: ifeq +32 -> 811
    //   782: aload 4
    //   784: ldc_w 571
    //   787: aload_1
    //   788: getfield 573	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:x	I
    //   791: invokestatic 334	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   794: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   797: pop
    //   798: aload 4
    //   800: ldc_w 575
    //   803: aload_1
    //   804: getfield 578	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:y	Ljava/lang/String;
    //   807: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   810: pop
    //   811: aload 4
    //   813: ldc_w 580
    //   816: aload_1
    //   817: getfield 583	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:z	J
    //   820: invokestatic 588	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   823: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   826: pop
    //   827: aload_1
    //   828: getfield 508	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:b	I
    //   831: bipush 7
    //   833: if_icmplt +16 -> 849
    //   836: aload 4
    //   838: ldc_w 590
    //   841: aload_1
    //   842: getfield 593	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:A	Ljava/lang/String;
    //   845: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   848: pop
    //   849: aload_1
    //   850: getfield 508	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:b	I
    //   853: bipush 11
    //   855: if_icmplt +26 -> 881
    //   858: aload_1
    //   859: getfield 597	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:G	Lcom/google/android/gms/ads/internal/request/CapabilityParcel;
    //   862: ifnull +19 -> 881
    //   865: aload 4
    //   867: ldc_w 599
    //   870: aload_1
    //   871: getfield 597	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:G	Lcom/google/android/gms/ads/internal/request/CapabilityParcel;
    //   874: invokevirtual 604	com/google/android/gms/ads/internal/request/CapabilityParcel:a	()Landroid/os/Bundle;
    //   877: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   880: pop
    //   881: aload 4
    //   883: aload 6
    //   885: invokestatic 607	com/google/android/gms/internal/mp:a	(Ljava/util/HashMap;Ljava/lang/String;)V
    //   888: iconst_2
    //   889: invokestatic 610	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   892: ifeq +39 -> 931
    //   895: invokestatic 613	com/google/android/gms/ads/internal/ae:e	()Lcom/google/android/gms/internal/oe;
    //   898: aload 4
    //   900: invokevirtual 618	com/google/android/gms/internal/oe:a	(Ljava/util/Map;)Lorg/json/JSONObject;
    //   903: iconst_2
    //   904: invokevirtual 620	org/json/JSONObject:toString	(I)Ljava/lang/String;
    //   907: astore_0
    //   908: new 163	java/lang/StringBuilder
    //   911: dup
    //   912: invokespecial 164	java/lang/StringBuilder:<init>	()V
    //   915: ldc_w 622
    //   918: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   921: aload_0
    //   922: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   925: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   928: invokestatic 624	com/google/android/gms/ads/internal/util/client/b:d	(Ljava/lang/String;)V
    //   931: invokestatic 613	com/google/android/gms/ads/internal/ae:e	()Lcom/google/android/gms/internal/oe;
    //   934: aload 4
    //   936: invokevirtual 618	com/google/android/gms/internal/oe:a	(Ljava/util/Map;)Lorg/json/JSONObject;
    //   939: areturn
    //   940: aload 4
    //   942: ldc_w 529
    //   945: aload_2
    //   946: getfield 411	com/google/android/gms/internal/mv:r	F
    //   949: invokestatic 537	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   952: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   955: pop
    //   956: aload 4
    //   958: ldc_w 539
    //   961: aload_2
    //   962: getfield 625	com/google/android/gms/internal/mv:t	I
    //   965: invokestatic 334	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   968: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   971: pop
    //   972: aload 4
    //   974: ldc_w 544
    //   977: aload_2
    //   978: getfield 626	com/google/android/gms/internal/mv:s	I
    //   981: invokestatic 334	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   984: invokevirtual 367	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   987: pop
    //   988: goto -271 -> 717
    //   991: astore_0
    //   992: new 163	java/lang/StringBuilder
    //   995: dup
    //   996: invokespecial 164	java/lang/StringBuilder:<init>	()V
    //   999: ldc_w 628
    //   1002: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1005: aload_0
    //   1006: invokevirtual 183	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   1009: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1012: invokevirtual 178	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1015: invokestatic 103	com/google/android/gms/ads/internal/util/client/b:e	(Ljava/lang/String;)V
    //   1018: aconst_null
    //   1019: areturn
    //   1020: astore_0
    //   1021: ldc_w 630
    //   1024: aload_0
    //   1025: invokestatic 633	com/google/android/gms/ads/internal/util/client/b:d	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1028: goto -268 -> 760
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1031	0	paramContext	Context
    //   0	1031	1	paramAdRequestInfoParcel	AdRequestInfoParcel
    //   0	1031	2	parammv	mv
    //   0	1031	3	paramna	na
    //   0	1031	4	paramLocation	Location
    //   0	1031	5	paramco	co
    //   0	1031	6	paramString1	String
    //   0	1031	7	paramString2	String
    //   0	1031	8	paramList	List<String>
    //   162	110	9	i	int
    //   216	76	10	j	int
    //   159	10	11	k	int
    //   733	3	12	bool	boolean
    //   154	18	13	arrayOfAdSizeParcel	com.google.android.gms.ads.internal.client.AdSizeParcel[]
    //   176	111	14	localAdSizeParcel	com.google.android.gms.ads.internal.client.AdSizeParcel
    // Exception table:
    //   from	to	target	type
    //   0	36	991	org/json/JSONException
    //   36	56	991	org/json/JSONException
    //   56	104	991	org/json/JSONException
    //   104	128	991	org/json/JSONException
    //   128	161	991	org/json/JSONException
    //   178	195	991	org/json/JSONException
    //   195	218	991	org/json/JSONException
    //   218	259	991	org/json/JSONException
    //   259	267	991	org/json/JSONException
    //   276	283	991	org/json/JSONException
    //   286	293	991	org/json/JSONException
    //   296	307	991	org/json/JSONException
    //   307	384	991	org/json/JSONException
    //   384	439	991	org/json/JSONException
    //   439	573	991	org/json/JSONException
    //   573	594	991	org/json/JSONException
    //   594	625	991	org/json/JSONException
    //   625	661	991	org/json/JSONException
    //   661	717	991	org/json/JSONException
    //   717	735	991	org/json/JSONException
    //   760	811	991	org/json/JSONException
    //   811	827	991	org/json/JSONException
    //   827	849	991	org/json/JSONException
    //   849	881	991	org/json/JSONException
    //   881	931	991	org/json/JSONException
    //   931	940	991	org/json/JSONException
    //   940	988	991	org/json/JSONException
    //   1021	1028	991	org/json/JSONException
    //   740	760	1020	org/json/JSONException
  }
  
  static void a(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, Bundle paramBundle)
  {
    if (!((Boolean)cz.P.c()).booleanValue())
    {
      b.c("App index is not enabled");
      return;
    }
    if (!i.a)
    {
      b.c("Not on package side, return");
      return;
    }
    if (m.a().b())
    {
      b.c("Cannot invoked on UI thread");
      return;
    }
    if ((paramAdRequestInfoParcel == null) || (h == null))
    {
      b.e("Invalid ad request info");
      return;
    }
    paramAdRequestInfoParcel = h.packageName;
    if (TextUtils.isEmpty(paramAdRequestInfoParcel))
    {
      b.e("Fail to get package name");
      return;
    }
    try
    {
      a(a(paramContext, paramAdRequestInfoParcel), paramAdRequestInfoParcel, paramBundle);
      return;
    }
    catch (RuntimeException paramContext)
    {
      b.c("Fail to add app index to content info");
    }
  }
  
  static void a(UsageInfo paramUsageInfo, String paramString, Bundle paramBundle)
  {
    if ((paramUsageInfo == null) || (paramUsageInfo.a() == null)) {}
    for (;;)
    {
      return;
      paramUsageInfo = paramUsageInfo.a();
      String str = paramUsageInfo.a();
      if (!TextUtils.isEmpty(str)) {
        paramBundle.putString("web_url", str);
      }
      try
      {
        paramUsageInfo = paramUsageInfo.a("intent_data");
        if ((paramUsageInfo != null) && (!TextUtils.isEmpty(d)))
        {
          paramBundle.putString("app_uri", com.google.android.gms.a.a.a(paramString, Uri.parse(d)).toString());
          return;
        }
      }
      catch (IllegalArgumentException paramUsageInfo)
      {
        b.e("Failed to parse the third-party Android App URI");
      }
    }
  }
  
  private static void a(HashMap<String, Object> paramHashMap, Location paramLocation)
  {
    HashMap localHashMap = new HashMap();
    float f = paramLocation.getAccuracy();
    long l1 = paramLocation.getTime();
    long l2 = (paramLocation.getLatitude() * 1.0E7D);
    long l3 = (paramLocation.getLongitude() * 1.0E7D);
    localHashMap.put("radius", Float.valueOf(f * 1000.0F));
    localHashMap.put("lat", Long.valueOf(l2));
    localHashMap.put("long", Long.valueOf(l3));
    localHashMap.put("time", Long.valueOf(l1 * 1000L));
    paramHashMap.put("uule", localHashMap);
  }
  
  private static void a(HashMap<String, Object> paramHashMap, AdRequestParcel paramAdRequestParcel)
  {
    String str = no.a();
    if (str != null) {
      paramHashMap.put("abf", str);
    }
    if (c != -1L) {
      paramHashMap.put("cust_age", a.format(new Date(c)));
    }
    if (d != null) {
      paramHashMap.put("extras", d);
    }
    if (e != -1) {
      paramHashMap.put("cust_gender", Integer.valueOf(e));
    }
    if (f != null) {
      paramHashMap.put("kw", f);
    }
    if (h != -1) {
      paramHashMap.put("tag_for_child_directed_treatment", Integer.valueOf(h));
    }
    if (g) {
      paramHashMap.put("adtest", "on");
    }
    if (b >= 2)
    {
      if (i) {
        paramHashMap.put("d_imp_hdr", Integer.valueOf(1));
      }
      if (!TextUtils.isEmpty(j)) {
        paramHashMap.put("ppid", j);
      }
      if (k != null) {
        a(paramHashMap, k);
      }
    }
    if ((b >= 3) && (m != null)) {
      paramHashMap.put("url", m);
    }
    if (b >= 5)
    {
      if (o != null) {
        paramHashMap.put("custom_targeting", o);
      }
      if (p != null) {
        paramHashMap.put("category_exclusions", p);
      }
      if (q != null) {
        paramHashMap.put("request_agent", q);
      }
    }
    if ((b >= 6) && (r != null)) {
      paramHashMap.put("request_pkg", r);
    }
  }
  
  private static void a(HashMap<String, Object> paramHashMap, SearchAdRequestParcel paramSearchAdRequestParcel)
  {
    Object localObject2 = null;
    if (Color.alpha(c) != 0) {
      paramHashMap.put("acolor", a(c));
    }
    if (Color.alpha(d) != 0) {
      paramHashMap.put("bgcolor", a(d));
    }
    if ((Color.alpha(e) != 0) && (Color.alpha(f) != 0))
    {
      paramHashMap.put("gradientto", a(e));
      paramHashMap.put("gradientfrom", a(f));
    }
    if (Color.alpha(g) != 0) {
      paramHashMap.put("bcolor", a(g));
    }
    paramHashMap.put("bthick", Integer.toString(h));
    Object localObject1;
    switch (i)
    {
    default: 
      localObject1 = null;
      if (localObject1 != null) {
        paramHashMap.put("btype", localObject1);
      }
      switch (j)
      {
      default: 
        localObject1 = localObject2;
      }
      break;
    }
    for (;;)
    {
      if (localObject1 != null) {
        paramHashMap.put("callbuttoncolor", localObject1);
      }
      if (k != null) {
        paramHashMap.put("channel", k);
      }
      if (Color.alpha(l) != 0) {
        paramHashMap.put("dcolor", a(l));
      }
      if (m != null) {
        paramHashMap.put("font", m);
      }
      if (Color.alpha(n) != 0) {
        paramHashMap.put("hcolor", a(n));
      }
      paramHashMap.put("headersize", Integer.toString(o));
      if (p != null) {
        paramHashMap.put("q", p);
      }
      return;
      localObject1 = "none";
      break;
      localObject1 = "dashed";
      break;
      localObject1 = "dotted";
      break;
      localObject1 = "solid";
      break;
      localObject1 = "dark";
      continue;
      localObject1 = "light";
      continue;
      localObject1 = "medium";
    }
  }
  
  private static void a(HashMap<String, Object> paramHashMap, mv parammv, na paramna)
  {
    paramHashMap.put("am", Integer.valueOf(a));
    paramHashMap.put("cog", a(b));
    paramHashMap.put("coh", a(c));
    if (!TextUtils.isEmpty(d)) {
      paramHashMap.put("carrier", d);
    }
    paramHashMap.put("gl", e);
    if (f) {
      paramHashMap.put("simulator", Integer.valueOf(1));
    }
    if (g) {
      paramHashMap.put("is_sidewinder", Integer.valueOf(1));
    }
    paramHashMap.put("ma", a(h));
    paramHashMap.put("sp", a(i));
    paramHashMap.put("hl", j);
    if (!TextUtils.isEmpty(k)) {
      paramHashMap.put("mv", k);
    }
    paramHashMap.put("muv", Integer.valueOf(l));
    if (m != -2) {
      paramHashMap.put("cnt", Integer.valueOf(m));
    }
    paramHashMap.put("gnt", Integer.valueOf(n));
    paramHashMap.put("pt", Integer.valueOf(o));
    paramHashMap.put("rm", Integer.valueOf(p));
    paramHashMap.put("riv", Integer.valueOf(q));
    Bundle localBundle1 = new Bundle();
    localBundle1.putString("build", y);
    Bundle localBundle2 = new Bundle();
    localBundle2.putBoolean("is_charging", v);
    localBundle2.putDouble("battery_level", u);
    localBundle1.putBundle("battery", localBundle2);
    localBundle2 = new Bundle();
    localBundle2.putInt("active_network_state", x);
    localBundle2.putBoolean("active_network_metered", w);
    if (paramna != null)
    {
      parammv = new Bundle();
      parammv.putInt("predicted_latency_micros", a);
      parammv.putLong("predicted_down_throughput_bps", b);
      parammv.putLong("predicted_up_throughput_bps", c);
      localBundle2.putBundle("predictions", parammv);
    }
    localBundle1.putBundle("network", localBundle2);
    paramHashMap.put("device", localBundle1);
  }
  
  private static void a(HashMap<String, Object> paramHashMap, String paramString)
  {
    if (paramString != null)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", paramString);
      paramHashMap.put("pan", localHashMap);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.mp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */