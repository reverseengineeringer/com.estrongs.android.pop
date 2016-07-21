package com.estrongs.android.pop.app.messagebox;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.dianxinos.DXStatService.stat.TokenManager;
import com.estrongs.android.pop.utils.w;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import org.json.JSONObject;

public class ag
{
  public static Intent a(Context paramContext, ah paramah)
  {
    Object localObject = new JSONObject(f);
    switch (i)
    {
    default: 
      return null;
    case 1: 
      return a(paramContext, (JSONObject)localObject);
    }
    String str = ((JSONObject)localObject).getString("url");
    localObject = new Intent(paramContext, WebActivity.class);
    if (a == 4)
    {
      paramah = new StringBuilder(str);
      if (str.indexOf('?') <= 0) {
        paramah.append("?");
      }
      for (;;)
      {
        paramah.append("_token=");
        paramah.append(a(TokenManager.getToken(paramContext)));
        paramah.append("&");
        paramah.append(com.dianxinos.DXStatService.stat.a.a(paramContext));
        paramContext = paramah.toString();
        Log.d("MessageBoxUtils", "DU Coin url ==\n" + paramContext);
        ((Intent)localObject).putExtra("url", paramContext);
        return (Intent)localObject;
        paramah.append("&");
      }
    }
    ((Intent)localObject).putExtra("url", str);
    return (Intent)localObject;
  }
  
  private static Intent a(Context paramContext, JSONObject paramJSONObject)
  {
    Object localObject2 = paramJSONObject.optString("package", null);
    Object localObject1;
    String str4;
    String str5;
    String str1;
    String str2;
    String str3;
    int i;
    if (TextUtils.isEmpty((CharSequence)localObject2))
    {
      localObject1 = paramContext.getPackageName();
      str4 = paramJSONObject.optString("class", null);
      str5 = paramJSONObject.optString("category", null);
      str1 = paramJSONObject.optString("action", null);
      str2 = paramJSONObject.optString("data", null);
      str3 = paramJSONObject.optString("mimetype", null);
      i = paramJSONObject.optInt("flags", 335544320);
      if (paramJSONObject.isNull("extras")) {
        break label380;
      }
    }
    label129:
    label309:
    label319:
    label338:
    label380:
    for (localObject2 = a(paramJSONObject.getJSONObject("extras"));; localObject2 = null)
    {
      Intent localIntent = new Intent();
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        if (!TextUtils.isEmpty(str4)) {
          localIntent.setClassName((String)localObject1, str4);
        }
      }
      else
      {
        if (!TextUtils.isEmpty(str5)) {
          localIntent.addCategory(str5);
        }
        if (!TextUtils.isEmpty(str1)) {
          localIntent.setAction(str1);
        }
        if (TextUtils.isEmpty(str2)) {
          break label319;
        }
        localObject1 = Uri.parse(str2);
        if (TextUtils.isEmpty(str3)) {
          break label309;
        }
        localIntent.setDataAndType((Uri)localObject1, str3);
      }
      for (;;)
      {
        localIntent.setFlags(i);
        if (localObject2 != null) {
          localIntent.putExtras((Bundle)localObject2);
        }
        if (paramContext.getPackageManager().resolveActivity(localIntent, 65536) != null) {
          break label338;
        }
        Log.d("MessageBoxUtils", "No activit found for filter: " + paramJSONObject);
        return null;
        i = paramJSONObject.optInt("version", 0);
        localObject1 = localObject2;
        if (com.estrongs.android.pop.view.a.a() >= i) {
          break;
        }
        Log.d("MessageBoxUtils", "Not installed or low version installed: " + (String)localObject2);
        return null;
        localIntent.setPackage((String)localObject1);
        break label129;
        localIntent.setData((Uri)localObject1);
        continue;
        if (!TextUtils.isEmpty(str3)) {
          localIntent.setType(str3);
        }
      }
      if (!a(paramContext, str1, str2))
      {
        Log.d("MessageBoxUtils", "delete target not found: " + str2);
        return null;
      }
      return localIntent;
    }
  }
  
  private static Bundle a(JSONObject paramJSONObject)
  {
    Bundle localBundle = new Bundle();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramJSONObject.get(str);
      if ((localObject instanceof String)) {
        localBundle.putString(str, (String)localObject);
      } else if ((localObject instanceof Long)) {
        localBundle.putLong(str, ((Long)localObject).longValue());
      } else if ((localObject instanceof Integer)) {
        localBundle.putInt(str, ((Integer)localObject).intValue());
      } else if ((localObject instanceof Double)) {
        localBundle.putDouble(str, ((Double)localObject).doubleValue());
      } else if ((localObject instanceof Float)) {
        localBundle.putFloat(str, ((Float)localObject).floatValue());
      }
    }
    return localBundle;
  }
  
  private static String a(String paramString)
  {
    try
    {
      paramString = URLEncoder.encode(paramString, "UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString) {}
    return "";
  }
  
  public static boolean a(Context paramContext)
  {
    return b(paramContext);
  }
  
  private static boolean a(Context paramContext, String paramString1, String paramString2)
  {
    if (("android.intent.action.UNINSTALL_PACKAGE".equals(paramString1)) || ("android.intent.action.DELETE".equals(paramString1)))
    {
      paramContext = Uri.parse(paramString2);
      if ("package".equals(paramContext.getScheme())) {
        return w.a(paramContext.getSchemeSpecificPart());
      }
    }
    return true;
  }
  
  private static boolean b(Context paramContext)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */