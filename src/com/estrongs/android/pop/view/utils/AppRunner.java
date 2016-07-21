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
import com.estrongs.a.p;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.BTPopNoteEditor;
import com.estrongs.android.pop.app.OpenRecomm;
import com.estrongs.android.pop.app.PopRemoteImageBrowser;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.pop.app.StreamingMediaPlayer;
import com.estrongs.android.pop.app.editor.PopNoteEditor;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.fs.b.r;
import com.estrongs.fs.b.w;
import com.estrongs.fs.d;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class AppRunner
{
  public static Integer a = Integer.valueOf(10222);
  public static Object b = new Object();
  private static HashMap<String, Intent> c = new HashMap();
  
  public static u a(Context paramContext, Intent paramIntent)
  {
    t[] arrayOft = n.a(paramContext, new Intent(paramIntent));
    t localt;
    if (arrayOft != null)
    {
      int j = arrayOft.length;
      int i = 0;
      paramContext = null;
      paramIntent = paramContext;
      if (i < j)
      {
        localt = arrayOft[i];
        if (c.contains("com.estrongs")) {
          if (e.equals("android.intent.action.VIEW"))
          {
            if (!"com.estrongs.android.pop.app.PopChromecastPlayer".equals(d)) {
              break label112;
            }
            paramIntent = localt;
          }
        }
        for (;;)
        {
          i += 1;
          paramContext = paramIntent;
          break;
          paramIntent = localt;
          if (!e.equals("android.intent.action.EDIT")) {
            paramIntent = paramContext;
          }
        }
      }
    }
    label112:
    for (paramIntent = localt;; paramIntent = null)
    {
      if (paramIntent != null) {
        return new u(c, d, e);
      }
      return null;
    }
  }
  
  public static void a(Activity paramActivity, Intent paramIntent, String paramString)
  {
    a(paramActivity, paramIntent, paramString, false);
  }
  
  public static void a(Activity paramActivity, Intent paramIntent, String paramString, boolean paramBoolean)
  {
    boolean bool = false;
    if (paramIntent.getExtras() != null) {
      bool = paramIntent.getExtras().getBoolean("by_open_as", false);
    }
    String str;
    if (!bool)
    {
      str = ap.bR(ap.d(paramString));
      if ((str == null) || ("".equals(str))) {
        break label300;
      }
    }
    label242:
    label300:
    for (Object localObject2 = n.a(paramActivity, str);; localObject2 = null)
    {
      Object localObject1 = localObject2;
      if (paramBoolean)
      {
        localObject1 = localObject2;
        if (localObject2 == null) {
          localObject1 = a(paramActivity.getBaseContext(), paramIntent);
        }
      }
      localObject2 = localObject1;
      if (localObject1 != null) {}
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
            com.estrongs.android.scanner.l.a().a(paramString);
            return;
          }
          paramActivity.startActivity(paramIntent);
          continue;
          localObject2 = null;
        }
        catch (ActivityNotFoundException localActivityNotFoundException)
        {
          localActivityNotFoundException.printStackTrace();
          paramIntent.setComponent(null);
          n.a(paramActivity, str, null);
          localObject2 = null;
          if (localObject2 == null)
          {
            if (paramString != null) {
              break label242;
            }
            paramActivity.startActivity(paramIntent);
          }
          com.estrongs.android.scanner.l.a().a(paramString);
          return;
        }
        catch (SecurityException localSecurityException)
        {
          paramIntent.setComponent(null);
          n.a(paramActivity, str, null);
        }
        continue;
        c.put(paramString, paramIntent);
        Intent localIntent = new Intent(paramActivity, OpenRecomm.class);
        localIntent.putExtra("filepath", paramString);
        localIntent.putExtra("intent", paramIntent);
        try
        {
          paramActivity.startActivity(localIntent);
        }
        catch (Exception localException)
        {
          paramActivity.startActivity(paramIntent);
        }
      }
    }
  }
  
  public static void a(Activity paramActivity, String paramString)
  {
    if (ap.bm(paramString)) {
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
        if (ap.bm(paramString))
        {
          if (!com.estrongs.android.g.a.b())
          {
            ak.a(paramActivity, 2131232374, 1);
            return;
          }
          if (ap.I(paramString) != 3)
          {
            localObject1 = new Intent("android.intent.action.VIEW");
            ((Intent)localObject1).addFlags(67108864);
            ((Intent)localObject1).putExtra("oneshot", true);
            ((Intent)localObject1).putExtra("configchange", false);
            ((Intent)localObject1).putExtra("by_open_as", paramBoolean);
            ((Intent)localObject1).putExtra("islocalopen", true);
            localObject2 = ap.b(paramString, com.estrongs.android.g.a.a());
            if (localObject2 != null)
            {
              localObject2 = Uri.parse((String)localObject2);
              if (!w.a(paramString))
              {
                ((Intent)localObject1).setDataAndType((Uri)localObject2, bg.U(paramString));
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
              ((Intent)localObject1).setDataAndType((Uri)localObject2, bg.i(paramInt));
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
          localIntent.putExtra("islocalopen", true);
          Uri localUri = Uri.fromFile(new File(paramString));
          localObject2 = bg.i(paramInt);
          if ((localObject2 == null) || (paramBoolean)) {
            break label332;
          }
          localObject1 = localObject2;
          if (localObject2 != null)
          {
            localObject1 = localObject2;
            if (!((String)localObject2).startsWith("audio/")) {
              break label332;
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
      label332:
      Object localObject1 = "audio/*";
    }
  }
  
  public static void a(Activity paramActivity, String paramString, com.estrongs.fs.impl.b.g paramg)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    if (paramg != null)
    {
      paramString = new ArrayList();
      paramString.add(paramg);
      a(paramActivity, localArrayList, paramString);
      return;
    }
    a(paramActivity, localArrayList, null);
  }
  
  public static void a(Activity paramActivity, String paramString, Class<?> paramClass)
  {
    if (ap.bm(paramString))
    {
      com.estrongs.android.pop.utils.a.a(paramActivity, 2131231030);
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.putExtra("archive_file_name", paramString);
    localIntent.putExtra("islocalopen", true);
    if (paramClass != null) {
      localIntent.setClass(paramActivity, paramClass);
    }
    paramClass = bg.H(327736);
    if (bg.n(paramString)) {
      paramClass = bg.H(327744);
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
        com.estrongs.android.pop.utils.a.a(paramActivity, 2131231030);
        return;
      }
      if (bg.l(paramString)) {
        paramClass = bg.H(327745);
      } else if (bg.m(paramString)) {
        paramClass = bg.H(327746);
      }
    }
  }
  
  public static void a(Activity paramActivity, String paramString1, String paramString2)
  {
    if ((paramString2 == null) || (paramString2.length() == 0)) {
      return;
    }
    String str = paramString1;
    if (bk.a(paramString1)) {
      str = paramString2;
    }
    if ((bg.j(paramString2)) && (!bg.N(paramString2)))
    {
      paramActivity.runOnUiThread(new f(paramActivity));
      return;
    }
    if (paramString2.endsWith(".eslock"))
    {
      if (ap.bl(paramString2))
      {
        paramString1 = new ArrayList();
        paramString1.add(new com.estrongs.fs.impl.local.f(new File(paramString2)));
        ao.a(paramActivity, paramString1, true);
        return;
      }
      ak.a(paramActivity, 2131231894, 0);
      return;
    }
    if ((ap.bm(paramString2)) && (!a(paramString2)))
    {
      paramString1 = ap.d(paramString2);
      if ((r(paramActivity, "/sdcard/" + paramString1) == null) && (v(paramActivity, paramString1) == null))
      {
        paramActivity.runOnUiThread(new g(paramActivity, paramString2));
        return;
      }
      a(paramActivity, paramString2, com.estrongs.android.pop.a.f + "/" + b(paramString2), null, true);
      return;
    }
    c(paramActivity, str, paramString2);
  }
  
  public static void a(Activity paramActivity, String paramString1, String paramString2, TypedMap paramTypedMap)
  {
    Object localObject = paramString1;
    if (bk.a(paramString1)) {
      localObject = paramString2;
    }
    paramString1 = paramString2;
    if (bk.a(paramString2)) {
      paramString1 = (String)localObject;
    }
    paramString2 = paramString1;
    if (bk.c())
    {
      if (((String)localObject).startsWith("/sdcard/")) {
        ap.bV(paramString1);
      }
      paramString2 = paramString1;
      if (paramString1.startsWith("/sdcard/")) {
        paramString2 = ap.bV(paramString1);
      }
    }
    try
    {
      if (ap.bm(paramString2))
      {
        paramString1 = new Intent(paramActivity, PopRemoteImageBrowser.class);
        paramString1.putExtra("FILE_PATH", paramString2);
        paramString1.putExtra("ABSOLUTE_FILE_PATH", paramString2);
        paramString1.putExtra("by_open_as", paramTypedMap.getBoolean("by_open_as"));
        paramString1.putExtra("show_hidelist_file", paramTypedMap.getBoolean("show_hidelist_file"));
        paramString1.putExtra("islocalopen", true);
        paramActivity.startActivity(paramString1);
        return;
      }
      localObject = new Intent("android.intent.action.VIEW");
      ((Intent)localObject).putExtra("FILE_PATH", paramString2);
      ((Intent)localObject).setType("image/*");
      ((Intent)localObject).putExtra("by_open_as", paramTypedMap.getBoolean("by_open_as"));
      ((Intent)localObject).putExtra("show_hidelist_file", paramTypedMap.getBoolean("show_hidelist_file"));
      ((Intent)localObject).putExtra("islocalopen", true);
      paramString1 = null;
      if ((bg.e(paramString2)) || (bg.d(paramString2)))
      {
        if (!bk.a())
        {
          paramTypedMap = com.estrongs.android.util.h.a().a(paramActivity.getContentResolver(), paramString2);
          paramString1 = paramTypedMap;
          if (paramTypedMap == null) {
            paramString1 = com.estrongs.android.util.h.a().a(paramActivity.getContentResolver(), new String[] { paramString2 }, paramString2);
          }
        }
        if (paramString1 == null) {
          if (ap.bl(paramString2))
          {
            paramString1 = Uri.fromFile(new File(paramString2));
            ((Intent)localObject).setDataAndType(paramString1, "image/*");
          }
        }
        for (;;)
        {
          a(paramActivity, (Intent)localObject, paramString2);
          return;
          paramString1 = Uri.parse(paramString2);
          break;
          ((Intent)localObject).setData(paramString1);
        }
      }
      if (ap.bl(paramString2)) {}
      for (paramString1 = Uri.fromFile(new File(paramString2));; paramString1 = Uri.parse(paramString2))
      {
        ((Intent)localObject).setDataAndType(paramString1, "image/*");
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
    Object localObject2 = bg.U(paramString);
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
    if (ap.bm(paramString))
    {
      localObject2 = new Intent("android.intent.action.VIEW");
      ((Intent)localObject2).addFlags(67108864);
      ((Intent)localObject2).setType((String)localObject1);
      ((Intent)localObject2).putExtra("islocalopen", true);
      ((Intent)localObject2).putExtra("by_open_as", paramBoolean2);
      if (ap.bg(paramString)) {
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
    ((Intent)localObject2).putExtra("islocalopen", true);
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
  
  public static void a(Activity paramActivity, List<String> paramList, List<com.estrongs.fs.impl.b.g> paramList1)
  {
    int i = 0;
    if ((paramActivity instanceof FileExplorerActivity)) {}
    for (boolean bool1 = ((FileExplorerActivity)paramActivity).R();; bool1 = false)
    {
      boolean bool2 = com.estrongs.fs.impl.local.m.a(paramActivity, false);
      NotificationManager localNotificationManager = (NotificationManager)paramActivity.getSystemService("notification");
      if ((bool2) && ((ad.a(paramActivity).ab()) || (bool1))) {
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
            com.estrongs.fs.impl.b.g localg = (com.estrongs.fs.impl.b.g)paramList1.get(i);
            if ((bool2) && (localg.b())) {
              localArrayList.add(localg);
            }
          }
          for (;;)
          {
            i += 1;
            break;
            w(paramActivity, (String)paramList.get(i));
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
    for (boolean bool1 = ((FileExplorerActivity)paramActivity).S();; bool1 = false)
    {
      boolean bool2 = com.estrongs.fs.impl.local.m.a(paramActivity, false);
      int i;
      int j;
      if (paramList != null)
      {
        i = 1;
        j = k;
        if (!bool2) {
          break label87;
        }
        if ((!ad.a(paramActivity).ab()) && (!bool1))
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
        tickerText = ("ES " + paramContext.getText(2131231129));
        when = System.currentTimeMillis();
        icon = 2130837625;
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
    return (bg.i(paramString)) || (bg.c(paramString)) || (bg.g(paramString)) || (bg.h(paramString));
  }
  
  public static String b(String paramString)
  {
    String str2 = ap.d(paramString);
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
    if (ap.bm(paramString)) {
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
    if (ap.bm(paramString))
    {
      if (!com.estrongs.android.g.a.b()) {
        ak.a(paramActivity, 2131232374, 1);
      }
      do
      {
        return;
        if ((ap.J(paramString)) && (z.Y)) {
          try
          {
            str2 = com.estrongs.android.pop.a.b + "/.smbmount";
            localObject6 = ap.A(paramString);
            localObject4 = ap.C(paramString);
            localObject3 = ap.a(paramString);
            localObject7 = ap.l(paramString);
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
        if (ap.bg(paramString)) {
          break label733;
        }
        localObject1 = new Intent("android.intent.action.VIEW");
        ((Intent)localObject1).addFlags(67108864);
        ((Intent)localObject1).putExtra("oneshot", true);
        ((Intent)localObject1).putExtra("configchange", false);
        ((Intent)localObject1).putExtra("by_open_as", paramBoolean);
        ((Intent)localObject1).putExtra("islocalopen", true);
        localObject3 = ap.b(paramString, com.estrongs.android.g.a.a());
      } while (localObject3 == null);
      ((Intent)localObject1).setDataAndType(Uri.parse((String)localObject3), bg.h(paramInt));
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
      com.estrongs.android.util.l.e("EEE", "Smbpath:" + (String)localObject3 + ", mountPoint:" + (String)localObject5 + ",username=" + (String)localObject6 + ",pass:" + (String)localObject4 + ",localPath" + str2);
      Object localObject7 = new StringBuilder().append("iocharset=utf8,");
      if (localObject6 == null)
      {
        localObject1 = "";
        label414:
        localObject6 = ((StringBuilder)localObject7).append((String)localObject1);
        if (localObject4 != null) {
          break label707;
        }
        localObject1 = "";
        label432:
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
        ((Intent)localObject4).putExtra("islocalopen", true);
        localObject5 = Uri.fromFile(new File(str2));
        localObject3 = bg.U(paramString);
        localObject1 = localObject3;
        if ("*/*".equals(localObject3)) {
          localObject1 = bg.h(paramInt);
        }
        if (paramBoolean) {
          break label941;
        }
        localObject3 = localObject1;
        if (localObject1 != null)
        {
          localObject3 = localObject1;
          if (!((String)localObject1).startsWith("video/")) {
            break label941;
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
      break label414;
      label707:
      localObject2 = "password=" + (String)localObject4;
      break label432;
      label733:
      localObject2 = new Intent(paramActivity, StreamingMediaPlayer.class);
      ((Intent)localObject2).addFlags(67108864);
      ((Intent)localObject2).setData(Uri.parse(paramString));
      ((Intent)localObject2).putExtra("by_open_as", paramBoolean);
      ((Intent)localObject2).putExtra("islocalopen", true);
      paramActivity.startActivity((Intent)localObject2);
      return;
      localObject4 = new Intent("android.intent.action.VIEW");
      ((Intent)localObject4).addFlags(67108864);
      ((Intent)localObject4).putExtra("oneshot", true);
      ((Intent)localObject4).putExtra("configchange", false);
      ((Intent)localObject4).putExtra("islocalopen", true);
      ((Intent)localObject4).putExtra("by_open_as", paramBoolean);
      localObject5 = Uri.fromFile(new File(paramString));
      localObject3 = bg.U(paramString);
      localObject2 = localObject3;
      if ("*/*".equals(localObject3)) {
        localObject2 = bg.h(paramInt);
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
      label941:
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
    if (ap.bm(paramString)) {
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
    if (ap.bm(paramString)) {
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
    paramString1 = ap.bV(paramString1);
    paramString2 = ap.bV(paramString2);
    int i = bg.b(paramString2);
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
    if (bg.a(i))
    {
      a(paramActivity, paramString1, paramString2, false);
      return;
    }
    if (bg.e(i))
    {
      a(paramActivity, paramString2, i, false);
      return;
    }
    if (bg.g(i))
    {
      b(paramActivity, paramString2, i, false);
      return;
    }
    if (bg.i(paramString2))
    {
      a(paramActivity, paramString2, false, false);
      return;
    }
    if ((bg.j(paramString2)) && (bg.N(paramString2)))
    {
      q(paramActivity, paramString2);
      return;
    }
    if (bg.l(i))
    {
      c(paramActivity, paramString2);
      return;
    }
    if (bg.m(i))
    {
      a(paramActivity, paramString2);
      return;
    }
    if (bg.n(i))
    {
      b(paramActivity, paramString2);
      return;
    }
    if (bg.o(i))
    {
      d(paramActivity, paramString2);
      return;
    }
    if (bg.p(i))
    {
      e(paramActivity, paramString2);
      return;
    }
    if (bg.x(i))
    {
      l(paramActivity, paramString2);
      return;
    }
    if (bg.y(i))
    {
      m(paramActivity, paramString2);
      return;
    }
    if (bg.B(i))
    {
      n(paramActivity, paramString2);
      return;
    }
    if (bg.z(i))
    {
      o(paramActivity, paramString2);
      return;
    }
    if (bg.A(i))
    {
      p(paramActivity, paramString2);
      return;
    }
    if (bg.n(i))
    {
      b(paramActivity, paramString2);
      return;
    }
    if (bg.o(i))
    {
      d(paramActivity, paramString2);
      return;
    }
    if (bg.p(i))
    {
      e(paramActivity, paramString2);
      return;
    }
    if (bg.q(i))
    {
      f(paramActivity, paramString2);
      return;
    }
    if (bg.r(i))
    {
      g(paramActivity, paramString2);
      return;
    }
    if (bg.t(i))
    {
      j(paramActivity, paramString2);
      return;
    }
    if (bg.s(i))
    {
      i(paramActivity, paramString2);
      return;
    }
    if (bg.D(i))
    {
      h(paramActivity, paramString2);
      return;
    }
    if (bg.F(i))
    {
      u(paramActivity, paramString2);
      return;
    }
    if ((bg.u(i)) || (bg.v(i)) || (bg.w(i)))
    {
      k(paramActivity, paramString2);
      return;
    }
    if (ap.bm(paramString1))
    {
      com.estrongs.android.pop.utils.a.a(paramActivity, 2131231030);
      return;
    }
    if (paramString2 != null) {
      paramString1 = paramString2;
    }
    for (;;)
    {
      paramString2 = r(paramActivity, paramString1);
      if (paramString2 != null) {
        break label523;
      }
      if (v(paramActivity, ap.d(paramString1)) == null) {
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
    label523:
    a(paramActivity, paramString2, paramString1);
  }
  
  private static boolean c(Activity paramActivity, String paramString, com.estrongs.fs.impl.b.g paramg)
  {
    paramString = new ArrayList();
    com.estrongs.fs.h localh = d.a().j(paramg.getAbsolutePath());
    paramActivity = "/system/app/";
    if (paramg.e() != null)
    {
      paramActivity = ap.bB(paramg.e());
      localh.putExtra("item_paste_name", ap.d(paramg.e()));
    }
    paramString.add(localh);
    if (paramg.d() != null)
    {
      localh = d.a().j(paramg.d());
      if (paramg.f() != null) {
        localh.putExtra("item_paste_name", ap.d(paramg.f()));
      }
      paramString.add(localh);
    }
    if (com.estrongs.fs.impl.local.m.b("/system/", "rw") != null)
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
    if (ap.bm(paramString)) {
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
    if (ap.bm(paramString)) {
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
    //   0: invokestatic 944	com/estrongs/android/util/bk:g	()Z
    //   3: ifeq +60 -> 63
    //   6: new 946	android/media/MediaMetadataRetriever
    //   9: dup
    //   10: invokespecial 947	android/media/MediaMetadataRetriever:<init>	()V
    //   13: astore_2
    //   14: aload_2
    //   15: aload_0
    //   16: invokevirtual 950	android/media/MediaMetadataRetriever:setDataSource	(Ljava/lang/String;)V
    //   19: aload_2
    //   20: bipush 17
    //   22: invokevirtual 953	android/media/MediaMetadataRetriever:extractMetadata	(I)Ljava/lang/String;
    //   25: astore_0
    //   26: aload_0
    //   27: ifnull +9 -> 36
    //   30: aload_2
    //   31: invokevirtual 956	android/media/MediaMetadataRetriever:release	()V
    //   34: iconst_1
    //   35: ireturn
    //   36: aload_2
    //   37: invokevirtual 956	android/media/MediaMetadataRetriever:release	()V
    //   40: iconst_0
    //   41: ireturn
    //   42: astore_0
    //   43: ldc_w 958
    //   46: aload_0
    //   47: invokestatic 963	com/estrongs/android/util/x:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   50: aload_2
    //   51: invokevirtual 956	android/media/MediaMetadataRetriever:release	()V
    //   54: iconst_0
    //   55: ireturn
    //   56: astore_0
    //   57: aload_2
    //   58: invokevirtual 956	android/media/MediaMetadataRetriever:release	()V
    //   61: aload_0
    //   62: athrow
    //   63: new 965	android/media/MediaPlayer
    //   66: dup
    //   67: invokespecial 966	android/media/MediaPlayer:<init>	()V
    //   70: astore_2
    //   71: aload_2
    //   72: new 968	java/io/FileInputStream
    //   75: dup
    //   76: aload_0
    //   77: invokespecial 969	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   80: invokevirtual 973	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
    //   83: invokevirtual 976	android/media/MediaPlayer:setDataSource	(Ljava/io/FileDescriptor;)V
    //   86: aload_2
    //   87: invokevirtual 979	android/media/MediaPlayer:prepare	()V
    //   90: aload_2
    //   91: invokevirtual 982	android/media/MediaPlayer:getVideoHeight	()I
    //   94: istore_1
    //   95: aload_2
    //   96: invokevirtual 983	android/media/MediaPlayer:release	()V
    //   99: iload_1
    //   100: ifgt -66 -> 34
    //   103: iconst_0
    //   104: ireturn
    //   105: astore_0
    //   106: iconst_0
    //   107: istore_1
    //   108: ldc_w 958
    //   111: aload_0
    //   112: invokestatic 963	com/estrongs/android/util/x:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
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
    if (ap.bm(paramString)) {
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
    if (ap.bm(paramString)) {
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
    if (ap.bm(paramString)) {
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
    if (ap.bm(paramString)) {
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
    if (ap.bm(paramString)) {
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
    if (ap.bm(paramString)) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), bg.U(paramString));
    try
    {
      a(paramActivity, localIntent, paramString);
      return;
    }
    catch (ActivityNotFoundException paramActivity) {}
  }
  
  public static void l(Activity paramActivity, String paramString)
  {
    if (ap.bm(paramString)) {
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
  
  public static void m(Activity paramActivity, String paramString)
  {
    if (ap.bm(paramString)) {
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
  
  public static void n(Activity paramActivity, String paramString)
  {
    if (ap.bm(paramString)) {
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
  
  public static void o(Activity paramActivity, String paramString)
  {
    if (ap.bm(paramString)) {
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
  
  public static void p(Activity paramActivity, String paramString)
  {
    if (ap.bm(paramString))
    {
      com.estrongs.android.pop.utils.a.a(paramActivity, 2131231030);
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
  
  public static void q(Activity paramActivity, String paramString)
  {
    a(paramActivity, paramString, null);
  }
  
  public static Intent r(Activity paramActivity, String paramString)
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.addFlags(268435456);
      if (com.estrongs.fs.util.j.b(paramString) == null) {
        return null;
      }
      String str = bg.U(paramString);
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
  
  public static void s(Activity paramActivity, String paramString)
  {
    a(paramActivity, paramString, null);
  }
  
  public static ci t(Activity paramActivity, String paramString)
  {
    CharSequence[] arrayOfCharSequence = new CharSequence[5];
    arrayOfCharSequence[0] = paramActivity.getText(2131232490);
    arrayOfCharSequence[1] = paramActivity.getText(2131232488);
    arrayOfCharSequence[2] = paramActivity.getText(2131232491);
    arrayOfCharSequence[3] = paramActivity.getText(2131232489);
    arrayOfCharSequence[4] = paramActivity.getText(2131231993);
    if (ap.bm(paramString))
    {
      arrayOfCharSequence = new CharSequence[4];
      arrayOfCharSequence[0] = paramActivity.getText(2131232490);
      arrayOfCharSequence[1] = paramActivity.getText(2131232488);
      arrayOfCharSequence[2] = paramActivity.getText(2131232491);
      arrayOfCharSequence[3] = paramActivity.getText(2131232489);
    }
    u localu = v(paramActivity, ap.d(paramString));
    ci localci = new ci(paramActivity);
    localci.setTitle(2131230870);
    localci.setItems(arrayOfCharSequence, -1, new m(localci, paramString, paramActivity));
    localci.setSelectable(false);
    if (localu != null) {
      localci.setSingleButton(paramActivity.getString(2131232030), paramActivity.getResources().getDrawable(2130838539), new b(paramActivity, paramString));
    }
    localci.show();
    return localci;
  }
  
  public static void u(Activity paramActivity, String paramString)
  {
    Intent localIntent = new Intent(paramActivity, ShowDialogActivity.class);
    localIntent.setData(Uri.parse(paramString));
    localIntent.putExtra("openApkFile", true);
    paramActivity.startActivity(localIntent);
  }
  
  private static u v(Activity paramActivity, String paramString)
  {
    paramString = ap.bR(paramString);
    if ((paramString != null) && (!"".equals(paramString))) {
      return n.a(paramActivity, paramString);
    }
    return null;
  }
  
  private static void w(Activity paramActivity, String paramString)
  {
    if (ap.bm(paramString)) {
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