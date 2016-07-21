package com.baidu.scenery.dispatcher;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.FaceDetector;
import android.media.FaceDetector.Face;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.widget.Toast;
import com.baidu.scenery.R.layout;
import com.baidu.scenery.R.string;
import com.baidu.scenery.SceneryConstants;
import com.baidu.scenery.utils.DecodeBitmapUtils;
import com.baidu.scenery.utils.LogHelper;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class RuleUtils
{
  public static final boolean DEBUG;
  private static final Set<String> GALLERY = new LinkedHashSet();
  private static final String TAG = "scenery";
  
  static
  {
    DEBUG = LogHelper.isLogEnabled();
    GALLERY.add("com.android.gallery3d");
    GALLERY.add("com.android.gallery");
    GALLERY.add("com.google.android.gallery3d");
    GALLERY.add("com.sec.android.gallery3d");
    GALLERY.add("com.meizu.media.gallery");
    GALLERY.add("com.miui.gallery");
    GALLERY.add("com.sonyericsson.album");
  }
  
  private static boolean checkHomeFirstForGingerbread(Context paramContext)
  {
    Object localObject = ((ActivityManager)paramContext.getSystemService("activity")).getRunningTasks(1);
    if ((localObject == null) || (((List)localObject).isEmpty())) {}
    do
    {
      return false;
      localObject = (ActivityManager.RunningTaskInfo)((List)localObject).get(0);
    } while ((localObject == null) || (topActivity == null));
    localObject = topActivity.getPackageName();
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    localIntent.setPackage((String)localObject);
    paramContext = paramContext.getPackageManager().queryIntentActivities(localIntent, 0);
    if ((paramContext != null) && (!paramContext.isEmpty())) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  private static boolean checkHomeFirstForLollip(Context paramContext)
  {
    Object localObject1 = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if ((localObject1 == null) || (((List)localObject1).isEmpty())) {}
    for (;;)
    {
      return false;
      localObject1 = ((List)localObject1).iterator();
      Object localObject2;
      do
      {
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        localObject2 = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject1).next();
      } while ((localObject2 == null) || (importance != 100) || (pkgList == null) || (pkgList.length == 0));
      for (localObject1 = pkgList[0]; !TextUtils.isEmpty((CharSequence)localObject1); localObject1 = null)
      {
        localObject2 = new Intent("android.intent.action.MAIN");
        ((Intent)localObject2).addCategory("android.intent.category.HOME");
        ((Intent)localObject2).setPackage((String)localObject1);
        paramContext = paramContext.getPackageManager().queryIntentActivities((Intent)localObject2, 0);
        if ((paramContext != null) && (!paramContext.isEmpty())) {}
        for (boolean bool = true;; bool = false) {
          return bool;
        }
      }
    }
  }
  
  public static String getEncodedReferrer(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = paramContext.getPackageName();
    try
    {
      String str = URLEncoder.encode(String.format("utm_source=%s&utm_medium=%s&pid=%s&bdct=%s", new Object[] { paramContext, paramString1, paramContext, paramString2 }), "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      if (DEBUG) {
        LogHelper.e("getEncodedReferrer: ", "UnsupportedEncodingException: ", localUnsupportedEncodingException);
      }
    }
    return "utm_source%3D" + paramContext + "%26utm_medium%3D" + paramString1 + "%26pid%3D" + paramContext + "%26bdct%3D" + paramString2;
  }
  
  public static List<MultiConfig> getMultiConfigList(Context paramContext)
  {
    List localList = getProductMatrix(paramContext);
    if ((localList == null) || (localList.isEmpty())) {
      return Collections.emptyList();
    }
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    String str;
    if (i < localList.size())
    {
      str = (String)localList.get(i);
      if (!TextUtils.isEmpty(str)) {}
    }
    label80:
    label284:
    label289:
    for (;;)
    {
      i += 1;
      break;
      Object localObject2 = null;
      int j = 0;
      Object localObject1;
      if (j < 5)
      {
        localObject1 = SceneryPreferences.getSceneryMultiConfigForPackage(paramContext, str);
        if ((localObject1 != null) && (priority != -1))
        {
          localObject2 = localObject1;
          if (!DEBUG) {
            break label284;
          }
          LogHelper.d("scenery", "getMultiConfigList: get config success; pkgName = " + str);
        }
      }
      for (;;)
      {
        if (localObject1 == null) {
          break label289;
        }
        if (DEBUG) {
          LogHelper.d("scenery", "getMultiConfigList: result config = " + ((MultiConfig)localObject1).toString());
        }
        localArrayList.add(localObject1);
        break;
        int k = j + 1;
        if (DEBUG) {
          LogHelper.d("scenery", "getMultiConfigList: get config failed; count=" + k + "; pkgName = " + str);
        }
        try
        {
          Thread.sleep(10L);
          localObject2 = localObject1;
          j = k;
        }
        catch (InterruptedException localInterruptedException)
        {
          localObject2 = localObject1;
          j = k;
        }
        if (!DEBUG) {
          break label80;
        }
        localInterruptedException.printStackTrace();
        localObject2 = localObject1;
        j = k;
        break label80;
        return localArrayList;
        localObject1 = localObject2;
      }
    }
  }
  
  public static List<String> getProductMatrix(Context paramContext)
  {
    Object localObject = paramContext.getPackageManager().getInstalledApplications(128);
    if ((localObject == null) || (((List)localObject).isEmpty())) {
      return null;
    }
    LinkedList localLinkedList = new LinkedList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      ApplicationInfo localApplicationInfo = (ApplicationInfo)((Iterator)localObject).next();
      if ((localApplicationInfo != null) && (metaData != null) && (!metaData.isEmpty()) && (!TextUtils.equals(packageName, paramContext.getPackageName())) && (metaData.getInt("scenery_dispatcher_version", -1) >= 0)) {
        localLinkedList.add(packageName);
      }
    }
    return localLinkedList;
  }
  
  public static long getProductMatrixInstallTime(Context paramContext)
  {
    long l1 = -1L;
    List localList = getProductMatrix(paramContext);
    long l2 = l1;
    if (localList != null)
    {
      if (!localList.isEmpty()) {
        break label34;
      }
      l2 = l1;
    }
    label34:
    int i;
    do
    {
      return l2;
      i = 0;
      l2 = l1;
    } while (i >= localList.size());
    long l3 = SceneryPreferences.getSceneryInstallTimeForPackage(paramContext, (String)localList.get(i));
    if (l3 <= 0L) {
      l2 = l1;
    }
    for (;;)
    {
      i += 1;
      l1 = l2;
      break;
      if (l1 > 0L)
      {
        l2 = l1;
        if (l3 >= l1) {}
      }
      else
      {
        l2 = l3;
      }
    }
  }
  
  /* Error */
  public static String getRealFilePath(Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aload_1
    //   7: invokevirtual 302	android/net/Uri:getScheme	()Ljava/lang/String;
    //   10: astore_3
    //   11: aload_3
    //   12: ifnonnull +10 -> 22
    //   15: aload_1
    //   16: invokevirtual 305	android/net/Uri:getPath	()Ljava/lang/String;
    //   19: astore_0
    //   20: aload_0
    //   21: areturn
    //   22: ldc_w 307
    //   25: aload_3
    //   26: invokevirtual 309	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   29: ifeq +11 -> 40
    //   32: aload_1
    //   33: invokevirtual 305	android/net/Uri:getPath	()Ljava/lang/String;
    //   36: astore_0
    //   37: goto -17 -> 20
    //   40: ldc_w 311
    //   43: aload_3
    //   44: invokevirtual 309	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   47: ifeq +131 -> 178
    //   50: aload_0
    //   51: invokevirtual 315	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   54: aload_1
    //   55: iconst_1
    //   56: anewarray 157	java/lang/String
    //   59: dup
    //   60: iconst_0
    //   61: ldc_w 317
    //   64: aastore
    //   65: aconst_null
    //   66: aconst_null
    //   67: aconst_null
    //   68: invokevirtual 323	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   71: astore_1
    //   72: aload_1
    //   73: ifnull +110 -> 183
    //   76: aload_1
    //   77: astore_0
    //   78: aload_1
    //   79: invokeinterface 328 1 0
    //   84: ifeq +99 -> 183
    //   87: aload_1
    //   88: astore_0
    //   89: aload_1
    //   90: ldc_w 317
    //   93: invokeinterface 332 2 0
    //   98: istore_2
    //   99: iload_2
    //   100: iconst_m1
    //   101: if_icmple +82 -> 183
    //   104: aload_1
    //   105: astore_0
    //   106: aload_1
    //   107: iload_2
    //   108: invokeinterface 336 2 0
    //   113: astore_3
    //   114: aload_3
    //   115: astore_0
    //   116: aload_1
    //   117: ifnull -97 -> 20
    //   120: aload_1
    //   121: invokeinterface 339 1 0
    //   126: aload_3
    //   127: astore_0
    //   128: goto -108 -> 20
    //   131: astore_3
    //   132: aconst_null
    //   133: astore_1
    //   134: aload_1
    //   135: astore_0
    //   136: aload_3
    //   137: invokevirtual 340	java/lang/Exception:printStackTrace	()V
    //   140: aload_1
    //   141: ifnull +37 -> 178
    //   144: aload_1
    //   145: invokeinterface 339 1 0
    //   150: aconst_null
    //   151: astore_0
    //   152: goto -132 -> 20
    //   155: astore_1
    //   156: aconst_null
    //   157: astore_0
    //   158: aload_0
    //   159: ifnull +9 -> 168
    //   162: aload_0
    //   163: invokeinterface 339 1 0
    //   168: aload_1
    //   169: athrow
    //   170: astore_1
    //   171: goto -13 -> 158
    //   174: astore_3
    //   175: goto -41 -> 134
    //   178: aconst_null
    //   179: astore_0
    //   180: goto -160 -> 20
    //   183: aconst_null
    //   184: astore_3
    //   185: goto -71 -> 114
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	188	0	paramContext	Context
    //   0	188	1	paramUri	Uri
    //   98	10	2	i	int
    //   10	117	3	str	String
    //   131	6	3	localException1	Exception
    //   174	1	3	localException2	Exception
    //   184	1	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   50	72	131	java/lang/Exception
    //   50	72	155	finally
    //   78	87	170	finally
    //   89	99	170	finally
    //   106	114	170	finally
    //   136	140	170	finally
    //   78	87	174	java/lang/Exception
    //   89	99	174	java/lang/Exception
    //   106	114	174	java/lang/Exception
  }
  
  public static boolean isEqualOrLowerThanGingerbread()
  {
    return Build.VERSION.SDK_INT <= 10;
  }
  
  public static boolean isFaceImage(Context paramContext, String paramString)
  {
    Object localObject = new BitmapFactory.Options();
    inPreferredConfig = Bitmap.Config.RGB_565;
    inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, (BitmapFactory.Options)localObject);
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    int i = widthPixels;
    int j = heightPixels;
    inJustDecodeBounds = false;
    inSampleSize = DecodeBitmapUtils.computeSampleSize((BitmapFactory.Options)localObject, -1, i * j);
    try
    {
      paramContext = BitmapFactory.decodeFile(paramString, (BitmapFactory.Options)localObject);
      if (paramContext == null) {
        return false;
      }
      paramString = new FaceDetector(paramContext.getWidth(), paramContext.getHeight(), 1);
      localObject = new FaceDetector.Face[1];
      paramString.findFaces(paramContext, (FaceDetector.Face[])localObject);
      paramContext.recycle();
      if (localObject[0] != null) {}
      for (boolean bool = true;; bool = false) {
        return bool;
      }
      return false;
    }
    catch (OutOfMemoryError paramContext) {}
  }
  
  public static boolean isGalleryFirst(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return isGalleryFirstForLollip(paramContext);
    }
    return isGalleryFirstForGingerbread(paramContext);
  }
  
  private static boolean isGalleryFirstForGingerbread(Context paramContext)
  {
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningTasks(1);
    if ((paramContext == null) || (paramContext.isEmpty())) {
      return false;
    }
    paramContext = (ActivityManager.RunningTaskInfo)paramContext.get(0);
    if ((paramContext == null) || (topActivity == null)) {
      return false;
    }
    paramContext = topActivity.getPackageName();
    return GALLERY.contains(paramContext);
  }
  
  private static boolean isGalleryFirstForLollip(Context paramContext)
  {
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if ((paramContext == null) || (paramContext.isEmpty())) {
      return false;
    }
    paramContext = paramContext.iterator();
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo;
    do
    {
      if (!paramContext.hasNext()) {
        break;
      }
      localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)paramContext.next();
    } while ((localRunningAppProcessInfo == null) || (importance != 100) || (pkgList == null) || (pkgList.length == 0));
    for (paramContext = pkgList[0];; paramContext = null)
    {
      if (TextUtils.isEmpty(paramContext)) {
        return false;
      }
      return GALLERY.contains(paramContext);
    }
  }
  
  public static boolean isHomeFirst(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return checkHomeFirstForLollip(paramContext);
    }
    return checkHomeFirstForGingerbread(paramContext);
  }
  
  public static boolean isMarketUrl(String paramString)
  {
    if ((paramString == null) || (paramString.trim().length() == 0)) {}
    while ((!paramString.startsWith("http://market.")) && (!paramString.startsWith("https://market.")) && (!paramString.startsWith("https://play.")) && (!paramString.startsWith("http://play.")) && (!paramString.startsWith("market:"))) {
      return false;
    }
    return true;
  }
  
  public static boolean isNetworkAvailable(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext == null) {
      return false;
    }
    paramContext = paramContext.getActiveNetworkInfo();
    if ((paramContext != null) && (paramContext.isConnected())) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  private static boolean isPeerSceneryRunOut(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = SceneryPreferences.getSceneryMultiConfigForPackage(paramContext, paramString1);
    if (DEBUG) {
      LogHelper.i("scenery", "pkg=" + paramString1 + ", scenery name=" + paramString2 + ", config=" + paramContext);
    }
    if (paramContext == null) {
      return false;
    }
    paramString1 = (Boolean)mSceneSwitch.get(paramString2);
    if (DEBUG) {
      LogHelper.i("scenery", "switch=" + paramString1);
    }
    if ((paramString1 == null) || (!paramString1.booleanValue())) {
      return false;
    }
    paramString1 = (Integer)mSceneShowCount.get(paramString2);
    if (DEBUG) {
      LogHelper.i("scenery", "config show count " + paramString1);
    }
    if (paramString1 == null) {
      return false;
    }
    paramString2 = (Integer)mSceneHaveShowCount.get(paramString2);
    if (DEBUG) {
      LogHelper.i("scenery", "already show count " + paramString2);
    }
    if (paramString2 == null) {
      return false;
    }
    if (paramString1.intValue() <= paramString2.intValue()) {
      return true;
    }
    if (DEBUG) {
      LogHelper.i("scenery", "generalShowCount=" + generalShowCount + "; generalHaveShowCount=" + generalHaveShowCount);
    }
    return generalShowCount <= generalHaveShowCount;
  }
  
  public static boolean isPkgInstalled(Context paramContext, String paramString)
  {
    boolean bool = false;
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext = paramContext.getApplicationInfo(paramString, 0);
      if (paramContext != null) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  public static boolean isSceneryRunOut(Context paramContext, String paramString)
  {
    if (DEBUG) {
      LogHelper.i("scenery", "sceneryName=" + paramString);
    }
    if (TextUtils.isEmpty(paramString)) {
      return true;
    }
    Object localObject2 = getProductMatrix(paramContext);
    if (DEBUG) {
      if (localObject2 != null) {
        break label90;
      }
    }
    label90:
    for (Object localObject1 = "pkgs==null";; localObject1 = Arrays.toString(((List)localObject2).toArray(new String[((List)localObject2).size()])))
    {
      LogHelper.i("scenery", (String)localObject1);
      if ((localObject2 != null) && (!((List)localObject2).isEmpty())) {
        break;
      }
      return isSelfSceneryRunOut(paramContext, paramString);
    }
    int i = SceneryPreferences.getSceneryPriority(paramContext);
    if (DEBUG) {
      LogHelper.i("scenery", "self priority " + i);
    }
    localObject1 = null;
    Iterator localIterator = ((List)localObject2).iterator();
    while (localIterator.hasNext())
    {
      localObject2 = (String)localIterator.next();
      int j = SceneryPreferences.getSceneryPriorityForPackage(paramContext, (String)localObject2);
      if (DEBUG) {
        LogHelper.i("scenery", "pkg=" + (String)localObject2 + ", priority=" + j + ", maxPriority=" + i + ", maxPkg=" + (String)localObject1);
      }
      if (j > 0)
      {
        if (j >= i) {
          break label337;
        }
        i = j;
        localObject1 = localObject2;
      }
    }
    label337:
    for (;;)
    {
      break;
      if (DEBUG) {
        LogHelper.i("scenery", "max priority after search " + i + ", pkg=" + (String)localObject1);
      }
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        return isSelfSceneryRunOut(paramContext, paramString);
      }
      return isPeerSceneryRunOut(paramContext, (String)localObject1, paramString);
    }
  }
  
  private static boolean isSelfSceneryRunOut(Context paramContext, String paramString)
  {
    if (DEBUG) {
      LogHelper.i("scenery", "scenery name=" + paramString);
    }
    boolean bool = SceneryPreferences.getSameSceneryConfigSwitch(paramContext, paramString);
    if (DEBUG) {
      LogHelper.i("scenery", "switch on " + bool);
    }
    if (!bool) {}
    int i;
    int j;
    do
    {
      do
      {
        return true;
        i = SceneryPreferences.getSameSceneryShowCount(paramContext, paramString);
        j = SceneryPreferences.getSameSceneryConfigCount(paramContext, paramString);
        if (DEBUG) {
          LogHelper.i("scenery", "config count " + j + ", show count " + i);
        }
      } while (j <= i);
      i = SceneryPreferences.getSceneryShowTimes(paramContext);
      j = SceneryPreferences.getSceneryConfigCount(paramContext);
      if (DEBUG) {
        LogHelper.i("scenery", "global config count " + j + ", global show count " + i);
      }
    } while (j <= i);
    return false;
  }
  
  public static void jumpToInstall(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    paramString1 = String.format("https://play.google.com/store/apps/details?id=%s&referrer=%s", new Object[] { paramString1, getEncodedReferrer(paramContext, paramString2, paramString3) });
    if (DEBUG) {
      LogHelper.d("jumpToInstall", "Google Market Url: " + paramString1);
    }
    if (isPkgInstalled(paramContext, "com.android.vending")) {
      try
      {
        paramString2 = new Intent("android.intent.action.VIEW", Uri.parse(paramString1));
        paramString2.setFlags(268435456);
        paramString2.setPackage("com.android.vending");
        paramContext.startActivity(paramString2);
        return;
      }
      catch (Exception paramString2)
      {
        startBrowser(paramContext, paramString1);
        return;
      }
    }
    startBrowser(paramContext, paramString1);
  }
  
  protected static void startBrowser(Context paramContext, String paramString)
  {
    if (!isMarketUrl(paramString)) {
      return;
    }
    paramString = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    paramString.addFlags(268435456);
    PackageManager localPackageManager = paramContext.getPackageManager();
    ResolveInfo localResolveInfo = localPackageManager.resolveActivity(paramString, 65536);
    if (localResolveInfo != null)
    {
      if ("android".equals(activityInfo.packageName)) {
        paramString.setPackage(queryIntentActivities65536get0activityInfo.packageName);
      }
      paramContext.startActivity(paramString);
      return;
    }
    paramString = Toast.makeText(paramContext, R.string.duscenerysdk_ad_no_browser_play, 0);
    paramString.setView(LayoutInflater.from(paramContext).inflate(R.layout.duscenery_sdk_toast_layout, null));
    paramString.show();
  }
  
  public static void syncMultiConfig(Context paramContext, List<MultiConfig> paramList)
  {
    if (paramList == null) {}
    MultiConfig localMultiConfig1;
    int i;
    label152:
    label177:
    label227:
    label292:
    label302:
    label312:
    label320:
    do
    {
      do
      {
        return;
        localMultiConfig1 = SceneryPreferences.getMyMultiConfig(paramContext);
      } while (localMultiConfig1 == null);
      paramList = paramList.iterator();
      i = 0;
      while (paramList.hasNext())
      {
        MultiConfig localMultiConfig2 = (MultiConfig)paramList.next();
        if (generalHaveShowCount > generalHaveShowCount)
        {
          generalHaveShowCount = generalHaveShowCount;
          i = 1;
        }
        if (generalLastShowTime > generalLastShowTime)
        {
          generalLastShowTime = generalLastShowTime;
          i = 1;
        }
        Iterator localIterator = SceneryConstants.SCENERY_LIST.iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          Object localObject = (Integer)mSceneHaveShowCount.get(str);
          int j;
          int k;
          long l1;
          if (localObject == null)
          {
            j = 0;
            localObject = (Integer)mSceneHaveShowCount.get(str);
            if (localObject != null) {
              break label292;
            }
            k = 0;
            if (j > k)
            {
              mSceneHaveShowCount.put(str, Integer.valueOf(j));
              i = 1;
            }
            localObject = (Long)mSceneLastShowTime.get(str);
            if (localObject != null) {
              break label302;
            }
            l1 = 0L;
            localObject = (Long)mSceneLastShowTime.get(str);
            if (localObject != null) {
              break label312;
            }
          }
          for (long l2 = 0L;; l2 = ((Long)localObject).longValue())
          {
            if (l1 <= l2) {
              break label320;
            }
            mSceneLastShowTime.put(str, Long.valueOf(l1));
            i = 1;
            break;
            j = ((Integer)localObject).intValue();
            break label152;
            k = ((Integer)localObject).intValue();
            break label177;
            l1 = ((Long)localObject).longValue();
            break label227;
          }
        }
      }
    } while (i == 0);
    SceneryPreferences.setSceneryMultiConfigForPackage(paramContext, paramContext.getPackageName(), localMultiConfig1);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.RuleUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */