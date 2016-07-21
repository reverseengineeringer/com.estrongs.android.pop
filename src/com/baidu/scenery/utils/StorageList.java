package com.baidu.scenery.utils;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Environment;
import android.text.TextUtils;
import com.baidu.scenery.SceneryLibrary;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StorageList
{
  private static final boolean DEBUG_LOG = ;
  private Context mCtx = null;
  private Pattern mFilterPattern00 = null;
  private Pattern mFilterPattern01 = null;
  private Pattern mFilterPattern02 = null;
  private Pattern mFilterPattern03 = null;
  private Pattern mFilterPattern04 = null;
  private Pattern mFilterPattern05 = null;
  private Pattern mFilterPattern06 = null;
  private Pattern mFilterPattern07 = null;
  private Pattern mFilterPattern08 = null;
  private Pattern mFilterPattern09 = null;
  private Method mMethodGetPaths = null;
  private Method mMethodGetVolumeList = null;
  private Method mMethodGetVolumeState = null;
  private Object mStorageManager = null;
  
  public StorageList(Context paramContext)
  {
    mCtx = paramContext;
    if ((mCtx != null) && (Build.VERSION.SDK_INT >= 14)) {
      mStorageManager = mCtx.getSystemService("storage");
    }
    try
    {
      mMethodGetVolumeList = mStorageManager.getClass().getMethod("getVolumeList", new Class[0]);
      mMethodGetPaths = mStorageManager.getClass().getMethod("getVolumePaths", new Class[0]);
      mMethodGetVolumeState = mStorageManager.getClass().getMethod("getVolumeState", new Class[] { String.class });
      return;
    }
    catch (Exception paramContext)
    {
      while (!DEBUG_LOG) {}
      paramContext.printStackTrace();
    }
  }
  
  public static String addSlash(String paramString)
  {
    String str;
    if (TextUtils.isEmpty(paramString)) {
      str = File.separator;
    }
    do
    {
      return str;
      str = paramString;
    } while (paramString.charAt(paramString.length() - 1) == File.separatorChar);
    return paramString + File.separatorChar;
  }
  
  private ArrayList<String> filterSubFolders(ArrayList<String> paramArrayList)
  {
    if (paramArrayList == null) {}
    ArrayList localArrayList;
    do
    {
      return null;
      if (paramArrayList.isEmpty()) {
        return paramArrayList;
      }
      localArrayList = new ArrayList();
      Collections.sort(paramArrayList);
      Iterator localIterator = paramArrayList.iterator();
      paramArrayList = null;
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (str != null) {
          if (paramArrayList != null)
          {
            if (!str.startsWith(paramArrayList))
            {
              paramArrayList = addSlash(str);
              localArrayList.add(str);
            }
          }
          else
          {
            paramArrayList = addSlash(str);
            localArrayList.add(str);
          }
        }
      }
    } while (localArrayList.isEmpty());
    return localArrayList;
  }
  
  private ArrayList<String> getDefualtMountedStoragePaths()
  {
    ArrayList localArrayList2 = new ArrayList();
    if (Environment.getExternalStorageState().equals("mounted")) {
      localArrayList2.add(Environment.getExternalStorageDirectory().getPath());
    }
    ArrayList localArrayList1 = localArrayList2;
    if (localArrayList2.isEmpty()) {
      localArrayList1 = null;
    }
    return localArrayList1;
  }
  
  private ArrayList<String> getDefualtMountedStoragePaths(ArrayList<String> paramArrayList)
  {
    Object localObject = paramArrayList;
    if (paramArrayList == null) {
      localObject = new ArrayList();
    }
    ArrayList localArrayList = getDefualtMountedStoragePaths();
    paramArrayList = (ArrayList<String>)localObject;
    if (localArrayList != null)
    {
      paramArrayList = (ArrayList<String>)localObject;
      if (!localArrayList.isEmpty())
      {
        if (!((ArrayList)localObject).isEmpty()) {
          break label86;
        }
        paramArrayList = localArrayList;
      }
    }
    localArrayList = getMountedStoragePathsFromMountsFile(paramArrayList);
    localObject = paramArrayList;
    if (localArrayList != null)
    {
      localObject = paramArrayList;
      if (!localArrayList.isEmpty()) {
        if (!paramArrayList.isEmpty()) {
          break label97;
        }
      }
    }
    for (localObject = localArrayList;; localObject = paramArrayList)
    {
      paramArrayList = (ArrayList<String>)localObject;
      if (((ArrayList)localObject).isEmpty()) {
        paramArrayList = null;
      }
      return paramArrayList;
      label86:
      ((ArrayList)localObject).addAll(localArrayList);
      paramArrayList = (ArrayList<String>)localObject;
      break;
      label97:
      paramArrayList.addAll(localArrayList);
    }
  }
  
  private ArrayList<String> getDefualtMountedStoragePaths(ArrayList<String> paramArrayList, boolean paramBoolean)
  {
    ArrayList localArrayList = getDefualtMountedStoragePaths();
    Object localObject;
    if (paramBoolean == isDefaultMountedStorageRemovable()) {
      if (paramArrayList == null)
      {
        localObject = new ArrayList();
        if ((localArrayList != null) && (!localArrayList.isEmpty())) {
          ((ArrayList)localObject).addAll(localArrayList);
        }
        paramArrayList = (ArrayList<String>)localObject;
        if (localObject != null)
        {
          paramArrayList = (ArrayList<String>)localObject;
          if (((ArrayList)localObject).isEmpty()) {
            paramArrayList = null;
          }
        }
      }
    }
    for (;;)
    {
      localObject = paramArrayList;
      if (paramBoolean) {
        if ((localArrayList != null) && (!localArrayList.isEmpty())) {
          break label137;
        }
      }
      for (localObject = paramArrayList;; localObject = localArrayList)
      {
        localArrayList = getMountedStoragePathsFromMountsFile((ArrayList)localObject);
        localObject = paramArrayList;
        if (localArrayList != null)
        {
          localObject = paramArrayList;
          if (!localArrayList.isEmpty())
          {
            if ((paramArrayList != null) && (!paramArrayList.isEmpty())) {
              break label189;
            }
            localObject = localArrayList;
          }
        }
        return (ArrayList<String>)localObject;
        label137:
        if ((paramArrayList != null) && (!paramArrayList.isEmpty()))
        {
          int i = 0;
          while (i < paramArrayList.size())
          {
            if (!localArrayList.contains(paramArrayList.get(i))) {
              localArrayList.add(paramArrayList.get(i));
            }
            i += 1;
            continue;
            label189:
            paramArrayList.addAll(localArrayList);
            return paramArrayList;
          }
        }
      }
      localObject = paramArrayList;
      break;
    }
  }
  
  private ArrayList<String> getDefualtMountedStoragePathsWithoutSubFolders()
  {
    return filterSubFolders(getDefualtMountedStoragePaths(null));
  }
  
  /* Error */
  public static String getDeviceByMountPoint(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: new 241	java/io/BufferedReader
    //   8: dup
    //   9: new 243	java/io/FileReader
    //   12: dup
    //   13: ldc -11
    //   15: invokespecial 248	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   18: invokespecial 251	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   21: astore_2
    //   22: aload_2
    //   23: astore_1
    //   24: aload_2
    //   25: invokevirtual 254	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   28: astore 5
    //   30: aload 4
    //   32: astore_1
    //   33: aload 5
    //   35: ifnull +47 -> 82
    //   38: aload_2
    //   39: astore_1
    //   40: aload 5
    //   42: ldc_w 256
    //   45: invokevirtual 260	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   48: astore 5
    //   50: aload 5
    //   52: ifnull -30 -> 22
    //   55: aload_2
    //   56: astore_1
    //   57: aload 5
    //   59: arraylength
    //   60: iconst_2
    //   61: if_icmple -39 -> 22
    //   64: aload_2
    //   65: astore_1
    //   66: aload_0
    //   67: aload 5
    //   69: iconst_1
    //   70: aaload
    //   71: invokevirtual 197	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   74: ifeq -52 -> 22
    //   77: aload 5
    //   79: iconst_0
    //   80: aaload
    //   81: astore_1
    //   82: aload_2
    //   83: invokevirtual 263	java/io/BufferedReader:close	()V
    //   86: aload_1
    //   87: astore_0
    //   88: aload_0
    //   89: areturn
    //   90: astore_2
    //   91: aload_1
    //   92: astore_0
    //   93: getstatic 35	com/baidu/scenery/utils/StorageList:DEBUG_LOG	Z
    //   96: ifeq -8 -> 88
    //   99: aload_2
    //   100: invokevirtual 264	java/io/IOException:printStackTrace	()V
    //   103: aload_1
    //   104: areturn
    //   105: astore_0
    //   106: aconst_null
    //   107: astore_2
    //   108: aload_2
    //   109: astore_1
    //   110: getstatic 35	com/baidu/scenery/utils/StorageList:DEBUG_LOG	Z
    //   113: ifeq +9 -> 122
    //   116: aload_2
    //   117: astore_1
    //   118: aload_0
    //   119: invokevirtual 265	java/io/FileNotFoundException:printStackTrace	()V
    //   122: aload_2
    //   123: invokevirtual 263	java/io/BufferedReader:close	()V
    //   126: aconst_null
    //   127: areturn
    //   128: astore_1
    //   129: aload_3
    //   130: astore_0
    //   131: getstatic 35	com/baidu/scenery/utils/StorageList:DEBUG_LOG	Z
    //   134: ifeq -46 -> 88
    //   137: aload_1
    //   138: invokevirtual 264	java/io/IOException:printStackTrace	()V
    //   141: aconst_null
    //   142: areturn
    //   143: astore_0
    //   144: aconst_null
    //   145: astore_2
    //   146: aload_2
    //   147: astore_1
    //   148: getstatic 35	com/baidu/scenery/utils/StorageList:DEBUG_LOG	Z
    //   151: ifeq +9 -> 160
    //   154: aload_2
    //   155: astore_1
    //   156: aload_0
    //   157: invokevirtual 264	java/io/IOException:printStackTrace	()V
    //   160: aload_2
    //   161: invokevirtual 263	java/io/BufferedReader:close	()V
    //   164: aconst_null
    //   165: areturn
    //   166: astore_1
    //   167: aload_3
    //   168: astore_0
    //   169: getstatic 35	com/baidu/scenery/utils/StorageList:DEBUG_LOG	Z
    //   172: ifeq -84 -> 88
    //   175: aload_1
    //   176: invokevirtual 264	java/io/IOException:printStackTrace	()V
    //   179: aconst_null
    //   180: areturn
    //   181: astore_0
    //   182: aconst_null
    //   183: astore_1
    //   184: aload_1
    //   185: invokevirtual 263	java/io/BufferedReader:close	()V
    //   188: aload_0
    //   189: athrow
    //   190: astore_1
    //   191: getstatic 35	com/baidu/scenery/utils/StorageList:DEBUG_LOG	Z
    //   194: ifeq -6 -> 188
    //   197: aload_1
    //   198: invokevirtual 264	java/io/IOException:printStackTrace	()V
    //   201: goto -13 -> 188
    //   204: astore_0
    //   205: goto -21 -> 184
    //   208: astore_0
    //   209: goto -63 -> 146
    //   212: astore_0
    //   213: goto -105 -> 108
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	216	0	paramString	String
    //   23	95	1	localObject1	Object
    //   128	10	1	localIOException1	java.io.IOException
    //   147	9	1	localObject2	Object
    //   166	10	1	localIOException2	java.io.IOException
    //   183	2	1	localObject3	Object
    //   190	8	1	localIOException3	java.io.IOException
    //   21	62	2	localBufferedReader	BufferedReader
    //   90	10	2	localIOException4	java.io.IOException
    //   107	54	2	localObject4	Object
    //   1	167	3	localObject5	Object
    //   3	28	4	localObject6	Object
    //   28	50	5	localObject7	Object
    // Exception table:
    //   from	to	target	type
    //   82	86	90	java/io/IOException
    //   5	22	105	java/io/FileNotFoundException
    //   122	126	128	java/io/IOException
    //   5	22	143	java/io/IOException
    //   160	164	166	java/io/IOException
    //   5	22	181	finally
    //   184	188	190	java/io/IOException
    //   24	30	204	finally
    //   40	50	204	finally
    //   57	64	204	finally
    //   66	77	204	finally
    //   110	116	204	finally
    //   118	122	204	finally
    //   148	154	204	finally
    //   156	160	204	finally
    //   24	30	208	java/io/IOException
    //   40	50	208	java/io/IOException
    //   57	64	208	java/io/IOException
    //   66	77	208	java/io/IOException
    //   24	30	212	java/io/FileNotFoundException
    //   40	50	212	java/io/FileNotFoundException
    //   57	64	212	java/io/FileNotFoundException
    //   66	77	212	java/io/FileNotFoundException
  }
  
  private ArrayList<String> getMountedStoragePathsFromMountsFile(ArrayList<String> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      localBufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File("/proc/mounts"))));
      if (localBufferedReader == null) {}
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Object localObject1;
      try
      {
        Object localObject2;
        do
        {
          do
          {
            do
            {
              for (;;)
              {
                localObject2 = localBufferedReader.readLine();
                if (localObject2 != null) {
                  break;
                }
                localBufferedReader.close();
                BufferedReader localBufferedReader = null;
                continue;
                localFileNotFoundException = localFileNotFoundException;
                if (DEBUG_LOG) {
                  localFileNotFoundException.printStackTrace();
                }
                localObject1 = null;
              }
            } while (shouldBeFiltered((String)localObject2));
            localObject2 = ((String)localObject2).split(" ");
          } while (localObject2.length < 4);
          localObject2 = localObject2[1];
        } while (((paramArrayList != null) && (paramArrayList.contains(localObject2))) || (localArrayList.contains(localObject2)));
        localArrayList.add(localObject2);
      }
      catch (Exception paramArrayList) {}
      if (localObject1 != null) {}
      try
      {
        ((BufferedReader)localObject1).close();
        if (localArrayList.isEmpty()) {
          return null;
        }
      }
      catch (Exception paramArrayList)
      {
        for (;;) {}
      }
    }
    return localArrayList;
  }
  
  private ArrayList<String> getMountedVolumePaths(boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    if (Build.VERSION.SDK_INT < 14) {
      return getDefualtMountedStoragePaths(localArrayList, paramBoolean);
    }
    if ((mStorageManager == null) || (mMethodGetVolumeList == null) || (mMethodGetVolumeState == null)) {
      return null;
    }
    for (;;)
    {
      int i;
      try
      {
        arrayOfObject = (Object[])mMethodGetVolumeList.invoke(mStorageManager, new Object[0]);
        if ((arrayOfObject == null) || (arrayOfObject.length == 0)) {
          break label247;
        }
        localMethod1 = arrayOfObject[0].getClass().getMethod("getPath", new Class[0]);
        localMethod2 = arrayOfObject[0].getClass().getMethod("isRemovable", new Class[0]);
        if (localMethod1 == null) {
          break label249;
        }
        if (localMethod2 != null) {
          break label251;
        }
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject;
        Method localMethod1;
        Method localMethod2;
        String str;
        if (!DEBUG_LOG) {
          continue;
        }
        localException.printStackTrace();
        if (!localArrayList.isEmpty()) {
          continue;
        }
        return null;
        return localArrayList;
      }
      if (i < arrayOfObject.length)
      {
        if (paramBoolean == ((Boolean)localMethod2.invoke(arrayOfObject[i], new Object[0])).booleanValue())
        {
          str = (String)localMethod1.invoke(arrayOfObject[i], new Object[0]);
          if ("mounted".equals(mMethodGetVolumeState.invoke(mStorageManager, new Object[] { str }))) {
            localArrayList.add(str);
          }
        }
      }
      else
      {
        label247:
        return null;
        label249:
        return null;
        label251:
        i = 0;
        continue;
      }
      i += 1;
    }
  }
  
  public static ArrayList<String> getSubFolders(ArrayList<String> paramArrayList, int paramInt)
  {
    if ((paramArrayList == null) || (paramArrayList.isEmpty()) || (paramInt >= paramArrayList.size())) {}
    String str1;
    ArrayList localArrayList;
    do
    {
      do
      {
        return null;
        str1 = (String)paramArrayList.get(paramInt);
      } while (str1 == null);
      localArrayList = new ArrayList();
      str1 = addSlash(str1);
    } while (str1 == null);
    paramInt += 1;
    if (paramInt < paramArrayList.size())
    {
      String str2 = (String)paramArrayList.get(paramInt);
      if (str2 == null) {}
      for (;;)
      {
        paramInt += 1;
        break;
        if (!str2.startsWith(str1)) {
          break label104;
        }
        localArrayList.add(str2);
      }
    }
    label104:
    if (localArrayList.isEmpty()) {}
    for (paramArrayList = null;; paramArrayList = localArrayList) {
      return paramArrayList;
    }
  }
  
  private String[] getVolumePaths()
  {
    if ((mMethodGetPaths == null) || (mStorageManager == null)) {
      return null;
    }
    try
    {
      String[] arrayOfString = (String[])mMethodGetPaths.invoke(mStorageManager, new Object[0]);
      return arrayOfString;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      if (DEBUG_LOG) {
        localIllegalArgumentException.printStackTrace();
      }
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      if (DEBUG_LOG) {
        localIllegalAccessException.printStackTrace();
      }
      return null;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      if ((DEBUG_LOG) && (DEBUG_LOG)) {
        localInvocationTargetException.printStackTrace();
      }
    }
    return null;
  }
  
  private boolean initRegexPattern()
  {
    try
    {
      if (mFilterPattern00 == null) {
        mFilterPattern00 = Pattern.compile("^\\/");
      }
      if (mFilterPattern01 == null) {
        mFilterPattern01 = Pattern.compile("\\s(vfat)|(fuse)\\s");
      }
      if (mFilterPattern02 == null) {
        mFilterPattern02 = Pattern.compile("\\brw\\b");
      }
      if (mFilterPattern03 == null) {
        mFilterPattern03 = Pattern.compile("\\bnoauto_da_alloc\\b");
      }
      if (mFilterPattern04 == null) {
        mFilterPattern04 = Pattern.compile("(\\basec)|(asec\\b)");
      }
      if (mFilterPattern05 == null) {
        mFilterPattern05 = Pattern.compile("\\buser_id=0\\b");
      }
      if (mFilterPattern06 == null) {
        mFilterPattern06 = Pattern.compile("\\bgroup_id=0\\b");
      }
      if (mFilterPattern07 == null) {
        mFilterPattern07 = Pattern.compile("\\buid=0\\b");
      }
      if (mFilterPattern08 == null) {
        mFilterPattern08 = Pattern.compile("\\bgid=0\\b");
      }
      if (mFilterPattern09 == null) {
        mFilterPattern09 = Pattern.compile("\\bbarrier=1\\b");
      }
      return true;
    }
    catch (Exception localException) {}
    return false;
  }
  
  private boolean isDefaultMountedStorageRemovable()
  {
    if (Build.VERSION.SDK_INT < 9) {}
    for (;;)
    {
      return false;
      try
      {
        Method localMethod = Environment.class.getMethod("isExternalStorageRemovable", new Class[0]);
        if (localMethod != null) {
          bool = ((Boolean)localMethod.invoke(Environment.class, new Object[0])).booleanValue();
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          if ((DEBUG_LOG) && (DEBUG_LOG)) {
            localException.printStackTrace();
          }
          boolean bool = false;
        }
      }
    }
    return bool;
  }
  
  /* Error */
  public static boolean isSystemRO()
  {
    // Byte code:
    //   0: new 241	java/io/BufferedReader
    //   3: dup
    //   4: new 267	java/io/InputStreamReader
    //   7: dup
    //   8: new 269	java/io/FileInputStream
    //   11: dup
    //   12: new 117	java/io/File
    //   15: dup
    //   16: ldc -11
    //   18: invokespecial 270	java/io/File:<init>	(Ljava/lang/String;)V
    //   21: invokespecial 273	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   24: invokespecial 276	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   27: invokespecial 251	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   30: astore_1
    //   31: aload_1
    //   32: ifnull +62 -> 94
    //   35: aload_1
    //   36: invokevirtual 254	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   39: astore_2
    //   40: aload_2
    //   41: ifnonnull +28 -> 69
    //   44: aload_1
    //   45: invokevirtual 263	java/io/BufferedReader:close	()V
    //   48: aconst_null
    //   49: astore_1
    //   50: goto -19 -> 31
    //   53: astore_1
    //   54: getstatic 35	com/baidu/scenery/utils/StorageList:DEBUG_LOG	Z
    //   57: ifeq +7 -> 64
    //   60: aload_1
    //   61: invokevirtual 265	java/io/FileNotFoundException:printStackTrace	()V
    //   64: aconst_null
    //   65: astore_1
    //   66: goto -35 -> 31
    //   69: aload_2
    //   70: ldc_w 347
    //   73: invokevirtual 349	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   76: ifeq -45 -> 31
    //   79: aload_2
    //   80: ldc_w 351
    //   83: invokevirtual 349	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   86: istore_0
    //   87: iload_0
    //   88: ifeq -57 -> 31
    //   91: iconst_1
    //   92: ireturn
    //   93: astore_2
    //   94: aload_1
    //   95: ifnull +7 -> 102
    //   98: aload_1
    //   99: invokevirtual 263	java/io/BufferedReader:close	()V
    //   102: iconst_0
    //   103: ireturn
    //   104: astore_1
    //   105: goto -3 -> 102
    // Local variable table:
    //   start	length	slot	name	signature
    //   86	2	0	bool	boolean
    //   30	20	1	localBufferedReader	BufferedReader
    //   53	8	1	localFileNotFoundException	FileNotFoundException
    //   65	34	1	localObject	Object
    //   104	1	1	localException1	Exception
    //   39	41	2	str	String
    //   93	1	2	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	31	53	java/io/FileNotFoundException
    //   35	40	93	java/lang/Exception
    //   44	48	93	java/lang/Exception
    //   69	87	93	java/lang/Exception
    //   98	102	104	java/lang/Exception
  }
  
  private boolean shouldBeFiltered(String paramString)
  {
    if (paramString == null) {}
    while ((!initRegexPattern()) || (!mFilterPattern00.matcher(paramString).find()) || (!mFilterPattern01.matcher(paramString).find()) || (!mFilterPattern02.matcher(paramString).find()) || (mFilterPattern03.matcher(paramString).find()) || (mFilterPattern04.matcher(paramString).find()) || (mFilterPattern05.matcher(paramString).find()) || (mFilterPattern06.matcher(paramString).find()) || (mFilterPattern07.matcher(paramString).find()) || (mFilterPattern08.matcher(paramString).find()) || (mFilterPattern09.matcher(paramString).find())) {
      return true;
    }
    return false;
  }
  
  public ArrayList<String> getMountedPhoneVolumePaths()
  {
    return getMountedVolumePaths(false);
  }
  
  public ArrayList<String> getMountedSdCardVolumePaths()
  {
    return getMountedVolumePaths(true);
  }
  
  public ArrayList<String> getMountedVolumePaths()
  {
    int i = 0;
    if (Build.VERSION.SDK_INT < 14)
    {
      localObject1 = getDefualtMountedStoragePaths(null);
      return (ArrayList<String>)localObject1;
    }
    if (mMethodGetVolumeState == null) {
      return getDefualtMountedStoragePaths(null);
    }
    Object localObject1 = getVolumePaths();
    if ((localObject1 == null) || (localObject1.length == 0)) {
      return getDefualtMountedStoragePaths(null);
    }
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      try
      {
        if (i < localObject1.length)
        {
          if (localObject1[i] == null) {
            break label140;
          }
          if (!"mounted".equals(mMethodGetVolumeState.invoke(mStorageManager, new Object[] { localObject1[i] }))) {
            break label140;
          }
          localArrayList.add(localObject1[i]);
        }
      }
      catch (Exception localException)
      {
        if (DEBUG_LOG) {
          localException.printStackTrace();
        }
        Object localObject2 = localArrayList;
      }
      if (!localArrayList.isEmpty()) {
        break;
      }
      return getDefualtMountedStoragePaths(null);
      label140:
      i += 1;
    }
  }
  
  public ArrayList<String> getMountedVolumePathsWithoutSubFolders()
  {
    int i = 0;
    if (Build.VERSION.SDK_INT < 14) {
      return getDefualtMountedStoragePathsWithoutSubFolders();
    }
    if (mMethodGetVolumeState == null) {
      return getDefualtMountedStoragePathsWithoutSubFolders();
    }
    String[] arrayOfString = getVolumePaths();
    if ((arrayOfString == null) || (arrayOfString.length == 0)) {
      return getDefualtMountedStoragePathsWithoutSubFolders();
    }
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      try
      {
        if (i < arrayOfString.length)
        {
          if (arrayOfString[i] == null) {
            break label138;
          }
          if (!"mounted".equals(mMethodGetVolumeState.invoke(mStorageManager, new Object[] { arrayOfString[i] }))) {
            break label138;
          }
          localArrayList.add(arrayOfString[i]);
        }
      }
      catch (Exception localException)
      {
        if (DEBUG_LOG) {
          localException.printStackTrace();
        }
        if (localArrayList.isEmpty()) {
          return getDefualtMountedStoragePathsWithoutSubFolders();
        }
        return filterSubFolders(localArrayList);
      }
      label138:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.utils.StorageList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */