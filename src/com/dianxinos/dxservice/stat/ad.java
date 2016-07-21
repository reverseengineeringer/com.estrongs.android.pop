package com.dianxinos.dxservice.stat;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.dianxinos.DXStatService.a.a;
import com.dianxinos.DXStatService.stat.d;
import com.dianxinos.dxservice.a.f;
import com.dianxinos.dxservice.a.h;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

class ad
{
  private final h b;
  private final Context c;
  
  public ad(ac paramac, Context paramContext)
  {
    b = h.a(paramContext);
    c = paramContext;
  }
  
  private void a(f paramf, String paramString1, String paramString2)
  {
    paramf.a(paramString1, s.a(paramString2, u.b()));
  }
  
  private void a(JSONObject paramJSONObject, String paramString)
  {
    Object localObject = s.a(u.a(), paramString);
    if (com.dianxinos.dxservice.a.c.c)
    {
      Log.d("stat.EventReporter", "pub = " + paramString);
      Log.d("stat.EventReporter", "cipher = " + (String)localObject);
    }
    paramJSONObject.put("a", paramString);
    paramJSONObject.put("b", localObject);
    paramString = new JSONObject();
    localObject = Calendar.getInstance();
    if (((Calendar)localObject).getTimeZone().getRawOffset() != aa.a.getRawOffset()) {
      paramString.put("c", ((Calendar)localObject).getTimeZone().getID());
    }
    paramString.put("d", aa.a(((Calendar)localObject).getTimeInMillis()));
    paramString.put("e", aa.a());
    paramString.put("f", a.s(c));
    paramString.put("g", d.a(c));
    paramJSONObject.put("c", s.a(paramString.toString(), u.b()));
  }
  
  private byte[] a(int paramInt)
  {
    int i = (byte)(paramInt & 0xFF);
    int j = (byte)(paramInt >> 8 & 0xFF);
    int k = (byte)(paramInt >> 16 & 0xFF);
    return new byte[] { (byte)(paramInt >> 24 & 0xFF), k, j, i };
  }
  
  public int a(String paramString1, String paramString2)
  {
    int j = -1;
    int i;
    if (TextUtils.isEmpty(d.a(c)))
    {
      i = j;
      if (com.dianxinos.dxservice.a.c.d)
      {
        Log.i("stat.EventReporter", "No lc info!");
        i = j;
      }
    }
    label377:
    do
    {
      do
      {
        do
        {
          for (;;)
          {
            return i;
            String str1 = b.b();
            com.dianxinos.dxservice.core.c.a(c).b();
            if (com.dianxinos.dxservice.a.c.d) {
              Log.i("stat.EventReporter", "Try to upload with token: " + str1);
            }
            i = j;
            if (str1 != null)
            {
              i = j;
              if (str1.trim().length() != 0)
              {
                i = j;
                if (paramString1 != null)
                {
                  i = j;
                  if (paramString1.trim().length() != 0)
                  {
                    String str2 = com.dianxinos.dxservice.a.c.a("data", c);
                    i = j;
                    if (str2 != null)
                    {
                      i = j;
                      if (str2.trim().length() != 0)
                      {
                        ArrayList localArrayList = new ArrayList();
                        Object localObject = new JSONObject();
                        try
                        {
                          a((JSONObject)localObject, paramString1);
                        }
                        catch (JSONException paramString1)
                        {
                          try
                          {
                            paramString1 = aa.a(((JSONObject)localObject).toString());
                            paramString2 = aa.a(paramString2);
                            localObject = new byte[paramString1.length + paramString2.length + 4];
                            System.arraycopy(a(paramString1.length), 0, localObject, 0, 4);
                            System.arraycopy(paramString1, 0, localObject, 4, paramString1.length);
                            System.arraycopy(paramString2, 0, localObject, paramString1.length + 4, paramString2.length);
                            localArrayList.add(new Pair("data", localObject));
                            paramString1 = new f(c, str2, "DXCoreService", "stat.EventReporter");
                            a(paramString1, "token", str1);
                            j = paramString1.b(null, localArrayList);
                            if (al.b(j)) {
                              break label377;
                            }
                            i = j;
                            if (!com.dianxinos.dxservice.a.c.e) {
                              continue;
                            }
                            Log.e("stat.EventReporter", "Failed to connect the stat server.");
                            return j;
                          }
                          catch (Exception paramString1)
                          {
                            i = j;
                          }
                          paramString1 = paramString1;
                          i = j;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        } while (!com.dianxinos.dxservice.a.c.e);
        Log.e("stat.EventReporter", "Can not generate the header.", paramString1);
        return -1;
      } while (!com.dianxinos.dxservice.a.c.e);
      Log.e("stat.EventReporter", "Can not zip the data.", paramString1);
      return -1;
      i = j;
    } while (!com.dianxinos.dxservice.a.c.d);
    Log.i("stat.EventReporter", "Successfully upload the content.");
    return j;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */