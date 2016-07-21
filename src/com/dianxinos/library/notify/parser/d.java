package com.dianxinos.library.notify.parser;

import android.graphics.Color;
import android.text.TextUtils;
import com.dianxinos.library.notify.data.Checkers;
import com.dianxinos.library.notify.data.PackageItem;
import com.dianxinos.library.notify.data.Packages;
import com.dianxinos.library.notify.data.ShowRule;
import com.dianxinos.library.notify.data.Works;
import com.dianxinos.library.notify.data.a;
import com.dianxinos.library.notify.data.b;
import com.dianxinos.library.notify.data.c;
import com.dianxinos.library.notify.data.e;
import com.dianxinos.library.notify.data.f;
import com.dianxinos.library.notify.data.g;
import com.dianxinos.library.notify.data.h;
import com.dianxinos.library.notify.data.i;
import com.dianxinos.library.notify.data.j;
import com.dianxinos.library.notify.data.l;
import com.dianxinos.library.notify.data.m;
import com.dianxinos.library.notify.data.n;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class d
{
  public static ShowRule a(String paramString1, String paramString2, String paramString3)
  {
    if (TextUtils.isEmpty(paramString1)) {
      paramString1 = null;
    }
    Object localObject;
    JSONObject localJSONObject;
    do
    {
      return paramString1;
      if (paramString3.equals("splash")) {}
      for (localObject = new n();; localObject = new m())
      {
        localJSONObject = new JSONObject(paramString1);
        b = paramString2;
        a = paramString3;
        long l1 = localJSONObject.getLong("showDayStart");
        long l2 = localJSONObject.getLong("showDayEnd");
        i = localJSONObject.getInt("showGap");
        c = Long.valueOf(l1);
        d = Long.valueOf(l2);
        f = Integer.valueOf(i);
        paramString1 = localJSONObject.getJSONArray("showWeek");
        if (paramString1 != null) {
          break;
        }
        throw new RuntimeException("showWeek field must be set");
      }
      int j = paramString1.length();
      if (j != 7) {
        throw new RuntimeException("showWeek's length must be 7");
      }
      i = 0;
      while (i < j)
      {
        e.add(Integer.valueOf(paramString1.optInt(i)));
        i += 1;
      }
      g = c(localJSONObject.getString("checks"));
      if ((localObject instanceof n))
      {
        i = localJSONObject.optInt("iconShowTimes");
        j = localJSONObject.optInt("notfShowTimes");
        int k = localJSONObject.optInt("widgetShowTimes");
        if ((i == 0) && (j == 0) && (k == 0)) {
          throw new RuntimeException("Must be set to one of the iconShowTimes|notfShowTimes|widgetShowTimes");
        }
        paramString1 = (n)localObject;
        h = Integer.valueOf(i);
        paramString1.j = Integer.valueOf(j);
        paramString1.i = Integer.valueOf(k);
        return (ShowRule)localObject;
      }
      paramString1 = (String)localObject;
    } while (!(localObject instanceof m));
    int i = localJSONObject.getInt("showTimes");
    if (i == 0) {
      throw new RuntimeException("'showTimes' field value must greater than 0");
    }
    h = Integer.valueOf(i);
    return (ShowRule)localObject;
  }
  
  public static l a(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString2)) || (TextUtils.isEmpty(paramString1))) {
      return null;
    }
    l locall = new l();
    paramString2 = new JSONObject(paramString2);
    a = paramString1;
    int i = paramString2.getInt("installed");
    if (i == 0)
    {
      b = Boolean.valueOf(false);
      c = paramString2.optString("chksum");
      d = paramString2.optString("sign");
      paramString1 = paramString2.optString("chkSystem");
      if (TextUtils.isEmpty(paramString1)) {
        break label153;
      }
    }
    label153:
    for (e = Boolean.valueOf(paramString1.equals("1"));; e = null)
    {
      try
      {
        f = Integer.valueOf(paramString2.getInt("version"));
        return locall;
      }
      catch (JSONException paramString1)
      {
        f = null;
        return locall;
      }
      if (i == 1)
      {
        b = Boolean.valueOf(true);
        break;
      }
      throw new RuntimeException("'installed' field only be set 0 or 1");
    }
  }
  
  public static NotifyStrategy a(String paramString)
  {
    NotifyStrategy localNotifyStrategy = null;
    if (TextUtils.isEmpty(paramString)) {
      paramString = localNotifyStrategy;
    }
    for (;;)
    {
      return paramString;
      try
      {
        paramString = new JSONObject(paramString);
        localNotifyStrategy = new NotifyStrategy();
        long l = paramString.optLong("peroid2G");
        if (l > 0L) {
          fetchPeroid2G = l;
        }
        l = paramString.optLong("peroid3G");
        if (l > 0L) {
          fetchPeroid3G = l;
        }
        l = paramString.optLong("peroidWifi");
        if (l > 0L) {
          fetchPeroidWifi = l;
        }
        l = paramString.optLong("peroidDef");
        paramString = localNotifyStrategy;
        if (l > 0L)
        {
          fetchPeroidDefault = l;
          return localNotifyStrategy;
        }
      }
      catch (JSONException paramString) {}
    }
    return null;
  }
  
  public static i b(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2)) {
      paramString1 = null;
    }
    i locali;
    do
    {
      do
      {
        return paramString1;
        locali = new i();
        a = paramString1;
        paramString1 = new JSONObject(paramString2);
        paramString2 = paramString1.optJSONObject("essentials");
        if (paramString2 != null)
        {
          String str = paramString2.optString("bkg");
          if (!TextUtils.isEmpty(str)) {
            b.put("bkg", str);
          }
          paramString2 = paramString2.optString("file");
          if (!TextUtils.isEmpty(paramString2)) {
            b.put("file", paramString2);
          }
        }
        paramString2 = paramString1.optJSONObject("optionals");
        paramString1 = locali;
      } while (paramString2 == null);
      paramString1 = paramString2.optString("bkg");
      if (!TextUtils.isEmpty(paramString1)) {
        c.put("bkg", paramString1);
      }
      paramString2 = paramString2.optString("file");
      paramString1 = locali;
    } while (TextUtils.isEmpty(paramString2));
    c.put("file", paramString2);
    return locali;
  }
  
  public static j b(String paramString)
  {
    boolean bool = true;
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    for (;;)
    {
      try
      {
        j localj = new j();
        paramString = new JSONObject(paramString);
        String str1 = paramString.getString("category");
        String str2 = paramString.getString("id");
        if ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2))) {
          break;
        }
        b = str1;
        a = str2;
        if (paramString.optInt("revoke") == 1)
        {
          if (bool)
          {
            d = bool;
            return localj;
          }
          d = bool;
          int i = paramString.optInt("priority");
          if (i != 0) {
            c = i;
          }
          e = a(paramString.optString("rule"), str2, str1);
          f = b(str1, paramString.optString("resources"));
          g = c(paramString.optString("display"), str1);
          h = d(str1, paramString.optString("works"));
          return localj;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return null;
      }
      bool = false;
    }
  }
  
  public static Checkers c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new RuntimeException("Must be set 'checkers' value");
    }
    Checkers localCheckers = new Checkers();
    paramString = new JSONArray(paramString);
    int j = paramString.length();
    int i = 0;
    while (i < j)
    {
      a locala = d(paramString.optString(i));
      if (locala != null) {
        localCheckers.add(locala);
      }
      i += 1;
    }
    return localCheckers;
  }
  
  public static c c(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {
      return null;
    }
    paramString1 = new JSONObject(paramString1);
    c localc = new c();
    if (paramString2.equals("splash"))
    {
      a = null;
      int i = paramString1.optInt("liveTime");
      if (i != 0)
      {
        b = Integer.valueOf(i);
        d = j(paramString1.optString("share"));
        f = i(paramString1.optString("button"));
        return localc;
      }
      throw new RuntimeException("'liveTime' field value must greater than 0");
    }
    if (("pandoraapk".equals(paramString2)) || ("pandorajar".equals(paramString2))) {
      g = l(paramString1.optString("toolbox"));
    }
    paramString2 = paramString1.optString("type");
    if ((TextUtils.isEmpty(paramString2)) || (paramString2.equals("none")))
    {
      a = "none";
      return localc;
    }
    a = paramString2;
    if (paramString2.equals("notf"))
    {
      c = k(paramString1.optString("attention"));
      e = h(paramString1.getString("notify"));
      return localc;
    }
    if (paramString2.equals("notfdialog"))
    {
      c = k(paramString1.optString("attention"));
      e = h(paramString1.getString("notify"));
      d = j(paramString1.getString("share"));
      f = i(paramString1.getString("button"));
      return localc;
    }
    if (paramString2.equals("dialog"))
    {
      c = k(paramString1.optString("attention"));
      d = j(paramString1.getString("share"));
      f = i(paramString1.getString("button"));
      return localc;
    }
    throw new RuntimeException("Invalid display type");
  }
  
  public static Works d(String paramString1, String paramString2)
  {
    Works localWorks = new Works();
    mCategory = paramString1;
    if (TextUtils.isEmpty(paramString2)) {}
    do
    {
      return localWorks;
      paramString1 = new JSONObject(paramString2);
      paramString2 = paramString1.optString("download");
      if (!TextUtils.isEmpty(paramString2)) {
        localWorks.put("download", paramString2);
      }
      paramString2 = paramString1.optString("install");
      if (!TextUtils.isEmpty(paramString2)) {
        localWorks.put("install", paramString2);
      }
      paramString2 = paramString1.optString("open");
      if (!TextUtils.isEmpty(paramString2)) {
        localWorks.put("open", paramString2);
      }
      paramString2 = paramString1.optString("uninstall");
      if (!TextUtils.isEmpty(paramString2)) {
        localWorks.put("uninstall", paramString2);
      }
      paramString2 = paramString1.optString("runapk");
      if (!TextUtils.isEmpty(paramString2)) {
        localWorks.put("runapk", paramString2);
      }
      paramString1 = paramString1.optString("runjar");
    } while (TextUtils.isEmpty(paramString1));
    localWorks.put("runjar", paramString1);
    return localWorks;
  }
  
  public static a d(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    paramString = new JSONObject(paramString);
    String str = paramString.getString("showNetwork");
    if (TextUtils.isEmpty(str)) {
      throw new RuntimeException("'showNetwork' field must not be empty");
    }
    a locala = new a();
    a = str;
    b = paramString.optString("accessPoint");
    str = paramString.optString("deviceRoot");
    if (!TextUtils.isEmpty(str))
    {
      c = Boolean.valueOf(str.equals("1"));
      str = paramString.optString("apkRoot");
      if (TextUtils.isEmpty(str)) {
        break label176;
      }
      d = Boolean.valueOf(str.equals("1"));
      label124:
      str = paramString.optString("apkSystem");
      if (TextUtils.isEmpty(str)) {
        break label184;
      }
    }
    label176:
    label184:
    for (e = Boolean.valueOf(str.equals("1"));; e = null)
    {
      f = e(paramString.optString("packages"));
      return locala;
      c = null;
      break;
      d = null;
      break label124;
    }
  }
  
  public static Packages e(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      paramString = null;
      return paramString;
    }
    Packages localPackages = new Packages();
    JSONArray localJSONArray = new JSONArray(paramString);
    int j = localJSONArray.length();
    int i = 0;
    for (;;)
    {
      paramString = localPackages;
      if (i >= j) {
        break;
      }
      paramString = f(localJSONArray.optString(i));
      if (paramString != null) {
        localPackages.add(paramString);
      }
      i += 1;
    }
  }
  
  public static PackageItem f(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    PackageItem localPackageItem = new PackageItem();
    paramString = new JSONObject(paramString);
    Iterator localIterator = paramString.keys();
    while (localIterator.hasNext())
    {
      Object localObject = (String)localIterator.next();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        localObject = a((String)localObject, paramString.optString((String)localObject));
        if (localObject != null) {
          localPackageItem.add(localObject);
        }
      }
    }
    return localPackageItem;
  }
  
  public static b g(String paramString)
  {
    boolean bool = true;
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    for (;;)
    {
      try
      {
        paramString = new JSONObject(paramString);
        b localb = new b();
        String str1 = paramString.optString("id");
        String str2 = paramString.optString("category");
        String str3 = paramString.getString("body");
        if ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2)) || (TextUtils.isEmpty(str3))) {
          break;
        }
        a = str1;
        b = str2;
        if (paramString.optInt("revoke") == 1)
        {
          if (bool)
          {
            c = bool;
            return localb;
          }
          c = bool;
          d = str3;
          return localb;
        }
      }
      catch (JSONException paramString)
      {
        paramString.printStackTrace();
        return null;
      }
      bool = false;
    }
  }
  
  private static e h(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new RuntimeException("Must be set 'notify' field value");
    }
    paramString = new JSONObject(paramString);
    e locale = new e();
    b = paramString.optString("text");
    a = paramString.optString("title");
    c = paramString.optInt("textColor");
    return locale;
  }
  
  private static com.dianxinos.library.notify.data.d i(String paramString)
  {
    com.dianxinos.library.notify.data.d locald = new com.dianxinos.library.notify.data.d();
    if (TextUtils.isEmpty(paramString)) {}
    String str;
    do
    {
      return locald;
      paramString = new JSONObject(paramString);
      a = paramString.optInt("bkgColor");
      b = paramString.optString("text");
      str = paramString.optString("textColor");
    } while (TextUtils.isEmpty(str));
    paramString = str;
    if (!str.startsWith("#")) {
      paramString = "#" + str;
    }
    try
    {
      c = Color.parseColor(paramString);
      return locald;
    }
    catch (Exception paramString)
    {
      c = -1;
    }
    return locald;
  }
  
  private static g j(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new RuntimeException("Must be set 'share' field value");
    }
    paramString = new JSONObject(paramString);
    g localg = new g();
    JSONArray localJSONArray = paramString.optJSONArray("flag");
    if (localJSONArray != null)
    {
      int j = localJSONArray.length();
      int i = 0;
      while (i < j)
      {
        String str = localJSONArray.optString(i);
        if (!TextUtils.isEmpty(str)) {
          a.add(str);
        }
        i += 1;
      }
    }
    b = paramString.optString("text");
    c = paramString.optInt("textColor");
    return localg;
  }
  
  private static f k(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    f localf = new f();
    paramString = new JSONObject(paramString);
    String str = paramString.optString("vibrate");
    if (!TextUtils.isEmpty(str))
    {
      b = Boolean.valueOf(str.equals("1"));
      paramString = paramString.optString("voice");
      if (TextUtils.isEmpty(paramString)) {
        break label92;
      }
    }
    label92:
    for (a = Boolean.valueOf(paramString.equals("1"));; a = null)
    {
      return localf;
      b = null;
      break;
    }
  }
  
  private static h l(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new RuntimeException("Must be set 'toolbox' field value");
    }
    paramString = new JSONObject(paramString);
    h localh = new h();
    a = paramString.optString("title");
    b = paramString.optString("description");
    return localh;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.parser.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */