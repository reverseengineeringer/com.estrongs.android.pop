package com.estrongs.android.e;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a
{
  private static void a(Context paramContext)
  {
    if ((paramContext instanceof FileExplorerActivity)) {
      paramContext = ((FileExplorerActivity)paramContext).at();
    }
    try
    {
      paramContext.a("Card_Analyst");
      paramContext.c("Card_Analyst_UV");
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public static void a(String paramString, Context paramContext)
  {
    if (paramString == null) {}
    do
    {
      do
      {
        return;
        i = paramString.indexOf('@');
      } while ((i == -1) || (i == paramString.length() - 1));
      localObject1 = paramString.substring(0, i);
      localObject2 = paramString.substring(i + 1);
      if ("page".equals(localObject1))
      {
        b((String)localObject2, paramContext);
        return;
      }
    } while (!"intent".equals(localObject1));
    int i = ((String)localObject2).indexOf('?');
    if ((i == -1) || (i == ((String)localObject2).length() - 1))
    {
      a((String)localObject2, null, paramContext);
      return;
    }
    paramString = ((String)localObject2).substring(0, i);
    Object localObject2 = ((String)localObject2).substring(i + 1);
    Object localObject1 = new HashMap();
    i = ((String)localObject2).indexOf('&');
    if ((i == -1) || (i == ((String)localObject2).length() - 1))
    {
      localObject2 = ((String)localObject2).split("=");
      ((Map)localObject1).put(localObject2[0], localObject2[1]);
    }
    for (;;)
    {
      a(paramString, (Map)localObject1, paramContext);
      return;
      localObject2 = ((String)localObject2).split("&");
      int j = localObject2.length;
      i = 0;
      while (i < j)
      {
        String[] arrayOfString = localObject2[i].split("=");
        ((Map)localObject1).put(arrayOfString[0], arrayOfString[1]);
        i += 1;
      }
    }
  }
  
  private static void a(String paramString, Map<String, String> paramMap, Context paramContext)
  {
    Object localObject1 = null;
    try
    {
      localObject2 = Class.forName(paramString);
      localObject1 = localObject2;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      try
      {
        Object localObject2 = new Intent();
        if (localObject1 == null) {
          break label99;
        }
        ((Intent)localObject2).setClass(paramContext, (Class)localObject1);
        if (!PopAudioPlayer.class.equals(localObject1)) {
          break label54;
        }
        b(paramContext);
        i = 1;
        for (;;)
        {
          if (paramMap != null) {
            break label124;
          }
          ((Intent)localObject2).addFlags(268435456);
          ((Intent)localObject2).addFlags(67108864);
          paramContext.startActivity((Intent)localObject2);
          if (i == 0) {
            e(paramContext);
          }
          return;
          localClassNotFoundException = localClassNotFoundException;
          localClassNotFoundException.printStackTrace();
          break;
          localClassNotFoundException.setAction(paramString);
          if ("com.estrongs.android.SHOW_DISK_USAGE".equals(paramString))
          {
            a(paramContext);
            i = 1;
          }
        }
        paramString = paramMap.entrySet().iterator();
        while (paramString.hasNext())
        {
          localObject1 = (Map.Entry)paramString.next();
          localClassNotFoundException.putExtra((String)((Map.Entry)localObject1).getKey(), (String)((Map.Entry)localObject1).getValue());
        }
        if (!"open_music_player".equals(paramMap.get("action"))) {
          break label238;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return;
      }
    }
    int i = 0;
    label54:
    label99:
    label124:
    b(paramContext);
    i = 1;
    for (;;)
    {
      localClassNotFoundException.addFlags(268435456);
      localClassNotFoundException.addFlags(67108864);
      paramContext.startActivity(localClassNotFoundException);
      break;
      label238:
      if ("show_app".equals(paramMap.get("action")))
      {
        c(paramContext);
        i = 1;
      }
    }
  }
  
  private static void b(Context paramContext)
  {
    if ((paramContext instanceof FileExplorerActivity)) {
      paramContext = ((FileExplorerActivity)paramContext).at();
    }
    try
    {
      paramContext.a("Card_Music");
      paramContext.c("Card_Music_UV");
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private static void b(String paramString, Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, FileExplorerActivity.class);
    localIntent.setData(Uri.parse(paramString));
    localIntent.addFlags(268435456);
    localIntent.addFlags(67108864);
    paramContext.startActivity(localIntent);
    if ("du://".equals(paramString))
    {
      a(paramContext);
      return;
    }
    if ("app://user".equals(paramString))
    {
      c(paramContext);
      return;
    }
    if ("net://".equals(paramString))
    {
      d(paramContext);
      return;
    }
    e(paramContext);
  }
  
  private static void c(Context paramContext)
  {
    if ((paramContext instanceof FileExplorerActivity)) {
      paramContext = ((FileExplorerActivity)paramContext).at();
    }
    try
    {
      paramContext.a("Card_AppM");
      paramContext.c("Card_AppM_UV");
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private static void d(Context paramContext)
  {
    if ((paramContext instanceof FileExplorerActivity)) {
      paramContext = ((FileExplorerActivity)paramContext).at();
    }
    try
    {
      paramContext.a("Card_Cloud");
      paramContext.c("Card_Cloud_UV");
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private static void e(Context paramContext)
  {
    if ((paramContext instanceof FileExplorerActivity)) {
      paramContext = ((FileExplorerActivity)paramContext).at();
    }
    try
    {
      paramContext.a("Card_Others");
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */