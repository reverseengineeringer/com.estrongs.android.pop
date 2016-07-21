package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class ad
{
  private static final String[] a = new String[0];
  
  private static String a(cj paramcj)
  {
    if (paramcj == null) {}
    while ((b == null) || (a != 3)) {
      return null;
    }
    return b;
  }
  
  private static String a(cj paramcj, String paramString)
  {
    if ((paramcj == null) || (TextUtils.isEmpty(paramString))) {}
    do
    {
      do
      {
        return null;
      } while (c == null);
      paramcj = a(c, paramString);
    } while (TextUtils.isEmpty(paramcj));
    return paramcj;
  }
  
  private static String a(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {
      paramString2 = null;
    }
    for (;;)
    {
      return paramString2;
      String str = "";
      try
      {
        Iterator localIterator = Arrays.asList(paramString2.split("\\s*-\\s*")).iterator();
        paramString2 = str;
        if (!localIterator.hasNext()) {
          continue;
        }
        paramString2 = (String)localIterator.next();
        paramString2 = new JSONObject(paramString1).getString(paramString2);
        boolean bool = TextUtils.isEmpty(paramString2);
        if (!bool) {
          paramString1 = paramString2;
        }
        for (;;)
        {
          break;
        }
      }
      catch (JSONException paramString1)
      {
        return null;
      }
    }
  }
  
  public static List<String> a(au paramau, int paramInt)
  {
    if (paramau == null) {
      return Collections.emptyList();
    }
    Object localObject2 = paramau.b(paramInt);
    if (localObject2 == null) {
      return Collections.emptyList();
    }
    Object localObject1 = ah.a(g);
    if (ah.a.equals(localObject1)) {
      return Collections.emptyList();
    }
    localObject1 = new ArrayList();
    if ((i != null) && (i.size() > 0)) {
      paramau = i.iterator();
    }
    while (paramau.hasNext())
    {
      localObject2 = (String)paramau.next();
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        ((List)localObject1).add(localObject2);
        continue;
        Object localObject3;
        if (a == 7)
        {
          paramau = paramau.i().iterator();
          while (paramau.hasNext())
          {
            localObject3 = (da)paramau.next();
            if ((db.b.equals(b)) || (db.c.equals(b)))
            {
              localObject3 = c;
              if ((!TextUtils.isEmpty((CharSequence)localObject3)) && (!a(j, (String)localObject3))) {
                ((List)localObject1).add(localObject3);
              }
            }
          }
        }
        paramau = b(paramau, paramInt);
        if ((!TextUtils.isEmpty(paramau)) && (!a(j, paramau))) {
          ((List)localObject1).add(paramau);
        }
        paramau = a((cj)localObject2);
        if ((!TextUtils.isEmpty(paramau)) && (!a(j, paramau))) {
          ((List)localObject1).add(paramau);
        }
        paramau = a;
        int i = paramau.length;
        paramInt = 0;
        while (paramInt < i)
        {
          localObject3 = a((cj)localObject2, paramau[paramInt]);
          if ((!TextUtils.isEmpty((CharSequence)localObject3)) && (!a(j, (String)localObject3))) {
            ((List)localObject1).add(localObject3);
          }
          paramInt += 1;
        }
      }
    }
    return (List<String>)localObject1;
  }
  
  private static boolean a(List<String> paramList, String paramString)
  {
    if (paramList == null) {
      return false;
    }
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      if (paramString.equals((String)paramList.next())) {
        return true;
      }
    }
    return false;
  }
  
  private static String b(au paramau, int paramInt)
  {
    paramau = paramau.d(paramInt);
    if (paramau != null) {
      return paramau.f();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */