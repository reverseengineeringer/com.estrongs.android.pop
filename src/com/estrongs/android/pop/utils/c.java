package com.estrongs.android.pop.utils;

import android.annotation.SuppressLint;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.dialog.jh;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.l;
import com.estrongs.fs.b.ab;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class c
{
  private static List<com.estrongs.fs.h> b = null;
  FileExplorerActivity a;
  private Map<String, String> c = null;
  private Map<String, String[]> d = null;
  private Map<String, String> e = null;
  
  public c(FileExplorerActivity paramFileExplorerActivity)
  {
    a = paramFileExplorerActivity;
  }
  
  private static Intent a(PackageManager paramPackageManager, ApplicationInfo paramApplicationInfo)
  {
    try
    {
      Intent localIntent = com.estrongs.android.util.ak.a(packageName, paramPackageManager);
      if (localIntent != null)
      {
        localIntent.addFlags(268435456);
        return localIntent;
      }
      paramPackageManager = paramPackageManager.getLaunchIntentForPackage(packageName);
      if (paramPackageManager != null)
      {
        paramPackageManager = paramPackageManager.cloneFilter();
        paramPackageManager.addFlags(268435456);
        return paramPackageManager;
      }
    }
    catch (Exception paramPackageManager)
    {
      return null;
    }
    return null;
  }
  
  public static List<com.estrongs.fs.h> a()
  {
    return b;
  }
  
  private void a(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    new k(this, paramContext, paramLong, paramString2, paramString1).execute(new Void[0]);
  }
  
  @SuppressLint({"InlinedApi"})
  public static boolean a(Context paramContext, ApplicationInfo paramApplicationInfo)
  {
    Intent localIntent = new Intent();
    paramApplicationInfo = packageName;
    if (bk.d())
    {
      localIntent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
      localIntent.setData(Uri.fromParts("package", paramApplicationInfo, null));
    }
    for (;;)
    {
      try
      {
        paramContext.startActivity(localIntent);
        return true;
      }
      catch (ActivityNotFoundException paramContext) {}
      localIntent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
      if (!bk.c()) {
        localIntent.putExtra("com.android.settings.ApplicationPkgName", paramApplicationInfo);
      } else {
        localIntent.putExtra("pkg", paramApplicationInfo);
      }
    }
    return false;
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    try
    {
      Intent localIntent = new Intent("/");
      localIntent.setComponent(new ComponentName("com.android.settings", "com.android.settings.Settings$AppOpsDetailsActivity"));
      paramString = Uri.fromParts("package", paramString, null);
      localIntent.addFlags(270532608);
      localIntent.setData(paramString);
      paramContext.startActivity(localIntent);
      return true;
    }
    catch (Exception paramContext)
    {
      l.b("goAppPermissionsDetail fail e = " + paramContext.toString());
    }
    return false;
  }
  
  private boolean a(String paramString)
  {
    return (!paramString.startsWith("/data")) && (!paramString.startsWith("/mnt/sdcard")) && (!paramString.startsWith("/mnt/asec"));
  }
  
  private boolean a(List<String[]> paramList, String paramString)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < paramList.size())
      {
        if (ap.i(((String[])paramList.get(i))[0], paramString)) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public static void b()
  {
    b = null;
  }
  
  public static void b(Context paramContext, ApplicationInfo paramApplicationInfo)
  {
    try
    {
      paramApplicationInfo = a(paramContext.getPackageManager(), paramApplicationInfo);
      if (paramApplicationInfo == null)
      {
        a.a(paramContext, 2131232373);
        return;
      }
      paramApplicationInfo.addFlags(268435456);
      paramContext.startActivity(paramApplicationInfo);
      return;
    }
    catch (Exception paramApplicationInfo)
    {
      a.a(paramContext, 2131232373);
      paramApplicationInfo.printStackTrace();
    }
  }
  
  public static boolean b(Context paramContext, String paramString)
  {
    try
    {
      Intent localIntent = new Intent("/");
      localIntent.setComponent(new ComponentName("com.android.settings", "com.android.settings.Settings$AppOpsDetailsActivity"));
      paramString = Uri.fromParts("package", paramString, null);
      localIntent.addFlags(270532608);
      localIntent.setData(paramString);
      paramContext = paramContext.getPackageManager().queryIntentActivities(localIntent, 1);
      if (paramContext != null)
      {
        int i = paramContext.size();
        if (i > 0) {
          return true;
        }
      }
      return false;
    }
    catch (Exception paramContext)
    {
      l.b("OpenAppPermissionDetail fail e = " + paramContext.toString());
    }
    return false;
  }
  
  public static void c(List<com.estrongs.fs.h> paramList)
  {
    b = paramList;
  }
  
  private void d(FileExplorerActivity paramFileExplorerActivity, List<com.estrongs.fs.impl.b.d> paramList)
  {
    String str = ad.a(paramFileExplorerActivity).A();
    com.estrongs.fs.b.k localk = new com.estrongs.fs.b.k(paramFileExplorerActivity, com.estrongs.fs.d.a(paramFileExplorerActivity), paramList, str);
    f localf = new f(this, paramFileExplorerActivity);
    if (d == null) {
      d = new HashMap();
    }
    if (!str.endsWith("/")) {
      str = str + "/";
    }
    for (;;)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        com.estrongs.fs.impl.b.d locald = (com.estrongs.fs.impl.b.d)paramList.next();
        d.put(hpackageName, new String[] { str + locald.l(), locald.k().a() });
      }
      localk.setDescription(paramFileExplorerActivity.getString(2131231037));
      localk.addTaskStatusChangeListener(localf);
      new jh(paramFileExplorerActivity, paramFileExplorerActivity.getString(2131232200), localk).show();
      getDecisionDatag = 1;
      localk.setTaskDecisionListener(null);
      localk.execute();
      return;
    }
  }
  
  private boolean d(List<com.estrongs.fs.impl.b.d> paramList)
  {
    int j = 0;
    int k = paramList.size();
    int i = 0;
    if (i < k) {
      if (!a(((com.estrongs.fs.impl.b.d)paramList.get(i)).getPath())) {}
    }
    for (i = 1;; i = 0)
    {
      if (i != 0)
      {
        if (!com.estrongs.fs.impl.local.m.a(a, false))
        {
          com.estrongs.android.ui.view.ak.a(a, a.getText(2131232494), 1);
          return false;
          i += 1;
          break;
        }
        new cv(a).a(2131231715).b(2131232495).b(2131231270, new o(this, paramList)).c(2131231265, new n(this)).c();
      }
      for (;;)
      {
        return true;
        if ((com.estrongs.fs.impl.local.m.a(a, false)) && (ad.a(a).ab()))
        {
          new cv(a).a(2131231715).b(2131230982).b(2131231270, new q(this, paramList)).c(2131231265, new p(this)).c();
        }
        else
        {
          ArrayList localArrayList1 = new ArrayList();
          ArrayList localArrayList2 = new ArrayList();
          i = j;
          if (i < paramList.size())
          {
            ApplicationInfo localApplicationInfo = ((com.estrongs.fs.impl.b.d)paramList.get(i)).h();
            if (localApplicationInfo == null) {}
            for (;;)
            {
              i += 1;
              break;
              localArrayList1.add(packageName);
              localArrayList2.add(((com.estrongs.fs.impl.b.d)paramList.get(i)).getName());
            }
          }
          AppRunner.b(a, localArrayList1, localArrayList2);
        }
      }
    }
  }
  
  public void a(Context paramContext)
  {
    new Thread(new m(this, paramContext)).start();
  }
  
  public void a(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getData().getSchemeSpecificPart();
    if ((paramIntent != null) && (c != null) && (c.get(paramIntent) != null))
    {
      String str = (String)c.get(paramIntent);
      c.remove(paramIntent);
      a(paramContext, paramIntent, str, 3000L);
    }
  }
  
  /* Error */
  public void a(com.estrongs.fs.impl.b.g paramg)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   4: iconst_0
    //   5: invokestatic 355	com/estrongs/fs/impl/local/m:a	(Landroid/content/Context;Z)Z
    //   8: istore_2
    //   9: aload_1
    //   10: invokevirtual 458	com/estrongs/fs/impl/b/g:a	()Ljava/lang/String;
    //   13: astore 5
    //   15: iload_2
    //   16: ifeq +243 -> 259
    //   19: aload 5
    //   21: ifnull +238 -> 259
    //   24: aload_0
    //   25: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   28: invokestatic 257	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   31: aload 5
    //   33: invokevirtual 460	com/estrongs/fs/d:b	(Ljava/lang/String;)Z
    //   36: ifeq +223 -> 259
    //   39: aload_0
    //   40: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   43: invokevirtual 461	com/estrongs/android/pop/view/FileExplorerActivity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   46: aload_1
    //   47: invokevirtual 464	com/estrongs/fs/impl/b/g:getAbsolutePath	()Ljava/lang/String;
    //   50: iconst_1
    //   51: invokevirtual 468	android/content/pm/PackageManager:getPackageArchiveInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   54: getfield 474	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   57: getfield 41	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   60: astore 6
    //   62: new 476	com/estrongs/android/ui/dialog/ci
    //   65: dup
    //   66: aload_0
    //   67: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   70: invokespecial 477	com/estrongs/android/ui/dialog/ci:<init>	(Landroid/content/Context;)V
    //   73: astore 4
    //   75: aload 4
    //   77: ldc_w 478
    //   80: invokevirtual 482	com/estrongs/android/ui/dialog/ci:setTitle	(I)V
    //   83: aload 4
    //   85: iconst_0
    //   86: invokevirtual 486	com/estrongs/android/ui/dialog/ci:setSelectable	(Z)V
    //   89: aload_0
    //   90: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   93: invokevirtual 461	com/estrongs/android/pop/view/FileExplorerActivity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   96: aload 6
    //   98: iconst_0
    //   99: invokevirtual 489	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   102: astore_3
    //   103: aload_3
    //   104: ifnonnull +75 -> 179
    //   107: iconst_3
    //   108: anewarray 192	java/lang/String
    //   111: astore_3
    //   112: aload_3
    //   113: iconst_0
    //   114: aload_0
    //   115: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   118: ldc_w 490
    //   121: invokevirtual 314	com/estrongs/android/pop/view/FileExplorerActivity:getString	(I)Ljava/lang/String;
    //   124: aastore
    //   125: aload_3
    //   126: iconst_1
    //   127: aload_0
    //   128: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   131: ldc_w 491
    //   134: invokevirtual 314	com/estrongs/android/pop/view/FileExplorerActivity:getString	(I)Ljava/lang/String;
    //   137: aastore
    //   138: aload_3
    //   139: iconst_2
    //   140: aload_0
    //   141: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   144: ldc_w 492
    //   147: invokevirtual 314	com/estrongs/android/pop/view/FileExplorerActivity:getString	(I)Ljava/lang/String;
    //   150: aastore
    //   151: new 494	com/estrongs/android/pop/utils/i
    //   154: dup
    //   155: aload_0
    //   156: aload_1
    //   157: aload 6
    //   159: aload 5
    //   161: invokespecial 497	com/estrongs/android/pop/utils/i:<init>	(Lcom/estrongs/android/pop/utils/c;Lcom/estrongs/fs/impl/b/g;Ljava/lang/String;Ljava/lang/String;)V
    //   164: astore_1
    //   165: aload 4
    //   167: aload_3
    //   168: iconst_m1
    //   169: aload_1
    //   170: invokevirtual 501	com/estrongs/android/ui/dialog/ci:setItems	([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    //   173: aload 4
    //   175: invokevirtual 502	com/estrongs/android/ui/dialog/ci:show	()V
    //   178: return
    //   179: iconst_4
    //   180: anewarray 192	java/lang/String
    //   183: astore_3
    //   184: aload_3
    //   185: iconst_0
    //   186: aload_0
    //   187: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   190: ldc_w 490
    //   193: invokevirtual 314	com/estrongs/android/pop/view/FileExplorerActivity:getString	(I)Ljava/lang/String;
    //   196: aastore
    //   197: aload_3
    //   198: iconst_1
    //   199: aload_0
    //   200: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   203: ldc_w 491
    //   206: invokevirtual 314	com/estrongs/android/pop/view/FileExplorerActivity:getString	(I)Ljava/lang/String;
    //   209: aastore
    //   210: aload_3
    //   211: iconst_2
    //   212: aload_0
    //   213: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   216: ldc_w 503
    //   219: invokevirtual 314	com/estrongs/android/pop/view/FileExplorerActivity:getString	(I)Ljava/lang/String;
    //   222: aastore
    //   223: aload_3
    //   224: iconst_3
    //   225: aload_0
    //   226: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   229: ldc_w 492
    //   232: invokevirtual 314	com/estrongs/android/pop/view/FileExplorerActivity:getString	(I)Ljava/lang/String;
    //   235: aastore
    //   236: new 505	com/estrongs/android/pop/utils/j
    //   239: dup
    //   240: aload_0
    //   241: aload_1
    //   242: aload 6
    //   244: aload 5
    //   246: invokespecial 506	com/estrongs/android/pop/utils/j:<init>	(Lcom/estrongs/android/pop/utils/c;Lcom/estrongs/fs/impl/b/g;Ljava/lang/String;Ljava/lang/String;)V
    //   249: astore_1
    //   250: goto -85 -> 165
    //   253: astore_1
    //   254: aload_1
    //   255: invokevirtual 507	com/estrongs/fs/FileSystemException:printStackTrace	()V
    //   258: return
    //   259: new 509	com/estrongs/android/ui/dialog/j
    //   262: dup
    //   263: aload_0
    //   264: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   267: aload_1
    //   268: invokespecial 512	com/estrongs/android/ui/dialog/j:<init>	(Landroid/app/Activity;Lcom/estrongs/fs/h;)V
    //   271: invokevirtual 514	com/estrongs/android/ui/dialog/j:a	()V
    //   274: return
    //   275: astore_3
    //   276: aconst_null
    //   277: astore_3
    //   278: goto -175 -> 103
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	281	0	this	c
    //   0	281	1	paramg	com.estrongs.fs.impl.b.g
    //   8	8	2	bool	boolean
    //   102	122	3	localObject1	Object
    //   275	1	3	localException	Exception
    //   277	1	3	localObject2	Object
    //   73	101	4	localci	com.estrongs.android.ui.dialog.ci
    //   13	232	5	str1	String
    //   60	183	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   0	15	253	com/estrongs/fs/FileSystemException
    //   24	89	253	com/estrongs/fs/FileSystemException
    //   89	103	253	com/estrongs/fs/FileSystemException
    //   107	165	253	com/estrongs/fs/FileSystemException
    //   165	178	253	com/estrongs/fs/FileSystemException
    //   179	250	253	com/estrongs/fs/FileSystemException
    //   259	274	253	com/estrongs/fs/FileSystemException
    //   89	103	275	java/lang/Exception
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (e == null) {
      e = new HashMap();
    }
    e.put(paramString1, paramString2);
  }
  
  public boolean a(FileExplorerActivity paramFileExplorerActivity, List<com.estrongs.fs.impl.b.d> paramList)
  {
    ad localad = ad.a(a);
    Object localObject = com.estrongs.fs.d.a(paramFileExplorerActivity);
    PackageManager localPackageManager = paramFileExplorerActivity.getPackageManager();
    String str = localad.y();
    if ((com.estrongs.fs.impl.local.m.a(paramFileExplorerActivity, false)) && (localad.m())) {}
    for (boolean bool = true;; bool = false)
    {
      paramList = new com.estrongs.fs.b.i((com.estrongs.fs.d)localObject, localPackageManager, paramList, str, bool);
      localObject = new s(this, paramFileExplorerActivity);
      paramList.setDescription(a.getString(2131231056) + " -> " + localad.y());
      paramList.addTaskStatusChangeListener((com.estrongs.a.a.p)localObject);
      new jh(paramFileExplorerActivity, paramFileExplorerActivity.getString(2131232165), paramList).b(false).show();
      paramList.execute();
      return true;
    }
  }
  
  public boolean a(List<com.estrongs.fs.impl.b.d> paramList)
  {
    ad localad = ad.a(a);
    if (localad.l())
    {
      Object localObject = com.estrongs.fs.d.a(a);
      PackageManager localPackageManager = a.getPackageManager();
      String str = localad.y();
      if ((com.estrongs.fs.impl.local.m.a(a, false)) && (localad.m())) {}
      for (boolean bool = true;; bool = false)
      {
        localObject = new com.estrongs.fs.b.i((com.estrongs.fs.d)localObject, localPackageManager, paramList, str, bool);
        paramList = new d(this, paramList);
        ((com.estrongs.fs.b.i)localObject).setDescription(a.getString(2131231056) + " -> " + localad.y());
        ((com.estrongs.fs.b.i)localObject).addTaskStatusChangeListener(paramList);
        new jh(a, a.getString(2131232165), (com.estrongs.a.a)localObject).b(false).show();
        ((com.estrongs.fs.b.i)localObject).execute();
        return true;
      }
    }
    return d(paramList);
  }
  
  public List<com.estrongs.fs.h> b(Context paramContext)
  {
    localArrayList = new ArrayList();
    try
    {
      HashMap localHashMap = new HashMap();
      ad.a(paramContext);
      ad.a(paramContext, localHashMap);
      if (!localHashMap.isEmpty())
      {
        paramContext = paramContext.getPackageManager();
        Iterator localIterator = FexApplication.a().a(8192).iterator();
        while (localIterator.hasNext())
        {
          Object localObject = (ApplicationInfo)localIterator.next();
          if ((localHashMap.containsKey(packageName)) && (((flags & 0x80) != 0) || ((flags & 0x1) == 0)) && (sourceDir != null))
          {
            com.estrongs.fs.impl.b.d locald = new com.estrongs.fs.impl.b.d(sourceDir, com.estrongs.fs.w.b, w.a(paramContext, (ApplicationInfo)localObject), (ApplicationInfo)localObject);
            localObject = w.b(paramContext, (ApplicationInfo)localObject);
            locald.a(localObject[0]);
            locald.b(localObject[1]);
            localArrayList.add(locald);
          }
        }
      }
      return localArrayList;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public void b(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getData().getSchemeSpecificPart();
    if ((paramIntent != null) && (d != null) && (d.get(paramIntent) != null)) {}
    try
    {
      paramIntent = (String[])d.remove(paramIntent);
      if (paramIntent != null)
      {
        new ab(com.estrongs.fs.d.a(paramContext), com.estrongs.fs.impl.local.i.b(paramIntent[0]), false, false).execute();
        com.estrongs.android.ui.view.ak.a(paramContext, paramContext.getString(2131230962, new Object[] { paramIntent[1] }), 1);
      }
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public void b(FileExplorerActivity paramFileExplorerActivity, List<com.estrongs.fs.h> paramList)
  {
    if ((paramList == null) || (paramList.size() <= 0)) {
      return;
    }
    b = paramList;
    paramFileExplorerActivity.f("app://update");
  }
  
  public boolean b(List<com.estrongs.fs.impl.b.d> paramList)
  {
    if ((paramList == null) || (paramList.size() <= 0)) {
      return false;
    }
    new r(this, paramList.size(), paramList).execute(new Void[0]);
    return true;
  }
  
  public void c(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getData().getSchemeSpecificPart();
    if ((paramContext != null) && (e != null) && (e.get(paramContext) != null)) {}
    try
    {
      paramContext = (String)e.remove(paramContext);
      AppRunner.s(a, paramContext);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public void c(FileExplorerActivity paramFileExplorerActivity, List<com.estrongs.fs.impl.b.d> paramList)
  {
    if (com.estrongs.a.a.existsTask(com.estrongs.fs.b.k.class))
    {
      com.estrongs.android.ui.view.ak.a(paramFileExplorerActivity, paramFileExplorerActivity.getString(2131232409), 1);
      return;
    }
    ArrayList localArrayList = new ArrayList();
    if (paramList.size() == 1) {
      localArrayList.addAll(paramList);
    }
    while ((localArrayList.size() == 1) && (((com.estrongs.fs.impl.b.d)localArrayList.get(0)).k().h()))
    {
      paramList = new cv(paramFileExplorerActivity);
      paramList.a(2131231718);
      paramList.b(paramFileExplorerActivity.getString(2131231604));
      paramList.b(paramFileExplorerActivity.getString(2131232244), new u(this, paramFileExplorerActivity, localArrayList));
      paramList.c(paramFileExplorerActivity.getString(2131231265), new v(this));
      paramList.c();
      return;
      paramList = paramList.iterator();
      int i = 0;
      if (paramList.hasNext())
      {
        com.estrongs.fs.impl.b.d locald = (com.estrongs.fs.impl.b.d)paramList.next();
        if (locald.k().h()) {
          i += 1;
        }
        for (;;)
        {
          break;
          localArrayList.add(locald);
        }
      }
      if (i >= 1) {
        com.estrongs.android.ui.view.ak.a(a, a.getString(2131231603, new Object[] { String.valueOf(i) }), 1);
      }
      if (localArrayList.size() <= 0) {
        return;
      }
    }
    d(paramFileExplorerActivity, localArrayList);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */