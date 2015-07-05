package com.baidu.sapi2;

import android.text.TextUtils;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;
import com.baidu.sapi2.utils.enums.RegistMode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class b
{
  private static final String a = "b2c_sync_enabled";
  private static final String b = "reg_mode";
  private static final String c = "fast_reg_sms_num";
  private static final String d = "voluntary_share_plist";
  private static final String e = "global_share_strategy";
  private static final String f = "specific_share_strategy";
  private static final String g = "authorized_packages";
  private static final String h = "authorized_domains";
  private static final String i = "cache";
  private static final String j = "enabled";
  private static final String k = "modules";
  private static final String l = "id";
  private static final String m = "ref_entry";
  private static final String n = "ref";
  private static final String o = "download_url";
  private static final String p = "version";
  private static final String q = "hash";
  private b.a r = new b.a();
  private RegistMode s = RegistMode.getDefault();
  private String t = "10698000036592";
  private boolean u = true;
  private Map<String, Integer> v = new HashMap();
  private LoginShareStrategy w;
  private Map<String, LoginShareStrategy> x = new HashMap();
  private Map<String, String> y = new HashMap();
  private List<String> z = new ArrayList();
  
  public static b a(JSONObject paramJSONObject)
  {
    b localb = new b();
    s = RegistMode.mapStrToValue(paramJSONObject.optString("reg_mode"));
    r = b.a.a(paramJSONObject.optJSONObject("cache"));
    t = paramJSONObject.optString("fast_reg_sms_num", "10698000036592");
    u = paramJSONObject.optBoolean("b2c_sync_enabled", true);
    Object localObject1 = paramJSONObject.optJSONObject("voluntary_share_plist");
    Iterator localIterator;
    String str;
    int i1;
    if (localObject1 != null)
    {
      localIterator = ((JSONObject)localObject1).keys();
      while (localIterator.hasNext())
      {
        str = (String)localIterator.next();
        i1 = ((JSONObject)localObject1).optInt(str, 0);
        v.put(str, Integer.valueOf(i1));
      }
    }
    localObject1 = paramJSONObject.optString("global_share_strategy");
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {
      w = LoginShareStrategy.mapStrToValue((String)localObject1);
    }
    localObject1 = paramJSONObject.optJSONObject("specific_share_strategy");
    Object localObject2;
    if (localObject1 != null)
    {
      localIterator = ((JSONObject)localObject1).keys();
      while (localIterator.hasNext())
      {
        str = (String)localIterator.next();
        localObject2 = LoginShareStrategy.mapStrToValue(((JSONObject)localObject1).optString(str));
        x.put(str, localObject2);
      }
    }
    localObject1 = paramJSONObject.optJSONObject("authorized_packages");
    if (localObject1 != null)
    {
      localIterator = ((JSONObject)localObject1).keys();
      while (localIterator.hasNext())
      {
        str = (String)localIterator.next();
        localObject2 = ((JSONObject)localObject1).optString(str);
        if ((!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty((CharSequence)localObject2))) {
          y.put(str, localObject2);
        }
      }
    }
    paramJSONObject = paramJSONObject.optJSONArray("authorized_domains");
    if (paramJSONObject != null)
    {
      i1 = 0;
      while (i1 < paramJSONObject.length())
      {
        if (!TextUtils.isEmpty(paramJSONObject.optString(i1))) {
          z.add(paramJSONObject.optString(i1));
        }
        i1 += 1;
      }
    }
    return localb;
  }
  
  static Map<String, String> k()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("com.baidu.sapi2.(.*)", "de308d7973b5171883333a97253327e4");
    localHashMap.put("com.baidu.tieba(.*)", "673004cf2f6efdec2385c8116c1e8c14");
    localHashMap.put("com.baidu.searchbox(.*)", "c2b0b497d0389e6de1505e7fd8f4d539");
    localHashMap.put("com.baidu.appsearch", "c2b0b497d0389e6de1505e7fd8f4d539");
    localHashMap.put("com.baidu.(.*)input(.*)", "c2b0b497d0389e6de1505e7fd8f4d539");
    localHashMap.put("com.baidu.BaiduMap(.*)", "c2b0b497d0389e6de1505e7fd8f4d539");
    localHashMap.put("com.baidu.browser.(.+)", "c2b0b497d0389e6de1505e7fd8f4d539");
    localHashMap.put("com.baidu.iknow", "13a0a8019be4015ed20e075d824f1696");
    localHashMap.put("com.baidu.yuedu", "13a0a8019be4015ed20e075d824f1696");
    localHashMap.put("com.baidu.homework", "13a0a8019be4015ed20e075d824f1696");
    localHashMap.put("com.baidu.wenku", "13a0a8019be4015ed20e075d824f1696");
    localHashMap.put("com.baidu.mbaby", "13a0a8019be4015ed20e075d824f1696");
    localHashMap.put("com.baidu.navi", "0586742e88a2e6a19e996598ec336b61");
    localHashMap.put("com.baidu.travel", "0586742e88a2e6a19e996598ec336b61");
    localHashMap.put("com.baidu.baidulife", "0586742e88a2e6a19e996598ec336b61");
    localHashMap.put("com.ting.mp3.android", "0586742e88a2e6a19e996598ec336b61");
    localHashMap.put("com.baidu.news", "0586742e88a2e6a19e996598ec336b61");
    localHashMap.put("com.baidu.video", "0586742e88a2e6a19e996598ec336b61");
    localHashMap.put("com.baidu.hao123", "7fd3727852d29eb6f4283988dc0d6150");
    localHashMap.put("com.baidu.netdisk", "ae5821440fab5e1a61a025f014bd8972");
    localHashMap.put("com.baidu.music.lebo", "b1d67a31136599143c5c38879728dcfd");
    localHashMap.put("com.hiapk.marketpho", "d46053ef4381d35cb774eb632d8e8aec");
    localHashMap.put("com.baidu.gamecenter(.*)", "bddf74f2473eb1802fe13fe3e1aab81a");
    localHashMap.put("com.baidu.notes", "989d3c446cadade24c8c57a10fe6370d");
    localHashMap.put("com.baidu.lifenote", "c1a65e392e3892db0935d22f6c20b9cc");
    localHashMap.put("com.baidu.passport.securitycenter", "db97d206640d7aca6d75975b3c1f6e87");
    localHashMap.put("com.nuomi", "59215ee95c063ff2c56226581a62130a");
    localHashMap.put("com.baidu.shucheng91", "2090b2ef3011c12d851ed125c2360954");
    localHashMap.put("com.duoku.gamesearch", "153a76549eb514258b5806f95da02bb3");
    localHashMap.put("com.baidu.qingpai", "80344917d9e7cf0fd8a8914cc918e0ef");
    localHashMap.put("cn.jingling.motu.photowonder", "6930f0bd9fa461c2cd65e216acee0118");
    localHashMap.put("com.baidu.account", "fe3c74f0431ea0dc303a10b6af6470fc");
    localHashMap.put("com.duoku.game.helper", "6231a79a3f43cdd01797eb5febbc6350");
    localHashMap.put("com.dragon.android.pandaspace", "5b120e96b20f5b4ec695d79b20d18753");
    localHashMap.put("com.baidu.addressugc", "9e2a7cde67d36c1e6a01bb070fc8ef7b");
    localHashMap.put("cn.opda.a.phonoalbumshoushou", "310a4f78e839b86df7731c2f48fcadae");
    localHashMap.put("com.baidu.fb", "a4622402640f20dfda894cbe2edf8823");
    localHashMap.put("com.baidu.baidutranslate", "0586742e88a2e6a19e996598ec336b61");
    localHashMap.put("com.baidu.lbs.waimai", "77ad7ac419a031af0252422152c62e67");
    return localHashMap;
  }
  
  static List<String> l()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("baidu.com");
    localArrayList.add("hao123.com");
    localArrayList.add("baifubao.com");
    localArrayList.add("nuomi.com");
    localArrayList.add("chuanke.com");
    return localArrayList;
  }
  
  public String a()
  {
    return t;
  }
  
  public boolean b()
  {
    return u;
  }
  
  public Map<String, Integer> c()
  {
    return v;
  }
  
  public RegistMode d()
  {
    return s;
  }
  
  public LoginShareStrategy e()
  {
    return w;
  }
  
  public Map<String, LoginShareStrategy> f()
  {
    return x;
  }
  
  public Map<String, String> g()
  {
    if (!y.isEmpty()) {
      return y;
    }
    return k();
  }
  
  public List<String> h()
  {
    if (!z.isEmpty()) {
      return z;
    }
    return l();
  }
  
  public b.a i()
  {
    return r;
  }
  
  public String j()
  {
    Object localObject1 = new JSONObject();
    try
    {
      ((JSONObject)localObject1).put("cache", r.c());
      ((JSONObject)localObject1).put("reg_mode", s.getStrValue());
      ((JSONObject)localObject1).put("fast_reg_sms_num", t);
      ((JSONObject)localObject1).put("b2c_sync_enabled", u);
      ((JSONObject)localObject1).put("voluntary_share_plist", new JSONObject(v));
      if (w != null) {
        ((JSONObject)localObject1).put("global_share_strategy", w.getStrValue());
      }
      Object localObject2 = new JSONObject();
      Iterator localIterator = x.entrySet().iterator();
      Map.Entry localEntry;
      while (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        ((JSONObject)localObject2).put((String)localEntry.getKey(), ((LoginShareStrategy)localEntry.getValue()).getStrValue());
      }
      ((JSONObject)localObject1).put("specific_share_strategy", localObject2);
      localObject2 = new JSONObject();
      localIterator = y.entrySet().iterator();
      while (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        ((JSONObject)localObject2).put((String)localEntry.getKey(), localEntry.getValue());
      }
      ((JSONObject)localObject1).put("authorized_packages", localObject2);
      localObject2 = new JSONArray();
      localIterator = z.iterator();
      while (localIterator.hasNext()) {
        ((JSONArray)localObject2).put((String)localIterator.next());
      }
      ((JSONObject)localObject1).put("authorized_domains", localObject2);
      localObject1 = ((JSONObject)localObject1).toString();
      return (String)localObject1;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */