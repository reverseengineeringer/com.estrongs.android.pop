package com.dianxinos.library.notify.g;

import android.text.TextUtils;
import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.j;
import com.dianxinos.library.notify.c;
import com.dianxinos.library.notify.parser.b;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  private static com.dianxinos.dxservice.core.a a = com.dianxinos.dxservice.core.a.a(c.a());
  
  public static boolean a(b paramb)
  {
    if (paramb == null) {}
    do
    {
      return false;
      paramb = b(paramb);
    } while (TextUtils.isEmpty(paramb));
    if (e.c) {
      j.b("reportEventPullData,KEY = NRPull,value=" + paramb);
    }
    return a.a("NRPull", 0, paramb);
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.trim().length() == 0)) {
      return false;
    }
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("id", paramString1);
      localJSONObject.put("url", paramString2);
      if (e.c) {
        j.b("reportEventClickDownloadStart,KEY = NRClDown,value=" + localJSONObject.toString());
      }
      boolean bool = a.a("NRClDown", 0, localJSONObject.toString());
      return bool;
    }
    catch (JSONException paramString1)
    {
      paramString1.printStackTrace();
    }
    return false;
  }
  
  public static boolean a(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 == null) || (paramString1.trim().length() == 0)) {
      return false;
    }
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("id", paramString1);
      localJSONObject.put("url", paramString2);
      localJSONObject.put("pkgname", paramString3);
      if (e.c) {
        j.b("reportEventClickDownloadSuccess,KEY = NRClDownSu,value=" + localJSONObject.toString());
      }
      boolean bool = a.a("NRClDownSu", 0, localJSONObject.toString());
      return bool;
    }
    catch (JSONException paramString1)
    {
      paramString1.printStackTrace();
    }
    return false;
  }
  
  private static String b(b paramb)
  {
    if (paramb.a()) {
      return null;
    }
    JSONObject localJSONObject1;
    JSONArray localJSONArray;
    Object localObject2;
    JSONObject localJSONObject2;
    try
    {
      localJSONObject1 = new JSONObject();
      localJSONArray = new JSONArray();
      localObject1 = b.keySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (String)((Iterator)localObject1).next();
        localJSONObject2 = new JSONObject();
        localJSONObject2.put("id", localObject2);
        localJSONObject2.put("op", true);
        localJSONArray.put(localJSONObject2);
      }
      localObject1 = c.keySet().iterator();
    }
    catch (JSONException paramb)
    {
      paramb.printStackTrace();
      return null;
    }
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      localJSONObject2 = new JSONObject();
      localJSONObject2.put("id", localObject2);
      localJSONObject2.put("op", true);
      localJSONArray.put(localJSONObject2);
    }
    Object localObject1 = d.keySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      localJSONObject2 = new JSONObject();
      localJSONObject2.put("id", localObject2);
      localJSONObject2.put("op", true);
      localJSONArray.put(localJSONObject2);
    }
    localObject1 = e.keySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      localJSONObject2 = new JSONObject();
      localJSONObject2.put("id", localObject2);
      localJSONObject2.put("op", true);
      localJSONArray.put(localJSONObject2);
    }
    localObject1 = f.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      localJSONObject2 = new JSONObject();
      localJSONObject2.put("id", localObject2);
      localJSONObject2.put("op", false);
      localJSONArray.put(localJSONObject2);
    }
    localObject1 = g.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      localJSONObject2 = new JSONObject();
      localJSONObject2.put("id", localObject2);
      localJSONObject2.put("op", false);
      localJSONArray.put(localJSONObject2);
    }
    localObject1 = h.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      localJSONObject2 = new JSONObject();
      localJSONObject2.put("id", localObject2);
      localJSONObject2.put("op", false);
      localJSONArray.put(localJSONObject2);
    }
    paramb = i.iterator();
    while (paramb.hasNext())
    {
      localObject1 = (String)paramb.next();
      localObject2 = new JSONObject();
      ((JSONObject)localObject2).put("id", localObject1);
      ((JSONObject)localObject2).put("op", false);
      localJSONArray.put(localObject2);
    }
    localJSONObject1.put("notifydata", localJSONArray);
    paramb = localJSONObject1.toString();
    return paramb;
  }
  
  public static boolean b(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.trim().length() == 0)) {
      return false;
    }
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("id", paramString1);
      localJSONObject.put("url", paramString2);
      if (e.c) {
        j.b("reportEventAutoDownloadStart,KEY = NRAuDown,value=" + localJSONObject.toString());
      }
      boolean bool = a.a("NRAuDown", 0, localJSONObject.toString());
      return bool;
    }
    catch (JSONException paramString1)
    {
      paramString1.printStackTrace();
    }
    return false;
  }
  
  public static boolean b(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 == null) || (paramString1.trim().length() == 0)) {
      return false;
    }
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("id", paramString1);
      localJSONObject.put("url", paramString2);
      localJSONObject.put("pkgname", paramString3);
      if (e.c) {
        j.b("reportEventAutoDownloadSuccess,KEY = NRAuDownSu,value=" + localJSONObject.toString());
      }
      boolean bool = a.a("NRAuDownSu", 0, localJSONObject.toString());
      return bool;
    }
    catch (JSONException paramString1)
    {
      paramString1.printStackTrace();
    }
    return false;
  }
  
  public static boolean c(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.trim().length() == 0)) {
      return false;
    }
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("id", paramString1);
      localJSONObject.put("pkgname", paramString2);
      if (e.c) {
        j.b("reportEventStartInstall,KEY = NRIns,value=" + localJSONObject.toString());
      }
      boolean bool = a.a("NRIns", 0, localJSONObject.toString());
      return bool;
    }
    catch (JSONException paramString1)
    {
      paramString1.printStackTrace();
    }
    return false;
  }
  
  public static boolean d(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.trim().length() == 0)) {
      return false;
    }
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("id", paramString1);
      localJSONObject.put("pkgname", paramString2);
      if (e.c) {
        j.b("reportEventInstallSuccess,KEY = NRInsS,value=" + localJSONObject.toString());
      }
      boolean bool = a.a("NRInsS", 0, localJSONObject.toString());
      return bool;
    }
    catch (JSONException paramString1)
    {
      paramString1.printStackTrace();
    }
    return false;
  }
  
  public static boolean e(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.trim().length() == 0)) {
      return false;
    }
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("id", paramString1);
      localJSONObject.put("pkgname", paramString2);
      if (e.c) {
        j.b("reportEventStartUninstall,KEY = NRUnins,value=" + localJSONObject.toString());
      }
      boolean bool = a.a("NRUnins", 0, localJSONObject.toString());
      return bool;
    }
    catch (JSONException paramString1)
    {
      paramString1.printStackTrace();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */