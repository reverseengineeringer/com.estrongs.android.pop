package com.estrongs.android.j;

import android.content.Context;
import android.text.TextUtils;
import com.estrongs.android.util.ap;
import org.json.JSONException;
import org.json.JSONObject;

public class d
{
  private static long a = 0L;
  
  public static void a(Context paramContext)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("feature", "analyze");
      c.a(paramContext).a("hp_click", localJSONObject);
      return;
    }
    catch (JSONException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public static void a(Context paramContext, String paramString)
  {
    try
    {
      if (a != 0L)
      {
        long l = System.currentTimeMillis();
        if ((l - a) / 1000L > 2L)
        {
          String str = "";
          JSONObject localJSONObject = new JSONObject();
          localJSONObject.put("hp_s_time", (l - a) / 1000L);
          if (ap.bw(paramString)) {
            str = "log";
          }
          if (ap.ad(paramString)) {
            str = "encrypt_lb";
          }
          if (ap.ab(paramString)) {
            str = "compress_lb";
          }
          if (ap.X(paramString)) {
            str = "pic_lb";
          }
          if (ap.V(paramString)) {
            str = "music_lb";
          }
          if (ap.Z(paramString)) {
            str = "video_lb";
          }
          if (ap.ae(paramString)) {
            str = "doc_lb";
          }
          if (ap.cj(paramString)) {
            str = "network";
          }
          if (!TextUtils.isEmpty(str)) {
            c.a(paramContext).a(str, localJSONObject);
          }
        }
      }
      a = System.currentTimeMillis();
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public static void b(Context paramContext)
  {
    try
    {
      c.a(paramContext).a("hp", "show");
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public static void b(Context paramContext, String paramString)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      if (ap.bC(paramString)) {
        localJSONObject.put("feature", "sd");
      }
      if (ap.bw(paramString)) {
        localJSONObject.put("feature", "logger");
      }
      if (ap.ad(paramString)) {
        localJSONObject.put("feature", "encrypted");
      }
      if (ap.ab(paramString)) {
        localJSONObject.put("feature", "compressed");
      }
      if (ap.bv(paramString)) {
        localJSONObject.put("feature", "cleaner");
      }
      if (ap.ai(paramString)) {
        localJSONObject.put("feature", "app");
      }
      if (ap.X(paramString)) {
        localJSONObject.put("feature", "images");
      }
      if (ap.V(paramString)) {
        localJSONObject.put("feature", "music");
      }
      if (ap.Z(paramString)) {
        localJSONObject.put("feature", "movies");
      }
      if (ap.aG(paramString)) {
        localJSONObject.put("feature", "cloud");
      }
      if (ap.t(paramString)) {
        localJSONObject.put("feature", "downloader");
      }
      if (ap.ae(paramString)) {
        localJSONObject.put("feature", "documents");
      }
      if (ap.cj(paramString)) {
        localJSONObject.put("feature", "network");
      }
      if (ap.cg(paramString)) {
        localJSONObject.put("feature", "recycleBin");
      }
      if (ap.s(paramString)) {
        localJSONObject.put("feature", "viewOnPc");
      }
      if ("applocker".equals(paramString)) {
        localJSONObject.put("feature", "locker");
      }
      if ("hideList".equals(paramString)) {
        localJSONObject.put("feature", "hideList");
      }
      if (!TextUtils.isEmpty(localJSONObject.getString("feature"))) {
        c.a(paramContext).a("hp_click", localJSONObject);
      }
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public static void c(Context paramContext)
  {
    try
    {
      c.a(paramContext).a("hp", "newban_s");
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public static void d(Context paramContext)
  {
    try
    {
      c.a(paramContext).a("hp", "newban_c");
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.j.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */