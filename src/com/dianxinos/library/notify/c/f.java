package com.dianxinos.library.notify.c;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.dianxinos.library.notify.dispatcher.p;
import org.json.JSONObject;

public class f
  implements c
{
  private int a(JSONObject paramJSONObject)
  {
    Intent localIntent = new Intent();
    Object localObject = paramJSONObject.optString("action");
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      localIntent.setAction((String)localObject);
    }
    localObject = paramJSONObject.optString("data");
    String str = paramJSONObject.optString("mimeType");
    if ((!TextUtils.isEmpty((CharSequence)localObject)) && (!TextUtils.isEmpty(str))) {
      localIntent.setDataAndType(Uri.parse((String)localObject), str);
    }
    for (;;)
    {
      localObject = paramJSONObject.optString("category");
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        break;
      }
      localObject = ((String)localObject).split(";");
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        str = localObject[i];
        if (!TextUtils.isEmpty(str)) {
          localIntent.addCategory(str.trim());
        }
        i += 1;
      }
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        localIntent.setData(Uri.parse((String)localObject));
      } else if (!TextUtils.isEmpty(str)) {
        localIntent.setType(str.trim());
      }
    }
    localObject = paramJSONObject.optString("component");
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      localIntent.setComponent(ComponentName.unflattenFromString((String)localObject));
    }
    localObject = paramJSONObject.optString("extras");
    if ((!TextUtils.isEmpty((CharSequence)localObject)) && (!a(localIntent, (String)localObject))) {
      return 0;
    }
    paramJSONObject = paramJSONObject.optString("pkg");
    if (!TextUtils.isEmpty(paramJSONObject)) {
      localIntent.setPackage(paramJSONObject.trim());
    }
    localIntent.addFlags(4194304);
    localIntent.addFlags(268435456);
    com.dianxinos.library.notify.c.a().startActivity(localIntent);
    return 1;
  }
  
  private boolean a(Intent paramIntent, String paramString)
  {
    if ((paramIntent == null) || (TextUtils.isEmpty(paramString))) {}
    int i;
    Object localObject2;
    do
    {
      do
      {
        do
        {
          return false;
          paramString = paramString.split(";");
          int j = paramString.length;
          i = 0;
          if (i >= j) {
            break;
          }
          localObject2 = paramString[i].split("\\|");
        } while ((localObject2.length != 2) || (TextUtils.isEmpty(localObject2[0])) || (TextUtils.isEmpty(localObject2[1])));
        localObject1 = localObject2[1].split("=");
      } while ((localObject1.length != 2) || (TextUtils.isEmpty(localObject1[0])) || (TextUtils.isEmpty(localObject1[1])));
      localObject2 = localObject2[0].trim();
    } while (((String)localObject2).length() != 1);
    String str = localObject1[0].trim();
    Object localObject1 = localObject1[1].trim();
    switch (((String)localObject2).charAt(0))
    {
    default: 
      return false;
    case 'B': 
      paramIntent.putExtra(str, Boolean.valueOf((String)localObject1).booleanValue());
    }
    for (;;)
    {
      i += 1;
      break;
      paramIntent.putExtra(str, Byte.valueOf((String)localObject1).byteValue());
      continue;
      paramIntent.putExtra(str, ((String)localObject1).charAt(0));
      continue;
      paramIntent.putExtra(str, Double.valueOf((String)localObject1).doubleValue());
      continue;
      paramIntent.putExtra(str, Float.valueOf((String)localObject1).floatValue());
      continue;
      paramIntent.putExtra(str, Integer.valueOf((String)localObject1).intValue());
      continue;
      paramIntent.putExtra(str, Long.valueOf((String)localObject1).longValue());
      continue;
      paramIntent.putExtra(str, Short.valueOf((String)localObject1).shortValue());
      continue;
      paramIntent.putExtra(str, (String)localObject1);
    }
    return true;
  }
  
  private int b(JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.getString("url");
    if (TextUtils.isEmpty(paramJSONObject)) {
      return 0;
    }
    paramJSONObject = new Intent("android.intent.action.VIEW", Uri.parse(paramJSONObject));
    paramJSONObject.addFlags(268435456);
    paramJSONObject.addFlags(4194304);
    com.dianxinos.library.notify.c.a().startActivity(paramJSONObject);
    return 1;
  }
  
  public int a(p paramp)
  {
    try
    {
      paramp = new JSONObject(d);
      if (!paramp.getString("work").trim().equals("open")) {
        return 0;
      }
      String str = paramp.getString("type").trim();
      if ("url".equals(str)) {
        return b(paramp);
      }
      if ("intent".equals(str))
      {
        int i = a(paramp);
        return i;
      }
    }
    catch (Throwable paramp) {}
    return 0;
  }
  
  public String a()
  {
    return "open";
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.c.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */