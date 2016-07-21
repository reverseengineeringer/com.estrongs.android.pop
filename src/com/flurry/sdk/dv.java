package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class dv
{
  private static cq a(String paramString)
  {
    cq localcq = cq.b;
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = (cq)Enum.valueOf(cq.class, paramString);
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      return localcq;
    }
    return localcq;
  }
  
  static List<co> a(JSONObject paramJSONObject)
  {
    Object localObject = lv.a(paramJSONObject.getJSONArray("adUnits"));
    paramJSONObject = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      JSONObject localJSONObject = (JSONObject)((Iterator)localObject).next();
      co localco = new co();
      a = a(localJSONObject.getString("adViewType"));
      b = localJSONObject.getString("adSpace");
      c = localJSONObject.getLong("expiration");
      g = localJSONObject.getString("groupId");
      d = e(localJSONObject);
      e = g(localJSONObject);
      f = localJSONObject.getInt("combinable");
      h = localJSONObject.getLong("price");
      i = localJSONObject.getString("adomain");
      j = localJSONObject.getLong("closableTimeMillis15SecOrLess");
      k = localJSONObject.getLong("closableTimeMillisLongerThan15Sec");
      l = localJSONObject.getLong("viewabilityDurationMillis");
      m = localJSONObject.getInt("viewabilityPercentVisible");
      n = localJSONObject.getBoolean("rewardable");
      o = localJSONObject.getLong("preRenderTimeoutMillis");
      p = localJSONObject.getInt("preCacheAdSkippableTimeLimitMillis");
      q = localJSONObject.getBoolean("videoAutoPlay");
      r = localJSONObject.getBoolean("supportMRAID");
      s = localJSONObject.getBoolean("preRender");
      t = localJSONObject.getBoolean("renderTime");
      u = lv.a(localJSONObject.getJSONObject("clientSideRtbPayload"));
      v = c(localJSONObject.getString("screenOrientation"));
      w = f(localJSONObject);
      x = localJSONObject.getInt("videoPctCompletionForMoreInfo");
      y = localJSONObject.getInt("videoPctCompletionForReward");
      z = localJSONObject.getInt("videoTimeMillisForViewBeacon");
      paramJSONObject.add(localco);
    }
    return paramJSONObject;
  }
  
  private static cw b(String paramString)
  {
    cw localcw = cw.a;
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = (cw)Enum.valueOf(cw.class, paramString);
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      return localcw;
    }
    return localcw;
  }
  
  static List<cv> b(JSONObject paramJSONObject)
  {
    Object localObject = lv.a(paramJSONObject.getJSONArray("frequencyCapResponseInfoList"));
    paramJSONObject = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      JSONObject localJSONObject = (JSONObject)((Iterator)localObject).next();
      cv localcv = new cv();
      a = b(localJSONObject.getString("capType"));
      b = localJSONObject.getString("id");
      c = localJSONObject.getLong("serveTime");
      d = localJSONObject.getLong("expirationTime");
      e = localJSONObject.getLong("streamCapDurationMillis");
      f = localJSONObject.getInt("capRemaining");
      g = localJSONObject.getInt("totalCap");
      h = localJSONObject.getInt("capDurationType");
      paramJSONObject.add(localcv);
    }
    return paramJSONObject;
  }
  
  static ct c(JSONObject paramJSONObject)
  {
    ct localct = new ct();
    if (!paramJSONObject.isNull("configuration"))
    {
      paramJSONObject = paramJSONObject.getJSONObject("configuration");
      if (!paramJSONObject.isNull("com.flurry.adServer.networking.protocol.v14.Configuration"))
      {
        paramJSONObject = paramJSONObject.getJSONObject("com.flurry.adServer.networking.protocol.v14.Configuration");
        cs localcs = new cs();
        a = paramJSONObject.getString("sdkAssetUrl");
        b = paramJSONObject.getInt("cacheSizeMb");
        c = paramJSONObject.getInt("maxAssetSizeKb");
        d = paramJSONObject.getInt("maxBitRateKbps");
        a = localcs;
      }
    }
    return localct;
  }
  
  private static dc c(String paramString)
  {
    dc localdc = dc.a;
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = (dc)Enum.valueOf(dc.class, paramString);
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      return localdc;
    }
    return localdc;
  }
  
  private static db d(String paramString)
  {
    db localdb = db.b;
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = (db)Enum.valueOf(db.class, paramString);
        return paramString;
      }
    }
    catch (Exception paramString)
    {
      return localdb;
    }
    return localdb;
  }
  
  static List<String> d(JSONObject paramJSONObject)
  {
    return lv.b(paramJSONObject.getJSONArray("errors"));
  }
  
  private static List<cj> e(JSONObject paramJSONObject)
  {
    Object localObject = lv.a(paramJSONObject.getJSONArray("adFrames"));
    paramJSONObject = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      JSONObject localJSONObject = (JSONObject)((Iterator)localObject).next();
      cj localcj = new cj();
      a = localJSONObject.getInt("binding");
      b = localJSONObject.getString("display");
      c = localJSONObject.getString("content");
      d = i(localJSONObject);
      e = h(localJSONObject);
      f = localJSONObject.getString("adGuid");
      g = localJSONObject.getInt("cachingEnum");
      h = localJSONObject.getLong("assetExpirationTimestampUTCMillis");
      i = lv.b(localJSONObject.getJSONArray("cacheWhitelistedAssets"));
      j = lv.b(localJSONObject.getJSONArray("cacheBlacklistedAssets"));
      paramJSONObject.add(localcj);
    }
    return paramJSONObject;
  }
  
  private static cz f(JSONObject paramJSONObject)
  {
    Object localObject1 = paramJSONObject.getJSONObject("nativeAdInfo");
    paramJSONObject = new cz();
    if (localObject1 != null)
    {
      a = ((JSONObject)localObject1).getInt("style");
      c = ((JSONObject)localObject1).getString("template");
      Object localObject2 = lv.a(((JSONObject)localObject1).getJSONArray("assets"));
      localObject1 = new ArrayList();
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        JSONObject localJSONObject = (JSONObject)((Iterator)localObject2).next();
        da localda = new da();
        a = localJSONObject.getString("name");
        c = localJSONObject.getString("value");
        d = localJSONObject.getInt("width");
        e = localJSONObject.getInt("height");
        b = d(localJSONObject.getString("type"));
        f = lv.a(localJSONObject.getJSONObject("params"));
        ((List)localObject1).add(localda);
      }
      b = ((List)localObject1);
    }
    return paramJSONObject;
  }
  
  private static List<cv> g(JSONObject paramJSONObject)
  {
    Object localObject = lv.a(paramJSONObject.getJSONArray("frequencyCapResponseInfoList"));
    paramJSONObject = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      JSONObject localJSONObject = (JSONObject)((Iterator)localObject).next();
      if (localJSONObject != null)
      {
        cv localcv = new cv();
        a = b(localJSONObject.getString("capType"));
        b = localJSONObject.getString("id");
        c = localJSONObject.getLong("serveTime");
        d = localJSONObject.getLong("expirationTime");
        e = localJSONObject.getLong("streamCapDurationMillis");
        f = localJSONObject.getInt("capRemaining");
        g = localJSONObject.getInt("totalCap");
        h = localJSONObject.getInt("capDurationType");
        paramJSONObject.add(localcv);
      }
    }
    return paramJSONObject;
  }
  
  private static List<cr> h(JSONObject paramJSONObject)
  {
    Object localObject = lv.a(paramJSONObject.getJSONArray("callbacks"));
    paramJSONObject = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      JSONObject localJSONObject = (JSONObject)((Iterator)localObject).next();
      cr localcr = new cr();
      a = localJSONObject.getString("event");
      b = lv.b(localJSONObject.getJSONArray("actions"));
      paramJSONObject.add(localcr);
    }
    return paramJSONObject;
  }
  
  private static cn i(JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.getJSONObject("adSpaceLayout");
    if (paramJSONObject != null)
    {
      cn localcn = new cn();
      a = paramJSONObject.getInt("adWidth");
      b = paramJSONObject.getInt("adHeight");
      c = paramJSONObject.getString("fix");
      d = paramJSONObject.getString("format");
      e = paramJSONObject.getString("alignment");
      return localcn;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */