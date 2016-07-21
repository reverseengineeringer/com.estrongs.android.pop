package com.dianxinos.lockscreen.ad;

import android.text.TextUtils;
import com.dianxinos.lockscreen.c.g;
import org.json.JSONException;
import org.json.JSONObject;

final class a
{
  boolean a = true;
  boolean b = true;
  boolean c = true;
  boolean d = true;
  boolean e = false;
  long f = 0L;
  long g = 21600000L;
  int h = 999;
  boolean i = false;
  int j = 3;
  long k = 86400000L;
  long l = 259200000L;
  long m = 86400000L;
  
  static a a(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {}
    do
    {
      return null;
      try
      {
        paramJSONObject = b(paramJSONObject);
        return paramJSONObject;
      }
      catch (JSONException paramJSONObject)
      {
        if (g.a) {
          throw new RuntimeException(paramJSONObject);
        }
        return new a();
      }
      catch (Throwable paramJSONObject) {}
    } while (!g.a);
    throw new RuntimeException(paramJSONObject);
  }
  
  private static a b(JSONObject paramJSONObject)
  {
    String str = paramJSONObject.getString("ad_switch");
    if ((TextUtils.isEmpty(str)) || (str.length() < 5)) {
      throw new JSONException("unknown ad switch " + str);
    }
    boolean bool1;
    boolean bool2;
    label80:
    boolean bool3;
    label94:
    boolean bool4;
    if (str.charAt(0) == '1')
    {
      bool1 = true;
      if (str.charAt(1) != '1') {
        break label343;
      }
      bool2 = true;
      if (str.charAt(2) != '1') {
        break label349;
      }
      bool3 = true;
      if (str.charAt(3) != '1') {
        break label355;
      }
      bool4 = true;
      label108:
      if (str.charAt(4) != '1') {
        break label361;
      }
    }
    label343:
    label349:
    label355:
    label361:
    for (boolean bool5 = true;; bool5 = false)
    {
      long l4 = paramJSONObject.getInt("new_protect");
      long l5 = paramJSONObject.getInt("close_protect");
      int n = paramJSONObject.getInt("show_times");
      boolean bool6 = paramJSONObject.optBoolean("recommend_switch", false);
      long l1 = 86400000L;
      if (paramJSONObject.has("recommend_new_pro_hours")) {
        l1 = paramJSONObject.getInt("recommend_new_pro_hours") * 3600000L;
      }
      long l2 = 259200000L;
      if (paramJSONObject.has("recommend_int_hours")) {
        l2 = paramJSONObject.getInt("recommend_int_hours") * 3600000L;
      }
      int i1 = paramJSONObject.optInt("recommend_show_times", 3);
      long l3 = 86400000L;
      if (paramJSONObject.has("dlg_int_hours")) {
        l3 = paramJSONObject.getInt("dlg_int_hours") * 3600000L;
      }
      paramJSONObject = new a();
      a = bool1;
      b = bool2;
      c = bool3;
      d = bool4;
      e = bool5;
      f = (l4 * 3600000L);
      g = (l5 * 3600000L);
      h = n;
      i = bool6;
      k = l1;
      l = l2;
      j = i1;
      m = l3;
      return paramJSONObject;
      bool1 = false;
      break;
      bool2 = false;
      break label80;
      bool3 = false;
      break label94;
      bool4 = false;
      break label108;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("wifi switch ").append(a);
    localStringBuilder.append(", 2G switch ").append(b);
    localStringBuilder.append(", 3G switch ").append(c);
    localStringBuilder.append(", 4G switch ").append(d);
    localStringBuilder.append(", other switch").append(e);
    int n = (int)(f / 3600000L);
    localStringBuilder.append(", new user protect time ").append(n).append(" hours");
    n = (int)(g / 3600000L);
    localStringBuilder.append(", close ad protect time ").append(n).append(" hours");
    localStringBuilder.append(", show ad ").append(h).append(" times per day");
    localStringBuilder.append(", recommendSwitch :").append(i);
    localStringBuilder.append(", recommendShowTimes: ").append(j);
    localStringBuilder.append(", recommendNewProTime: ").append(k);
    localStringBuilder.append(", recommendIntTime: ").append(l);
    localStringBuilder.append(", dlgIntTime: ").append(m);
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ad.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */