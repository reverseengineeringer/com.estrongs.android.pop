package com.estrongs.android.pop.utils;

import android.content.Context;
import com.estrongs.android.i.a;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.bc;
import java.util.ArrayList;
import java.util.Locale;

public class dd
{
  public static ArrayList<ShortcutFormat> a()
  {
    ArrayList localArrayList = new ArrayList();
    if (z.aq) {
      return localArrayList;
    }
    for (;;)
    {
      try
      {
        localFexApplication = FexApplication.a();
        localad = ad.a(localFexApplication);
        de.a = false;
        if (!Locale.getDefault().getCountry().equalsIgnoreCase("in")) {
          continue;
        }
        if ((localad.O("india")) && (a.a("india_quikr", 1) == 1))
        {
          localObject1 = new ShortcutFormat();
          shortcutName = "Quikr";
          targetLocation = a.a("india_quikr_url", "http://goo.gl/gTCquG");
          ((ShortcutFormat)localObject1).putAttribute("virtualKey", "india");
          localArrayList.add(localObject1);
        }
        localObject1 = ad.a(FexApplication.a()).aM();
        Object localObject2;
        ShortcutFormat localShortcutFormat;
        if (localad.O("news"))
        {
          localObject2 = de.b((String)localObject1, "news");
          if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
          {
            localShortcutFormat = new ShortcutFormat();
            shortcutName = localFexApplication.getString(2131231474);
            targetLocation = get0d;
            localShortcutFormat.putAttribute("virtualKey", "news");
            localShortcutFormat.putAttribute("searchEngineKey", (String)localObject1);
            localArrayList.add(localShortcutFormat);
          }
        }
        if (localad.O("weather"))
        {
          localObject2 = de.b((String)localObject1, "weather");
          if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
          {
            localShortcutFormat = new ShortcutFormat();
            shortcutName = localFexApplication.getString(2131231475);
            targetLocation = get0d;
            localShortcutFormat.putAttribute("virtualKey", "weather");
            localShortcutFormat.putAttribute("searchEngineKey", (String)localObject1);
            localArrayList.add(localShortcutFormat);
          }
        }
        if ((!cl.a()) && (localad.O("facebook")))
        {
          localObject2 = new ShortcutFormat();
          shortcutName = localFexApplication.getString(2131231462);
          targetLocation = bc.a;
          ((ShortcutFormat)localObject2).putAttribute("virtualKey", "facebook");
          localArrayList.add(localObject2);
        }
        if (localad.O("document"))
        {
          localObject2 = de.b((String)localObject1, "document");
          if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
          {
            localShortcutFormat = new ShortcutFormat();
            shortcutName = localFexApplication.getString(2131231130);
            targetLocation = get0d;
            localShortcutFormat.putAttribute("virtualKey", "document");
            localShortcutFormat.putAttribute("searchEngineKey", (String)localObject1);
            localArrayList.add(localShortcutFormat);
          }
        }
        if ((!z.am) && (localad.O("video")))
        {
          localObject2 = de.b((String)localObject1, "video");
          if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
          {
            localShortcutFormat = new ShortcutFormat();
            shortcutName = localFexApplication.getString(2131231135);
            targetLocation = get0d;
            localShortcutFormat.putAttribute("virtualKey", "video");
            localShortcutFormat.putAttribute("searchEngineKey", (String)localObject1);
            localArrayList.add(localShortcutFormat);
          }
        }
        if (localad.O("apk"))
        {
          localObject2 = de.b((String)localObject1, "apk");
          if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
          {
            localShortcutFormat = new ShortcutFormat();
            shortcutName = localFexApplication.getString(2131231129);
            targetLocation = get0d;
            localShortcutFormat.putAttribute("virtualKey", "apk");
            localShortcutFormat.putAttribute("searchEngineKey", (String)localObject1);
            localArrayList.add(localShortcutFormat);
          }
        }
        if (localad.O("music"))
        {
          localObject2 = de.b((String)localObject1, "music");
          if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
          {
            localShortcutFormat = new ShortcutFormat();
            shortcutName = localFexApplication.getString(2131231136);
            targetLocation = get0d;
            localShortcutFormat.putAttribute("virtualKey", "music");
            localShortcutFormat.putAttribute("searchEngineKey", (String)localObject1);
            localArrayList.add(localShortcutFormat);
          }
        }
        if (localad.O("image"))
        {
          localObject2 = de.b((String)localObject1, "image");
          if ((localObject2 != null) && (((ArrayList)localObject2).size() > 0))
          {
            localShortcutFormat = new ShortcutFormat();
            shortcutName = localFexApplication.getString(2131231138);
            targetLocation = get0d;
            localShortcutFormat.putAttribute("virtualKey", "image");
            localShortcutFormat.putAttribute("searchEngineKey", (String)localObject1);
            localArrayList.add(localShortcutFormat);
          }
        }
        if (localad.aO())
        {
          localObject2 = new ShortcutFormat();
          shortcutName = localad.aP();
          targetLocation = a"all"a;
          ((ShortcutFormat)localObject2).putAttribute("isSearchEngine", "true");
          ((ShortcutFormat)localObject2).putAttribute("virtualKey", "all");
          ((ShortcutFormat)localObject2).putAttribute("searchEngineKey", (String)localObject1);
          localArrayList.add(localObject2);
        }
      }
      catch (NullPointerException localNullPointerException)
      {
        FexApplication localFexApplication;
        ad localad;
        Object localObject1;
        continue;
      }
      de.a = true;
      return localArrayList;
      if (localad.O("download"))
      {
        localObject1 = new ShortcutFormat();
        shortcutName = localFexApplication.getString(2131230847);
        targetLocation = localad.A();
        ((ShortcutFormat)localObject1).putAttribute("virtualKey", "download");
        localArrayList.add(localObject1);
      }
    }
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
      localad.v(false);
    }
    for (;;)
    {
      bc.b();
      return;
      localad.c(paramString, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */