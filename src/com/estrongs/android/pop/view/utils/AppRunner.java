package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.estrongs.a.p;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.BTPopNoteEditor;
import com.estrongs.android.pop.app.OpenRecomm;
import com.estrongs.android.pop.app.PopRemoteImageBrowser;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.pop.app.StreamingMediaPlayer;
import com.estrongs.android.pop.app.editor.PopNoteEditor;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bd;
import com.estrongs.fs.b.r;
import com.estrongs.fs.b.w;
import com.estrongs.fs.d;
import com.estrongs.fs.impl.local.l;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class AppRunner
{
  public static Integer a = Integer.valueOf(10222);
  public static Object b = new Object();
  private static HashMap<String, Intent> c = new HashMap();
  
  public static void a(Activity paramActivity, Intent paramIntent, String paramString)
  {
    boolean bool = false;
    if (paramIntent.getExtras() != null) {
      bool = paramIntent.getExtras().getBoolean("by_open_as", false);
    }
    String str;
    if (!bool)
    {
      str = am.bA(am.d(paramString));
      if ((str == null) || ("".equals(str))) {
        break label249;
      }
    }
    Intent localIntent;
    label249:
    for (u localu1 = n.a(paramActivity, str);; localIntent = null)
    {
      u localu2 = localu1;
      if (localu1 != null) {}
      for (;;)
      {
        try
        {
          paramIntent.setClassName(a, b);
          if (c != null) {
            paramIntent.setAction(c);
          }
          if (d(a)) {
            a(paramIntent, 32768);
          }
          if ((paramActivity instanceof FileExplorerActivity))
          {
            ((FileExplorerActivity)paramActivity).a(paramIntent);
            return;
          }
          paramActivity.startActivity(paramIntent);
          return;
        }
        catch (ActivityNotFoundException localActivityNotFoundException)
        {
          localActivityNotFoundException.printStackTrace();
          paramIntent.setComponent(null);
          n.a(paramActivity, str, null);
          localu2 = null;
          if (localu2 != null) {
            return;
          }
          if (paramString != null) {
            break;
          }
          paramActivity.startActivity(paramIntent);
          return;
        }
        catch (SecurityException localSecurityException)
        {
          paramIntent.setComponent(null);
          n.a(paramActivity, str, null);
        }
        localu2 = null;
      }
      c.put(paramString, paramIntent);
      localIntent = new Intent(paramActivity, OpenRecomm.class);
      localIntent.putExtra("filepath", paramString);
      localIntent.putExtra("intent", paramIntent);
      try
      {
        paramActivity.startActivity(localIntent);
        return;
      }
      catch (Exception paramString)
      {
        paramActivity.startActivity(paramIntent);
        return;
      }
    }
  }
  
  public static void a(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/pdf");
    try
    {
      a(paramActivity, localIntent, paramString);
      return;
    }
    catch (ActivityNotFoundException paramActivity) {}
  }
  
  public static void a(Activity paramActivity, String paramString, int paramInt, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        Object localObject2;
        if (am.bb(paramString))
        {
          if (!com.estrongs.android.c.a.b())
          {
            ag.a(paramActivity, 2131427921, 1);
            return;
          }
          if (am.G(paramString) != 3)
          {
            localObject1 = new Intent("android.intent.action.VIEW");
            ((Intent)localObject1).addFlags(67108864);
            ((Intent)localObject1).putExtra("oneshot", true);
            ((Intent)localObject1).putExtra("configchange", false);
            ((Intent)localObject1).putExtra("by_open_as", paramBoolean);
            localObject2 = am.b(paramString, com.estrongs.android.c.a.a());
            if (localObject2 != null)
            {
              localObject2 = Uri.parse((String)localObject2);
              if (!w.a(paramString))
              {
                ((Intent)localObject1).setDataAndType((Uri)localObject2, bc.S(paramString));
                try
                {
                  a(paramActivity, (Intent)localObject1, paramString);
                  return;
                }
                catch (ActivityNotFoundException paramActivity)
                {
                  paramActivity.printStackTrace();
                  return;
                }
              }
              ((Intent)localObject1).setDataAndType((Uri)localObject2, bc.i(paramInt));
              continue;
            }
          }
          else
          {
            localObject1 = new Intent(paramActivity, StreamingMediaPlayer.class);
            ((Intent)localObject1).addFlags(67108864);
            ((Intent)localObject1).setData(Uri.parse(paramString));
            ((Intent)localObject1).putExtra("by_open_as", paramBoolean);
            paramActivity.startActivity((Intent)localObject1);
          }
        }
        else
        {
          Intent localIntent = new Intent("android.intent.action.VIEW");
          localIntent.addFlags(67108864);
          localIntent.putExtra("oneshot", true);
          localIntent.putExtra("configchange", false);
          localIntent.putExtra("by_open_as", paramBoolean);
          Uri localUri = Uri.fromFile(new File(paramString));
          localObject2 = bc.i(paramInt);
          if ((localObject2 == null) || (paramBoolean)) {
            break label312;
          }
          localObject1 = localObject2;
          if (localObject2 != null)
          {
            localObject1 = localObject2;
            if (!((String)localObject2).startsWith("audio/")) {
              break label312;
            }
          }
          localIntent.setDataAndType(localUri, (String)localObject1);
          a(paramActivity, localIntent, paramString);
        }
        return;
      }
      catch (ActivityNotFoundException paramActivity)
      {
        return;
      }
      catch (NullPointerException paramActivity)
      {
        return;
      }
      label312:
      Object localObject1 = "audio/*";
    }
  }
  
  public static void a(Activity paramActivity, String paramString, com.estrongs.fs.impl.b.f paramf)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    if (paramf != null)
    {
      paramString = new ArrayList();
      paramString.add(paramf);
      a(paramActivity, localArrayList, paramString);
      return;
    }
    a(paramActivity, localArrayList, null);
  }
  
  public static void a(Activity paramActivity, String paramString, Class<?> paramClass)
  {
    if (am.bb(paramString))
    {
      com.estrongs.android.pop.utils.a.a(paramActivity, 2131427782);
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.putExtra("archive_file_name", paramString);
    if (paramClass != null) {
      localIntent.setClass(paramActivity, paramClass);
    }
    paramClass = bc.E(327736);
    if (bc.n(paramString)) {
      paramClass = bc.E(327744);
    }
    for (;;)
    {
      localIntent.setDataAndType(Uri.fromFile(new File(paramString)), paramClass);
      try
      {
        a(paramActivity, localIntent, paramString);
        return;
      }
      catch (ActivityNotFoundException paramString)
      {
        com.estrongs.android.pop.utils.a.a(paramActivity, 2131427782);
        return;
      }
      if (bc.l(paramString)) {
        paramClass = bc.E(327745);
      } else if (bc.m(paramString)) {
        paramClass = bc.E(327746);
      }
    }
  }
  
  public static void a(Activity paramActivity, String paramString1, String paramString2)
  {
    if ((paramString2 == null) || (paramString2.length() == 0)) {
      return;
    }
    String str = paramString1;
    if (bd.a(paramString1)) {
      str = paramString2;
    }
    if ((bc.j(paramString2)) && (!bc.N(paramString2)))
    {
      paramActivity.runOnUiThread(new f(paramActivity));
      return;
    }
    if (paramString2.endsWith(".eslock"))
    {
      if (am.ba(paramString2))
      {
        paramString1 = new ArrayList();
        paramString1.add(new com.estrongs.fs.impl.local.f(new File(paramString2)));
        aj.a(paramActivity, paramString1, true);
        return;
      }
      ag.a(paramActivity, 2131428484, 0);
      return;
    }
    if ((am.bb(paramString2)) && (!a(paramString2)))
    {
      paramString1 = am.d(paramString2);
      if ((q(paramActivity, "/sdcard/" + paramString1) == null) && (u(paramActivity, paramString1) == null))
      {
        paramActivity.runOnUiThread(new g(paramActivity, paramString2));
        return;
      }
      a(paramActivity, paramString2, com.estrongs.android.pop.a.d + "/" + b(paramString2), null, true);
      return;
    }
    c(paramActivity, str, paramString2);
  }
  
  public static void a(Activity paramActivity, String paramString1, String paramString2, TypedMap paramTypedMap)
  {
    Object localObject1 = paramString1;
    if (bd.a(paramString1)) {
      localObject1 = paramString2;
    }
    paramString1 = paramString2;
    if (bd.a(paramString2)) {
      paramString1 = (String)localObject1;
    }
    Object localObject2 = localObject1;
    String str = paramString1;
    if (bd.c())
    {
      paramString2 = (String)localObject1;
      if (((String)localObject1).startsWith("/sdcard/")) {
        paramString2 = am.bE(paramString1);
      }
      localObject2 = paramString2;
      str = paramString1;
      if (paramString1.startsWith("/sdcard/"))
      {
        str = am.bE(paramString1);
        localObject2 = paramString2;
      }
    }
    try
    {
      if (am.bb(str))
      {
        paramString1 = new Intent(paramActivity, PopRemoteImageBrowser.class);
        paramString1.putExtra("FILE_PATH", (String)localObject2);
        paramString1.putExtra("ABSOLUTE_FILE_PATH", str);
        paramString1.putExtra("by_open_as", paramTypedMap.getBoolean("by_open_as"));
        paramString1.putExtra("show_hidelist_file", paramTypedMap.getBoolean("show_hidelist_file"));
        paramActivity.startActivity(paramString1);
        return;
      }
      localObject1 = new Intent("android.intent.action.VIEW");
      ((Intent)localObject1).putExtra("FILE_PATH", (String)localObject2);
      ((Intent)localObject1).setType("image/*");
      ((Intent)localObject1).putExtra("by_open_as", paramTypedMap.getBoolean("by_open_as"));
      ((Intent)localObject1).putExtra("show_hidelist_file", paramTypedMap.getBoolean("show_hidelist_file"));
      paramString1 = null;
      if ((bc.e(str)) || (bc.d(str)))
      {
        if (!bd.a())
        {
          paramString2 = com.estrongs.android.util.i.a().a(paramActivity.getContentResolver(), str);
          paramString1 = paramString2;
          if (paramString2 == null) {
            paramString1 = com.estrongs.android.util.i.a().a(paramActivity.getContentResolver(), new String[] { str }, str);
          }
        }
        if (paramString1 == null) {
          if (am.ba(str))
          {
            paramString1 = Uri.fromFile(new File(str));
            ((Intent)localObject1).setDataAndType(paramString1, "image/*");
          }
        }
        for (;;)
        {
          a(paramActivity, (Intent)localObject1, str);
          return;
          paramString1 = Uri.parse(str);
          break;
          ((Intent)localObject1).setData(paramString1);
        }
      }
      if (am.ba(str)) {}
      for (paramString1 = Uri.fromFile(new File(str));; paramString1 = Uri.parse(str))
      {
        ((Intent)localObject1).setDataAndType(paramString1, "image/*");
        break;
      }
      return;
    }
    catch (ActivityNotFoundException paramActivity)
    {
      return;
    }
    catch (NullPointerException paramActivity) {}
  }
  
  public static void a(Activity paramActivity, String paramString1, String paramString2, Runnable paramRunnable, boolean paramBoolean)
  {
    d locald = d.a(paramActivity);
    File localFile = new File(paramString2).getParentFile();
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    if (paramRunnable == null) {
      paramRunnable = new a(paramActivity, paramString2);
    }
    for (;;)
    {
      new c("CopyFileToLocal", locald, paramString1, paramActivity, paramString2, paramBoolean, localFile, paramRunnable).start();
      return;
    }
  }
  
  public static void a(Activity paramActivity, String paramString1, String paramString2, boolean paramBoolean)
  {
    TypedMap localTypedMap = new TypedMap();
    localTypedMap.put("by_open_as", Boolean.valueOf(paramBoolean));
    a(paramActivity, paramString1, paramString2, localTypedMap);
  }
  
  public static void a(Activity paramActivity, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject2 = bc.S(paramString);
    Object localObject1;
    if (!((String)localObject2).equals("*/*"))
    {
      localObject1 = localObject2;
      if (((String)localObject2).startsWith("text/")) {}
    }
    else
    {
      localObject1 = "text/*";
    }
    if (am.bb(paramString))
    {
      localObject2 = new Intent("android.intent.action.VIEW");
      ((Intent)localObject2).addFlags(67108864);
      ((Intent)localObject2).setType((String)localObject1);
      ((Intent)localObject2).putExtra("by_open_as", paramBoolean2);
      if (am.aV(paramString)) {
        ((Intent)localObject2).setClass(paramActivity, BTPopNoteEditor.class);
      }
      for (;;)
      {
        ((Intent)localObject2).setData(Uri.parse(paramString));
        paramActivity.startActivity((Intent)localObject2);
        return;
        ((Intent)localObject2).setClass(paramActivity, PopNoteEditor.class);
      }
    }
    localObject2 = new Intent("android.intent.action.VIEW");
    ((Intent)localObject2).addFlags(268435456);
    ((Intent)localObject2).putExtra("by_open_as", paramBoolean2);
    if (paramBoolean1)
    {
      ((Intent)localObject2).setDataAndType(Uri.parse(paramString), (String)localObject1);
      ((Intent)localObject2).setClass(paramActivity, PopNoteEditor.class);
      paramActivity.startActivity((Intent)localObject2);
      return;
    }
    ((Intent)localObject2).setDataAndType(Uri.fromFile(new File(paramString)), (String)localObject1);
    a(paramActivity, (Intent)localObject2, paramString);
  }
  
  public static void a(Activity paramActivity, List<String> paramList, List<com.estrongs.fs.impl.b.f> paramList1)
  {
    int i = 0;
    if ((paramActivity instanceof FileExplorerActivity)) {}
    for (boolean bool1 = ((FileExplorerActivity)paramActivity).C();; bool1 = false)
    {
      boolean bool2 = l.a(paramActivity, false);
      NotificationManager localNotificationManager = (NotificationManager)paramActivity.getSystemService("notification");
      if ((bool2) && ((ad.a(paramActivity).aa()) || (bool1))) {
        new i(paramList, paramActivity, paramList1, localNotificationManager).start();
      }
      ArrayList localArrayList;
      do
      {
        return;
        localArrayList = new ArrayList();
        if (i < paramList.size())
        {
          if (paramList1 != null)
          {
            com.estrongs.fs.impl.b.f localf = (com.estrongs.fs.impl.b.f)paramList1.get(i);
            if ((bool2) && (localf.b())) {
              localArrayList.add(localf);
            }
          }
          for (;;)
          {
            i += 1;
            break;
            v(paramActivity, (String)paramList.get(i));
          }
        }
      } while (localArrayList.size() <= 0);
      new j(localArrayList, paramActivity, localNotificationManager).start();
      return;
    }
  }
  
  public static void a(Activity paramActivity, List<String> paramList1, List<String> paramList2, List<Boolean> paramList)
  {
    int k = 0;
    if ((paramActivity instanceof FileExplorerActivity)) {}
    for (boolean bool1 = ((FileExplorerActivity)paramActivity).D();; bool1 = false)
    {
      boolean bool2 = l.a(paramActivity, false);
      int i;
      int j;
      if (paramList != null)
      {
        i = 1;
        j = k;
        if (!bool2) {
          break label87;
        }
        if ((!ad.a(paramActivity).aa()) && (!bool1))
        {
          j = k;
          if (i == 0) {
            break label87;
          }
        }
        new k(paramActivity, paramList1, paramList2, paramList).start();
      }
      for (;;)
      {
        return;
        i = 0;
        break;
        label87:
        while (j < paramList1.size())
        {
          paramActivity.startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + (String)paramList1.get(j))));
          j += 1;
        }
      }
    }
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    try
    {
      NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
      if (localNotificationManager != null)
      {
        Notification localNotification = new Notification();
        tickerText = ("ES " + paramContext.getText(2131427423));
        when = System.currentTimeMillis();
        icon = 2130837516;
        if (paramBoolean) {
          flags |= 0x2;
        }
        localNotification.setLatestEventInfo(paramContext, paramString1, paramString2, PendingIntent.getActivity(paramContext, 0, new Intent(paramContext, AppRunner.DoNothing.class), 0));
        localNotificationManager.notify(paramInt, localNotification);
      }
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public static void a(Intent paramIntent, int paramInt)
  {
    if ((paramIntent.getFlags() & paramInt) != 0) {
      paramIntent.setFlags(paramIntent.getFlags() ^ paramInt);
    }
  }
  
  public static boolean a(String paramString)
  {
    return (bc.i(paramString)) || (bc.c(paramString)) || (bc.g(paramString)) || (bc.h(paramString));
  }
  
  public static String b(String paramString)
  {
    String str2 = am.d(paramString);
    int i = str2.lastIndexOf('.');
    if (i == -1) {
      return str2 + "_" + paramString.hashCode();
    }
    String str1 = str2.substring(0, i);
    str2 = str2.substring(i);
    return str1 + "_" + paramString.hashCode() + str2;
  }
  
  public static void b(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/esj");
    try
    {
      a(paramActivity, localIntent, paramString);
      return;
    }
    catch (ActivityNotFoundException paramActivity) {}
  }
  
  public static void b(Activity paramActivity, String paramString, int paramInt, boolean paramBoolean)
  {
    String str2;
    Object localObject6;
    Object localObject4;
    Object localObject3;
    Object localObject1;
    Object localObject5;
    if (am.bb(paramString))
    {
      if (!com.estrongs.android.c.a.b()) {
        ag.a(paramActivity, 2131427921, 1);
      }
      do
      {
        return;
        if ((am.H(paramString)) && (z.Y)) {
          try
          {
            str2 = com.estrongs.android.pop.a.b + "/.smbmount";
            localObject6 = am.y(paramString);
            localObject4 = am.A(paramString);
            localObject3 = am.a(paramString);
            localObject7 = am.j(paramString);
            String str1 = null;
            int i = ((String)localObject7).indexOf('/', 1);
            if (i != -1) {
              str1 = ((String)localObject7).substring(0, i);
            }
            if (str1 != null) {
              break;
            }
            throw new Exception("err");
          }
          catch (Exception localException1) {}
        }
        if (am.aV(paramString)) {
          break label716;
        }
        localObject1 = new Intent("android.intent.action.VIEW");
        ((Intent)localObject1).addFlags(67108864);
        ((Intent)localObject1).putExtra("oneshot", true);
        ((Intent)localObject1).putExtra("configchange", false);
        ((Intent)localObject1).putExtra("by_open_as", paramBoolean);
        localObject3 = am.b(paramString, com.estrongs.android.c.a.a());
      } while (localObject3 == null);
      ((Intent)localObject1).setDataAndType(Uri.parse((String)localObject3), bc.h(paramInt));
      try
      {
        a(paramActivity, (Intent)localObject1, paramString);
        return;
      }
      catch (ActivityNotFoundException paramActivity)
      {
        paramActivity.printStackTrace();
        return;
      }
      localObject3 = "//" + (String)localObject3 + (String)localObject1;
      localObject5 = str2 + (String)localObject1;
      new File((String)localObject5).mkdirs();
      str2 = str2 + (String)localObject7;
      Log.e("EEE", "Smbpath:" + (String)localObject3 + ", mountPoint:" + (String)localObject5 + ",username=" + (String)localObject6 + ",pass:" + (String)localObject4 + ",localPath" + str2);
      Object localObject7 = new StringBuilder().append("iocharset=utf8,");
      if (localObject6 == null)
      {
        localObject1 = "";
        label406:
        localObject6 = ((StringBuilder)localObject7).append((String)localObject1);
        if (localObject4 != null) {
          break label690;
        }
        localObject1 = "";
        label424:
        localObject1 = new ProcessBuilder(new String[] { "busybox", "mount", "-t", "cifs", "-o", (String)localObject1 + ",uid=1000,gid=1015,file_mode=0775,dir_mode=0775,rw", localObject3, localObject5 });
        ((ProcessBuilder)localObject1).redirectErrorStream(true);
      }
    }
    for (;;)
    {
      try
      {
        ((ProcessBuilder)localObject1).start().waitFor();
        localObject4 = new Intent("android.intent.action.VIEW");
        ((Intent)localObject4).addFlags(67108864);
        ((Intent)localObject4).putExtra("oneshot", true);
        ((Intent)localObject4).putExtra("configchange", false);
        ((Intent)localObject4).putExtra("by_open_as", paramBoolean);
        localObject5 = Uri.fromFile(new File(str2));
        localObject3 = bc.S(paramString);
        localObject1 = localObject3;
        if ("*/*".equals(localObject3)) {
          localObject1 = bc.h(paramInt);
        }
        if (paramBoolean) {
          break label905;
        }
        localObject3 = localObject1;
        if (localObject1 != null)
        {
          localObject3 = localObject1;
          if (!((String)localObject1).startsWith("video/")) {
            break label905;
          }
        }
        ((Intent)localObject4).setDataAndType((Uri)localObject5, (String)localObject3);
        try
        {
          a(paramActivity, (Intent)localObject4, paramString);
          return;
        }
        catch (ActivityNotFoundException localActivityNotFoundException)
        {
          localActivityNotFoundException.printStackTrace();
          return;
        }
      }
      catch (Exception localException2) {}
      Object localObject2 = "username=" + (String)localObject6;
      break label406;
      label690:
      localObject2 = "password=" + (String)localObject4;
      break label424;
      label716:
      localObject2 = new Intent(paramActivity, StreamingMediaPlayer.class);
      ((Intent)localObject2).addFlags(67108864);
      ((Intent)localObject2).setData(Uri.parse(paramString));
      ((Intent)localObject2).putExtra("by_open_as", paramBoolean);
      paramActivity.startActivity((Intent)localObject2);
      return;
      localObject4 = new Intent("android.intent.action.VIEW");
      ((Intent)localObject4).addFlags(67108864);
      ((Intent)localObject4).putExtra("oneshot", true);
      ((Intent)localObject4).putExtra("configchange", false);
      ((Intent)localObject4).putExtra("by_open_as", paramBoolean);
      localObject5 = Uri.fromFile(new File(paramString));
      localObject3 = bc.S(paramString);
      localObject2 = localObject3;
      if ("*/*".equals(localObject3)) {
        localObject2 = bc.h(paramInt);
      }
      if (!paramBoolean)
      {
        localObject3 = localObject2;
        if (localObject2 != null)
        {
          localObject3 = localObject2;
          if (((String)localObject2).startsWith("video/")) {}
        }
      }
      else
      {
        localObject3 = "video/*";
      }
      ((Intent)localObject4).setDataAndType((Uri)localObject5, (String)localObject3);
      try
      {
        a(paramActivity, (Intent)localObject4, paramString);
        return;
      }
      catch (ActivityNotFoundException paramActivity)
      {
        paramActivity.printStackTrace();
        return;
      }
      label905:
      localObject3 = "video/*";
    }
  }
  
  public static void b(Activity paramActivity, List<String> paramList1, List<String> paramList2)
  {
    a(paramActivity, paramList1, paramList2, null);
  }
  
  public static Intent c(String paramString)
  {
    synchronized (c)
    {
      paramString = (Intent)c.remove(paramString);
      return paramString;
    }
  }
  
  public static void c(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/x-shockwave-flash");
    try
    {
      a(paramActivity, localIntent, paramString);
      return;
    }
    catch (ActivityNotFoundException paramActivity) {}
  }
  
  public static void c(Activity paramActivity, String paramString, int paramInt, boolean paramBoolean)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "*/*");
    localIntent.putExtra("by_open_as", paramBoolean);
    a(paramActivity, localIntent, paramString);
  }
  
  private static void c(Activity paramActivity, String paramString1, String paramString2)
  {
    if ((paramString2 == null) || (paramString2.length() == 0)) {
      return;
    }
    paramString1 = am.bE(paramString1);
    paramString2 = am.bE(paramString2);
    int i = bc.b(paramString2);
    if ((paramString2.endsWith(".3gp")) || (paramString2.endsWith(".3gpp")))
    {
      if (e(paramString2))
      {
        b(paramActivity, paramString2, i, false);
        return;
      }
      a(paramActivity, paramString2, i, false);
      return;
    }
    if (bc.a(i))
    {
      a(paramActivity, paramString1, paramString2, false);
      return;
    }
    if (bc.e(i))
    {
      a(paramActivity, paramString2, i, false);
      return;
    }
    if (bc.g(i))
    {
      b(paramActivity, paramString2, i, false);
      return;
    }
    if (bc.i(paramString2))
    {
      a(paramActivity, paramString2, false, false);
      return;
    }
    if ((bc.j(paramString2)) && (bc.N(paramString2)))
    {
      p(paramActivity, paramString2);
      return;
    }
    if (bc.l(i))
    {
      c(paramActivity, paramString2);
      return;
    }
    if (bc.m(i))
    {
      a(paramActivity, paramString2);
      return;
    }
    if (bc.n(i))
    {
      b(paramActivity, paramString2);
      return;
    }
    if (bc.o(i))
    {
      d(paramActivity, paramString2);
      return;
    }
    if (bc.p(i))
    {
      e(paramActivity, paramString2);
      return;
    }
    if (bc.u(i))
    {
      k(paramActivity, paramString2);
      return;
    }
    if (bc.v(i))
    {
      l(paramActivity, paramString2);
      return;
    }
    if (bc.y(i))
    {
      m(paramActivity, paramString2);
      return;
    }
    if (bc.w(i))
    {
      n(paramActivity, paramString2);
      return;
    }
    if (bc.x(i))
    {
      o(paramActivity, paramString2);
      return;
    }
    if (bc.n(i))
    {
      b(paramActivity, paramString2);
      return;
    }
    if (bc.o(i))
    {
      d(paramActivity, paramString2);
      return;
    }
    if (bc.p(i))
    {
      e(paramActivity, paramString2);
      return;
    }
    if (bc.q(i))
    {
      f(paramActivity, paramString2);
      return;
    }
    if (bc.r(i))
    {
      g(paramActivity, paramString2);
      return;
    }
    if (bc.t(i))
    {
      j(paramActivity, paramString2);
      return;
    }
    if (bc.s(i))
    {
      i(paramActivity, paramString2);
      return;
    }
    if (bc.A(i))
    {
      h(paramActivity, paramString2);
      return;
    }
    if (bc.C(i))
    {
      t(paramActivity, paramString2);
      return;
    }
    if (am.bb(paramString1))
    {
      com.estrongs.android.pop.utils.a.a(paramActivity, 2131427782);
      return;
    }
    if (paramString2 != null) {
      paramString1 = paramString2;
    }
    for (;;)
    {
      paramString2 = q(paramActivity, paramString1);
      if (paramString2 != null) {
        break label495;
      }
      if (u(paramActivity, am.d(paramString1)) == null) {
        break;
      }
      paramString2 = new Intent("android.intent.action.VIEW");
      paramString2.addFlags(268435456);
      paramString2.setData(Uri.fromFile(new File(paramString1)));
      a(paramActivity, paramString2, paramString1);
      return;
    }
    paramActivity.runOnUiThread(new h(paramActivity, paramString1));
    return;
    label495:
    a(paramActivity, paramString2, paramString1);
  }
  
  private static boolean c(Activity paramActivity, String paramString, com.estrongs.fs.impl.b.f paramf)
  {
    paramString = new ArrayList();
    com.estrongs.fs.h localh = d.a().j(paramf.getAbsolutePath());
    paramActivity = "/system/app/";
    if (paramf.e() != null)
    {
      paramActivity = am.bk(paramf.e());
      localh.putExtra("item_paste_name", am.d(paramf.e()));
    }
    paramString.add(localh);
    if (paramf.d() != null)
    {
      localh = d.a().j(paramf.d());
      if (paramf.f() != null) {
        localh.putExtra("item_paste_name", am.d(paramf.f()));
      }
      paramString.add(localh);
    }
    if (l.b("/system/", "rw") != null)
    {
      paramActivity = new r(d.a(), paramString, new com.estrongs.fs.impl.local.f(new File(paramActivity)));
      getDecisionDatag = 2;
      paramActivity.setTaskDecisionListener(null);
      paramActivity.execute(false);
      return (getTaskResulta == 0) || (getTaskResulta == 3);
    }
    return false;
  }
  
  public static void d(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/epub+zip");
    try
    {
      a(paramActivity, localIntent, paramString);
      return;
    }
    catch (ActivityNotFoundException paramActivity) {}
  }
  
  public static boolean d(String paramString)
  {
    return "com.quickoffice.android".equals(paramString);
  }
  
  public static void e(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/x-mobipocket-ebook");
    try
    {
      a(paramActivity, localIntent, paramString);
      return;
    }
    catch (ActivityNotFoundException paramActivity) {}
  }
  
  /* Error */
  @android.annotation.SuppressLint({"NewApi"})
  private static boolean e(String paramString)
  {
    // Byte code:
    //   0: invokestatic 890	com/estrongs/android/util/bd:g	()Z
    //   3: ifeq +60 -> 63
    //   6: new 892	android/media/MediaMetadataRetriever
    //   9: dup
    //   10: invokespecial 893	android/media/MediaMetadataRetriever:<init>	()V
    //   13: astore_2
    //   14: aload_2
    //   15: aload_0
    //   16: invokevirtual 896	android/media/MediaMetadataRetriever:setDataSource	(Ljava/lang/String;)V
    //   19: aload_2
    //   20: bipush 17
    //   22: invokevirtual 899	android/media/MediaMetadataRetriever:extractMetadata	(I)Ljava/lang/String;
    //   25: astore_0
    //   26: aload_0
    //   27: ifnull +9 -> 36
    //   30: aload_2
    //   31: invokevirtual 902	android/media/MediaMetadataRetriever:release	()V
    //   34: iconst_1
    //   35: ireturn
    //   36: aload_2
    //   37: invokevirtual 902	android/media/MediaMetadataRetriever:release	()V
    //   40: iconst_0
    //   41: ireturn
    //   42: astore_0
    //   43: ldc_w 904
    //   46: aload_0
    //   47: invokestatic 909	com/estrongs/android/util/v:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   50: aload_2
    //   51: invokevirtual 902	android/media/MediaMetadataRetriever:release	()V
    //   54: iconst_0
    //   55: ireturn
    //   56: astore_0
    //   57: aload_2
    //   58: invokevirtual 902	android/media/MediaMetadataRetriever:release	()V
    //   61: aload_0
    //   62: athrow
    //   63: new 911	android/media/MediaPlayer
    //   66: dup
    //   67: invokespecial 912	android/media/MediaPlayer:<init>	()V
    //   70: astore_2
    //   71: aload_2
    //   72: new 914	java/io/FileInputStream
    //   75: dup
    //   76: aload_0
    //   77: invokespecial 915	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   80: invokevirtual 919	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
    //   83: invokevirtual 922	android/media/MediaPlayer:setDataSource	(Ljava/io/FileDescriptor;)V
    //   86: aload_2
    //   87: invokevirtual 925	android/media/MediaPlayer:prepare	()V
    //   90: aload_2
    //   91: invokevirtual 928	android/media/MediaPlayer:getVideoHeight	()I
    //   94: istore_1
    //   95: aload_2
    //   96: invokevirtual 929	android/media/MediaPlayer:release	()V
    //   99: iload_1
    //   100: ifgt -66 -> 34
    //   103: iconst_0
    //   104: ireturn
    //   105: astore_0
    //   106: iconst_0
    //   107: istore_1
    //   108: ldc_w 904
    //   111: aload_0
    //   112: invokestatic 909	com/estrongs/android/util/v:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   115: goto -16 -> 99
    //   118: astore_0
    //   119: iconst_1
    //   120: ireturn
    //   121: astore_0
    //   122: goto -82 -> 40
    //   125: astore_0
    //   126: goto -72 -> 54
    //   129: astore_2
    //   130: goto -69 -> 61
    //   133: astore_0
    //   134: goto -26 -> 108
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	137	0	paramString	String
    //   94	14	1	i	int
    //   13	83	2	localObject	Object
    //   129	1	2	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   14	26	42	java/lang/Exception
    //   14	26	56	finally
    //   43	50	56	finally
    //   63	95	105	java/lang/Exception
    //   30	34	118	java/lang/Exception
    //   36	40	121	java/lang/Exception
    //   50	54	125	java/lang/Exception
    //   57	61	129	java/lang/Exception
    //   95	99	133	java/lang/Exception
  }
  
  public static void f(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/x-bittorrent");
    try
    {
      a(paramActivity, localIntent, paramString);
      return;
    }
    catch (ActivityNotFoundException paramActivity) {}
  }
  
  public static void g(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/x-chess-pgn");
    try
    {
      a(paramActivity, localIntent, paramString);
      return;
    }
    catch (ActivityNotFoundException paramActivity) {}
  }
  
  public static void h(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "text/calendar");
    try
    {
      a(paramActivity, localIntent, paramString);
      return;
    }
    catch (ActivityNotFoundException paramActivity) {}
  }
  
  public static void i(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/x-nzb");
    try
    {
      a(paramActivity, localIntent, paramString);
      return;
    }
    catch (ActivityNotFoundException paramActivity) {}
  }
  
  public static void j(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/vnd.oasis.opendocument.text");
    try
    {
      a(paramActivity, localIntent, paramString);
      return;
    }
    catch (ActivityNotFoundException paramActivity) {}
  }
  
  public static void k(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    if ((paramString != null) && (paramString.endsWith(".docx"))) {
      localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/vnd.openxmlformats-officedocument.wordprocessingml.document");
    }
    for (;;)
    {
      try
      {
        a(paramActivity, localIntent, paramString);
        return;
      }
      catch (ActivityNotFoundException paramActivity)
      {
        return;
      }
      localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/msword");
    }
  }
  
  public static void l(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    if ((paramString != null) && (paramString.endsWith(".xlsx"))) {
      localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
    }
    for (;;)
    {
      try
      {
        a(paramActivity, localIntent, paramString);
        return;
      }
      catch (ActivityNotFoundException paramActivity)
      {
        return;
      }
      localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/vnd.ms-excel");
    }
  }
  
  public static void m(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    if ((paramString != null) && (paramString.endsWith(".pptx"))) {
      localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/vnd.openxmlformats-officedocument.presentationml.presentation");
    }
    for (;;)
    {
      try
      {
        a(paramActivity, localIntent, paramString);
        return;
      }
      catch (ActivityNotFoundException paramActivity)
      {
        return;
      }
      localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/vnd.ms-powerpoint");
    }
  }
  
  public static void n(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/x-chm");
    try
    {
      a(paramActivity, localIntent, paramString);
      return;
    }
    catch (ActivityNotFoundException paramActivity) {}
  }
  
  public static void o(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString))
    {
      com.estrongs.android.pop.utils.a.a(paramActivity, 2131427782);
      return;
    }
    Uri localUri = Uri.fromFile(new File(paramString));
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setDataAndType(localUri, "text/html");
    try
    {
      a(paramActivity, localIntent, paramString);
      return;
    }
    catch (ActivityNotFoundException paramActivity) {}
  }
  
  public static void p(Activity paramActivity, String paramString)
  {
    a(paramActivity, paramString, null);
  }
  
  public static Intent q(Activity paramActivity, String paramString)
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.addFlags(268435456);
      if (com.estrongs.fs.util.j.b(paramString) == null) {
        return null;
      }
      String str = bc.S(paramString);
      if ((str != null) && (!str.equals("*/*"))) {
        localIntent.setDataAndType(Uri.fromFile(new File(paramString)), str);
      }
      for (;;)
      {
        paramActivity = n.a(paramActivity, localIntent);
        if ((paramActivity == null) || (paramActivity.length == 0)) {
          break;
        }
        return localIntent;
        localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "");
      }
      return null;
    }
    catch (Exception paramActivity) {}
  }
  
  public static void r(Activity paramActivity, String paramString)
  {
    a(paramActivity, paramString, null);
  }
  
  public static cg s(Activity paramActivity, String paramString)
  {
    CharSequence[] arrayOfCharSequence = new CharSequence[5];
    arrayOfCharSequence[0] = paramActivity.getText(2131427430);
    arrayOfCharSequence[1] = paramActivity.getText(2131427431);
    arrayOfCharSequence[2] = paramActivity.getText(2131427432);
    arrayOfCharSequence[3] = paramActivity.getText(2131427433);
    arrayOfCharSequence[4] = paramActivity.getText(2131427573);
    if (am.bb(paramString))
    {
      arrayOfCharSequence = new CharSequence[4];
      arrayOfCharSequence[0] = paramActivity.getText(2131427430);
      arrayOfCharSequence[1] = paramActivity.getText(2131427431);
      arrayOfCharSequence[2] = paramActivity.getText(2131427432);
      arrayOfCharSequence[3] = paramActivity.getText(2131427433);
    }
    u localu = u(paramActivity, am.d(paramString));
    cg localcg = new cg(paramActivity);
    localcg.setTitle(2131427369);
    localcg.setItems(arrayOfCharSequence, -1, new m(localcg, paramString, paramActivity));
    localcg.setSelectable(false);
    if (localu != null) {
      localcg.setSingleButton(paramActivity.getString(2131427975), paramActivity.getResources().getDrawable(2130838172), new b(paramActivity, paramString));
    }
    localcg.show();
    return localcg;
  }
  
  public static void t(Activity paramActivity, String paramString)
  {
    Intent localIntent = new Intent(paramActivity, ShowDialogActivity.class);
    localIntent.setData(Uri.parse(paramString));
    localIntent.putExtra("openApkFile", true);
    paramActivity.startActivity(localIntent);
  }
  
  private static u u(Activity paramActivity, String paramString)
  {
    paramString = am.bA(paramString);
    if ((paramString != null) && (!"".equals(paramString))) {
      return n.a(paramActivity, paramString);
    }
    return null;
  }
  
  private static void v(Activity paramActivity, String paramString)
  {
    if (am.bb(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/vnd.android.package-archive");
    try
    {
      a(paramActivity, localIntent, paramString);
      return;
    }
    catch (ActivityNotFoundException paramActivity) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.AppRunner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */