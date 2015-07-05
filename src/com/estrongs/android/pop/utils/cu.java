package com.estrongs.android.pop.utils;

import android.content.Context;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.ay;
import java.util.ArrayList;

public class cu
{
  public static ArrayList<ShortcutFormat> a()
  {
    ArrayList localArrayList = new ArrayList();
    if (z.aq) {
      return localArrayList;
    }
    try
    {
      FexApplication localFexApplication = FexApplication.a();
      ad localad = ad.a(localFexApplication);
      cv.a = false;
      if (localad.O("download"))
      {
        localObject1 = new ShortcutFormat();
        shortcutName = localFexApplication.getString(2131427359);
        targetLocation = localad.z();
        ((ShortcutFormat)localObject1).putAttribute("virtualKey", "download");
        localArrayList.add(localObject1);
      }
      Object localObject1 = ad.a(FexApplication.a()).aL();
      Object localObject2;
      ShortcutFormat localShortcutFormat;
      if (localad.O("news"))
      {
        localObject2 = cv.b((String)localObject1, "news");
        if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
        {
          localShortcutFormat = new ShortcutFormat();
          shortcutName = localFexApplication.getString(2131428442);
          targetLocation = get0d;
          localShortcutFormat.putAttribute("virtualKey", "news");
          localArrayList.add(localShortcutFormat);
        }
      }
      if (localad.O("weather"))
      {
        localObject2 = cv.b((String)localObject1, "weather");
        if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
        {
          localShortcutFormat = new ShortcutFormat();
          shortcutName = localFexApplication.getString(2131428441);
          targetLocation = get0d;
          localShortcutFormat.putAttribute("virtualKey", "weather");
          localArrayList.add(localShortcutFormat);
        }
      }
      if ((!cc.a()) && (localad.O("facebook")))
      {
        localObject2 = new ShortcutFormat();
        shortcutName = localFexApplication.getString(2131427499);
        targetLocation = ay.a;
        ((ShortcutFormat)localObject2).putAttribute("virtualKey", "facebook");
        localArrayList.add(localObject2);
      }
      if (localad.O("document"))
      {
        localObject2 = cv.b((String)localObject1, "document");
        if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
        {
          localShortcutFormat = new ShortcutFormat();
          shortcutName = localFexApplication.getString(2131427424);
          targetLocation = get0d;
          localShortcutFormat.putAttribute("virtualKey", "document");
          localArrayList.add(localShortcutFormat);
        }
      }
      if ((!z.am) && (localad.O("video")))
      {
        localObject2 = cv.b((String)localObject1, "video");
        if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
        {
          localShortcutFormat = new ShortcutFormat();
          shortcutName = localFexApplication.getString(2131427425);
          targetLocation = get0d;
          localShortcutFormat.putAttribute("virtualKey", "video");
          localArrayList.add(localShortcutFormat);
        }
      }
      if (localad.O("apk"))
      {
        localObject2 = cv.b((String)localObject1, "apk");
        if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
        {
          localShortcutFormat = new ShortcutFormat();
          shortcutName = localFexApplication.getString(2131427423);
          targetLocation = get0d;
          localShortcutFormat.putAttribute("virtualKey", "apk");
          localArrayList.add(localShortcutFormat);
        }
      }
      if (localad.O("music"))
      {
        localObject2 = cv.b((String)localObject1, "music");
        if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
        {
          localShortcutFormat = new ShortcutFormat();
          shortcutName = localFexApplication.getString(2131427422);
          targetLocation = get0d;
          localShortcutFormat.putAttribute("virtualKey", "music");
          localArrayList.add(localShortcutFormat);
        }
      }
      if (localad.O("image"))
      {
        localObject1 = cv.b((String)localObject1, "image");
        if ((localObject1 != null) && (((ArrayList)localObject1).size() > 0))
        {
          localObject2 = new ShortcutFormat();
          shortcutName = localFexApplication.getString(2131427421);
          targetLocation = get0d;
          ((ShortcutFormat)localObject2).putAttribute("virtualKey", "image");
          localArrayList.add(localObject2);
        }
      }
      if (localad.aN())
      {
        localObject1 = new ShortcutFormat();
        shortcutName = localad.aO();
        targetLocation = a"all"a;
        ((ShortcutFormat)localObject1).putAttribute("isSearchEngine", "true");
        ((ShortcutFormat)localObject1).putAttribute("virtualKey", "all");
        localArrayList.add(localObject1);
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      for (;;) {}
    }
    cv.a = true;
    return localArrayList;
  }
  
  public static boolean a(String paramString)
  {
    if (paramString == null) {}
    while ((!paramString.equals("music")) && (!paramString.equals("image")) && (!paramString.equals("apk")) && (!paramString.equals("document")) && ((!paramString.equals("video")) || (z.am))) {
      return false;
    }
    return true;
  }
  
  public static void b(String paramString)
  {
    ad localad = ad.a(FexApplication.a());
    if (paramString.equals("all")) {
      localad.w(false);
    }
    for (;;)
    {
      ay.b();
      return;
      localad.c(paramString, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */