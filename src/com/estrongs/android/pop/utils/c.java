package com.estrongs.android.pop.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.dialog.ix;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.ah;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.i;
import com.estrongs.fs.impl.b.g;
import com.estrongs.fs.impl.local.l;
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
      Intent localIntent = ah.a(packageName, paramPackageManager);
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
  
  public static void a(Activity paramActivity, ApplicationInfo paramApplicationInfo)
  {
    try
    {
      paramApplicationInfo = a(paramActivity.getPackageManager(), paramApplicationInfo);
      if (paramApplicationInfo == null)
      {
        a.a(paramActivity, 2131427839);
        return;
      }
      paramApplicationInfo.addFlags(268435456);
      paramActivity.startActivity(paramApplicationInfo);
      return;
    }
    catch (Exception paramApplicationInfo)
    {
      a.a(paramActivity, 2131427839);
      paramApplicationInfo.printStackTrace();
    }
  }
  
  private void a(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    new k(this, paramContext, paramLong, paramString2, paramString1).execute(new Void[0]);
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
        if (am.i(((String[])paramList.get(i))[0], paramString)) {
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
  
  public static void c(List<com.estrongs.fs.h> paramList)
  {
    b = paramList;
  }
  
  private void d(FileExplorerActivity paramFileExplorerActivity, List<com.estrongs.fs.impl.b.c> paramList)
  {
    String str = ad.a(paramFileExplorerActivity).z();
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
        com.estrongs.fs.impl.b.c localc = (com.estrongs.fs.impl.b.c)paramList.next();
        d.put(cpackageName, new String[] { str + localc.g(), localc.f().a() });
      }
      localk.setDescription(paramFileExplorerActivity.getString(2131428663));
      localk.addTaskStatusChangeListener(localf);
      new ix(paramFileExplorerActivity, paramFileExplorerActivity.getString(2131428662), localk).show();
      getDecisionDatag = 1;
      localk.setTaskDecisionListener(null);
      localk.execute();
      return;
    }
  }
  
  private boolean d(List<com.estrongs.fs.impl.b.c> paramList)
  {
    int j = 0;
    int k = paramList.size();
    int i = 0;
    if (i < k) {
      if (!a(((com.estrongs.fs.impl.b.c)paramList.get(i)).getPath())) {}
    }
    for (i = 1;; i = 0)
    {
      if (i != 0)
      {
        if (!l.a(a, false))
        {
          ag.a(a, a.getText(2131427983), 1);
          return false;
          i += 1;
          break;
        }
        new ct(a).a(2131427400).b(2131427985).b(2131427339, new o(this, paramList)).c(2131427340, new n(this)).c();
      }
      for (;;)
      {
        return true;
        if ((l.a(a, false)) && (ad.a(a).aa()))
        {
          new ct(a).a(2131427400).b(2131427710).b(2131427339, new q(this, paramList)).c(2131427340, new p(this)).c();
        }
        else
        {
          ArrayList localArrayList1 = new ArrayList();
          ArrayList localArrayList2 = new ArrayList();
          i = j;
          if (i < paramList.size())
          {
            ApplicationInfo localApplicationInfo = ((com.estrongs.fs.impl.b.c)paramList.get(i)).c();
            if (localApplicationInfo == null) {}
            for (;;)
            {
              i += 1;
              break;
              localArrayList1.add(packageName);
              localArrayList2.add(((com.estrongs.fs.impl.b.c)paramList.get(i)).getName());
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
  public void a(com.estrongs.fs.impl.b.f paramf)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   4: iconst_0
    //   5: invokestatic 279	com/estrongs/fs/impl/local/l:a	(Landroid/content/Context;Z)Z
    //   8: istore_2
    //   9: aload_1
    //   10: invokevirtual 384	com/estrongs/fs/impl/b/f:a	()Ljava/lang/String;
    //   13: astore 5
    //   15: iload_2
    //   16: ifeq +243 -> 259
    //   19: aload 5
    //   21: ifnull +238 -> 259
    //   24: aload_0
    //   25: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   28: invokestatic 169	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   31: aload 5
    //   33: invokevirtual 386	com/estrongs/fs/d:b	(Ljava/lang/String;)Z
    //   36: ifeq +223 -> 259
    //   39: aload_0
    //   40: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   43: invokevirtual 387	com/estrongs/android/pop/view/FileExplorerActivity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   46: aload_1
    //   47: invokevirtual 390	com/estrongs/fs/impl/b/f:getAbsolutePath	()Ljava/lang/String;
    //   50: iconst_1
    //   51: invokevirtual 394	android/content/pm/PackageManager:getPackageArchiveInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   54: getfield 400	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   57: getfield 41	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   60: astore 6
    //   62: new 402	com/estrongs/android/ui/dialog/cg
    //   65: dup
    //   66: aload_0
    //   67: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   70: invokespecial 403	com/estrongs/android/ui/dialog/cg:<init>	(Landroid/content/Context;)V
    //   73: astore 4
    //   75: aload 4
    //   77: ldc_w 404
    //   80: invokevirtual 408	com/estrongs/android/ui/dialog/cg:setTitle	(I)V
    //   83: aload 4
    //   85: iconst_0
    //   86: invokevirtual 412	com/estrongs/android/ui/dialog/cg:setSelectable	(Z)V
    //   89: aload_0
    //   90: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   93: invokevirtual 387	com/estrongs/android/pop/view/FileExplorerActivity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   96: aload 6
    //   98: iconst_0
    //   99: invokevirtual 415	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   102: astore_3
    //   103: aload_3
    //   104: ifnonnull +75 -> 179
    //   107: iconst_3
    //   108: anewarray 125	java/lang/String
    //   111: astore_3
    //   112: aload_3
    //   113: iconst_0
    //   114: aload_0
    //   115: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   118: ldc_w 416
    //   121: invokevirtual 238	com/estrongs/android/pop/view/FileExplorerActivity:getString	(I)Ljava/lang/String;
    //   124: aastore
    //   125: aload_3
    //   126: iconst_1
    //   127: aload_0
    //   128: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   131: ldc_w 417
    //   134: invokevirtual 238	com/estrongs/android/pop/view/FileExplorerActivity:getString	(I)Ljava/lang/String;
    //   137: aastore
    //   138: aload_3
    //   139: iconst_2
    //   140: aload_0
    //   141: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   144: ldc_w 418
    //   147: invokevirtual 238	com/estrongs/android/pop/view/FileExplorerActivity:getString	(I)Ljava/lang/String;
    //   150: aastore
    //   151: new 420	com/estrongs/android/pop/utils/i
    //   154: dup
    //   155: aload_0
    //   156: aload_1
    //   157: aload 6
    //   159: aload 5
    //   161: invokespecial 423	com/estrongs/android/pop/utils/i:<init>	(Lcom/estrongs/android/pop/utils/c;Lcom/estrongs/fs/impl/b/f;Ljava/lang/String;Ljava/lang/String;)V
    //   164: astore_1
    //   165: aload 4
    //   167: aload_3
    //   168: iconst_m1
    //   169: aload_1
    //   170: invokevirtual 427	com/estrongs/android/ui/dialog/cg:setItems	([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    //   173: aload 4
    //   175: invokevirtual 428	com/estrongs/android/ui/dialog/cg:show	()V
    //   178: return
    //   179: iconst_4
    //   180: anewarray 125	java/lang/String
    //   183: astore_3
    //   184: aload_3
    //   185: iconst_0
    //   186: aload_0
    //   187: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   190: ldc_w 416
    //   193: invokevirtual 238	com/estrongs/android/pop/view/FileExplorerActivity:getString	(I)Ljava/lang/String;
    //   196: aastore
    //   197: aload_3
    //   198: iconst_1
    //   199: aload_0
    //   200: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   203: ldc_w 417
    //   206: invokevirtual 238	com/estrongs/android/pop/view/FileExplorerActivity:getString	(I)Ljava/lang/String;
    //   209: aastore
    //   210: aload_3
    //   211: iconst_2
    //   212: aload_0
    //   213: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   216: ldc_w 429
    //   219: invokevirtual 238	com/estrongs/android/pop/view/FileExplorerActivity:getString	(I)Ljava/lang/String;
    //   222: aastore
    //   223: aload_3
    //   224: iconst_3
    //   225: aload_0
    //   226: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   229: ldc_w 418
    //   232: invokevirtual 238	com/estrongs/android/pop/view/FileExplorerActivity:getString	(I)Ljava/lang/String;
    //   235: aastore
    //   236: new 431	com/estrongs/android/pop/utils/j
    //   239: dup
    //   240: aload_0
    //   241: aload_1
    //   242: aload 6
    //   244: aload 5
    //   246: invokespecial 432	com/estrongs/android/pop/utils/j:<init>	(Lcom/estrongs/android/pop/utils/c;Lcom/estrongs/fs/impl/b/f;Ljava/lang/String;Ljava/lang/String;)V
    //   249: astore_1
    //   250: goto -85 -> 165
    //   253: astore_1
    //   254: aload_1
    //   255: invokevirtual 433	com/estrongs/fs/FileSystemException:printStackTrace	()V
    //   258: return
    //   259: new 435	com/estrongs/android/ui/dialog/j
    //   262: dup
    //   263: aload_0
    //   264: getfield 32	com/estrongs/android/pop/utils/c:a	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   267: aload_1
    //   268: invokespecial 438	com/estrongs/android/ui/dialog/j:<init>	(Landroid/app/Activity;Lcom/estrongs/fs/h;)V
    //   271: invokevirtual 440	com/estrongs/android/ui/dialog/j:a	()V
    //   274: return
    //   275: astore_3
    //   276: aconst_null
    //   277: astore_3
    //   278: goto -175 -> 103
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	281	0	this	c
    //   0	281	1	paramf	com.estrongs.fs.impl.b.f
    //   8	8	2	bool	boolean
    //   102	122	3	localObject1	Object
    //   275	1	3	localException	Exception
    //   277	1	3	localObject2	Object
    //   73	101	4	localcg	com.estrongs.android.ui.dialog.cg
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
  
  @SuppressLint({"InlinedApi"})
  public boolean a(ApplicationInfo paramApplicationInfo)
  {
    Intent localIntent = new Intent();
    paramApplicationInfo = packageName;
    if (bd.d())
    {
      localIntent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
      localIntent.setData(Uri.fromParts("package", paramApplicationInfo, null));
    }
    for (;;)
    {
      try
      {
        a.startActivity(localIntent);
        return true;
      }
      catch (ActivityNotFoundException paramApplicationInfo) {}
      localIntent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
      if (!bd.c()) {
        localIntent.putExtra("com.android.settings.ApplicationPkgName", paramApplicationInfo);
      } else {
        localIntent.putExtra("pkg", paramApplicationInfo);
      }
    }
    return false;
  }
  
  public boolean a(FileExplorerActivity paramFileExplorerActivity, List<com.estrongs.fs.impl.b.c> paramList)
  {
    ad localad = ad.a(a);
    Object localObject = com.estrongs.fs.d.a(paramFileExplorerActivity);
    PackageManager localPackageManager = paramFileExplorerActivity.getPackageManager();
    String str = localad.x();
    if ((l.a(paramFileExplorerActivity, false)) && (localad.l())) {}
    for (boolean bool = true;; bool = false)
    {
      paramList = new i((com.estrongs.fs.d)localObject, localPackageManager, paramList, str, bool);
      localObject = new s(this, paramFileExplorerActivity);
      paramList.setDescription(a.getString(2131427765) + " -> " + localad.x());
      paramList.addTaskStatusChangeListener((com.estrongs.a.a.p)localObject);
      new ix(paramFileExplorerActivity, paramFileExplorerActivity.getString(2131427452), paramList).b(false).show();
      paramList.execute();
      return true;
    }
  }
  
  public boolean a(List<com.estrongs.fs.impl.b.c> paramList)
  {
    ad localad = ad.a(a);
    if (localad.k())
    {
      Object localObject = com.estrongs.fs.d.a(a);
      PackageManager localPackageManager = a.getPackageManager();
      String str = localad.x();
      if ((l.a(a, false)) && (localad.l())) {}
      for (boolean bool = true;; bool = false)
      {
        localObject = new i((com.estrongs.fs.d)localObject, localPackageManager, paramList, str, bool);
        paramList = new d(this, paramList);
        ((i)localObject).setDescription(a.getString(2131427765) + " -> " + localad.x());
        ((i)localObject).addTaskStatusChangeListener(paramList);
        new ix(a, a.getString(2131427452), (com.estrongs.a.a)localObject).b(false).show();
        ((i)localObject).execute();
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
        Iterator localIterator = paramContext.getInstalledApplications(8192).iterator();
        while (localIterator.hasNext())
        {
          Object localObject = (ApplicationInfo)localIterator.next();
          if ((localHashMap.containsKey(packageName)) && (((flags & 0x80) != 0) || ((flags & 0x1) == 0)) && (sourceDir != null))
          {
            com.estrongs.fs.impl.b.c localc = new com.estrongs.fs.impl.b.c(sourceDir, com.estrongs.fs.m.b, w.a(paramContext, (ApplicationInfo)localObject), (ApplicationInfo)localObject);
            localObject = w.b(paramContext, (ApplicationInfo)localObject);
            localc.a(localObject[0]);
            localc.b(localObject[1]);
            localArrayList.add(localc);
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
        new ab(com.estrongs.fs.d.a(paramContext), com.estrongs.fs.impl.local.h.b(paramIntent[0]), false, false).execute();
        ag.a(paramContext, paramContext.getString(2131428680, new Object[] { paramIntent[1] }), 1);
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
    paramFileExplorerActivity.d("app://update");
  }
  
  public boolean b(List<com.estrongs.fs.impl.b.c> paramList)
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
      AppRunner.r(a, paramContext);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public void c(FileExplorerActivity paramFileExplorerActivity, List<com.estrongs.fs.impl.b.c> paramList)
  {
    if (com.estrongs.a.a.existsTask(com.estrongs.fs.b.k.class))
    {
      ag.a(paramFileExplorerActivity, paramFileExplorerActivity.getString(2131428683), 1);
      return;
    }
    ArrayList localArrayList = new ArrayList();
    if (paramList.size() == 1) {
      localArrayList.addAll(paramList);
    }
    while ((localArrayList.size() == 1) && (((com.estrongs.fs.impl.b.c)localArrayList.get(0)).f().h()))
    {
      paramList = new ct(paramFileExplorerActivity);
      paramList.a(2131427404);
      paramList.b(paramFileExplorerActivity.getString(2131428678));
      paramList.b(paramFileExplorerActivity.getString(2131427611), new u(this, paramFileExplorerActivity, localArrayList));
      paramList.c(paramFileExplorerActivity.getString(2131427340), new v(this));
      paramList.c();
      return;
      paramList = paramList.iterator();
      int i = 0;
      if (paramList.hasNext())
      {
        com.estrongs.fs.impl.b.c localc = (com.estrongs.fs.impl.b.c)paramList.next();
        if (localc.f().h()) {
          i += 1;
        }
        for (;;)
        {
          break;
          localArrayList.add(localc);
        }
      }
      if (i >= 1) {
        ag.a(a, a.getString(2131428677, new Object[] { String.valueOf(i) }), 1);
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