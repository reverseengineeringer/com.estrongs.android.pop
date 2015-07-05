package com.estrongs.android.appinfo;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.ConditionVariable;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.cm;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.am;
import com.estrongs.android.util.y;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.util.j;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.zip.InflaterInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class AppFolderInfoManager
{
  static AppFolderInfoManager a = new AppFolderInfoManager();
  static ArrayList<n> b = new ArrayList(11);
  static final String m = com.estrongs.android.pop.a.a + "/.app_icon_back";
  static final String n = com.estrongs.android.pop.a.b + "/.folder_logo";
  static final String o = com.estrongs.android.pop.a.b + "/folder_app.db";
  SQLiteDatabase c = null;
  com.estrongs.android.pop.app.imageviewer.gallery.g<String, m> d = new com.estrongs.android.pop.app.imageviewer.gallery.g();
  com.estrongs.android.pop.app.imageviewer.gallery.g<String, com.estrongs.fs.h> e = new com.estrongs.android.pop.app.imageviewer.gallery.g(100);
  android.support.v4.b.c<String, Drawable> f = new a(this, 100);
  m g = new m(0);
  m h = new m(5);
  ReentrantReadWriteLock i = new ReentrantReadWriteLock();
  Lock j = i.readLock();
  Lock k = i.writeLock();
  cm l = new cm(2);
  HashMap<String, List<o>> p = new HashMap();
  int q = 0;
  LinkedList<AppFolderInfoManager.LogoDownloadTask> r = new LinkedList();
  SQLiteDatabase s = null;
  Object t = new Object();
  boolean u = false;
  private boolean v = false;
  
  static
  {
    b.add(new n("/Android", 2130837772, false, false));
    b.add(new n("/dcim", 2130837775, true, false));
    b.add(new n("/download", 2130837776, true, false));
    b.add(new n("/.android_secure", 2130837773, true, false));
    b.add(new n("/Movies", 2130837778, true, false));
    b.add(new n("/Pictures", 2130837780, true, false));
    b.add(new n("/Video", 2130837782, false, false));
    b.add(new n("/Music", 2130837779, false, false));
    b.add(new n("/.estrongs", 2130837777, false, false));
    b.add(new n("/backups", 2130837774, false, false));
    b.add(new n("/Ringtones", 2130837781, false, true));
  }
  
  /* Error */
  private int a(String paramString, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   7: ifnonnull +7 -> 14
    //   10: aload_0
    //   11: invokevirtual 216	com/estrongs/android/appinfo/AppFolderInfoManager:a	()V
    //   14: aload_0
    //   15: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   18: ifnonnull +5 -> 23
    //   21: iload_2
    //   22: ireturn
    //   23: aload_0
    //   24: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   27: invokeinterface 221 1 0
    //   32: aload_0
    //   33: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   36: ldc -33
    //   38: iconst_1
    //   39: anewarray 225	java/lang/String
    //   42: dup
    //   43: iconst_0
    //   44: ldc -29
    //   46: aastore
    //   47: ldc -27
    //   49: iconst_1
    //   50: anewarray 225	java/lang/String
    //   53: dup
    //   54: iconst_0
    //   55: aload_1
    //   56: aastore
    //   57: aconst_null
    //   58: aconst_null
    //   59: aconst_null
    //   60: invokevirtual 235	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   63: astore_1
    //   64: aload_1
    //   65: astore 4
    //   67: iload_2
    //   68: istore_3
    //   69: aload 4
    //   71: ifnull +30 -> 101
    //   74: iload_2
    //   75: istore_3
    //   76: aload 4
    //   78: astore_1
    //   79: aload 4
    //   81: invokeinterface 241 1 0
    //   86: ifeq +15 -> 101
    //   89: aload 4
    //   91: astore_1
    //   92: aload 4
    //   94: iconst_0
    //   95: invokeinterface 245 2 0
    //   100: istore_3
    //   101: aload 4
    //   103: ifnull +10 -> 113
    //   106: aload 4
    //   108: invokeinterface 248 1 0
    //   113: aload_0
    //   114: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   117: invokeinterface 251 1 0
    //   122: iload_3
    //   123: ireturn
    //   124: astore 5
    //   126: aconst_null
    //   127: astore 4
    //   129: aload 4
    //   131: astore_1
    //   132: aload 5
    //   134: invokevirtual 254	java/lang/Exception:printStackTrace	()V
    //   137: aload 4
    //   139: ifnull +10 -> 149
    //   142: aload 4
    //   144: invokeinterface 248 1 0
    //   149: aload_0
    //   150: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   153: invokeinterface 251 1 0
    //   158: iload_2
    //   159: ireturn
    //   160: astore_1
    //   161: aload 4
    //   163: ifnull +10 -> 173
    //   166: aload 4
    //   168: invokeinterface 248 1 0
    //   173: aload_0
    //   174: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   177: invokeinterface 251 1 0
    //   182: aload_1
    //   183: athrow
    //   184: astore 5
    //   186: aload_1
    //   187: astore 4
    //   189: aload 5
    //   191: astore_1
    //   192: goto -31 -> 161
    //   195: astore 5
    //   197: goto -68 -> 129
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	200	0	this	AppFolderInfoManager
    //   0	200	1	paramString	String
    //   0	200	2	paramInt	int
    //   68	55	3	i1	int
    //   1	187	4	str	String
    //   124	9	5	localException1	Exception
    //   184	6	5	localObject	Object
    //   195	1	5	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   32	64	124	java/lang/Exception
    //   32	64	160	finally
    //   79	89	184	finally
    //   92	101	184	finally
    //   132	137	184	finally
    //   79	89	195	java/lang/Exception
    //   92	101	195	java/lang/Exception
  }
  
  private String a(PackageInfo paramPackageInfo)
  {
    return m + "/ver/" + packageName + "_" + versionCode;
  }
  
  private String a(File paramFile)
  {
    try
    {
      int i1 = Long.valueOf(paramFile.length()).intValue();
      localObject = new byte[i1];
      paramFile = new RandomAccessFile(paramFile, "r");
      paramFile.read((byte[])localObject, 0, i1);
      paramFile.close();
      paramFile = new ByteArrayOutputStream();
      localObject = new InflaterInputStream(new ByteArrayInputStream((byte[])localObject));
      byte[] arrayOfByte = new byte['Ѐ'];
      for (;;)
      {
        i1 = ((InflaterInputStream)localObject).read(arrayOfByte, 0, 1024);
        if (i1 <= 0) {
          break;
        }
        paramFile.write(arrayOfByte, 0, i1);
      }
      ((InflaterInputStream)localObject).close();
    }
    catch (Exception paramFile)
    {
      paramFile.printStackTrace();
      return null;
    }
    Object localObject = new String(paramFile.toByteArray());
    paramFile.close();
    return (String)localObject;
  }
  
  private void a(int paramInt)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ("" + paramInt);
    Cursor localCursor = c.query("app_folder_map", new String[] { "folder, package_name" }, "id=?", arrayOfString, null, null, null);
    String str;
    if (localCursor != null) {
      if (localCursor.moveToNext())
      {
        str = localCursor.getString(0);
        localObject1 = localCursor.getString(1);
        localCursor.close();
      }
    }
    for (;;)
    {
      a(str, (String)localObject1, false);
      c.delete("app_folder_map", "id=?", arrayOfString);
      return;
      str = null;
      break;
      str = null;
      localObject1 = localObject2;
    }
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("folder", Integer.valueOf(paramInt1));
    localContentValues.put("package", Integer.valueOf(paramInt2));
    if (paramBoolean) {}
    for (String str = "1";; str = "0")
    {
      localContentValues.put("user_define", str);
      localContentValues.put("deep", Integer.valueOf(paramInt3));
      c.insert("folder_package_match_table", null, localContentValues);
      return;
    }
  }
  
  private void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    String str2 = "" + paramInt1;
    String str3 = "" + paramInt2;
    if (paramBoolean) {}
    for (String str1 = "1";; str1 = "0")
    {
      c.delete("folder_package_match_table", "folder=? and package=? and user_define=?", new String[] { str2, str3, str1 });
      return;
    }
  }
  
  private void a(int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3, int paramInt4)
  {
    String str1 = "" + paramInt1;
    Cursor localCursor = c.query("app_folder_map", new String[] { "folder, package_name" }, "id=?", new String[] { str1 }, null, null, null);
    String str2;
    if (localCursor != null) {
      if (localCursor.moveToNext())
      {
        str2 = localCursor.getString(0);
        str1 = localCursor.getString(1);
        localCursor.close();
      }
    }
    for (;;)
    {
      a(str2, str1, false);
      c.execSQL("INSERT OR REPLACE INTO app_folder_map (id,folder,package_name,version,select_rate) VALUES(?,?,?,?,?)", new Object[] { Integer.valueOf(paramInt1), paramString1, paramString2, Integer.valueOf(paramInt2), Integer.valueOf(paramInt4) });
      b(paramString1, paramString2, false);
      return;
      str1 = null;
      str2 = null;
      break;
      str1 = null;
      str2 = null;
    }
  }
  
  private void a(PackageManager paramPackageManager, PackageInfo paramPackageInfo)
  {
    if ((paramPackageManager == null) || (paramPackageInfo == null) || (b(paramPackageInfo)) || (!j.n(m))) {}
    String str;
    Drawable localDrawable1;
    do
    {
      return;
      str = a(packageName);
      Drawable localDrawable2 = paramPackageManager.getApplicationIcon(applicationInfo);
      localDrawable1 = localDrawable2;
      if (localDrawable2 == null) {
        localDrawable1 = applicationInfo.loadIcon(paramPackageManager);
      }
    } while (!(localDrawable1 instanceof BitmapDrawable));
    com.estrongs.android.util.b.a(((BitmapDrawable)localDrawable1).getBitmap(), str, Bitmap.CompressFormat.PNG, 100);
    c(paramPackageInfo);
  }
  
  private void a(t paramt)
  {
    int i1 = paramt.a();
    Object localObject = "http://www.estrongs.com/console/service/app_folder?v=" + i1 + "&t=" + paramt.b();
    String str1 = com.estrongs.android.pop.a.b + "/tmp/folder_app_update";
    String str2 = str1 + ".tmp";
    if (!j.n(com.estrongs.android.pop.a.b + "/tmp"))
    {
      paramt.c();
      return;
    }
    localObject = new y((String)localObject);
    ((y)localObject).a(str2);
    ((y)localObject).a(new h(this, str2, str1, paramt));
    ((y)localObject).c();
  }
  
  private void a(String paramString1, String paramString2)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    Cursor localCursor = c.query("app_folder_map_user", new String[] { "package_name" }, "folder=?", new String[] { paramString1 }, null, null, null);
    if (localCursor != null)
    {
      localObject1 = localObject2;
      if (localCursor.moveToNext()) {
        localObject1 = localCursor.getString(0);
      }
      localCursor.close();
    }
    a(paramString1, (String)localObject1, true);
    if (paramString2 != null) {}
    for (localObject1 = paramString2;; localObject1 = "-")
    {
      c.execSQL("INSERT OR REPLACE INTO app_folder_map_user (folder,package_name) VALUES(?,?)", new Object[] { paramString1, localObject1 });
      b(paramString1, paramString2, true);
      return;
    }
  }
  
  private void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    int i3;
    if ((paramString1 != null) && (paramString2 != null) && (paramString1.startsWith("/")))
    {
      String str = paramString2;
      if (paramString2.endsWith("/")) {
        str = paramString2.substring(0, paramString2.length() - 1);
      }
      i3 = o(str);
      if (i3 != -1) {
        break label59;
      }
    }
    for (;;)
    {
      return;
      label59:
      int i1 = 0;
      while (i1 != -1)
      {
        int i2 = paramString1.indexOf("/", i1 + 1);
        i1 = i2;
        if (i2 != -1)
        {
          int i4 = n(paramString1.substring(0, i2));
          i1 = i2;
          if (i4 != -1)
          {
            a(i4, i3, paramBoolean);
            i1 = i2;
          }
        }
      }
    }
  }
  
  private boolean a(PackageManager paramPackageManager, Collection<String> paramCollection, String paramString)
  {
    paramCollection = paramCollection.iterator();
    for (;;)
    {
      Object localObject;
      if (paramCollection.hasNext())
      {
        localObject = (String)paramCollection.next();
        if (((String)localObject).equals(paramString)) {
          continue;
        }
        if (((String)localObject).equals("-")) {
          return true;
        }
      }
      try
      {
        localObject = paramPackageManager.getPackageInfo((String)localObject, 0);
        if (localObject == null) {
          continue;
        }
        return true;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
      return false;
    }
  }
  
  private static boolean a(InputStream paramInputStream, String paramString)
  {
    ZipInputStream localZipInputStream;
    for (;;)
    {
      try
      {
        localZipInputStream = new ZipInputStream(paramInputStream);
        paramInputStream = localZipInputStream.getNextEntry();
        if (paramInputStream == null) {
          break label185;
        }
        new File(paramString).mkdir();
        if (!paramInputStream.isDirectory()) {
          continue;
        }
        paramInputStream = paramInputStream.getName();
        paramInputStream = paramInputStream.substring(0, paramInputStream.length() - 1);
        new File(paramString + File.separator + paramInputStream).mkdir();
      }
      catch (FileNotFoundException paramInputStream)
      {
        paramInputStream.printStackTrace();
        return false;
        paramInputStream.close();
        continue;
      }
      catch (IOException paramInputStream)
      {
        paramInputStream.printStackTrace();
        return false;
      }
      paramInputStream = localZipInputStream.getNextEntry();
    }
    paramInputStream = new File(paramString + File.separator + paramInputStream.getName());
    paramInputStream.createNewFile();
    paramInputStream = new FileOutputStream(paramInputStream);
    for (;;)
    {
      int i1 = localZipInputStream.read();
      if (i1 == -1) {
        break;
      }
      paramInputStream.write(i1);
    }
    label185:
    localZipInputStream.close();
    return true;
  }
  
  private static int b(BitmapFactory.Options paramOptions, int paramInt)
  {
    int i4 = outWidth;
    int i3 = outHeight;
    int i2 = Math.max(i4 / paramInt, i3 / paramInt);
    if (i2 <= 1) {}
    do
    {
      return 1;
      int i1 = i2;
      if (i2 > 1)
      {
        i1 = i2;
        if (i4 > paramInt)
        {
          i1 = i2;
          if (i4 / i2 < paramInt) {
            i1 = i2 - 1;
          }
        }
      }
      i2 = i1;
      if (i1 > 1)
      {
        i2 = i1;
        if (i3 > paramInt)
        {
          i2 = i1;
          if (i3 / i1 < paramInt) {
            i2 = i1 - 1;
          }
        }
      }
    } while (i2 <= 1);
    return i2;
  }
  
  /* Error */
  private int b(String paramString, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_0
    //   4: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   7: ldc -33
    //   9: iconst_1
    //   10: anewarray 225	java/lang/String
    //   13: dup
    //   14: iconst_0
    //   15: ldc -29
    //   17: aastore
    //   18: ldc -27
    //   20: iconst_1
    //   21: anewarray 225	java/lang/String
    //   24: dup
    //   25: iconst_0
    //   26: aload_1
    //   27: aastore
    //   28: aconst_null
    //   29: aconst_null
    //   30: aconst_null
    //   31: invokevirtual 235	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   34: astore_1
    //   35: aload_1
    //   36: astore 5
    //   38: iload_2
    //   39: istore_3
    //   40: aload 5
    //   42: ifnull +30 -> 72
    //   45: iload_2
    //   46: istore_3
    //   47: aload 5
    //   49: astore_1
    //   50: aload 5
    //   52: invokeinterface 241 1 0
    //   57: ifeq +15 -> 72
    //   60: aload 5
    //   62: astore_1
    //   63: aload 5
    //   65: iconst_0
    //   66: invokeinterface 245 2 0
    //   71: istore_3
    //   72: iload_3
    //   73: istore 4
    //   75: aload 5
    //   77: ifnull +13 -> 90
    //   80: aload 5
    //   82: invokeinterface 248 1 0
    //   87: iload_3
    //   88: istore 4
    //   90: iload 4
    //   92: ireturn
    //   93: astore 6
    //   95: aconst_null
    //   96: astore 5
    //   98: aload 5
    //   100: astore_1
    //   101: aload 6
    //   103: invokevirtual 254	java/lang/Exception:printStackTrace	()V
    //   106: iload_2
    //   107: istore 4
    //   109: aload 5
    //   111: ifnull -21 -> 90
    //   114: aload 5
    //   116: invokeinterface 248 1 0
    //   121: iload_2
    //   122: ireturn
    //   123: astore_1
    //   124: aload 5
    //   126: ifnull +10 -> 136
    //   129: aload 5
    //   131: invokeinterface 248 1 0
    //   136: aload_1
    //   137: athrow
    //   138: astore 6
    //   140: aload_1
    //   141: astore 5
    //   143: aload 6
    //   145: astore_1
    //   146: goto -22 -> 124
    //   149: astore 6
    //   151: goto -53 -> 98
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	154	0	this	AppFolderInfoManager
    //   0	154	1	paramString	String
    //   0	154	2	paramInt	int
    //   39	49	3	i1	int
    //   73	35	4	i2	int
    //   1	141	5	str	String
    //   93	9	6	localException1	Exception
    //   138	6	6	localObject	Object
    //   149	1	6	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   3	35	93	java/lang/Exception
    //   3	35	123	finally
    //   50	60	138	finally
    //   63	72	138	finally
    //   101	106	138	finally
    //   50	60	149	java/lang/Exception
    //   63	72	149	java/lang/Exception
  }
  
  private void b(String paramString1, String paramString2, boolean paramBoolean)
  {
    int i1;
    int i2;
    int i3;
    int i4;
    if ((paramString1 != null) && (paramString2 != null) && (paramString1.startsWith("/")))
    {
      String str = paramString2;
      if (paramString2.endsWith("/")) {
        str = paramString2.substring(0, paramString2.length() - 1);
      }
      i1 = o(str);
      i2 = i1;
      if (i1 == -1) {
        i2 = q(str);
      }
      i1 = 0;
      i3 = 0;
      while (i1 != -1)
      {
        i1 = paramString1.indexOf("/", i1 + 1);
        i3 += 1;
      }
      i1 = 0;
      i4 = 0;
    }
    for (;;)
    {
      int i5;
      if (i4 != -1)
      {
        i1 += 1;
        i5 = paramString1.indexOf("/", i4 + 1);
        if (i5 == -1) {
          break label203;
        }
        paramString2 = paramString1.substring(0, i5);
        if (!m(paramString2)) {}
      }
      else
      {
        return;
      }
      int i6 = n(paramString2);
      i4 = i6;
      if (i6 == -1) {
        i4 = p(paramString2);
      }
      a(i4, i2, i3 - i1, paramBoolean);
      i4 = i5;
      continue;
      label203:
      i4 = i5;
    }
  }
  
  private boolean b(PackageInfo paramPackageInfo)
  {
    String str = a(paramPackageInfo);
    paramPackageInfo = a(packageName);
    return (new File(str).exists()) && (new File(paramPackageInfo).exists());
  }
  
  private void c(PackageInfo paramPackageInfo)
  {
    paramPackageInfo = new File(a(paramPackageInfo));
    j.n(paramPackageInfo.getParent());
    try
    {
      paramPackageInfo.createNewFile();
      return;
    }
    catch (IOException paramPackageInfo)
    {
      paramPackageInfo.printStackTrace();
    }
  }
  
  private void c(String paramString, int paramInt)
  {
    s.execSQL("INSERT OR REPLACE INTO config(key,value) VALUES(?,?)", new Object[] { paramString, Integer.valueOf(paramInt) });
  }
  
  public static AppFolderInfoManager d()
  {
    return a;
  }
  
  private String d(com.estrongs.fs.h paramh)
  {
    for (;;)
    {
      try
      {
        String str2 = am.bD(paramh.getAbsolutePath());
        if (str2 == null) {
          return null;
        }
        paramh = am.bE(paramh.getAbsolutePath());
        if (am.bW(paramh))
        {
          String str1 = am.bS(paramh);
          if (str1 != null)
          {
            paramh = str1;
            if (str2.endsWith("/")) {
              return "/" + paramh.substring(str2.length());
            }
            paramh = paramh.substring(str2.length());
            return paramh;
          }
        }
      }
      catch (Exception paramh)
      {
        return null;
      }
    }
  }
  
  private int e()
  {
    return a("app_folder_map_version", 100000000);
  }
  
  /* Error */
  private void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   4: ifnull +4 -> 8
    //   7: return
    //   8: new 105	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 106	java/lang/StringBuilder:<init>	()V
    //   15: getstatic 110	com/estrongs/android/pop/a:a	Ljava/lang/String;
    //   18: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: ldc_w 653
    //   24: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   30: astore_1
    //   31: new 276	java/io/File
    //   34: dup
    //   35: aload_1
    //   36: invokespecial 555	java/io/File:<init>	(Ljava/lang/String;)V
    //   39: invokevirtual 615	java/io/File:exists	()Z
    //   42: ifeq +55 -> 97
    //   45: aload_0
    //   46: aload_1
    //   47: aconst_null
    //   48: iconst_0
    //   49: invokestatic 657	android/database/sqlite/SQLiteDatabase:openDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    //   52: putfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   55: aload_0
    //   56: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   59: ldc_w 659
    //   62: invokevirtual 661	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   65: aload_0
    //   66: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   69: ldc_w 663
    //   72: invokevirtual 661	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   75: return
    //   76: astore_1
    //   77: aload_0
    //   78: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   81: ifnull +10 -> 91
    //   84: aload_0
    //   85: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   88: invokevirtual 664	android/database/sqlite/SQLiteDatabase:close	()V
    //   91: aload_0
    //   92: aconst_null
    //   93: putfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   96: return
    //   97: aload_0
    //   98: aload_1
    //   99: aconst_null
    //   100: invokestatic 668	android/database/sqlite/SQLiteDatabase:openOrCreateDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   103: putfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   106: goto -51 -> 55
    //   109: astore_2
    //   110: new 276	java/io/File
    //   113: dup
    //   114: aload_1
    //   115: invokespecial 555	java/io/File:<init>	(Ljava/lang/String;)V
    //   118: astore_2
    //   119: aload_2
    //   120: invokevirtual 615	java/io/File:exists	()Z
    //   123: ifeq +8 -> 131
    //   126: aload_2
    //   127: invokevirtual 670	java/io/File:delete	()Z
    //   130: pop
    //   131: aload_0
    //   132: aload_1
    //   133: aconst_null
    //   134: invokestatic 668	android/database/sqlite/SQLiteDatabase:openOrCreateDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   137: putfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   140: goto -85 -> 55
    //   143: astore_1
    //   144: goto -53 -> 91
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	147	0	this	AppFolderInfoManager
    //   30	17	1	str	String
    //   76	57	1	localThrowable1	Throwable
    //   143	1	1	localThrowable2	Throwable
    //   109	1	2	localThrowable3	Throwable
    //   118	9	2	localFile	File
    // Exception table:
    //   from	to	target	type
    //   8	31	76	java/lang/Throwable
    //   55	75	76	java/lang/Throwable
    //   110	131	76	java/lang/Throwable
    //   131	140	76	java/lang/Throwable
    //   31	55	109	java/lang/Throwable
    //   97	106	109	java/lang/Throwable
    //   84	91	143	java/lang/Throwable
  }
  
  /* Error */
  private void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 198	com/estrongs/android/appinfo/AppFolderInfoManager:t	Ljava/lang/Object;
    //   4: astore_3
    //   5: aload_3
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   11: ifnonnull +7 -> 18
    //   14: aload_0
    //   15: invokespecial 602	com/estrongs/android/appinfo/AppFolderInfoManager:f	()V
    //   18: aload_0
    //   19: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   22: astore 4
    //   24: aload 4
    //   26: ifnonnull +66 -> 92
    //   29: aload_0
    //   30: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   33: ifnull +22 -> 55
    //   36: aload_0
    //   37: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   40: invokevirtual 673	android/database/sqlite/SQLiteDatabase:inTransaction	()Z
    //   43: istore_2
    //   44: iload_2
    //   45: ifeq +10 -> 55
    //   48: aload_0
    //   49: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   52: invokevirtual 676	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   55: aload_3
    //   56: monitorexit
    //   57: return
    //   58: astore 4
    //   60: aload_0
    //   61: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   64: invokevirtual 664	android/database/sqlite/SQLiteDatabase:close	()V
    //   67: aload_0
    //   68: aconst_null
    //   69: putfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   72: goto -17 -> 55
    //   75: astore 4
    //   77: aload_3
    //   78: monitorexit
    //   79: aload 4
    //   81: athrow
    //   82: astore 4
    //   84: aload_0
    //   85: aconst_null
    //   86: putfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   89: aload 4
    //   91: athrow
    //   92: aload_0
    //   93: ldc_w 678
    //   96: iconst_0
    //   97: invokespecial 680	com/estrongs/android/appinfo/AppFolderInfoManager:b	(Ljava/lang/String;I)I
    //   100: istore_1
    //   101: iload_1
    //   102: iconst_1
    //   103: if_icmpne +59 -> 162
    //   106: aload_0
    //   107: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   110: ifnull +22 -> 132
    //   113: aload_0
    //   114: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   117: invokevirtual 673	android/database/sqlite/SQLiteDatabase:inTransaction	()Z
    //   120: istore_2
    //   121: iload_2
    //   122: ifeq +10 -> 132
    //   125: aload_0
    //   126: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   129: invokevirtual 676	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   132: aload_3
    //   133: monitorexit
    //   134: return
    //   135: astore 4
    //   137: aload_0
    //   138: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   141: invokevirtual 664	android/database/sqlite/SQLiteDatabase:close	()V
    //   144: aload_0
    //   145: aconst_null
    //   146: putfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   149: goto -17 -> 132
    //   152: astore 4
    //   154: aload_0
    //   155: aconst_null
    //   156: putfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   159: aload 4
    //   161: athrow
    //   162: new 347	android/content/ContentValues
    //   165: dup
    //   166: invokespecial 348	android/content/ContentValues:<init>	()V
    //   169: astore 4
    //   171: invokestatic 685	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   174: invokevirtual 689	com/estrongs/android/pop/FexApplication:getPackageManager	()Landroid/content/pm/PackageManager;
    //   177: astore 5
    //   179: aload 5
    //   181: sipush 8192
    //   184: invokevirtual 693	android/content/pm/PackageManager:getInstalledApplications	(I)Ljava/util/List;
    //   187: astore 6
    //   189: aload_0
    //   190: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   193: invokevirtual 696	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   196: aload 6
    //   198: invokeinterface 699 1 0
    //   203: astore 6
    //   205: aload 6
    //   207: invokeinterface 529 1 0
    //   212: ifeq +122 -> 334
    //   215: aload 6
    //   217: invokeinterface 533 1 0
    //   222: checkcast 414	android/content/pm/ApplicationInfo
    //   225: astore 7
    //   227: aload 7
    //   229: getfield 702	android/content/pm/ApplicationInfo:flags	I
    //   232: iconst_1
    //   233: iand
    //   234: ifgt -29 -> 205
    //   237: aload 5
    //   239: aload 5
    //   241: aload 7
    //   243: getfield 703	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   246: iconst_0
    //   247: invokevirtual 707	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   250: invokevirtual 711	android/content/pm/PackageManager:getApplicationLabel	(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    //   253: invokevirtual 712	java/lang/Object:toString	()Ljava/lang/String;
    //   256: astore 8
    //   258: aload 4
    //   260: invokevirtual 715	android/content/ContentValues:clear	()V
    //   263: aload 4
    //   265: ldc_w 361
    //   268: aload 7
    //   270: getfield 703	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   273: invokevirtual 368	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   276: aload 4
    //   278: ldc_w 717
    //   281: aload 8
    //   283: invokevirtual 368	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   286: aload_0
    //   287: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   290: ldc_w 719
    //   293: aconst_null
    //   294: aload 4
    //   296: invokevirtual 376	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   299: pop2
    //   300: goto -95 -> 205
    //   303: astore 4
    //   305: aload_0
    //   306: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   309: ifnull +22 -> 331
    //   312: aload_0
    //   313: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   316: invokevirtual 673	android/database/sqlite/SQLiteDatabase:inTransaction	()Z
    //   319: istore_2
    //   320: iload_2
    //   321: ifeq +10 -> 331
    //   324: aload_0
    //   325: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   328: invokevirtual 676	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   331: aload_3
    //   332: monitorexit
    //   333: return
    //   334: aload_0
    //   335: ldc_w 678
    //   338: iconst_1
    //   339: invokespecial 721	com/estrongs/android/appinfo/AppFolderInfoManager:c	(Ljava/lang/String;I)V
    //   342: aload_0
    //   343: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   346: invokevirtual 724	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   349: aload_0
    //   350: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   353: ifnull -22 -> 331
    //   356: aload_0
    //   357: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   360: invokevirtual 673	android/database/sqlite/SQLiteDatabase:inTransaction	()Z
    //   363: istore_2
    //   364: iload_2
    //   365: ifeq -34 -> 331
    //   368: aload_0
    //   369: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   372: invokevirtual 676	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   375: goto -44 -> 331
    //   378: astore 4
    //   380: aload_0
    //   381: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   384: invokevirtual 664	android/database/sqlite/SQLiteDatabase:close	()V
    //   387: aload_0
    //   388: aconst_null
    //   389: putfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   392: goto -61 -> 331
    //   395: astore 4
    //   397: aload_0
    //   398: aconst_null
    //   399: putfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   402: aload 4
    //   404: athrow
    //   405: astore 4
    //   407: aload_0
    //   408: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   411: invokevirtual 664	android/database/sqlite/SQLiteDatabase:close	()V
    //   414: aload_0
    //   415: aconst_null
    //   416: putfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   419: goto -88 -> 331
    //   422: astore 4
    //   424: aload_0
    //   425: aconst_null
    //   426: putfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   429: aload 4
    //   431: athrow
    //   432: astore 4
    //   434: aload_0
    //   435: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   438: ifnull +22 -> 460
    //   441: aload_0
    //   442: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   445: invokevirtual 673	android/database/sqlite/SQLiteDatabase:inTransaction	()Z
    //   448: istore_2
    //   449: iload_2
    //   450: ifeq +10 -> 460
    //   453: aload_0
    //   454: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   457: invokevirtual 676	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   460: aload 4
    //   462: athrow
    //   463: astore 5
    //   465: aload_0
    //   466: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   469: invokevirtual 664	android/database/sqlite/SQLiteDatabase:close	()V
    //   472: aload_0
    //   473: aconst_null
    //   474: putfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   477: goto -17 -> 460
    //   480: astore 4
    //   482: aload_0
    //   483: aconst_null
    //   484: putfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   487: aload 4
    //   489: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	490	0	this	AppFolderInfoManager
    //   100	4	1	i1	int
    //   43	407	2	bool	boolean
    //   4	328	3	localObject1	Object
    //   22	3	4	localSQLiteDatabase	SQLiteDatabase
    //   58	1	4	localException1	Exception
    //   75	5	4	localObject2	Object
    //   82	8	4	localObject3	Object
    //   135	1	4	localException2	Exception
    //   152	8	4	localObject4	Object
    //   169	126	4	localContentValues	ContentValues
    //   303	1	4	localException3	Exception
    //   378	1	4	localException4	Exception
    //   395	8	4	localObject5	Object
    //   405	1	4	localException5	Exception
    //   422	8	4	localObject6	Object
    //   432	29	4	localObject7	Object
    //   480	8	4	localObject8	Object
    //   177	63	5	localPackageManager	PackageManager
    //   463	1	5	localException6	Exception
    //   187	29	6	localObject9	Object
    //   225	44	7	localApplicationInfo	ApplicationInfo
    //   256	26	8	str	String
    // Exception table:
    //   from	to	target	type
    //   48	55	58	java/lang/Exception
    //   29	44	75	finally
    //   48	55	75	finally
    //   55	57	75	finally
    //   67	72	75	finally
    //   77	79	75	finally
    //   84	92	75	finally
    //   106	121	75	finally
    //   125	132	75	finally
    //   132	134	75	finally
    //   144	149	75	finally
    //   154	162	75	finally
    //   305	320	75	finally
    //   324	331	75	finally
    //   331	333	75	finally
    //   349	364	75	finally
    //   368	375	75	finally
    //   387	392	75	finally
    //   397	405	75	finally
    //   414	419	75	finally
    //   424	432	75	finally
    //   434	449	75	finally
    //   453	460	75	finally
    //   460	463	75	finally
    //   472	477	75	finally
    //   482	490	75	finally
    //   60	67	82	finally
    //   125	132	135	java/lang/Exception
    //   137	144	152	finally
    //   7	18	303	java/lang/Exception
    //   18	24	303	java/lang/Exception
    //   92	101	303	java/lang/Exception
    //   162	205	303	java/lang/Exception
    //   205	300	303	java/lang/Exception
    //   334	349	303	java/lang/Exception
    //   368	375	378	java/lang/Exception
    //   380	387	395	finally
    //   324	331	405	java/lang/Exception
    //   407	414	422	finally
    //   7	18	432	finally
    //   18	24	432	finally
    //   92	101	432	finally
    //   162	205	432	finally
    //   205	300	432	finally
    //   334	349	432	finally
    //   453	460	463	java/lang/Exception
    //   465	472	480	finally
  }
  
  private void h()
  {
    int i1 = 0;
    Object localObject1;
    if ((!u) && (Build.VERSION.SDK_INT == 21))
    {
      localObject1 = FexApplication.a().getSharedPreferences("app_folder", 0);
      if (((SharedPreferences)localObject1).getBoolean("logo_repaired", false)) {}
    }
    try
    {
      Object localObject2 = agetApplicationInfopackageName;
      int i2 = agetPackageManagergetPackageInfo0versionCode;
      if ((i2 >= 222) && (i2 <= 225))
      {
        localObject2 = new File(n);
        if ((((File)localObject2).exists()) && (((File)localObject2).isDirectory()))
        {
          localObject2 = ((File)localObject2).listFiles();
          if (localObject2 != null)
          {
            i2 = localObject2.length;
            while (i1 < i2)
            {
              localObject2[i1].delete();
              i1 += 1;
            }
          }
        }
        localObject1 = ((SharedPreferences)localObject1).edit();
        ((SharedPreferences.Editor)localObject1).putBoolean("logo_repaired", true);
        ((SharedPreferences.Editor)localObject1).commit();
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    u = true;
  }
  
  private n i(String paramString)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      n localn = (n)localIterator.next();
      if (!d)
      {
        if (a.equals(paramString)) {
          return localn;
        }
      }
      else if (a.equalsIgnoreCase(paramString)) {
        return localn;
      }
    }
    return null;
  }
  
  private final m j(String paramString)
  {
    return (m)d.a(paramString);
  }
  
  private f k(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    com.estrongs.fs.h localh = (com.estrongs.fs.h)e.a(paramString);
    Object localObject = localh;
    if (!(localh instanceof f))
    {
      File localFile = new File(paramString);
      localObject = localh;
      if (localFile.exists())
      {
        localObject = new f(localFile);
        e.a(paramString, localObject);
        ((com.estrongs.fs.h)localObject).putExtra("forece_thumbnail", Boolean.valueOf(true));
      }
    }
    return (f)localObject;
  }
  
  /* Error */
  private int l(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   4: ifnonnull +7 -> 11
    //   7: aload_0
    //   8: invokevirtual 216	com/estrongs/android/appinfo/AppFolderInfoManager:a	()V
    //   11: aload_0
    //   12: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   15: ifnonnull +5 -> 20
    //   18: iconst_0
    //   19: ireturn
    //   20: new 796	org/json/simple/parser/JSONParser
    //   23: dup
    //   24: invokespecial 797	org/json/simple/parser/JSONParser:<init>	()V
    //   27: aload_1
    //   28: invokevirtual 801	org/json/simple/parser/JSONParser:parse	(Ljava/lang/String;)Ljava/lang/Object;
    //   31: astore_1
    //   32: aload_1
    //   33: instanceof 803
    //   36: ifeq +376 -> 412
    //   39: aload_1
    //   40: checkcast 803	org/json/simple/JSONArray
    //   43: invokevirtual 804	org/json/simple/JSONArray:iterator	()Ljava/util/Iterator;
    //   46: astore_1
    //   47: iconst_0
    //   48: istore_2
    //   49: aload_1
    //   50: invokeinterface 529 1 0
    //   55: ifeq +355 -> 410
    //   58: aload_1
    //   59: invokeinterface 533 1 0
    //   64: astore 8
    //   66: aload 8
    //   68: checkcast 806	java/util/Map
    //   71: ldc_w 808
    //   74: invokeinterface 811 2 0
    //   79: checkcast 282	java/lang/Long
    //   82: invokevirtual 289	java/lang/Long:intValue	()I
    //   85: istore_3
    //   86: aload 8
    //   88: checkcast 806	java/util/Map
    //   91: ldc_w 350
    //   94: invokeinterface 811 2 0
    //   99: checkcast 225	java/lang/String
    //   102: astore 7
    //   104: aload 8
    //   106: checkcast 806	java/util/Map
    //   109: ldc_w 486
    //   112: invokeinterface 811 2 0
    //   117: checkcast 225	java/lang/String
    //   120: astore 9
    //   122: aload 8
    //   124: checkcast 806	java/util/Map
    //   127: ldc_w 813
    //   130: invokeinterface 811 2 0
    //   135: checkcast 282	java/lang/Long
    //   138: invokevirtual 289	java/lang/Long:intValue	()I
    //   141: istore 4
    //   143: aload 8
    //   145: checkcast 806	java/util/Map
    //   148: ldc_w 815
    //   151: invokeinterface 811 2 0
    //   156: checkcast 282	java/lang/Long
    //   159: invokevirtual 289	java/lang/Long:intValue	()I
    //   162: istore 5
    //   164: aload 8
    //   166: checkcast 806	java/util/Map
    //   169: ldc_w 817
    //   172: invokeinterface 811 2 0
    //   177: checkcast 282	java/lang/Long
    //   180: invokevirtual 289	java/lang/Long:intValue	()I
    //   183: istore 6
    //   185: aload_0
    //   186: getfield 175	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   189: invokeinterface 221 1 0
    //   194: aload_0
    //   195: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   198: invokevirtual 696	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   201: iload 5
    //   203: iconst_1
    //   204: if_icmpne +99 -> 303
    //   207: aload_0
    //   208: iload_3
    //   209: invokespecial 819	com/estrongs/android/appinfo/AppFolderInfoManager:a	(I)V
    //   212: new 347	android/content/ContentValues
    //   215: dup
    //   216: invokespecial 348	android/content/ContentValues:<init>	()V
    //   219: astore 8
    //   221: aload 8
    //   223: ldc -29
    //   225: iload 4
    //   227: invokestatic 355	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   230: invokevirtual 359	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   233: aload_0
    //   234: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   237: ldc -33
    //   239: aload 8
    //   241: ldc -27
    //   243: iconst_1
    //   244: anewarray 225	java/lang/String
    //   247: dup
    //   248: iconst_0
    //   249: ldc_w 646
    //   252: aastore
    //   253: invokevirtual 823	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   256: pop
    //   257: aload_0
    //   258: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   261: invokevirtual 724	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   264: iload_2
    //   265: iconst_1
    //   266: iadd
    //   267: istore_2
    //   268: aload_0
    //   269: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   272: invokevirtual 676	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   275: aload_0
    //   276: getfield 175	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   279: invokeinterface 251 1 0
    //   284: aload_0
    //   285: getfield 141	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   288: aload 7
    //   290: invokevirtual 826	com/estrongs/android/pop/app/imageviewer/gallery/g:b	(Ljava/lang/Object;)V
    //   293: goto -244 -> 49
    //   296: astore_1
    //   297: aload_1
    //   298: invokevirtual 254	java/lang/Exception:printStackTrace	()V
    //   301: aload_1
    //   302: athrow
    //   303: aload_0
    //   304: iload_3
    //   305: aload 7
    //   307: aload 9
    //   309: iload 4
    //   311: iload 5
    //   313: iload 6
    //   315: invokespecial 828	com/estrongs/android/appinfo/AppFolderInfoManager:a	(ILjava/lang/String;Ljava/lang/String;III)V
    //   318: goto -106 -> 212
    //   321: astore_1
    //   322: aload_0
    //   323: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   326: invokevirtual 676	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   329: aload_0
    //   330: getfield 175	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   333: invokeinterface 251 1 0
    //   338: aload_1
    //   339: athrow
    //   340: astore_1
    //   341: aload_0
    //   342: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   345: invokevirtual 664	android/database/sqlite/SQLiteDatabase:close	()V
    //   348: aload_0
    //   349: aconst_null
    //   350: putfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   353: aload_1
    //   354: athrow
    //   355: astore_1
    //   356: aload_0
    //   357: getfield 175	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   360: invokeinterface 251 1 0
    //   365: aload_1
    //   366: athrow
    //   367: astore_1
    //   368: aload_0
    //   369: aconst_null
    //   370: putfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   373: aload_1
    //   374: athrow
    //   375: astore_1
    //   376: aload_0
    //   377: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   380: invokevirtual 664	android/database/sqlite/SQLiteDatabase:close	()V
    //   383: aload_0
    //   384: aconst_null
    //   385: putfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   388: aload_1
    //   389: athrow
    //   390: astore_1
    //   391: aload_0
    //   392: getfield 175	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   395: invokeinterface 251 1 0
    //   400: aload_1
    //   401: athrow
    //   402: astore_1
    //   403: aload_0
    //   404: aconst_null
    //   405: putfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   408: aload_1
    //   409: athrow
    //   410: iload_2
    //   411: ireturn
    //   412: iconst_0
    //   413: istore_2
    //   414: goto -4 -> 410
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	417	0	this	AppFolderInfoManager
    //   0	417	1	paramString	String
    //   48	366	2	i1	int
    //   85	220	3	i2	int
    //   141	169	4	i3	int
    //   162	150	5	i4	int
    //   183	131	6	i5	int
    //   102	204	7	str1	String
    //   64	176	8	localObject	Object
    //   120	188	9	str2	String
    // Exception table:
    //   from	to	target	type
    //   0	11	296	java/lang/Exception
    //   11	18	296	java/lang/Exception
    //   20	47	296	java/lang/Exception
    //   49	194	296	java/lang/Exception
    //   275	293	296	java/lang/Exception
    //   329	340	296	java/lang/Exception
    //   356	367	296	java/lang/Exception
    //   391	402	296	java/lang/Exception
    //   194	201	321	finally
    //   207	212	321	finally
    //   212	264	321	finally
    //   303	318	321	finally
    //   268	275	340	java/lang/Exception
    //   268	275	355	finally
    //   348	355	355	finally
    //   368	375	355	finally
    //   341	348	367	finally
    //   322	329	375	java/lang/Exception
    //   322	329	390	finally
    //   383	390	390	finally
    //   403	410	390	finally
    //   376	383	402	finally
  }
  
  private boolean m(String paramString)
  {
    return i(paramString) != null;
  }
  
  private int n(String paramString)
  {
    paramString = c.query("folder_table", new String[] { "id" }, "folder=? COLLATE NOCASE", new String[] { paramString }, null, null, null);
    if (paramString != null)
    {
      if (paramString.moveToNext()) {}
      for (int i1 = paramString.getInt(0);; i1 = -1)
      {
        paramString.close();
        return i1;
      }
    }
    return -1;
  }
  
  private int o(String paramString)
  {
    paramString = c.query("package_table", new String[] { "id" }, "package=?", new String[] { paramString }, null, null, null);
    if (paramString != null)
    {
      if (paramString.moveToNext()) {}
      for (int i1 = paramString.getInt(0);; i1 = -1)
      {
        paramString.close();
        return i1;
      }
    }
    return -1;
  }
  
  private int p(String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("folder", paramString);
    return (int)c.insert("folder_table", null, localContentValues);
  }
  
  private int q(String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("package", paramString);
    return (int)c.insert("package_table", null, localContentValues);
  }
  
  public Drawable a(Context paramContext, com.estrongs.fs.h paramh, o paramo)
  {
    if ((!ad.a(paramContext).aE()) || (!paramh.getFileType().a()) || (am.G(paramh.getAbsolutePath()) == 23)) {
      return null;
    }
    return a(paramContext, paramh.getAbsolutePath(), paramo);
  }
  
  public Drawable a(Context paramContext, File paramFile, o paramo)
  {
    if ((!ad.a(paramContext).aE()) || (!paramFile.isDirectory()) || (am.G(paramFile.getAbsolutePath()) == 23)) {
      return null;
    }
    return a(paramContext, paramFile.getAbsolutePath(), paramo);
  }
  
  public Drawable a(Context paramContext, String arg2, o paramo)
  {
    m localm = j(???);
    if ((localm == null) || (b == 0) || (b == 5)) {
      return null;
    }
    if (b == 1) {
      return FexApplication.a().getResources().getDrawable(c);
    }
    f localf = k(a(a));
    if (localf != null)
    {
      paramContext = (Drawable)f.a(localf.getAbsolutePath());
      if (paramContext != null) {
        if (b == 4) {
          com.estrongs.android.util.b.a(paramContext);
        }
      }
    }
    for (;;)
    {
      ??? = paramContext;
      if (paramContext != null) {
        if (b != 3)
        {
          ??? = paramContext;
          if (b != 6) {}
        }
        else
        {
          ??? = new p(paramContext);
          if (b == 6) {
            com.estrongs.android.util.b.a(???);
          }
        }
      }
      return (Drawable)???;
      paramContext.setColorFilter(null);
      continue;
      synchronized (p)
      {
        localObject = (List)p.get(localf.getAbsolutePath());
        if (localObject != null)
        {
          if (paramo != null) {
            ((List)localObject).add(paramo);
          }
          return null;
        }
      }
      Object localObject = new ArrayList();
      if (paramo != null) {
        ((List)localObject).add(paramo);
      }
      p.put(localf.getAbsolutePath(), localObject);
      if ((paramo != null) && (paramo.a()))
      {
        ??? = new ConditionVariable();
        ???.close();
      }
      for (;;)
      {
        l.a(new e(this, localf, ???));
        if (??? == null) {
          break;
        }
        ???.block();
        paramContext = (Drawable)f.a(localf.getAbsolutePath());
        break;
        ??? = null;
      }
      paramContext = null;
    }
  }
  
  public m a(PackageManager paramPackageManager, String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      PackageInfo localPackageInfo = paramPackageManager.getPackageInfo(paramString, 0);
      if (localPackageInfo == null) {
        break label41;
      }
      a(paramPackageManager, localPackageInfo);
      paramPackageManager = new m(paramString, 2);
    }
    catch (PackageManager.NameNotFoundException paramPackageManager)
    {
      for (;;)
      {
        paramPackageManager = null;
        continue;
        paramPackageManager = null;
      }
    }
    return paramPackageManager;
  }
  
  public m a(com.estrongs.fs.h paramh)
  {
    return a(paramh, null);
  }
  
  /* Error */
  public m a(com.estrongs.fs.h paramh, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 851 1 0
    //   6: invokevirtual 855	com/estrongs/fs/m:a	()Z
    //   9: ifne +5 -> 14
    //   12: aconst_null
    //   13: areturn
    //   14: aload_2
    //   15: astore 10
    //   17: aload_2
    //   18: ifnonnull +10 -> 28
    //   21: aload_0
    //   22: aload_1
    //   23: invokespecial 930	com/estrongs/android/appinfo/AppFolderInfoManager:d	(Lcom/estrongs/fs/h;)Ljava/lang/String;
    //   26: astore 10
    //   28: aload 10
    //   30: ifnull -18 -> 12
    //   33: new 189	java/util/LinkedList
    //   36: dup
    //   37: invokespecial 190	java/util/LinkedList:<init>	()V
    //   40: astore 12
    //   42: aconst_null
    //   43: astore_2
    //   44: aconst_null
    //   45: astore 5
    //   47: new 189	java/util/LinkedList
    //   50: dup
    //   51: invokespecial 190	java/util/LinkedList:<init>	()V
    //   54: astore 11
    //   56: iconst_1
    //   57: anewarray 225	java/lang/String
    //   60: astore 13
    //   62: aload 13
    //   64: iconst_0
    //   65: ldc_w 486
    //   68: aastore
    //   69: iconst_1
    //   70: anewarray 225	java/lang/String
    //   73: astore 14
    //   75: aload 14
    //   77: iconst_0
    //   78: aload 10
    //   80: aastore
    //   81: aload_0
    //   82: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   85: ifnull +1133 -> 1218
    //   88: aload_0
    //   89: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   92: invokeinterface 221 1 0
    //   97: aload_0
    //   98: aload 10
    //   100: invokespecial 830	com/estrongs/android/appinfo/AppFolderInfoManager:i	(Ljava/lang/String;)Lcom/estrongs/android/appinfo/n;
    //   103: astore 6
    //   105: aload 6
    //   107: ifnull +55 -> 162
    //   110: new 153	com/estrongs/android/appinfo/m
    //   113: dup
    //   114: aload 6
    //   116: getfield 931	com/estrongs/android/appinfo/n:b	I
    //   119: iconst_1
    //   120: invokespecial 934	com/estrongs/android/appinfo/m:<init>	(II)V
    //   123: astore_2
    //   124: aload_0
    //   125: getfield 141	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   128: aload_1
    //   129: invokeinterface 628 1 0
    //   134: aload_2
    //   135: invokevirtual 783	com/estrongs/android/pop/app/imageviewer/gallery/g:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   138: pop
    //   139: iconst_0
    //   140: ifeq +11 -> 151
    //   143: new 936	java/lang/NullPointerException
    //   146: dup
    //   147: invokespecial 937	java/lang/NullPointerException:<init>	()V
    //   150: athrow
    //   151: aload_0
    //   152: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   155: invokeinterface 251 1 0
    //   160: aload_2
    //   161: areturn
    //   162: aload_0
    //   163: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   166: ldc_w 484
    //   169: aload 13
    //   171: ldc_w 834
    //   174: aload 14
    //   176: aconst_null
    //   177: aconst_null
    //   178: aconst_null
    //   179: invokevirtual 235	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   182: astore 7
    //   184: aload 7
    //   186: ifnull +1025 -> 1211
    //   189: aload 5
    //   191: astore_2
    //   192: aload 7
    //   194: astore 5
    //   196: aload_2
    //   197: astore 9
    //   199: aload 7
    //   201: astore 6
    //   203: aload 7
    //   205: invokeinterface 241 1 0
    //   210: ifeq +113 -> 323
    //   213: aload 7
    //   215: astore 5
    //   217: aload_2
    //   218: astore 9
    //   220: aload 7
    //   222: astore 6
    //   224: aload 7
    //   226: iconst_0
    //   227: invokeinterface 337 2 0
    //   232: astore 8
    //   234: aload 7
    //   236: astore 5
    //   238: aload_2
    //   239: astore 9
    //   241: aload 7
    //   243: astore 6
    //   245: aload 8
    //   247: ldc_w 492
    //   250: invokevirtual 536	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   253: ifeq +64 -> 317
    //   256: aload 7
    //   258: astore 5
    //   260: aload_2
    //   261: astore 9
    //   263: aload 7
    //   265: astore 6
    //   267: aload_0
    //   268: getfield 156	com/estrongs/android/appinfo/AppFolderInfoManager:g	Lcom/estrongs/android/appinfo/m;
    //   271: astore 10
    //   273: aload 7
    //   275: astore 6
    //   277: aload_0
    //   278: getfield 141	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   281: aload_1
    //   282: invokeinterface 628 1 0
    //   287: aload 10
    //   289: invokevirtual 783	com/estrongs/android/pop/app/imageviewer/gallery/g:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   292: pop
    //   293: aload 7
    //   295: ifnull +10 -> 305
    //   298: aload 7
    //   300: invokeinterface 248 1 0
    //   305: aload_0
    //   306: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   309: invokeinterface 251 1 0
    //   314: aload 10
    //   316: areturn
    //   317: aload 8
    //   319: astore_2
    //   320: goto -128 -> 192
    //   323: aload 7
    //   325: astore 5
    //   327: aload_2
    //   328: astore 9
    //   330: aload 7
    //   332: astore 6
    //   334: aload 7
    //   336: invokeinterface 248 1 0
    //   341: aconst_null
    //   342: astore 5
    //   344: aload_0
    //   345: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   348: ldc_w 329
    //   351: aload 13
    //   353: ldc_w 834
    //   356: aload 14
    //   358: aconst_null
    //   359: aconst_null
    //   360: ldc_w 939
    //   363: invokevirtual 235	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   366: astore 8
    //   368: aload 8
    //   370: astore 7
    //   372: aload 8
    //   374: ifnull +178 -> 552
    //   377: aload 8
    //   379: astore 5
    //   381: aload_2
    //   382: astore 9
    //   384: aload 8
    //   386: astore 6
    //   388: aload 8
    //   390: invokeinterface 241 1 0
    //   395: ifeq +136 -> 531
    //   398: aload 8
    //   400: astore 5
    //   402: aload_2
    //   403: astore 9
    //   405: aload 8
    //   407: astore 6
    //   409: aload 12
    //   411: aload 8
    //   413: iconst_0
    //   414: invokeinterface 337 2 0
    //   419: invokeinterface 900 2 0
    //   424: pop
    //   425: goto -48 -> 377
    //   428: astore 7
    //   430: aload 9
    //   432: astore_2
    //   433: aconst_null
    //   434: astore 8
    //   436: aload 5
    //   438: astore 6
    //   440: aload 8
    //   442: astore 5
    //   444: aload 7
    //   446: invokevirtual 254	java/lang/Exception:printStackTrace	()V
    //   449: aload 6
    //   451: ifnull +10 -> 461
    //   454: aload 6
    //   456: invokeinterface 248 1 0
    //   461: aload_0
    //   462: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   465: invokeinterface 251 1 0
    //   470: aload_2
    //   471: astore 6
    //   473: aload 5
    //   475: astore_2
    //   476: aload 12
    //   478: invokeinterface 942 1 0
    //   483: istore 4
    //   485: aload 6
    //   487: ifnonnull +291 -> 778
    //   490: iconst_0
    //   491: istore_3
    //   492: iload_3
    //   493: iload 4
    //   495: iadd
    //   496: aload 11
    //   498: invokeinterface 942 1 0
    //   503: iadd
    //   504: ifne +279 -> 783
    //   507: aload_0
    //   508: getfield 156	com/estrongs/android/appinfo/AppFolderInfoManager:g	Lcom/estrongs/android/appinfo/m;
    //   511: astore_2
    //   512: aload_0
    //   513: getfield 141	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   516: aload_1
    //   517: invokeinterface 628 1 0
    //   522: aload_2
    //   523: invokevirtual 783	com/estrongs/android/pop/app/imageviewer/gallery/g:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   526: pop
    //   527: aload_2
    //   528: astore_1
    //   529: aload_1
    //   530: areturn
    //   531: aload 8
    //   533: astore 5
    //   535: aload_2
    //   536: astore 9
    //   538: aload 8
    //   540: astore 6
    //   542: aload 8
    //   544: invokeinterface 248 1 0
    //   549: aconst_null
    //   550: astore 7
    //   552: aload 7
    //   554: astore 5
    //   556: aload_2
    //   557: astore 9
    //   559: aload 7
    //   561: astore 6
    //   563: aload_0
    //   564: aload 10
    //   566: invokespecial 513	com/estrongs/android/appinfo/AppFolderInfoManager:n	(Ljava/lang/String;)I
    //   569: istore_3
    //   570: aload 7
    //   572: astore 5
    //   574: iload_3
    //   575: iconst_m1
    //   576: if_icmpeq +173 -> 749
    //   579: aload 7
    //   581: astore 5
    //   583: aload_2
    //   584: astore 9
    //   586: aload 7
    //   588: astore 6
    //   590: new 105	java/lang/StringBuilder
    //   593: dup
    //   594: invokespecial 106	java/lang/StringBuilder:<init>	()V
    //   597: ldc_w 327
    //   600: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   603: iload_3
    //   604: invokevirtual 270	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   607: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   610: astore 8
    //   612: aload 7
    //   614: astore 5
    //   616: aload_2
    //   617: astore 9
    //   619: aload 7
    //   621: astore 6
    //   623: aload_0
    //   624: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   627: ldc_w 944
    //   630: iconst_1
    //   631: anewarray 225	java/lang/String
    //   634: dup
    //   635: iconst_0
    //   636: aload 8
    //   638: aastore
    //   639: invokevirtual 948	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   642: astore 7
    //   644: aload 7
    //   646: astore 5
    //   648: aload 7
    //   650: ifnull +99 -> 749
    //   653: aload 7
    //   655: astore 5
    //   657: aload_2
    //   658: astore 9
    //   660: aload 7
    //   662: astore 6
    //   664: aload 7
    //   666: invokeinterface 241 1 0
    //   671: ifeq +57 -> 728
    //   674: aload 7
    //   676: astore 5
    //   678: aload_2
    //   679: astore 9
    //   681: aload 7
    //   683: astore 6
    //   685: aload 11
    //   687: aload 7
    //   689: iconst_0
    //   690: invokeinterface 337 2 0
    //   695: invokeinterface 900 2 0
    //   700: pop
    //   701: goto -48 -> 653
    //   704: astore_1
    //   705: aload 6
    //   707: ifnull +10 -> 717
    //   710: aload 6
    //   712: invokeinterface 248 1 0
    //   717: aload_0
    //   718: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   721: invokeinterface 251 1 0
    //   726: aload_1
    //   727: athrow
    //   728: aload 7
    //   730: astore 5
    //   732: aload_2
    //   733: astore 9
    //   735: aload 7
    //   737: astore 6
    //   739: aload 7
    //   741: invokeinterface 248 1 0
    //   746: aconst_null
    //   747: astore 5
    //   749: aload 5
    //   751: ifnull +10 -> 761
    //   754: aload 5
    //   756: invokeinterface 248 1 0
    //   761: aload_0
    //   762: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   765: invokeinterface 251 1 0
    //   770: aload_2
    //   771: astore 6
    //   773: aconst_null
    //   774: astore_2
    //   775: goto -299 -> 476
    //   778: iconst_1
    //   779: istore_3
    //   780: goto -288 -> 492
    //   783: invokestatic 685	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   786: invokevirtual 689	com/estrongs/android/pop/FexApplication:getPackageManager	()Landroid/content/pm/PackageManager;
    //   789: astore 7
    //   791: aload_2
    //   792: astore 5
    //   794: aload 6
    //   796: ifnull +13 -> 809
    //   799: aload_0
    //   800: aload 7
    //   802: aload 6
    //   804: invokevirtual 950	com/estrongs/android/appinfo/AppFolderInfoManager:a	(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;
    //   807: astore 5
    //   809: aload 5
    //   811: astore_2
    //   812: aload 5
    //   814: ifnonnull +54 -> 868
    //   817: aload 12
    //   819: invokeinterface 699 1 0
    //   824: astore 8
    //   826: aload 5
    //   828: astore_2
    //   829: aload 8
    //   831: invokeinterface 529 1 0
    //   836: ifeq +32 -> 868
    //   839: aload_0
    //   840: aload 7
    //   842: aload 8
    //   844: invokeinterface 533 1 0
    //   849: checkcast 225	java/lang/String
    //   852: invokevirtual 950	com/estrongs/android/appinfo/AppFolderInfoManager:a	(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;
    //   855: astore 5
    //   857: aload 5
    //   859: astore_2
    //   860: aload 5
    //   862: ifnull -33 -> 829
    //   865: aload 5
    //   867: astore_2
    //   868: aload 11
    //   870: invokeinterface 699 1 0
    //   875: astore 8
    //   877: aload 8
    //   879: invokeinterface 529 1 0
    //   884: ifeq +321 -> 1205
    //   887: aload_0
    //   888: aload 7
    //   890: aload 8
    //   892: invokeinterface 533 1 0
    //   897: checkcast 225	java/lang/String
    //   900: invokevirtual 950	com/estrongs/android/appinfo/AppFolderInfoManager:a	(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;
    //   903: astore 5
    //   905: aload 5
    //   907: ifnull +36 -> 943
    //   910: aload_2
    //   911: ifnonnull +297 -> 1208
    //   914: aload 5
    //   916: astore_2
    //   917: aload_2
    //   918: iconst_3
    //   919: putfield 867	com/estrongs/android/appinfo/m:b	I
    //   922: aload_2
    //   923: ifnull +23 -> 946
    //   926: aload_0
    //   927: getfield 141	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   930: aload_1
    //   931: invokeinterface 628 1 0
    //   936: aload_2
    //   937: invokevirtual 783	com/estrongs/android/pop/app/imageviewer/gallery/g:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   940: pop
    //   941: aload_2
    //   942: areturn
    //   943: goto -66 -> 877
    //   946: aload 6
    //   948: ifnull +13 -> 961
    //   951: aload 12
    //   953: iconst_0
    //   954: aload 6
    //   956: invokeinterface 953 3 0
    //   961: aload 12
    //   963: invokeinterface 699 1 0
    //   968: astore 5
    //   970: aload 5
    //   972: invokeinterface 529 1 0
    //   977: ifeq +59 -> 1036
    //   980: aload 5
    //   982: invokeinterface 533 1 0
    //   987: checkcast 225	java/lang/String
    //   990: astore_2
    //   991: new 276	java/io/File
    //   994: dup
    //   995: aload_0
    //   996: aload_2
    //   997: invokevirtual 402	com/estrongs/android/appinfo/AppFolderInfoManager:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1000: invokespecial 555	java/io/File:<init>	(Ljava/lang/String;)V
    //   1003: invokevirtual 615	java/io/File:exists	()Z
    //   1006: ifeq -36 -> 970
    //   1009: new 153	com/estrongs/android/appinfo/m
    //   1012: dup
    //   1013: aload_2
    //   1014: iconst_4
    //   1015: invokespecial 924	com/estrongs/android/appinfo/m:<init>	(Ljava/lang/String;I)V
    //   1018: astore_2
    //   1019: aload_0
    //   1020: getfield 141	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   1023: aload_1
    //   1024: invokeinterface 628 1 0
    //   1029: aload_2
    //   1030: invokevirtual 783	com/estrongs/android/pop/app/imageviewer/gallery/g:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1033: pop
    //   1034: aload_2
    //   1035: areturn
    //   1036: aload 11
    //   1038: invokeinterface 699 1 0
    //   1043: astore 5
    //   1045: aload 5
    //   1047: invokeinterface 529 1 0
    //   1052: ifeq +60 -> 1112
    //   1055: aload 5
    //   1057: invokeinterface 533 1 0
    //   1062: checkcast 225	java/lang/String
    //   1065: astore_2
    //   1066: new 276	java/io/File
    //   1069: dup
    //   1070: aload_0
    //   1071: aload_2
    //   1072: invokevirtual 402	com/estrongs/android/appinfo/AppFolderInfoManager:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1075: invokespecial 555	java/io/File:<init>	(Ljava/lang/String;)V
    //   1078: invokevirtual 615	java/io/File:exists	()Z
    //   1081: ifeq -36 -> 1045
    //   1084: new 153	com/estrongs/android/appinfo/m
    //   1087: dup
    //   1088: aload_2
    //   1089: bipush 6
    //   1091: invokespecial 924	com/estrongs/android/appinfo/m:<init>	(Ljava/lang/String;I)V
    //   1094: astore_2
    //   1095: aload_0
    //   1096: getfield 141	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   1099: aload_1
    //   1100: invokeinterface 628 1 0
    //   1105: aload_2
    //   1106: invokevirtual 783	com/estrongs/android/pop/app/imageviewer/gallery/g:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1109: pop
    //   1110: aload_2
    //   1111: areturn
    //   1112: aload_0
    //   1113: getfield 158	com/estrongs/android/appinfo/AppFolderInfoManager:h	Lcom/estrongs/android/appinfo/m;
    //   1116: astore_2
    //   1117: aload_0
    //   1118: getfield 141	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   1121: aload_1
    //   1122: invokeinterface 628 1 0
    //   1127: aload_0
    //   1128: getfield 158	com/estrongs/android/appinfo/AppFolderInfoManager:h	Lcom/estrongs/android/appinfo/m;
    //   1131: invokevirtual 783	com/estrongs/android/pop/app/imageviewer/gallery/g:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1134: pop
    //   1135: aload_2
    //   1136: astore_1
    //   1137: goto -608 -> 529
    //   1140: astore_1
    //   1141: aconst_null
    //   1142: astore 6
    //   1144: goto -439 -> 705
    //   1147: astore_1
    //   1148: aload 5
    //   1150: astore 6
    //   1152: goto -447 -> 705
    //   1155: astore_1
    //   1156: goto -451 -> 705
    //   1159: astore 7
    //   1161: aconst_null
    //   1162: astore 6
    //   1164: aconst_null
    //   1165: astore 5
    //   1167: aconst_null
    //   1168: astore_2
    //   1169: goto -725 -> 444
    //   1172: astore 6
    //   1174: aload 7
    //   1176: astore 8
    //   1178: aload 10
    //   1180: astore 5
    //   1182: aload 6
    //   1184: astore 7
    //   1186: aload 8
    //   1188: astore 6
    //   1190: goto -746 -> 444
    //   1193: astore 7
    //   1195: aload 5
    //   1197: astore 6
    //   1199: aconst_null
    //   1200: astore 5
    //   1202: goto -758 -> 444
    //   1205: goto -283 -> 922
    //   1208: goto -291 -> 917
    //   1211: aload 7
    //   1213: astore 5
    //   1215: goto -871 -> 344
    //   1218: aconst_null
    //   1219: astore 6
    //   1221: aconst_null
    //   1222: astore_2
    //   1223: goto -747 -> 476
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1226	0	this	AppFolderInfoManager
    //   0	1226	1	paramh	com.estrongs.fs.h
    //   0	1226	2	paramString	String
    //   491	289	3	i1	int
    //   483	13	4	i2	int
    //   45	1169	5	localObject1	Object
    //   103	1060	6	localObject2	Object
    //   1172	11	6	localException1	Exception
    //   1188	32	6	localObject3	Object
    //   182	189	7	localObject4	Object
    //   428	17	7	localException2	Exception
    //   550	339	7	localObject5	Object
    //   1159	16	7	localException3	Exception
    //   1184	1	7	localException4	Exception
    //   1193	19	7	localException5	Exception
    //   232	955	8	localObject6	Object
    //   197	537	9	str	String
    //   15	1164	10	localObject7	Object
    //   54	983	11	localLinkedList1	LinkedList
    //   40	922	12	localLinkedList2	LinkedList
    //   60	292	13	arrayOfString1	String[]
    //   73	284	14	arrayOfString2	String[]
    // Exception table:
    //   from	to	target	type
    //   203	213	428	java/lang/Exception
    //   224	234	428	java/lang/Exception
    //   245	256	428	java/lang/Exception
    //   267	273	428	java/lang/Exception
    //   334	341	428	java/lang/Exception
    //   388	398	428	java/lang/Exception
    //   409	425	428	java/lang/Exception
    //   542	549	428	java/lang/Exception
    //   563	570	428	java/lang/Exception
    //   590	612	428	java/lang/Exception
    //   623	644	428	java/lang/Exception
    //   664	674	428	java/lang/Exception
    //   685	701	428	java/lang/Exception
    //   739	746	428	java/lang/Exception
    //   203	213	704	finally
    //   224	234	704	finally
    //   245	256	704	finally
    //   267	273	704	finally
    //   277	293	704	finally
    //   334	341	704	finally
    //   388	398	704	finally
    //   409	425	704	finally
    //   542	549	704	finally
    //   563	570	704	finally
    //   590	612	704	finally
    //   623	644	704	finally
    //   664	674	704	finally
    //   685	701	704	finally
    //   739	746	704	finally
    //   97	105	1140	finally
    //   110	139	1140	finally
    //   162	184	1140	finally
    //   344	368	1147	finally
    //   444	449	1155	finally
    //   97	105	1159	java/lang/Exception
    //   110	139	1159	java/lang/Exception
    //   162	184	1159	java/lang/Exception
    //   277	293	1172	java/lang/Exception
    //   344	368	1193	java/lang/Exception
  }
  
  public String a(String paramString)
  {
    return m + "/" + paramString + ".png";
  }
  
  /* Error */
  protected void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   4: ifnull +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: getfield 175	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   12: invokeinterface 221 1 0
    //   17: aload_0
    //   18: invokespecial 957	com/estrongs/android/appinfo/AppFolderInfoManager:h	()V
    //   21: new 276	java/io/File
    //   24: dup
    //   25: getstatic 132	com/estrongs/android/appinfo/AppFolderInfoManager:o	Ljava/lang/String;
    //   28: invokespecial 555	java/io/File:<init>	(Ljava/lang/String;)V
    //   31: invokevirtual 615	java/io/File:exists	()Z
    //   34: ifne +7 -> 41
    //   37: aload_0
    //   38: invokevirtual 959	com/estrongs/android/appinfo/AppFolderInfoManager:b	()V
    //   41: aload_0
    //   42: getstatic 132	com/estrongs/android/appinfo/AppFolderInfoManager:o	Ljava/lang/String;
    //   45: aconst_null
    //   46: iconst_0
    //   47: invokestatic 657	android/database/sqlite/SQLiteDatabase:openDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    //   50: putfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   53: aload_0
    //   54: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   57: ifnonnull +32 -> 89
    //   60: new 276	java/io/File
    //   63: dup
    //   64: getstatic 132	com/estrongs/android/appinfo/AppFolderInfoManager:o	Ljava/lang/String;
    //   67: invokespecial 555	java/io/File:<init>	(Ljava/lang/String;)V
    //   70: invokevirtual 670	java/io/File:delete	()Z
    //   73: pop
    //   74: aload_0
    //   75: invokevirtual 959	com/estrongs/android/appinfo/AppFolderInfoManager:b	()V
    //   78: aload_0
    //   79: getstatic 132	com/estrongs/android/appinfo/AppFolderInfoManager:o	Ljava/lang/String;
    //   82: aconst_null
    //   83: invokestatic 668	android/database/sqlite/SQLiteDatabase:openOrCreateDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   86: putfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   89: aload_0
    //   90: getfield 175	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   93: invokeinterface 251 1 0
    //   98: return
    //   99: astore_1
    //   100: aload_1
    //   101: invokevirtual 960	java/lang/Throwable:printStackTrace	()V
    //   104: goto -51 -> 53
    //   107: astore_1
    //   108: aload_1
    //   109: invokevirtual 960	java/lang/Throwable:printStackTrace	()V
    //   112: aload_0
    //   113: getfield 175	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   116: invokeinterface 251 1 0
    //   121: return
    //   122: astore_1
    //   123: aload_0
    //   124: getfield 175	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   127: invokeinterface 251 1 0
    //   132: aload_1
    //   133: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	this	AppFolderInfoManager
    //   99	2	1	localThrowable1	Throwable
    //   107	2	1	localThrowable2	Throwable
    //   122	11	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   41	53	99	java/lang/Throwable
    //   21	41	107	java/lang/Throwable
    //   53	89	107	java/lang/Throwable
    //   100	104	107	java/lang/Throwable
    //   21	41	122	finally
    //   41	53	122	finally
    //   53	89	122	finally
    //   100	104	122	finally
    //   108	112	122	finally
  }
  
  public void a(Context paramContext, com.estrongs.fs.h paramh, String paramString, boolean paramBoolean, u paramu)
  {
    String str = d(paramh);
    if (str == null) {
      return;
    }
    new i(this, str, paramString, paramh, paramu, paramContext, paramBoolean).start();
  }
  
  public void a(u paramu)
  {
    g();
    if (!ak.b()) {}
    Date localDate1;
    Date localDate2;
    do
    {
      return;
      localDate1 = new Date(ad.a(FexApplication.a()).aG());
      localDate2 = new Date();
    } while ((localDate1.getYear() == localDate2.getYear()) && (localDate1.getMonth() == localDate2.getMonth()) && (localDate1.getDay() == localDate2.getDay()));
    if (c == null) {
      a();
    }
    a(new g(this, paramu));
  }
  
  /* Error */
  void a(String paramString, Collection<String> paramCollection)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_2
    //   3: invokeinterface 1001 1 0
    //   8: iconst_1
    //   9: anewarray 225	java/lang/String
    //   12: astore 5
    //   14: aload 5
    //   16: iconst_0
    //   17: ldc_w 486
    //   20: aastore
    //   21: aload_0
    //   22: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   25: invokeinterface 221 1 0
    //   30: iconst_1
    //   31: anewarray 225	java/lang/String
    //   34: astore 6
    //   36: aload 6
    //   38: iconst_0
    //   39: aload_1
    //   40: aastore
    //   41: aload_0
    //   42: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   45: ldc_w 484
    //   48: aload 5
    //   50: ldc_w 834
    //   53: aload 6
    //   55: aconst_null
    //   56: aconst_null
    //   57: aconst_null
    //   58: invokevirtual 235	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   61: astore_1
    //   62: aload_1
    //   63: ifnull +222 -> 285
    //   66: aload_1
    //   67: astore_3
    //   68: aload_1
    //   69: astore 4
    //   71: aload_1
    //   72: invokeinterface 241 1 0
    //   77: ifeq +46 -> 123
    //   80: aload_1
    //   81: astore_3
    //   82: aload_1
    //   83: astore 4
    //   85: aload_2
    //   86: aload_1
    //   87: iconst_0
    //   88: invokeinterface 337 2 0
    //   93: invokeinterface 1002 2 0
    //   98: pop
    //   99: goto -33 -> 66
    //   102: astore_1
    //   103: aload_3
    //   104: ifnull +9 -> 113
    //   107: aload_3
    //   108: invokeinterface 248 1 0
    //   113: aload_0
    //   114: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   117: invokeinterface 251 1 0
    //   122: return
    //   123: aload_1
    //   124: astore_3
    //   125: aload_1
    //   126: astore 4
    //   128: aload_1
    //   129: invokeinterface 248 1 0
    //   134: aconst_null
    //   135: astore_1
    //   136: aload_0
    //   137: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   140: ldc_w 329
    //   143: aload 5
    //   145: ldc_w 834
    //   148: aload 6
    //   150: aconst_null
    //   151: aconst_null
    //   152: aconst_null
    //   153: invokevirtual 235	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   156: astore_3
    //   157: aload_3
    //   158: astore_1
    //   159: aload_1
    //   160: astore_3
    //   161: aload_1
    //   162: ifnull +77 -> 239
    //   165: aload_1
    //   166: astore_3
    //   167: aload_1
    //   168: astore 4
    //   170: aload_1
    //   171: invokeinterface 241 1 0
    //   176: ifeq +50 -> 226
    //   179: aload_1
    //   180: astore_3
    //   181: aload_1
    //   182: astore 4
    //   184: aload_2
    //   185: aload_1
    //   186: iconst_0
    //   187: invokeinterface 337 2 0
    //   192: invokeinterface 1002 2 0
    //   197: pop
    //   198: goto -33 -> 165
    //   201: astore_1
    //   202: aload 4
    //   204: astore_2
    //   205: aload_2
    //   206: ifnull +9 -> 215
    //   209: aload_2
    //   210: invokeinterface 248 1 0
    //   215: aload_0
    //   216: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   219: invokeinterface 251 1 0
    //   224: aload_1
    //   225: athrow
    //   226: aload_1
    //   227: astore_3
    //   228: aload_1
    //   229: astore 4
    //   231: aload_1
    //   232: invokeinterface 248 1 0
    //   237: aconst_null
    //   238: astore_3
    //   239: aload_3
    //   240: ifnull +9 -> 249
    //   243: aload_3
    //   244: invokeinterface 248 1 0
    //   249: aload_0
    //   250: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   253: invokeinterface 251 1 0
    //   258: return
    //   259: astore_1
    //   260: aload_3
    //   261: astore_2
    //   262: goto -57 -> 205
    //   265: astore_3
    //   266: aload_1
    //   267: astore_2
    //   268: aload_3
    //   269: astore_1
    //   270: goto -65 -> 205
    //   273: astore_1
    //   274: aconst_null
    //   275: astore_3
    //   276: goto -173 -> 103
    //   279: astore_2
    //   280: aload_1
    //   281: astore_3
    //   282: goto -179 -> 103
    //   285: goto -149 -> 136
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	288	0	this	AppFolderInfoManager
    //   0	288	1	paramString	String
    //   0	288	2	paramCollection	Collection<String>
    //   1	260	3	localObject1	Object
    //   265	4	3	localObject2	Object
    //   275	7	3	str1	String
    //   69	161	4	str2	String
    //   12	132	5	arrayOfString1	String[]
    //   34	115	6	arrayOfString2	String[]
    // Exception table:
    //   from	to	target	type
    //   71	80	102	java/lang/Exception
    //   85	99	102	java/lang/Exception
    //   128	134	102	java/lang/Exception
    //   170	179	102	java/lang/Exception
    //   184	198	102	java/lang/Exception
    //   231	237	102	java/lang/Exception
    //   71	80	201	finally
    //   85	99	201	finally
    //   128	134	201	finally
    //   170	179	201	finally
    //   184	198	201	finally
    //   231	237	201	finally
    //   30	36	259	finally
    //   41	62	259	finally
    //   136	157	265	finally
    //   30	36	273	java/lang/Exception
    //   41	62	273	java/lang/Exception
    //   136	157	279	java/lang/Exception
  }
  
  public void a(String paramString, List<com.estrongs.fs.h> paramList)
  {
    int i2 = 0;
    if (paramList == null) {}
    label183:
    label188:
    for (;;)
    {
      return;
      boolean bool = ad.a(FexApplication.a()).aE();
      int i1;
      if (bool) {
        if ((am.bl(paramString)) || (am.bP(paramString)))
        {
          i1 = 1;
          if (i1 != 0) {
            break label183;
          }
        }
      }
      for (;;)
      {
        if (i2 == 0) {
          break label188;
        }
        Object localObject = null;
        Iterator localIterator = paramList.iterator();
        paramList = (List<com.estrongs.fs.h>)localObject;
        for (;;)
        {
          if (localIterator.hasNext())
          {
            com.estrongs.fs.h localh = (com.estrongs.fs.h)localIterator.next();
            if ((localh.getFileType().a()) && (am.G(localh.getAbsolutePath()) != 23) && (j(localh.getAbsolutePath()) == null))
            {
              localObject = paramList;
              if (paramList == null) {
                localObject = new LinkedList();
              }
              ((List)localObject).add(localh);
              paramList = (List<com.estrongs.fs.h>)localObject;
              continue;
              i1 = 0;
              break;
            }
          }
        }
        if (paramList == null) {
          break;
        }
        a(paramList, new k(this, paramString));
        return;
        i2 = bool;
      }
    }
  }
  
  public void a(List<com.estrongs.fs.h> paramList, q paramq)
  {
    if ((paramList == null) || (paramq == null)) {
      return;
    }
    new d(this, paramList, paramq).start();
  }
  
  public void a(File[] paramArrayOfFile, q paramq)
  {
    if ((paramArrayOfFile == null) || (paramq == null)) {}
    Object localObject1;
    label83:
    do
    {
      do
      {
        return;
      } while (!ad.a(FexApplication.a()).aE());
      int i2 = paramArrayOfFile.length;
      localObject1 = null;
      int i1 = 0;
      if (i1 < i2)
      {
        File localFile = paramArrayOfFile[i1];
        String str = localFile.getAbsolutePath();
        Object localObject2 = localObject1;
        if (localFile.isDirectory())
        {
          if (am.bl(str)) {
            break label83;
          }
          localObject2 = localObject1;
        }
        for (;;)
        {
          i1 += 1;
          localObject1 = localObject2;
          break;
          localObject2 = localObject1;
          if (d().j(str) == null)
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new LinkedList();
            }
            ((List)localObject2).add(new f(localFile));
          }
        }
      }
    } while (localObject1 == null);
    a((List)localObject1, paramq);
  }
  
  public boolean a(Context paramContext, com.estrongs.fs.h paramh)
  {
    if ((!ad.a(paramContext).aE()) || (!paramh.getFileType().a()) || (am.G(paramh.getAbsolutePath()) == 23)) {}
    do
    {
      return false;
      paramContext = j(paramh.getAbsolutePath());
    } while ((paramContext == null) || ((b != 4) && (b != 6)));
    return true;
  }
  
  /* Error */
  public r b(com.estrongs.fs.h paramh)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 5
    //   6: aconst_null
    //   7: astore 8
    //   9: aconst_null
    //   10: astore 7
    //   12: aload_0
    //   13: aload_1
    //   14: invokespecial 930	com/estrongs/android/appinfo/AppFolderInfoManager:d	(Lcom/estrongs/fs/h;)Ljava/lang/String;
    //   17: astore_1
    //   18: aload_1
    //   19: ifnonnull +5 -> 24
    //   22: aconst_null
    //   23: areturn
    //   24: aload_0
    //   25: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   28: ifnull -6 -> 22
    //   31: aload_0
    //   32: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   35: invokeinterface 221 1 0
    //   40: aload_0
    //   41: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   44: ldc_w 1033
    //   47: iconst_1
    //   48: anewarray 225	java/lang/String
    //   51: dup
    //   52: iconst_0
    //   53: aload_1
    //   54: aastore
    //   55: invokevirtual 948	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   58: astore_3
    //   59: aload_3
    //   60: ifnull +120 -> 180
    //   63: aload_3
    //   64: astore 4
    //   66: aload 8
    //   68: astore 5
    //   70: invokestatic 685	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   73: invokevirtual 689	com/estrongs/android/pop/FexApplication:getPackageManager	()Landroid/content/pm/PackageManager;
    //   76: astore 8
    //   78: aload 7
    //   80: astore_1
    //   81: aload_1
    //   82: astore 6
    //   84: aload_3
    //   85: astore 4
    //   87: aload_1
    //   88: astore 5
    //   90: aload_3
    //   91: invokeinterface 241 1 0
    //   96: ifeq +84 -> 180
    //   99: aload_3
    //   100: astore 4
    //   102: aload_1
    //   103: astore 5
    //   105: aload_3
    //   106: iconst_0
    //   107: invokeinterface 337 2 0
    //   112: astore 7
    //   114: aload_3
    //   115: astore 4
    //   117: aload_1
    //   118: astore 5
    //   120: aload_3
    //   121: iconst_1
    //   122: invokeinterface 245 2 0
    //   127: istore_2
    //   128: aload_3
    //   129: astore 4
    //   131: aload_1
    //   132: astore 5
    //   134: aload 8
    //   136: aload 7
    //   138: iconst_0
    //   139: invokevirtual 540	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   142: ifnull -61 -> 81
    //   145: aload_3
    //   146: astore 4
    //   148: aload_1
    //   149: astore 5
    //   151: new 1035	com/estrongs/android/appinfo/r
    //   154: dup
    //   155: aload_0
    //   156: invokespecial 1037	com/estrongs/android/appinfo/r:<init>	(Lcom/estrongs/android/appinfo/AppFolderInfoManager;)V
    //   159: astore 6
    //   161: aload_3
    //   162: astore 4
    //   164: aload 6
    //   166: aload 7
    //   168: putfield 1038	com/estrongs/android/appinfo/r:a	Ljava/lang/String;
    //   171: aload_3
    //   172: astore 4
    //   174: aload 6
    //   176: iload_2
    //   177: putfield 1039	com/estrongs/android/appinfo/r:b	I
    //   180: aload_3
    //   181: ifnull +9 -> 190
    //   184: aload_3
    //   185: invokeinterface 248 1 0
    //   190: aload_0
    //   191: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   194: invokeinterface 251 1 0
    //   199: aload 6
    //   201: areturn
    //   202: astore_1
    //   203: aconst_null
    //   204: astore_3
    //   205: aload_3
    //   206: astore 4
    //   208: aload_1
    //   209: invokevirtual 254	java/lang/Exception:printStackTrace	()V
    //   212: aload_3
    //   213: ifnull +9 -> 222
    //   216: aload_3
    //   217: invokeinterface 248 1 0
    //   222: aload_0
    //   223: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   226: invokeinterface 251 1 0
    //   231: aload 5
    //   233: areturn
    //   234: astore_1
    //   235: aconst_null
    //   236: astore 4
    //   238: aload 4
    //   240: ifnull +10 -> 250
    //   243: aload 4
    //   245: invokeinterface 248 1 0
    //   250: aload_0
    //   251: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   254: invokeinterface 251 1 0
    //   259: aload_1
    //   260: athrow
    //   261: astore_1
    //   262: goto -24 -> 238
    //   265: astore_1
    //   266: goto -61 -> 205
    //   269: astore_1
    //   270: aload 6
    //   272: astore 5
    //   274: goto -69 -> 205
    //   277: astore_1
    //   278: aload 6
    //   280: astore_1
    //   281: goto -200 -> 81
    //   284: astore 4
    //   286: goto -205 -> 81
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	289	0	this	AppFolderInfoManager
    //   0	289	1	paramh	com.estrongs.fs.h
    //   127	50	2	i1	int
    //   58	159	3	localCursor1	Cursor
    //   64	180	4	localCursor2	Cursor
    //   284	1	4	localNameNotFoundException	PackageManager.NameNotFoundException
    //   4	269	5	localObject1	Object
    //   1	278	6	localObject2	Object
    //   10	157	7	str	String
    //   7	128	8	localPackageManager	PackageManager
    // Exception table:
    //   from	to	target	type
    //   40	59	202	java/lang/Exception
    //   40	59	234	finally
    //   70	78	261	finally
    //   90	99	261	finally
    //   105	114	261	finally
    //   120	128	261	finally
    //   134	145	261	finally
    //   151	161	261	finally
    //   164	171	261	finally
    //   174	180	261	finally
    //   208	212	261	finally
    //   70	78	265	java/lang/Exception
    //   90	99	265	java/lang/Exception
    //   105	114	265	java/lang/Exception
    //   120	128	265	java/lang/Exception
    //   134	145	265	java/lang/Exception
    //   151	161	265	java/lang/Exception
    //   164	171	269	java/lang/Exception
    //   174	180	269	java/lang/Exception
    //   164	171	277	android/content/pm/PackageManager$NameNotFoundException
    //   174	180	277	android/content/pm/PackageManager$NameNotFoundException
    //   134	145	284	android/content/pm/PackageManager$NameNotFoundException
    //   151	161	284	android/content/pm/PackageManager$NameNotFoundException
  }
  
  protected void b()
  {
    a(FexApplication.a().getAssets().open("folder_app.zip"), com.estrongs.android.pop.a.b);
  }
  
  protected void b(String paramString)
  {
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.J();
    if (localFileExplorerActivity != null) {
      localFileExplorerActivity.k(paramString);
    }
  }
  
  /* Error */
  void b(String paramString, Collection<String> paramCollection)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: aload_2
    //   7: invokeinterface 1001 1 0
    //   12: aload_0
    //   13: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   16: invokeinterface 221 1 0
    //   21: aload_0
    //   22: aload_1
    //   23: invokespecial 513	com/estrongs/android/appinfo/AppFolderInfoManager:n	(Ljava/lang/String;)I
    //   26: istore_3
    //   27: aload 4
    //   29: astore_1
    //   30: iload_3
    //   31: iconst_m1
    //   32: if_icmpeq +103 -> 135
    //   35: new 105	java/lang/StringBuilder
    //   38: dup
    //   39: invokespecial 106	java/lang/StringBuilder:<init>	()V
    //   42: ldc_w 327
    //   45: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: iload_3
    //   49: invokevirtual 270	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   52: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: astore_1
    //   56: aload_0
    //   57: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   60: ldc_w 944
    //   63: iconst_1
    //   64: anewarray 225	java/lang/String
    //   67: dup
    //   68: iconst_0
    //   69: aload_1
    //   70: aastore
    //   71: invokevirtual 948	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   74: astore_1
    //   75: aload_1
    //   76: ifnull +114 -> 190
    //   79: aload_1
    //   80: invokeinterface 241 1 0
    //   85: ifeq +41 -> 126
    //   88: aload_2
    //   89: aload_1
    //   90: iconst_0
    //   91: invokeinterface 337 2 0
    //   96: invokeinterface 1002 2 0
    //   101: pop
    //   102: goto -23 -> 79
    //   105: astore_2
    //   106: aload_1
    //   107: ifnull +9 -> 116
    //   110: aload_1
    //   111: invokeinterface 248 1 0
    //   116: aload_0
    //   117: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   120: invokeinterface 251 1 0
    //   125: return
    //   126: aload_1
    //   127: invokeinterface 248 1 0
    //   132: aload 4
    //   134: astore_1
    //   135: aload_1
    //   136: ifnull +9 -> 145
    //   139: aload_1
    //   140: invokeinterface 248 1 0
    //   145: aload_0
    //   146: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   149: invokeinterface 251 1 0
    //   154: return
    //   155: astore_2
    //   156: aload 5
    //   158: astore_1
    //   159: aload_1
    //   160: ifnull +9 -> 169
    //   163: aload_1
    //   164: invokeinterface 248 1 0
    //   169: aload_0
    //   170: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   173: invokeinterface 251 1 0
    //   178: aload_2
    //   179: athrow
    //   180: astore_2
    //   181: goto -22 -> 159
    //   184: astore_1
    //   185: aconst_null
    //   186: astore_1
    //   187: goto -81 -> 106
    //   190: goto -55 -> 135
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	193	0	this	AppFolderInfoManager
    //   0	193	1	paramString	String
    //   0	193	2	paramCollection	Collection<String>
    //   26	23	3	i1	int
    //   4	129	4	localObject1	Object
    //   1	156	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   79	102	105	java/lang/Exception
    //   126	132	105	java/lang/Exception
    //   21	27	155	finally
    //   35	75	155	finally
    //   79	102	180	finally
    //   126	132	180	finally
    //   21	27	184	java/lang/Exception
    //   35	75	184	java/lang/Exception
  }
  
  public void c()
  {
    d.a();
    e.a();
    f.a();
  }
  
  public void c(String paramString)
  {
    d.a();
    try
    {
      PackageManager localPackageManager = FexApplication.a().getPackageManager();
      paramString = localPackageManager.getPackageInfo(paramString, 0);
      if (paramString != null) {
        a(localPackageManager, paramString);
      }
    }
    catch (Exception paramString)
    {
      for (;;) {}
    }
    paramString = FileExplorerActivity.J();
    if (paramString != null) {
      paramString.g(true);
    }
  }
  
  public boolean c(com.estrongs.fs.h paramh)
  {
    if (paramh == null) {}
    do
    {
      return false;
      paramh = d(paramh);
    } while (paramh == null);
    paramh = i(paramh);
    if (paramh == null) {
      return true;
    }
    return c;
  }
  
  public void d(String paramString)
  {
    d.a();
    paramString = FileExplorerActivity.J();
    if (paramString != null) {
      paramString.g(true);
    }
  }
  
  public ArrayList<AppFolderInfoManager.RemnantFolder> e(String paramString)
  {
    Object localObject1 = null;
    Object localObject3 = null;
    if (c == null) {
      a();
    }
    Object localObject2;
    if (c == null) {
      localObject2 = localObject3;
    }
    Object localObject5;
    Object localObject6;
    do
    {
      do
      {
        return (ArrayList<AppFolderInfoManager.RemnantFolder>)localObject2;
        localObject4 = f(paramString);
        localObject2 = localObject3;
      } while (((Map)localObject4).isEmpty());
      localObject2 = new HashSet();
      localObject5 = FexApplication.a().getPackageManager();
      localObject6 = new LinkedList();
      Iterator localIterator = ((Map)localObject4).entrySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)((Map.Entry)localIterator.next()).getKey();
        a(str, (Collection)localObject2);
        if (a((PackageManager)localObject5, (Collection)localObject2, paramString))
        {
          ((List)localObject6).add(str);
        }
        else
        {
          b(str, (Collection)localObject2);
          if (a((PackageManager)localObject5, (Collection)localObject2, paramString)) {
            ((List)localObject6).add(str);
          }
        }
      }
      paramString = ((List)localObject6).iterator();
      while (paramString.hasNext()) {
        ((Map)localObject4).remove((String)paramString.next());
      }
      localObject2 = localObject3;
    } while (((Map)localObject4).isEmpty());
    localObject3 = am.a();
    Object localObject4 = ((Map)localObject4).entrySet().iterator();
    boolean bool;
    if (((Iterator)localObject4).hasNext())
    {
      paramString = (Map.Entry)((Iterator)localObject4).next();
      localObject5 = (String)paramString.getKey();
      bool = ((Boolean)paramString.getValue()).booleanValue();
      localObject6 = ((List)localObject3).iterator();
      paramString = (String)localObject1;
      label315:
      do
      {
        localObject1 = paramString;
        if (!((Iterator)localObject6).hasNext()) {
          break;
        }
        localObject2 = (String)((Iterator)localObject6).next();
        localObject1 = localObject2;
        if (((String)localObject2).endsWith("/")) {
          localObject1 = ((String)localObject2).substring(0, ((String)localObject2).length() - 1);
        }
        localObject1 = (String)localObject1 + (String)localObject5;
        localObject2 = new File((String)localObject1);
      } while ((!((File)localObject2).exists()) || (!((File)localObject2).isDirectory()));
      if (paramString != null) {
        break label610;
      }
      paramString = new ArrayList();
    }
    label608:
    label610:
    for (;;)
    {
      localObject2 = new AppFolderInfoManager.RemnantFolder();
      a = ((String)localObject1);
      b = bool;
      paramString.add(localObject2);
      break label315;
      localObject2 = localObject1;
      if (localObject1 == null) {
        break;
      }
      localObject2 = localObject1;
      if (((ArrayList)localObject1).size() <= 1) {
        break;
      }
      Collections.sort((List)localObject1, new l(this));
      paramString = new ArrayList();
      localObject1 = ((ArrayList)localObject1).iterator();
      for (;;)
      {
        if (((Iterator)localObject1).hasNext())
        {
          localObject2 = (AppFolderInfoManager.RemnantFolder)((Iterator)localObject1).next();
          localObject3 = paramString.iterator();
          do
          {
            if (!((Iterator)localObject3).hasNext()) {
              break;
            }
          } while (!am.i(nexta, a));
        }
        for (int i1 = 1;; i1 = 0)
        {
          if (i1 != 0) {
            break label608;
          }
          paramString.add(localObject2);
          break;
          Collections.sort(paramString, new b(this));
          return paramString;
        }
      }
    }
  }
  
  /* Error */
  Map<String, Boolean> f(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 182	java/util/HashMap
    //   5: dup
    //   6: invokespecial 183	java/util/HashMap:<init>	()V
    //   9: astore 4
    //   11: aload_0
    //   12: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   15: invokeinterface 221 1 0
    //   20: iconst_1
    //   21: anewarray 225	java/lang/String
    //   24: astore 5
    //   26: aload 5
    //   28: iconst_0
    //   29: ldc_w 350
    //   32: aastore
    //   33: iconst_1
    //   34: anewarray 225	java/lang/String
    //   37: astore 6
    //   39: aload 6
    //   41: iconst_0
    //   42: aload_1
    //   43: aastore
    //   44: aload_0
    //   45: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   48: ldc_w 484
    //   51: aload 5
    //   53: ldc_w 1134
    //   56: aload 6
    //   58: aconst_null
    //   59: aconst_null
    //   60: aconst_null
    //   61: invokevirtual 235	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   64: astore_1
    //   65: aload_1
    //   66: ifnull +251 -> 317
    //   69: aload_1
    //   70: astore_2
    //   71: aload_1
    //   72: astore_3
    //   73: aload_1
    //   74: invokeinterface 241 1 0
    //   79: ifeq +52 -> 131
    //   82: aload_1
    //   83: astore_2
    //   84: aload_1
    //   85: astore_3
    //   86: aload 4
    //   88: aload_1
    //   89: iconst_0
    //   90: invokeinterface 337 2 0
    //   95: iconst_1
    //   96: invokestatic 790	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   99: invokeinterface 1135 3 0
    //   104: pop
    //   105: goto -36 -> 69
    //   108: astore_1
    //   109: aload_2
    //   110: ifnull +9 -> 119
    //   113: aload_2
    //   114: invokeinterface 248 1 0
    //   119: aload_0
    //   120: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   123: invokeinterface 251 1 0
    //   128: aload 4
    //   130: areturn
    //   131: aload_1
    //   132: astore_2
    //   133: aload_1
    //   134: astore_3
    //   135: aload_1
    //   136: invokeinterface 248 1 0
    //   141: aconst_null
    //   142: astore_1
    //   143: aload_0
    //   144: getfield 136	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   147: ldc_w 329
    //   150: aload 5
    //   152: ldc_w 1134
    //   155: aload 6
    //   157: aconst_null
    //   158: aconst_null
    //   159: aconst_null
    //   160: invokevirtual 235	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   163: astore_2
    //   164: aload_2
    //   165: astore_1
    //   166: aload_1
    //   167: astore_2
    //   168: aload_1
    //   169: ifnull +102 -> 271
    //   172: aload_1
    //   173: astore_2
    //   174: aload_1
    //   175: astore_3
    //   176: aload_1
    //   177: invokeinterface 241 1 0
    //   182: ifeq +77 -> 259
    //   185: aload_1
    //   186: astore_2
    //   187: aload_1
    //   188: astore_3
    //   189: aload_1
    //   190: iconst_0
    //   191: invokeinterface 337 2 0
    //   196: astore 5
    //   198: aload_1
    //   199: astore_2
    //   200: aload_1
    //   201: astore_3
    //   202: aload 4
    //   204: aload 5
    //   206: invokeinterface 1138 2 0
    //   211: ifne -39 -> 172
    //   214: aload_1
    //   215: astore_2
    //   216: aload_1
    //   217: astore_3
    //   218: aload 4
    //   220: aload 5
    //   222: iconst_0
    //   223: invokestatic 790	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   226: invokeinterface 1135 3 0
    //   231: pop
    //   232: goto -60 -> 172
    //   235: astore_1
    //   236: aload_3
    //   237: astore_2
    //   238: aload_2
    //   239: ifnull +9 -> 248
    //   242: aload_2
    //   243: invokeinterface 248 1 0
    //   248: aload_0
    //   249: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   252: invokeinterface 251 1 0
    //   257: aload_1
    //   258: athrow
    //   259: aload_1
    //   260: astore_2
    //   261: aload_1
    //   262: astore_3
    //   263: aload_1
    //   264: invokeinterface 248 1 0
    //   269: aconst_null
    //   270: astore_2
    //   271: aload_2
    //   272: ifnull +9 -> 281
    //   275: aload_2
    //   276: invokeinterface 248 1 0
    //   281: aload_0
    //   282: getfield 169	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   285: invokeinterface 251 1 0
    //   290: aload 4
    //   292: areturn
    //   293: astore_1
    //   294: goto -56 -> 238
    //   297: astore_3
    //   298: aload_1
    //   299: astore_2
    //   300: aload_3
    //   301: astore_1
    //   302: goto -64 -> 238
    //   305: astore_1
    //   306: aconst_null
    //   307: astore_2
    //   308: goto -199 -> 109
    //   311: astore_2
    //   312: aload_1
    //   313: astore_2
    //   314: goto -205 -> 109
    //   317: goto -174 -> 143
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	320	0	this	AppFolderInfoManager
    //   0	320	1	paramString	String
    //   1	307	2	localObject1	Object
    //   311	1	2	localException	Exception
    //   313	1	2	str1	String
    //   72	191	3	str2	String
    //   297	4	3	localObject2	Object
    //   9	282	4	localHashMap	HashMap
    //   24	197	5	localObject3	Object
    //   37	119	6	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   73	82	108	java/lang/Exception
    //   86	105	108	java/lang/Exception
    //   135	141	108	java/lang/Exception
    //   176	185	108	java/lang/Exception
    //   189	198	108	java/lang/Exception
    //   202	214	108	java/lang/Exception
    //   218	232	108	java/lang/Exception
    //   263	269	108	java/lang/Exception
    //   73	82	235	finally
    //   86	105	235	finally
    //   135	141	235	finally
    //   176	185	235	finally
    //   189	198	235	finally
    //   202	214	235	finally
    //   218	232	235	finally
    //   263	269	235	finally
    //   20	26	293	finally
    //   33	39	293	finally
    //   44	65	293	finally
    //   143	164	297	finally
    //   20	26	305	java/lang/Exception
    //   33	39	305	java/lang/Exception
    //   44	65	305	java/lang/Exception
    //   143	164	311	java/lang/Exception
  }
  
  public void g(String paramString)
  {
    new c(this, paramString).start();
  }
  
  /* Error */
  public String h(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_0
    //   5: getfield 198	com/estrongs/android/appinfo/AppFolderInfoManager:t	Ljava/lang/Object;
    //   8: astore 4
    //   10: aload 4
    //   12: monitorenter
    //   13: aload_0
    //   14: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   17: ifnonnull +7 -> 24
    //   20: aload_0
    //   21: invokespecial 602	com/estrongs/android/appinfo/AppFolderInfoManager:f	()V
    //   24: aload_0
    //   25: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   28: ifnonnull +8 -> 36
    //   31: aload 4
    //   33: monitorexit
    //   34: aconst_null
    //   35: areturn
    //   36: aload_0
    //   37: getfield 196	com/estrongs/android/appinfo/AppFolderInfoManager:s	Landroid/database/sqlite/SQLiteDatabase;
    //   40: ldc_w 719
    //   43: iconst_1
    //   44: anewarray 225	java/lang/String
    //   47: dup
    //   48: iconst_0
    //   49: ldc_w 717
    //   52: aastore
    //   53: ldc_w 838
    //   56: iconst_1
    //   57: anewarray 225	java/lang/String
    //   60: dup
    //   61: iconst_0
    //   62: aload_1
    //   63: aastore
    //   64: aconst_null
    //   65: aconst_null
    //   66: aconst_null
    //   67: invokevirtual 235	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   70: astore_1
    //   71: aload_1
    //   72: astore_2
    //   73: aload_3
    //   74: astore_1
    //   75: aload_2
    //   76: ifnull +22 -> 98
    //   79: aload_3
    //   80: astore_1
    //   81: aload_2
    //   82: invokeinterface 241 1 0
    //   87: ifeq +11 -> 98
    //   90: aload_2
    //   91: iconst_0
    //   92: invokeinterface 337 2 0
    //   97: astore_1
    //   98: aload_2
    //   99: ifnull +63 -> 162
    //   102: aload_2
    //   103: invokeinterface 248 1 0
    //   108: aload 4
    //   110: monitorexit
    //   111: aload_1
    //   112: areturn
    //   113: astore_1
    //   114: aload 4
    //   116: monitorexit
    //   117: aload_1
    //   118: athrow
    //   119: astore_1
    //   120: aconst_null
    //   121: astore_2
    //   122: aload_2
    //   123: ifnull +34 -> 157
    //   126: aload_2
    //   127: invokeinterface 248 1 0
    //   132: aconst_null
    //   133: astore_1
    //   134: goto -26 -> 108
    //   137: aload_2
    //   138: ifnull +9 -> 147
    //   141: aload_2
    //   142: invokeinterface 248 1 0
    //   147: aload_1
    //   148: athrow
    //   149: astore_1
    //   150: goto -13 -> 137
    //   153: astore_1
    //   154: goto -32 -> 122
    //   157: aconst_null
    //   158: astore_1
    //   159: goto -51 -> 108
    //   162: goto -54 -> 108
    //   165: astore_1
    //   166: goto -29 -> 137
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	169	0	this	AppFolderInfoManager
    //   0	169	1	paramString	String
    //   1	141	2	str	String
    //   3	77	3	localObject1	Object
    //   8	107	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   13	24	113	finally
    //   24	34	113	finally
    //   102	108	113	finally
    //   108	111	113	finally
    //   114	117	113	finally
    //   126	132	113	finally
    //   141	147	113	finally
    //   147	149	113	finally
    //   36	71	119	java/lang/Exception
    //   81	98	149	finally
    //   81	98	153	java/lang/Exception
    //   36	71	165	finally
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.AppFolderInfoManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */