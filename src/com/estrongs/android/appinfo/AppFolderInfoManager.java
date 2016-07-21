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
import com.estrongs.android.pop.utils.cv;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.aa;
import com.estrongs.android.util.an;
import com.estrongs.android.util.ap;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.util.j;
import com.estrongs.fs.w;
import com.estrongs.fs.x;
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
  static final String n = com.estrongs.android.pop.a.b + "/.app_icon_back";
  static final String o = com.estrongs.android.pop.a.b + "/.folder_logo";
  static final String p = com.estrongs.android.pop.a.b + "/folder_app.db";
  SQLiteDatabase c = null;
  com.estrongs.android.pop.app.imageviewer.gallery.g<String, m> d = new com.estrongs.android.pop.app.imageviewer.gallery.g();
  com.estrongs.android.pop.app.imageviewer.gallery.g<String, com.estrongs.fs.h> e = new com.estrongs.android.pop.app.imageviewer.gallery.g(100);
  android.support.v4.e.g<String, Drawable> f = new a(this, 100);
  m g = new m(0);
  m h = new m(5);
  ReentrantReadWriteLock i = new ReentrantReadWriteLock();
  Lock j = i.readLock();
  Lock k = i.writeLock();
  cv l = new cv(2);
  HashMap<String, List<p>> q = new HashMap();
  int r = 0;
  LinkedList<Object> s = new LinkedList();
  SQLiteDatabase t = null;
  Object u = new Object();
  boolean v = false;
  private boolean w = false;
  
  static
  {
    b.add(new n("/Android", 2130838114, false, false));
    b.add(new n("/dcim", 2130838117, true, false));
    b.add(new n("/download", 2130838118, true, false));
    b.add(new n("/.android_secure", 2130838115, true, false));
    b.add(new n("/Movies", 2130838120, true, false));
    b.add(new n("/Pictures", 2130838122, true, false));
    b.add(new n("/Video", 2130838124, false, false));
    b.add(new n("/Music", 2130838121, false, false));
    b.add(new n("/.estrongs", 2130838119, false, false));
    b.add(new n("/backups", 2130838116, false, false));
    b.add(new n("/Ringtones", 2130838123, false, true));
  }
  
  /* Error */
  private int a(String paramString, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   7: ifnonnull +7 -> 14
    //   10: aload_0
    //   11: invokevirtual 219	com/estrongs/android/appinfo/AppFolderInfoManager:a	()V
    //   14: aload_0
    //   15: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   18: ifnonnull +5 -> 23
    //   21: iload_2
    //   22: ireturn
    //   23: aload_0
    //   24: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   27: invokeinterface 224 1 0
    //   32: aload_0
    //   33: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   36: ldc -30
    //   38: iconst_1
    //   39: anewarray 228	java/lang/String
    //   42: dup
    //   43: iconst_0
    //   44: ldc -26
    //   46: aastore
    //   47: ldc -24
    //   49: iconst_1
    //   50: anewarray 228	java/lang/String
    //   53: dup
    //   54: iconst_0
    //   55: aload_1
    //   56: aastore
    //   57: aconst_null
    //   58: aconst_null
    //   59: aconst_null
    //   60: invokevirtual 238	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
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
    //   81: invokeinterface 244 1 0
    //   86: ifeq +15 -> 101
    //   89: aload 4
    //   91: astore_1
    //   92: aload 4
    //   94: iconst_0
    //   95: invokeinterface 248 2 0
    //   100: istore_3
    //   101: aload 4
    //   103: ifnull +10 -> 113
    //   106: aload 4
    //   108: invokeinterface 251 1 0
    //   113: aload_0
    //   114: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   117: invokeinterface 254 1 0
    //   122: iload_3
    //   123: ireturn
    //   124: astore 5
    //   126: aconst_null
    //   127: astore 4
    //   129: aload 4
    //   131: astore_1
    //   132: aload 5
    //   134: invokevirtual 257	java/lang/Exception:printStackTrace	()V
    //   137: aload 4
    //   139: ifnull +10 -> 149
    //   142: aload 4
    //   144: invokeinterface 251 1 0
    //   149: aload_0
    //   150: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   153: invokeinterface 254 1 0
    //   158: iload_2
    //   159: ireturn
    //   160: astore_1
    //   161: aload 4
    //   163: ifnull +10 -> 173
    //   166: aload 4
    //   168: invokeinterface 251 1 0
    //   173: aload_0
    //   174: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   177: invokeinterface 254 1 0
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
    return n + "/ver/" + packageName + "_" + versionCode;
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
    h();
    if ((paramPackageManager == null) || (paramPackageInfo == null) || (b(paramPackageInfo)) || (!j.n(n))) {}
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
    com.estrongs.android.util.a.a(((BitmapDrawable)localDrawable1).getBitmap(), str, Bitmap.CompressFormat.PNG, 100);
    c(paramPackageInfo);
  }
  
  private void a(u paramu)
  {
    int i1 = paramu.a();
    Object localObject = "http://www.estrongs.com/console/service/app_folder?v=" + i1 + "&t=" + paramu.b();
    String str1 = com.estrongs.android.pop.a.b + "/tmp/folder_app_update";
    String str2 = str1 + ".tmp";
    if (!j.n(com.estrongs.android.pop.a.b + "/tmp"))
    {
      paramu.c();
      return;
    }
    localObject = new aa((String)localObject);
    ((aa)localObject).a(str2);
    ((aa)localObject).a(new h(this, str2, str1, paramu));
    ((aa)localObject).c();
  }
  
  /* Error */
  private void a(File paramFile1, File paramFile2)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokevirtual 491	java/io/File:exists	()Z
    //   4: ifne +8 -> 12
    //   7: aload_2
    //   8: invokevirtual 494	java/io/File:mkdirs	()Z
    //   11: pop
    //   12: aload_1
    //   13: invokevirtual 498	java/io/File:list	()[Ljava/lang/String;
    //   16: astore 7
    //   18: aload 7
    //   20: ifnull +108 -> 128
    //   23: aload 7
    //   25: arraylength
    //   26: istore 4
    //   28: iconst_0
    //   29: istore_3
    //   30: iload_3
    //   31: iload 4
    //   33: if_icmpge +95 -> 128
    //   36: aload 7
    //   38: iload_3
    //   39: aaload
    //   40: astore 8
    //   42: new 279	java/io/File
    //   45: dup
    //   46: aload_1
    //   47: aload 8
    //   49: invokespecial 499	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   52: astore 5
    //   54: aload 5
    //   56: invokevirtual 502	java/io/File:isFile	()Z
    //   59: ifeq +37 -> 96
    //   62: aconst_null
    //   63: astore 6
    //   65: new 504	java/io/FileInputStream
    //   68: dup
    //   69: aload 5
    //   71: invokespecial 507	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   74: astore 5
    //   76: aload 5
    //   78: new 279	java/io/File
    //   81: dup
    //   82: aload_2
    //   83: aload 8
    //   85: invokespecial 499	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   88: invokestatic 510	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;Ljava/io/File;)V
    //   91: aload 5
    //   93: invokestatic 512	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   96: iload_3
    //   97: iconst_1
    //   98: iadd
    //   99: istore_3
    //   100: goto -70 -> 30
    //   103: astore 5
    //   105: aconst_null
    //   106: astore 5
    //   108: aload 5
    //   110: invokestatic 512	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   113: goto -17 -> 96
    //   116: astore_1
    //   117: aload 6
    //   119: astore 5
    //   121: aload 5
    //   123: invokestatic 512	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   126: aload_1
    //   127: athrow
    //   128: return
    //   129: astore_1
    //   130: goto -9 -> 121
    //   133: astore 6
    //   135: goto -27 -> 108
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	AppFolderInfoManager
    //   0	138	1	paramFile1	File
    //   0	138	2	paramFile2	File
    //   29	71	3	i1	int
    //   26	8	4	i2	int
    //   52	40	5	localObject1	Object
    //   103	1	5	localException1	Exception
    //   106	16	5	localObject2	Object
    //   63	55	6	localObject3	Object
    //   133	1	6	localException2	Exception
    //   16	21	7	arrayOfString	String[]
    //   40	44	8	str	String
    // Exception table:
    //   from	to	target	type
    //   65	76	103	java/lang/Exception
    //   65	76	116	finally
    //   76	91	129	finally
    //   76	91	133	java/lang/Exception
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
    if ((paramString1 != null) && (paramString2 != null) && (paramString1.startsWith("/"))) {
      if (!paramString2.endsWith("/")) {
        break label56;
      }
    }
    int i3;
    label56:
    for (String str = paramString2.substring(0, paramString2.length() - 1);; str = paramString2)
    {
      i3 = p(str);
      if (i3 != -1) {
        break;
      }
      return;
    }
    int i1 = 0;
    while (i1 != -1)
    {
      int i2 = paramString1.indexOf("/", i1 + 1);
      i1 = i2;
      if (i2 != -1)
      {
        int i4 = o(paramString1.substring(0, i2));
        i1 = i2;
        if (i4 != -1)
        {
          a(i4, i3, paramBoolean);
          i1 = i2;
        }
      }
    }
    com.estrongs.android.scanner.l.a().c(paramString1, paramString2);
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
    //   4: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   7: ldc -30
    //   9: iconst_1
    //   10: anewarray 228	java/lang/String
    //   13: dup
    //   14: iconst_0
    //   15: ldc -26
    //   17: aastore
    //   18: ldc -24
    //   20: iconst_1
    //   21: anewarray 228	java/lang/String
    //   24: dup
    //   25: iconst_0
    //   26: aload_1
    //   27: aastore
    //   28: aconst_null
    //   29: aconst_null
    //   30: aconst_null
    //   31: invokevirtual 238	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
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
    //   52: invokeinterface 244 1 0
    //   57: ifeq +15 -> 72
    //   60: aload 5
    //   62: astore_1
    //   63: aload 5
    //   65: iconst_0
    //   66: invokeinterface 248 2 0
    //   71: istore_3
    //   72: iload_3
    //   73: istore 4
    //   75: aload 5
    //   77: ifnull +13 -> 90
    //   80: aload 5
    //   82: invokeinterface 251 1 0
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
    //   103: invokevirtual 257	java/lang/Exception:printStackTrace	()V
    //   106: iload_2
    //   107: istore 4
    //   109: aload 5
    //   111: ifnull -21 -> 90
    //   114: aload 5
    //   116: invokeinterface 251 1 0
    //   121: iload_2
    //   122: ireturn
    //   123: astore_1
    //   124: aload 5
    //   126: ifnull +10 -> 136
    //   129: aload 5
    //   131: invokeinterface 251 1 0
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
    String str;
    int i2;
    if ((paramString1 != null) && (paramString2 != null) && (paramString1.startsWith("/"))) {
      if (paramString2.endsWith("/"))
      {
        str = paramString2.substring(0, paramString2.length() - 1);
        i2 = p(str);
        if (i2 != -1) {
          break label221;
        }
        i2 = r(str);
      }
    }
    label214:
    label221:
    for (;;)
    {
      int i1 = 0;
      int i3 = 0;
      for (;;)
      {
        if (i1 != -1)
        {
          i1 = paramString1.indexOf("/", i1 + 1);
          i3 += 1;
          continue;
          str = paramString2;
          break;
        }
      }
      i1 = 0;
      int i4 = 0;
      for (;;)
      {
        int i5;
        if (i4 != -1)
        {
          i1 += 1;
          i5 = paramString1.indexOf("/", i4 + 1);
          if (i5 == -1) {
            break label214;
          }
          str = paramString1.substring(0, i5);
          if (!n(str)) {}
        }
        else
        {
          com.estrongs.android.scanner.l.a().b(paramString1, paramString2);
          return;
        }
        int i6 = o(str);
        i4 = i6;
        if (i6 == -1) {
          i4 = q(str);
        }
        a(i4, i2, i3 - i1, paramBoolean);
        i4 = i5;
        continue;
        i4 = i5;
      }
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
    t.execSQL("INSERT OR REPLACE INTO config(key,value) VALUES(?,?)", new Object[] { paramString, Integer.valueOf(paramInt) });
  }
  
  public static AppFolderInfoManager d()
  {
    return a;
  }
  
  private int f()
  {
    return a("app_folder_map_version", 100000000);
  }
  
  private String f(com.estrongs.fs.h paramh)
  {
    for (;;)
    {
      try
      {
        String str2 = ap.bU(paramh.getAbsolutePath());
        if (str2 == null) {
          return null;
        }
        paramh = ap.bV(paramh.getAbsolutePath());
        if (ap.cp(paramh))
        {
          String str1 = ap.cl(paramh);
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
  
  /* Error */
  private void g()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   6: ifnull +4 -> 10
    //   9: return
    //   10: new 106	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 107	java/lang/StringBuilder:<init>	()V
    //   17: getstatic 125	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   20: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: ldc_w 686
    //   26: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   32: astore_3
    //   33: new 106	java/lang/StringBuilder
    //   36: dup
    //   37: invokespecial 107	java/lang/StringBuilder:<init>	()V
    //   40: getstatic 111	com/estrongs/android/pop/a:a	Ljava/lang/String;
    //   43: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: ldc_w 686
    //   49: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: astore_1
    //   56: new 279	java/io/File
    //   59: dup
    //   60: aload_3
    //   61: invokespecial 592	java/io/File:<init>	(Ljava/lang/String;)V
    //   64: astore 4
    //   66: aload 4
    //   68: invokevirtual 491	java/io/File:exists	()Z
    //   71: ifne +47 -> 118
    //   74: new 279	java/io/File
    //   77: dup
    //   78: aload_1
    //   79: invokespecial 592	java/io/File:<init>	(Ljava/lang/String;)V
    //   82: astore_1
    //   83: aload_1
    //   84: invokevirtual 491	java/io/File:exists	()Z
    //   87: ifeq +31 -> 118
    //   90: aload_1
    //   91: aload 4
    //   93: invokevirtual 690	java/io/File:renameTo	(Ljava/io/File;)Z
    //   96: ifne +22 -> 118
    //   99: new 504	java/io/FileInputStream
    //   102: dup
    //   103: aload_1
    //   104: invokespecial 507	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   107: astore_1
    //   108: aload_1
    //   109: aload 4
    //   111: invokestatic 510	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;Ljava/io/File;)V
    //   114: aload_1
    //   115: invokestatic 512	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   118: new 279	java/io/File
    //   121: dup
    //   122: aload_3
    //   123: invokespecial 592	java/io/File:<init>	(Ljava/lang/String;)V
    //   126: invokevirtual 491	java/io/File:exists	()Z
    //   129: ifeq +76 -> 205
    //   132: aload_0
    //   133: aload_3
    //   134: aconst_null
    //   135: iconst_0
    //   136: invokestatic 694	android/database/sqlite/SQLiteDatabase:openDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    //   139: putfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   142: aload_0
    //   143: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   146: ldc_w 696
    //   149: invokevirtual 698	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   152: aload_0
    //   153: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   156: ldc_w 700
    //   159: invokevirtual 698	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   162: return
    //   163: astore_1
    //   164: aload_0
    //   165: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   168: ifnull +10 -> 178
    //   171: aload_0
    //   172: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   175: invokevirtual 701	android/database/sqlite/SQLiteDatabase:close	()V
    //   178: aload_0
    //   179: aconst_null
    //   180: putfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   183: return
    //   184: astore_1
    //   185: aconst_null
    //   186: astore_1
    //   187: aload_1
    //   188: invokestatic 512	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   191: goto -73 -> 118
    //   194: astore_3
    //   195: aload_2
    //   196: astore_1
    //   197: aload_3
    //   198: astore_2
    //   199: aload_1
    //   200: invokestatic 512	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;)V
    //   203: aload_2
    //   204: athrow
    //   205: aload_0
    //   206: aload_3
    //   207: aconst_null
    //   208: invokestatic 705	android/database/sqlite/SQLiteDatabase:openOrCreateDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   211: putfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   214: goto -72 -> 142
    //   217: astore_1
    //   218: new 279	java/io/File
    //   221: dup
    //   222: aload_3
    //   223: invokespecial 592	java/io/File:<init>	(Ljava/lang/String;)V
    //   226: astore_1
    //   227: aload_1
    //   228: invokevirtual 491	java/io/File:exists	()Z
    //   231: ifeq +8 -> 239
    //   234: aload_1
    //   235: invokevirtual 707	java/io/File:delete	()Z
    //   238: pop
    //   239: aload_0
    //   240: aload_3
    //   241: aconst_null
    //   242: invokestatic 705	android/database/sqlite/SQLiteDatabase:openOrCreateDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   245: putfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   248: goto -106 -> 142
    //   251: astore_1
    //   252: goto -74 -> 178
    //   255: astore_2
    //   256: goto -57 -> 199
    //   259: astore_2
    //   260: goto -73 -> 187
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	263	0	this	AppFolderInfoManager
    //   55	60	1	localObject1	Object
    //   163	1	1	localThrowable1	Throwable
    //   184	1	1	localThrowable2	Throwable
    //   186	14	1	localObject2	Object
    //   217	1	1	localThrowable3	Throwable
    //   226	9	1	localFile1	File
    //   251	1	1	localThrowable4	Throwable
    //   1	203	2	localObject3	Object
    //   255	1	2	localObject4	Object
    //   259	1	2	localThrowable5	Throwable
    //   32	102	3	str1	String
    //   194	47	3	str2	String
    //   64	46	4	localFile2	File
    // Exception table:
    //   from	to	target	type
    //   142	162	163	java/lang/Throwable
    //   218	239	163	java/lang/Throwable
    //   239	248	163	java/lang/Throwable
    //   99	108	184	java/lang/Throwable
    //   99	108	194	finally
    //   118	142	217	java/lang/Throwable
    //   205	214	217	java/lang/Throwable
    //   171	178	251	java/lang/Throwable
    //   108	114	255	finally
    //   108	114	259	java/lang/Throwable
  }
  
  private void h()
  {
    if (!ad.a(FexApplication.a()).bf()) {}
    try
    {
      File localFile1 = new File(m);
      if ((localFile1.exists()) && (localFile1.isDirectory()))
      {
        File localFile2 = new File(n);
        if ((!localFile2.exists()) && (!localFile1.renameTo(localFile2)))
        {
          a(localFile1, localFile2);
          a(new File(localFile1, "ver"), new File(localFile2, "ver"));
        }
      }
      ad.a(FexApplication.a()).x(true);
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
  }
  
  /* Error */
  private void i()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 396	com/estrongs/android/appinfo/AppFolderInfoManager:h	()V
    //   4: aload_0
    //   5: getfield 201	com/estrongs/android/appinfo/AppFolderInfoManager:u	Ljava/lang/Object;
    //   8: astore_3
    //   9: aload_3
    //   10: monitorenter
    //   11: aload_0
    //   12: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   15: ifnonnull +7 -> 22
    //   18: aload_0
    //   19: invokespecial 637	com/estrongs/android/appinfo/AppFolderInfoManager:g	()V
    //   22: aload_0
    //   23: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   26: astore 4
    //   28: aload 4
    //   30: ifnonnull +66 -> 96
    //   33: aload_0
    //   34: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   37: ifnull +22 -> 59
    //   40: aload_0
    //   41: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   44: invokevirtual 732	android/database/sqlite/SQLiteDatabase:inTransaction	()Z
    //   47: istore_2
    //   48: iload_2
    //   49: ifeq +10 -> 59
    //   52: aload_0
    //   53: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   56: invokevirtual 735	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   59: aload_3
    //   60: monitorexit
    //   61: return
    //   62: astore 4
    //   64: aload_0
    //   65: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   68: invokevirtual 701	android/database/sqlite/SQLiteDatabase:close	()V
    //   71: aload_0
    //   72: aconst_null
    //   73: putfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   76: goto -17 -> 59
    //   79: astore 4
    //   81: aload_3
    //   82: monitorexit
    //   83: aload 4
    //   85: athrow
    //   86: astore 4
    //   88: aload_0
    //   89: aconst_null
    //   90: putfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   93: aload 4
    //   95: athrow
    //   96: aload_0
    //   97: ldc_w 737
    //   100: iconst_0
    //   101: invokespecial 739	com/estrongs/android/appinfo/AppFolderInfoManager:b	(Ljava/lang/String;I)I
    //   104: istore_1
    //   105: iload_1
    //   106: iconst_1
    //   107: if_icmpne +59 -> 166
    //   110: aload_0
    //   111: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   114: ifnull +22 -> 136
    //   117: aload_0
    //   118: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   121: invokevirtual 732	android/database/sqlite/SQLiteDatabase:inTransaction	()Z
    //   124: istore_2
    //   125: iload_2
    //   126: ifeq +10 -> 136
    //   129: aload_0
    //   130: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   133: invokevirtual 735	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   136: aload_3
    //   137: monitorexit
    //   138: return
    //   139: astore 4
    //   141: aload_0
    //   142: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   145: invokevirtual 701	android/database/sqlite/SQLiteDatabase:close	()V
    //   148: aload_0
    //   149: aconst_null
    //   150: putfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   153: goto -17 -> 136
    //   156: astore 4
    //   158: aload_0
    //   159: aconst_null
    //   160: putfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   163: aload 4
    //   165: athrow
    //   166: new 350	android/content/ContentValues
    //   169: dup
    //   170: invokespecial 351	android/content/ContentValues:<init>	()V
    //   173: astore 4
    //   175: invokestatic 712	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   178: invokevirtual 743	com/estrongs/android/pop/FexApplication:getPackageManager	()Landroid/content/pm/PackageManager;
    //   181: astore 5
    //   183: invokestatic 712	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   186: sipush 8192
    //   189: invokevirtual 746	com/estrongs/android/pop/FexApplication:a	(I)Ljava/util/List;
    //   192: astore 6
    //   194: aload_0
    //   195: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   198: invokevirtual 749	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   201: aload 6
    //   203: invokeinterface 752 1 0
    //   208: astore 6
    //   210: aload 6
    //   212: invokeinterface 566 1 0
    //   217: ifeq +124 -> 341
    //   220: aload 6
    //   222: invokeinterface 570 1 0
    //   227: checkcast 419	android/content/pm/ApplicationInfo
    //   230: astore 7
    //   232: aload 7
    //   234: getfield 755	android/content/pm/ApplicationInfo:flags	I
    //   237: iconst_1
    //   238: iand
    //   239: ifgt -29 -> 210
    //   242: aload 5
    //   244: aload 5
    //   246: aload 7
    //   248: getfield 756	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   251: iconst_0
    //   252: invokevirtual 760	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   255: invokevirtual 764	android/content/pm/PackageManager:getApplicationLabel	(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    //   258: invokeinterface 767 1 0
    //   263: astore 8
    //   265: aload 4
    //   267: invokevirtual 770	android/content/ContentValues:clear	()V
    //   270: aload 4
    //   272: ldc_w 364
    //   275: aload 7
    //   277: getfield 756	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   280: invokevirtual 371	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   283: aload 4
    //   285: ldc_w 772
    //   288: aload 8
    //   290: invokevirtual 371	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   293: aload_0
    //   294: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   297: ldc_w 774
    //   300: aconst_null
    //   301: aload 4
    //   303: invokevirtual 379	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   306: pop2
    //   307: goto -97 -> 210
    //   310: astore 4
    //   312: aload_0
    //   313: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   316: ifnull +22 -> 338
    //   319: aload_0
    //   320: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   323: invokevirtual 732	android/database/sqlite/SQLiteDatabase:inTransaction	()Z
    //   326: istore_2
    //   327: iload_2
    //   328: ifeq +10 -> 338
    //   331: aload_0
    //   332: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   335: invokevirtual 735	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   338: aload_3
    //   339: monitorexit
    //   340: return
    //   341: aload_0
    //   342: ldc_w 737
    //   345: iconst_1
    //   346: invokespecial 776	com/estrongs/android/appinfo/AppFolderInfoManager:c	(Ljava/lang/String;I)V
    //   349: aload_0
    //   350: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   353: invokevirtual 779	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   356: aload_0
    //   357: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   360: ifnull -22 -> 338
    //   363: aload_0
    //   364: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   367: invokevirtual 732	android/database/sqlite/SQLiteDatabase:inTransaction	()Z
    //   370: istore_2
    //   371: iload_2
    //   372: ifeq -34 -> 338
    //   375: aload_0
    //   376: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   379: invokevirtual 735	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   382: goto -44 -> 338
    //   385: astore 4
    //   387: aload_0
    //   388: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   391: invokevirtual 701	android/database/sqlite/SQLiteDatabase:close	()V
    //   394: aload_0
    //   395: aconst_null
    //   396: putfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   399: goto -61 -> 338
    //   402: astore 4
    //   404: aload_0
    //   405: aconst_null
    //   406: putfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   409: aload 4
    //   411: athrow
    //   412: astore 4
    //   414: aload_0
    //   415: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   418: invokevirtual 701	android/database/sqlite/SQLiteDatabase:close	()V
    //   421: aload_0
    //   422: aconst_null
    //   423: putfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   426: goto -88 -> 338
    //   429: astore 4
    //   431: aload_0
    //   432: aconst_null
    //   433: putfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   436: aload 4
    //   438: athrow
    //   439: astore 4
    //   441: aload_0
    //   442: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   445: ifnull +22 -> 467
    //   448: aload_0
    //   449: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   452: invokevirtual 732	android/database/sqlite/SQLiteDatabase:inTransaction	()Z
    //   455: istore_2
    //   456: iload_2
    //   457: ifeq +10 -> 467
    //   460: aload_0
    //   461: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   464: invokevirtual 735	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   467: aload 4
    //   469: athrow
    //   470: astore 5
    //   472: aload_0
    //   473: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   476: invokevirtual 701	android/database/sqlite/SQLiteDatabase:close	()V
    //   479: aload_0
    //   480: aconst_null
    //   481: putfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   484: goto -17 -> 467
    //   487: astore 4
    //   489: aload_0
    //   490: aconst_null
    //   491: putfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   494: aload 4
    //   496: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	497	0	this	AppFolderInfoManager
    //   104	4	1	i1	int
    //   47	410	2	bool	boolean
    //   8	331	3	localObject1	Object
    //   26	3	4	localSQLiteDatabase	SQLiteDatabase
    //   62	1	4	localException1	Exception
    //   79	5	4	localObject2	Object
    //   86	8	4	localObject3	Object
    //   139	1	4	localException2	Exception
    //   156	8	4	localObject4	Object
    //   173	129	4	localContentValues	ContentValues
    //   310	1	4	localException3	Exception
    //   385	1	4	localException4	Exception
    //   402	8	4	localObject5	Object
    //   412	1	4	localException5	Exception
    //   429	8	4	localObject6	Object
    //   439	29	4	localObject7	Object
    //   487	8	4	localObject8	Object
    //   181	64	5	localPackageManager	PackageManager
    //   470	1	5	localException6	Exception
    //   192	29	6	localObject9	Object
    //   230	46	7	localApplicationInfo	ApplicationInfo
    //   263	26	8	str	String
    // Exception table:
    //   from	to	target	type
    //   52	59	62	java/lang/Exception
    //   33	48	79	finally
    //   52	59	79	finally
    //   59	61	79	finally
    //   71	76	79	finally
    //   81	83	79	finally
    //   88	96	79	finally
    //   110	125	79	finally
    //   129	136	79	finally
    //   136	138	79	finally
    //   148	153	79	finally
    //   158	166	79	finally
    //   312	327	79	finally
    //   331	338	79	finally
    //   338	340	79	finally
    //   356	371	79	finally
    //   375	382	79	finally
    //   394	399	79	finally
    //   404	412	79	finally
    //   421	426	79	finally
    //   431	439	79	finally
    //   441	456	79	finally
    //   460	467	79	finally
    //   467	470	79	finally
    //   479	484	79	finally
    //   489	497	79	finally
    //   64	71	86	finally
    //   129	136	139	java/lang/Exception
    //   141	148	156	finally
    //   11	22	310	java/lang/Exception
    //   22	28	310	java/lang/Exception
    //   96	105	310	java/lang/Exception
    //   166	210	310	java/lang/Exception
    //   210	307	310	java/lang/Exception
    //   341	356	310	java/lang/Exception
    //   375	382	385	java/lang/Exception
    //   387	394	402	finally
    //   331	338	412	java/lang/Exception
    //   414	421	429	finally
    //   11	22	439	finally
    //   22	28	439	finally
    //   96	105	439	finally
    //   166	210	439	finally
    //   210	307	439	finally
    //   341	356	439	finally
    //   460	467	470	java/lang/Exception
    //   472	479	487	finally
  }
  
  private n j(String paramString)
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
  
  private void j()
  {
    int i1 = 0;
    Object localObject1;
    if ((!v) && (Build.VERSION.SDK_INT == 21))
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
        localObject2 = new File(o);
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
    v = true;
  }
  
  private final m k(String paramString)
  {
    return (m)d.a(paramString);
  }
  
  private f l(String paramString)
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
  private int m(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   4: ifnonnull +7 -> 11
    //   7: aload_0
    //   8: invokevirtual 219	com/estrongs/android/appinfo/AppFolderInfoManager:a	()V
    //   11: aload_0
    //   12: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   15: ifnonnull +5 -> 20
    //   18: iconst_0
    //   19: ireturn
    //   20: new 850	org/json/simple/parser/JSONParser
    //   23: dup
    //   24: invokespecial 851	org/json/simple/parser/JSONParser:<init>	()V
    //   27: aload_1
    //   28: invokevirtual 855	org/json/simple/parser/JSONParser:parse	(Ljava/lang/String;)Ljava/lang/Object;
    //   31: astore_1
    //   32: aload_1
    //   33: instanceof 857
    //   36: ifeq +376 -> 412
    //   39: aload_1
    //   40: checkcast 857	org/json/simple/JSONArray
    //   43: invokevirtual 858	org/json/simple/JSONArray:iterator	()Ljava/util/Iterator;
    //   46: astore_1
    //   47: iconst_0
    //   48: istore_2
    //   49: aload_1
    //   50: invokeinterface 566 1 0
    //   55: ifeq +355 -> 410
    //   58: aload_1
    //   59: invokeinterface 570 1 0
    //   64: astore 8
    //   66: aload 8
    //   68: checkcast 860	java/util/Map
    //   71: ldc_w 862
    //   74: invokeinterface 865 2 0
    //   79: checkcast 285	java/lang/Long
    //   82: invokevirtual 292	java/lang/Long:intValue	()I
    //   85: istore_3
    //   86: aload 8
    //   88: checkcast 860	java/util/Map
    //   91: ldc_w 353
    //   94: invokeinterface 865 2 0
    //   99: checkcast 228	java/lang/String
    //   102: astore 7
    //   104: aload 8
    //   106: checkcast 860	java/util/Map
    //   109: ldc_w 516
    //   112: invokeinterface 865 2 0
    //   117: checkcast 228	java/lang/String
    //   120: astore 9
    //   122: aload 8
    //   124: checkcast 860	java/util/Map
    //   127: ldc_w 867
    //   130: invokeinterface 865 2 0
    //   135: checkcast 285	java/lang/Long
    //   138: invokevirtual 292	java/lang/Long:intValue	()I
    //   141: istore 4
    //   143: aload 8
    //   145: checkcast 860	java/util/Map
    //   148: ldc_w 869
    //   151: invokeinterface 865 2 0
    //   156: checkcast 285	java/lang/Long
    //   159: invokevirtual 292	java/lang/Long:intValue	()I
    //   162: istore 5
    //   164: aload 8
    //   166: checkcast 860	java/util/Map
    //   169: ldc_w 871
    //   172: invokeinterface 865 2 0
    //   177: checkcast 285	java/lang/Long
    //   180: invokevirtual 292	java/lang/Long:intValue	()I
    //   183: istore 6
    //   185: aload_0
    //   186: getfield 178	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   189: invokeinterface 224 1 0
    //   194: aload_0
    //   195: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   198: invokevirtual 749	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   201: iload 5
    //   203: iconst_1
    //   204: if_icmpne +99 -> 303
    //   207: aload_0
    //   208: iload_3
    //   209: invokespecial 873	com/estrongs/android/appinfo/AppFolderInfoManager:a	(I)V
    //   212: new 350	android/content/ContentValues
    //   215: dup
    //   216: invokespecial 351	android/content/ContentValues:<init>	()V
    //   219: astore 8
    //   221: aload 8
    //   223: ldc -26
    //   225: iload 4
    //   227: invokestatic 358	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   230: invokevirtual 362	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   233: aload_0
    //   234: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   237: ldc -30
    //   239: aload 8
    //   241: ldc -24
    //   243: iconst_1
    //   244: anewarray 228	java/lang/String
    //   247: dup
    //   248: iconst_0
    //   249: ldc_w 657
    //   252: aastore
    //   253: invokevirtual 877	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   256: pop
    //   257: aload_0
    //   258: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   261: invokevirtual 779	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   264: iload_2
    //   265: iconst_1
    //   266: iadd
    //   267: istore_2
    //   268: aload_0
    //   269: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   272: invokevirtual 735	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   275: aload_0
    //   276: getfield 178	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   279: invokeinterface 254 1 0
    //   284: aload_0
    //   285: getfield 144	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   288: aload 7
    //   290: invokevirtual 880	com/estrongs/android/pop/app/imageviewer/gallery/g:b	(Ljava/lang/Object;)V
    //   293: goto -244 -> 49
    //   296: astore_1
    //   297: aload_1
    //   298: invokevirtual 257	java/lang/Exception:printStackTrace	()V
    //   301: aload_1
    //   302: athrow
    //   303: aload_0
    //   304: iload_3
    //   305: aload 7
    //   307: aload 9
    //   309: iload 4
    //   311: iload 5
    //   313: iload 6
    //   315: invokespecial 882	com/estrongs/android/appinfo/AppFolderInfoManager:a	(ILjava/lang/String;Ljava/lang/String;III)V
    //   318: goto -106 -> 212
    //   321: astore_1
    //   322: aload_0
    //   323: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   326: invokevirtual 735	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   329: aload_0
    //   330: getfield 178	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   333: invokeinterface 254 1 0
    //   338: aload_1
    //   339: athrow
    //   340: astore_1
    //   341: aload_0
    //   342: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   345: invokevirtual 701	android/database/sqlite/SQLiteDatabase:close	()V
    //   348: aload_0
    //   349: aconst_null
    //   350: putfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   353: aload_1
    //   354: athrow
    //   355: astore_1
    //   356: aload_0
    //   357: getfield 178	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   360: invokeinterface 254 1 0
    //   365: aload_1
    //   366: athrow
    //   367: astore_1
    //   368: aload_0
    //   369: aconst_null
    //   370: putfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   373: aload_1
    //   374: athrow
    //   375: astore_1
    //   376: aload_0
    //   377: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   380: invokevirtual 701	android/database/sqlite/SQLiteDatabase:close	()V
    //   383: aload_0
    //   384: aconst_null
    //   385: putfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   388: aload_1
    //   389: athrow
    //   390: astore_1
    //   391: aload_0
    //   392: getfield 178	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   395: invokeinterface 254 1 0
    //   400: aload_1
    //   401: athrow
    //   402: astore_1
    //   403: aload_0
    //   404: aconst_null
    //   405: putfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
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
  
  private boolean n(String paramString)
  {
    return j(paramString) != null;
  }
  
  private int o(String paramString)
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
  
  private int p(String paramString)
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
  
  private int q(String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("folder", paramString);
    return (int)c.insert("folder_table", null, localContentValues);
  }
  
  private int r(String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("package", paramString);
    return (int)c.insert("package_table", null, localContentValues);
  }
  
  public Drawable a(Context paramContext, com.estrongs.fs.h paramh, p paramp)
  {
    if ((!ad.a(paramContext).aF()) || (!paramh.getFileType().a()) || (ap.I(paramh.getAbsolutePath()) == 23)) {
      return null;
    }
    return a(paramContext, paramh.getAbsolutePath(), paramp);
  }
  
  public Drawable a(Context paramContext, File paramFile, p paramp)
  {
    if ((!ad.a(paramContext).aF()) || (!paramFile.isDirectory()) || (ap.I(paramFile.getAbsolutePath()) == 23)) {
      return null;
    }
    return a(paramContext, paramFile.getAbsolutePath(), paramp);
  }
  
  public Drawable a(Context paramContext, String arg2, p paramp)
  {
    m localm = k(???);
    if ((localm == null) || (b == 0) || (b == 5)) {
      return null;
    }
    if (b == 1) {
      return FexApplication.a().getResources().getDrawable(c);
    }
    f localf = l(a(a));
    if (localf != null)
    {
      paramContext = (Drawable)f.get(localf.getAbsolutePath());
      if (paramContext != null) {
        if (b == 4) {
          com.estrongs.android.util.a.a(paramContext);
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
          ??? = new q(paramContext);
          if (b == 6) {
            com.estrongs.android.util.a.a(???);
          }
        }
      }
      return (Drawable)???;
      paramContext.setColorFilter(null);
      continue;
      synchronized (q)
      {
        localObject = (List)q.get(localf.getAbsolutePath());
        if (localObject != null)
        {
          if (paramp != null) {
            ((List)localObject).add(paramp);
          }
          return null;
        }
      }
      Object localObject = new ArrayList();
      if (paramp != null) {
        ((List)localObject).add(paramp);
      }
      q.put(localf.getAbsolutePath(), localObject);
      if ((paramp != null) && (paramp.a()))
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
        paramContext = (Drawable)f.get(localf.getAbsolutePath());
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
    //   1: invokeinterface 900 1 0
    //   6: invokevirtual 904	com/estrongs/fs/w:a	()Z
    //   9: ifne +5 -> 14
    //   12: aconst_null
    //   13: areturn
    //   14: aload_2
    //   15: astore 10
    //   17: aload_2
    //   18: ifnonnull +10 -> 28
    //   21: aload_0
    //   22: aload_1
    //   23: invokespecial 978	com/estrongs/android/appinfo/AppFolderInfoManager:f	(Lcom/estrongs/fs/h;)Ljava/lang/String;
    //   26: astore 10
    //   28: aload 10
    //   30: ifnull -18 -> 12
    //   33: new 192	java/util/LinkedList
    //   36: dup
    //   37: invokespecial 193	java/util/LinkedList:<init>	()V
    //   40: astore 12
    //   42: aconst_null
    //   43: astore 6
    //   45: aconst_null
    //   46: astore 7
    //   48: new 192	java/util/LinkedList
    //   51: dup
    //   52: invokespecial 193	java/util/LinkedList:<init>	()V
    //   55: astore 11
    //   57: iconst_1
    //   58: anewarray 228	java/lang/String
    //   61: astore 14
    //   63: aload 14
    //   65: iconst_0
    //   66: ldc_w 516
    //   69: aastore
    //   70: iconst_1
    //   71: anewarray 228	java/lang/String
    //   74: astore 13
    //   76: aload 13
    //   78: iconst_0
    //   79: aload 10
    //   81: aastore
    //   82: aload_0
    //   83: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   86: ifnull +1117 -> 1203
    //   89: aload_0
    //   90: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   93: invokeinterface 224 1 0
    //   98: aload_0
    //   99: aload 10
    //   101: invokespecial 884	com/estrongs/android/appinfo/AppFolderInfoManager:j	(Ljava/lang/String;)Lcom/estrongs/android/appinfo/n;
    //   104: astore_2
    //   105: aload_2
    //   106: ifnull +54 -> 160
    //   109: new 156	com/estrongs/android/appinfo/m
    //   112: dup
    //   113: aload_2
    //   114: getfield 979	com/estrongs/android/appinfo/n:b	I
    //   117: iconst_1
    //   118: invokespecial 982	com/estrongs/android/appinfo/m:<init>	(II)V
    //   121: astore_2
    //   122: aload_0
    //   123: getfield 144	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   126: aload_1
    //   127: invokeinterface 666 1 0
    //   132: aload_2
    //   133: invokevirtual 837	com/estrongs/android/pop/app/imageviewer/gallery/g:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   136: pop
    //   137: iconst_0
    //   138: ifeq +11 -> 149
    //   141: new 984	java/lang/NullPointerException
    //   144: dup
    //   145: invokespecial 985	java/lang/NullPointerException:<init>	()V
    //   148: athrow
    //   149: aload_0
    //   150: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   153: invokeinterface 254 1 0
    //   158: aload_2
    //   159: areturn
    //   160: aload_0
    //   161: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   164: ldc_w 514
    //   167: aload 14
    //   169: ldc_w 888
    //   172: aload 13
    //   174: aconst_null
    //   175: aconst_null
    //   176: aconst_null
    //   177: invokevirtual 238	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   180: astore_2
    //   181: aload_2
    //   182: ifnull +1012 -> 1194
    //   185: aload_2
    //   186: astore 5
    //   188: aload 7
    //   190: astore 9
    //   192: aload_2
    //   193: astore 6
    //   195: aload_2
    //   196: invokeinterface 244 1 0
    //   201: ifeq +107 -> 308
    //   204: aload_2
    //   205: astore 5
    //   207: aload 7
    //   209: astore 9
    //   211: aload_2
    //   212: astore 6
    //   214: aload_2
    //   215: iconst_0
    //   216: invokeinterface 340 2 0
    //   221: astore 8
    //   223: aload_2
    //   224: astore 5
    //   226: aload 7
    //   228: astore 9
    //   230: aload_2
    //   231: astore 6
    //   233: aload 8
    //   235: ldc_w 522
    //   238: invokevirtual 573	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   241: ifeq +60 -> 301
    //   244: aload_2
    //   245: astore 5
    //   247: aload 7
    //   249: astore 9
    //   251: aload_2
    //   252: astore 6
    //   254: aload_0
    //   255: getfield 159	com/estrongs/android/appinfo/AppFolderInfoManager:g	Lcom/estrongs/android/appinfo/m;
    //   258: astore 10
    //   260: aload_2
    //   261: astore 6
    //   263: aload_0
    //   264: getfield 144	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   267: aload_1
    //   268: invokeinterface 666 1 0
    //   273: aload 10
    //   275: invokevirtual 837	com/estrongs/android/pop/app/imageviewer/gallery/g:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   278: pop
    //   279: aload_2
    //   280: ifnull +9 -> 289
    //   283: aload_2
    //   284: invokeinterface 251 1 0
    //   289: aload_0
    //   290: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   293: invokeinterface 254 1 0
    //   298: aload 10
    //   300: areturn
    //   301: aload 8
    //   303: astore 7
    //   305: goto -120 -> 185
    //   308: aload_2
    //   309: astore 5
    //   311: aload 7
    //   313: astore 9
    //   315: aload_2
    //   316: astore 6
    //   318: aload_2
    //   319: invokeinterface 251 1 0
    //   324: aconst_null
    //   325: astore 5
    //   327: aload 7
    //   329: astore_2
    //   330: aload_0
    //   331: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   334: ldc_w 332
    //   337: aload 14
    //   339: ldc_w 888
    //   342: aload 13
    //   344: aconst_null
    //   345: aconst_null
    //   346: ldc_w 987
    //   349: invokevirtual 238	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   352: astore 8
    //   354: aload 8
    //   356: astore 7
    //   358: aload 8
    //   360: ifnull +175 -> 535
    //   363: aload 8
    //   365: astore 5
    //   367: aload_2
    //   368: astore 9
    //   370: aload 8
    //   372: astore 6
    //   374: aload 8
    //   376: invokeinterface 244 1 0
    //   381: ifeq +133 -> 514
    //   384: aload 8
    //   386: astore 5
    //   388: aload_2
    //   389: astore 9
    //   391: aload 8
    //   393: astore 6
    //   395: aload 12
    //   397: aload 8
    //   399: iconst_0
    //   400: invokeinterface 340 2 0
    //   405: invokeinterface 948 2 0
    //   410: pop
    //   411: goto -48 -> 363
    //   414: astore 7
    //   416: aload 9
    //   418: astore_2
    //   419: aconst_null
    //   420: astore 8
    //   422: aload 5
    //   424: astore 6
    //   426: aload 8
    //   428: astore 5
    //   430: aload 7
    //   432: invokevirtual 257	java/lang/Exception:printStackTrace	()V
    //   435: aload 6
    //   437: ifnull +10 -> 447
    //   440: aload 6
    //   442: invokeinterface 251 1 0
    //   447: aload_0
    //   448: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   451: invokeinterface 254 1 0
    //   456: aload_2
    //   457: astore 6
    //   459: aload 12
    //   461: invokeinterface 990 1 0
    //   466: istore 4
    //   468: aload 6
    //   470: ifnonnull +292 -> 762
    //   473: iconst_0
    //   474: istore_3
    //   475: iload_3
    //   476: iload 4
    //   478: iadd
    //   479: aload 11
    //   481: invokeinterface 990 1 0
    //   486: iadd
    //   487: ifne +280 -> 767
    //   490: aload_0
    //   491: getfield 159	com/estrongs/android/appinfo/AppFolderInfoManager:g	Lcom/estrongs/android/appinfo/m;
    //   494: astore_2
    //   495: aload_0
    //   496: getfield 144	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   499: aload_1
    //   500: invokeinterface 666 1 0
    //   505: aload_2
    //   506: invokevirtual 837	com/estrongs/android/pop/app/imageviewer/gallery/g:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   509: pop
    //   510: aload_2
    //   511: astore_1
    //   512: aload_1
    //   513: areturn
    //   514: aload 8
    //   516: astore 5
    //   518: aload_2
    //   519: astore 9
    //   521: aload 8
    //   523: astore 6
    //   525: aload 8
    //   527: invokeinterface 251 1 0
    //   532: aconst_null
    //   533: astore 7
    //   535: aload 7
    //   537: astore 5
    //   539: aload_2
    //   540: astore 9
    //   542: aload 7
    //   544: astore 6
    //   546: aload_0
    //   547: aload 10
    //   549: invokespecial 543	com/estrongs/android/appinfo/AppFolderInfoManager:o	(Ljava/lang/String;)I
    //   552: istore_3
    //   553: aload 7
    //   555: astore 5
    //   557: iload_3
    //   558: iconst_m1
    //   559: if_icmpeq +173 -> 732
    //   562: aload 7
    //   564: astore 5
    //   566: aload_2
    //   567: astore 9
    //   569: aload 7
    //   571: astore 6
    //   573: new 106	java/lang/StringBuilder
    //   576: dup
    //   577: invokespecial 107	java/lang/StringBuilder:<init>	()V
    //   580: ldc_w 330
    //   583: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   586: iload_3
    //   587: invokevirtual 273	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   590: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   593: astore 8
    //   595: aload 7
    //   597: astore 5
    //   599: aload_2
    //   600: astore 9
    //   602: aload 7
    //   604: astore 6
    //   606: aload_0
    //   607: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   610: ldc_w 992
    //   613: iconst_1
    //   614: anewarray 228	java/lang/String
    //   617: dup
    //   618: iconst_0
    //   619: aload 8
    //   621: aastore
    //   622: invokevirtual 996	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   625: astore 7
    //   627: aload 7
    //   629: astore 5
    //   631: aload 7
    //   633: ifnull +99 -> 732
    //   636: aload 7
    //   638: astore 5
    //   640: aload_2
    //   641: astore 9
    //   643: aload 7
    //   645: astore 6
    //   647: aload 7
    //   649: invokeinterface 244 1 0
    //   654: ifeq +57 -> 711
    //   657: aload 7
    //   659: astore 5
    //   661: aload_2
    //   662: astore 9
    //   664: aload 7
    //   666: astore 6
    //   668: aload 11
    //   670: aload 7
    //   672: iconst_0
    //   673: invokeinterface 340 2 0
    //   678: invokeinterface 948 2 0
    //   683: pop
    //   684: goto -48 -> 636
    //   687: astore_1
    //   688: aload 6
    //   690: ifnull +10 -> 700
    //   693: aload 6
    //   695: invokeinterface 251 1 0
    //   700: aload_0
    //   701: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   704: invokeinterface 254 1 0
    //   709: aload_1
    //   710: athrow
    //   711: aload 7
    //   713: astore 5
    //   715: aload_2
    //   716: astore 9
    //   718: aload 7
    //   720: astore 6
    //   722: aload 7
    //   724: invokeinterface 251 1 0
    //   729: aconst_null
    //   730: astore 5
    //   732: aload 5
    //   734: ifnull +10 -> 744
    //   737: aload 5
    //   739: invokeinterface 251 1 0
    //   744: aload_0
    //   745: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   748: invokeinterface 254 1 0
    //   753: aconst_null
    //   754: astore 5
    //   756: aload_2
    //   757: astore 6
    //   759: goto -300 -> 459
    //   762: iconst_1
    //   763: istore_3
    //   764: goto -289 -> 475
    //   767: invokestatic 712	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   770: invokevirtual 743	com/estrongs/android/pop/FexApplication:getPackageManager	()Landroid/content/pm/PackageManager;
    //   773: astore 7
    //   775: aload 6
    //   777: ifnull +13 -> 790
    //   780: aload_0
    //   781: aload 7
    //   783: aload 6
    //   785: invokevirtual 998	com/estrongs/android/appinfo/AppFolderInfoManager:a	(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;
    //   788: astore 5
    //   790: aload 5
    //   792: astore_2
    //   793: aload 5
    //   795: ifnonnull +54 -> 849
    //   798: aload 12
    //   800: invokeinterface 752 1 0
    //   805: astore 8
    //   807: aload 5
    //   809: astore_2
    //   810: aload 8
    //   812: invokeinterface 566 1 0
    //   817: ifeq +32 -> 849
    //   820: aload_0
    //   821: aload 7
    //   823: aload 8
    //   825: invokeinterface 570 1 0
    //   830: checkcast 228	java/lang/String
    //   833: invokevirtual 998	com/estrongs/android/appinfo/AppFolderInfoManager:a	(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;
    //   836: astore 5
    //   838: aload 5
    //   840: astore_2
    //   841: aload 5
    //   843: ifnull -33 -> 810
    //   846: aload 5
    //   848: astore_2
    //   849: aload 11
    //   851: invokeinterface 752 1 0
    //   856: astore 8
    //   858: aload 8
    //   860: invokeinterface 566 1 0
    //   865: ifeq +323 -> 1188
    //   868: aload_0
    //   869: aload 7
    //   871: aload 8
    //   873: invokeinterface 570 1 0
    //   878: checkcast 228	java/lang/String
    //   881: invokevirtual 998	com/estrongs/android/appinfo/AppFolderInfoManager:a	(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/estrongs/android/appinfo/m;
    //   884: astore 5
    //   886: aload 5
    //   888: ifnull +36 -> 924
    //   891: aload_2
    //   892: ifnonnull +299 -> 1191
    //   895: aload 5
    //   897: astore_2
    //   898: aload_2
    //   899: iconst_3
    //   900: putfield 915	com/estrongs/android/appinfo/m:b	I
    //   903: aload_2
    //   904: ifnull +23 -> 927
    //   907: aload_0
    //   908: getfield 144	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   911: aload_1
    //   912: invokeinterface 666 1 0
    //   917: aload_2
    //   918: invokevirtual 837	com/estrongs/android/pop/app/imageviewer/gallery/g:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   921: pop
    //   922: aload_2
    //   923: areturn
    //   924: goto -66 -> 858
    //   927: aload 6
    //   929: ifnull +13 -> 942
    //   932: aload 12
    //   934: iconst_0
    //   935: aload 6
    //   937: invokeinterface 1001 3 0
    //   942: aload 12
    //   944: invokeinterface 752 1 0
    //   949: astore_2
    //   950: aload_2
    //   951: invokeinterface 566 1 0
    //   956: ifeq +61 -> 1017
    //   959: aload_2
    //   960: invokeinterface 570 1 0
    //   965: checkcast 228	java/lang/String
    //   968: astore 5
    //   970: new 279	java/io/File
    //   973: dup
    //   974: aload_0
    //   975: aload 5
    //   977: invokevirtual 407	com/estrongs/android/appinfo/AppFolderInfoManager:a	(Ljava/lang/String;)Ljava/lang/String;
    //   980: invokespecial 592	java/io/File:<init>	(Ljava/lang/String;)V
    //   983: invokevirtual 491	java/io/File:exists	()Z
    //   986: ifeq -36 -> 950
    //   989: new 156	com/estrongs/android/appinfo/m
    //   992: dup
    //   993: aload 5
    //   995: iconst_4
    //   996: invokespecial 972	com/estrongs/android/appinfo/m:<init>	(Ljava/lang/String;I)V
    //   999: astore_2
    //   1000: aload_0
    //   1001: getfield 144	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   1004: aload_1
    //   1005: invokeinterface 666 1 0
    //   1010: aload_2
    //   1011: invokevirtual 837	com/estrongs/android/pop/app/imageviewer/gallery/g:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1014: pop
    //   1015: aload_2
    //   1016: areturn
    //   1017: aload 11
    //   1019: invokeinterface 752 1 0
    //   1024: astore 5
    //   1026: aload 5
    //   1028: invokeinterface 566 1 0
    //   1033: ifeq +60 -> 1093
    //   1036: aload 5
    //   1038: invokeinterface 570 1 0
    //   1043: checkcast 228	java/lang/String
    //   1046: astore_2
    //   1047: new 279	java/io/File
    //   1050: dup
    //   1051: aload_0
    //   1052: aload_2
    //   1053: invokevirtual 407	com/estrongs/android/appinfo/AppFolderInfoManager:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1056: invokespecial 592	java/io/File:<init>	(Ljava/lang/String;)V
    //   1059: invokevirtual 491	java/io/File:exists	()Z
    //   1062: ifeq -36 -> 1026
    //   1065: new 156	com/estrongs/android/appinfo/m
    //   1068: dup
    //   1069: aload_2
    //   1070: bipush 6
    //   1072: invokespecial 972	com/estrongs/android/appinfo/m:<init>	(Ljava/lang/String;I)V
    //   1075: astore_2
    //   1076: aload_0
    //   1077: getfield 144	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   1080: aload_1
    //   1081: invokeinterface 666 1 0
    //   1086: aload_2
    //   1087: invokevirtual 837	com/estrongs/android/pop/app/imageviewer/gallery/g:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1090: pop
    //   1091: aload_2
    //   1092: areturn
    //   1093: aload_0
    //   1094: getfield 161	com/estrongs/android/appinfo/AppFolderInfoManager:h	Lcom/estrongs/android/appinfo/m;
    //   1097: astore_2
    //   1098: aload_0
    //   1099: getfield 144	com/estrongs/android/appinfo/AppFolderInfoManager:d	Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    //   1102: aload_1
    //   1103: invokeinterface 666 1 0
    //   1108: aload_0
    //   1109: getfield 161	com/estrongs/android/appinfo/AppFolderInfoManager:h	Lcom/estrongs/android/appinfo/m;
    //   1112: invokevirtual 837	com/estrongs/android/pop/app/imageviewer/gallery/g:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1115: pop
    //   1116: aload_2
    //   1117: astore_1
    //   1118: goto -606 -> 512
    //   1121: astore_1
    //   1122: aconst_null
    //   1123: astore 6
    //   1125: goto -437 -> 688
    //   1128: astore_1
    //   1129: aload 5
    //   1131: astore 6
    //   1133: goto -445 -> 688
    //   1136: astore_1
    //   1137: goto -449 -> 688
    //   1140: astore 7
    //   1142: aconst_null
    //   1143: astore 6
    //   1145: aconst_null
    //   1146: astore 5
    //   1148: aconst_null
    //   1149: astore_2
    //   1150: goto -720 -> 430
    //   1153: astore 6
    //   1155: aload_2
    //   1156: astore 8
    //   1158: aload 7
    //   1160: astore_2
    //   1161: aload 10
    //   1163: astore 5
    //   1165: aload 6
    //   1167: astore 7
    //   1169: aload 8
    //   1171: astore 6
    //   1173: goto -743 -> 430
    //   1176: astore 7
    //   1178: aload 5
    //   1180: astore 6
    //   1182: aconst_null
    //   1183: astore 5
    //   1185: goto -755 -> 430
    //   1188: goto -285 -> 903
    //   1191: goto -293 -> 898
    //   1194: aload_2
    //   1195: astore 5
    //   1197: aload 6
    //   1199: astore_2
    //   1200: goto -870 -> 330
    //   1203: aconst_null
    //   1204: astore 6
    //   1206: aconst_null
    //   1207: astore 5
    //   1209: goto -750 -> 459
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1212	0	this	AppFolderInfoManager
    //   0	1212	1	paramh	com.estrongs.fs.h
    //   0	1212	2	paramString	String
    //   474	290	3	i1	int
    //   466	13	4	i2	int
    //   186	1022	5	localObject1	Object
    //   43	1101	6	localObject2	Object
    //   1153	13	6	localException1	Exception
    //   1171	34	6	localObject3	Object
    //   46	311	7	localObject4	Object
    //   414	17	7	localException2	Exception
    //   533	337	7	localObject5	Object
    //   1140	19	7	localException3	Exception
    //   1167	1	7	localException4	Exception
    //   1176	1	7	localException5	Exception
    //   221	949	8	localObject6	Object
    //   190	527	9	localObject7	Object
    //   15	1147	10	localObject8	Object
    //   55	963	11	localLinkedList1	LinkedList
    //   40	903	12	localLinkedList2	LinkedList
    //   74	269	13	arrayOfString1	String[]
    //   61	277	14	arrayOfString2	String[]
    // Exception table:
    //   from	to	target	type
    //   195	204	414	java/lang/Exception
    //   214	223	414	java/lang/Exception
    //   233	244	414	java/lang/Exception
    //   254	260	414	java/lang/Exception
    //   318	324	414	java/lang/Exception
    //   374	384	414	java/lang/Exception
    //   395	411	414	java/lang/Exception
    //   525	532	414	java/lang/Exception
    //   546	553	414	java/lang/Exception
    //   573	595	414	java/lang/Exception
    //   606	627	414	java/lang/Exception
    //   647	657	414	java/lang/Exception
    //   668	684	414	java/lang/Exception
    //   722	729	414	java/lang/Exception
    //   195	204	687	finally
    //   214	223	687	finally
    //   233	244	687	finally
    //   254	260	687	finally
    //   263	279	687	finally
    //   318	324	687	finally
    //   374	384	687	finally
    //   395	411	687	finally
    //   525	532	687	finally
    //   546	553	687	finally
    //   573	595	687	finally
    //   606	627	687	finally
    //   647	657	687	finally
    //   668	684	687	finally
    //   722	729	687	finally
    //   98	105	1121	finally
    //   109	137	1121	finally
    //   160	181	1121	finally
    //   330	354	1128	finally
    //   430	435	1136	finally
    //   98	105	1140	java/lang/Exception
    //   109	137	1140	java/lang/Exception
    //   160	181	1140	java/lang/Exception
    //   263	279	1153	java/lang/Exception
    //   330	354	1176	java/lang/Exception
  }
  
  public String a(String paramString)
  {
    return n + "/" + paramString + ".png";
  }
  
  /* Error */
  protected void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   4: ifnull +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: getfield 178	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   12: invokeinterface 224 1 0
    //   17: aload_0
    //   18: invokespecial 1005	com/estrongs/android/appinfo/AppFolderInfoManager:j	()V
    //   21: new 279	java/io/File
    //   24: dup
    //   25: getstatic 135	com/estrongs/android/appinfo/AppFolderInfoManager:p	Ljava/lang/String;
    //   28: invokespecial 592	java/io/File:<init>	(Ljava/lang/String;)V
    //   31: invokevirtual 491	java/io/File:exists	()Z
    //   34: ifne +7 -> 41
    //   37: aload_0
    //   38: invokevirtual 1007	com/estrongs/android/appinfo/AppFolderInfoManager:b	()V
    //   41: aload_0
    //   42: getstatic 135	com/estrongs/android/appinfo/AppFolderInfoManager:p	Ljava/lang/String;
    //   45: aconst_null
    //   46: iconst_0
    //   47: invokestatic 694	android/database/sqlite/SQLiteDatabase:openDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    //   50: putfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   53: aload_0
    //   54: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   57: ifnonnull +32 -> 89
    //   60: new 279	java/io/File
    //   63: dup
    //   64: getstatic 135	com/estrongs/android/appinfo/AppFolderInfoManager:p	Ljava/lang/String;
    //   67: invokespecial 592	java/io/File:<init>	(Ljava/lang/String;)V
    //   70: invokevirtual 707	java/io/File:delete	()Z
    //   73: pop
    //   74: aload_0
    //   75: invokevirtual 1007	com/estrongs/android/appinfo/AppFolderInfoManager:b	()V
    //   78: aload_0
    //   79: getstatic 135	com/estrongs/android/appinfo/AppFolderInfoManager:p	Ljava/lang/String;
    //   82: aconst_null
    //   83: invokestatic 705	android/database/sqlite/SQLiteDatabase:openOrCreateDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   86: putfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   89: aload_0
    //   90: getfield 178	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   93: invokeinterface 254 1 0
    //   98: return
    //   99: astore_1
    //   100: aload_1
    //   101: invokevirtual 1008	java/lang/Throwable:printStackTrace	()V
    //   104: goto -51 -> 53
    //   107: astore_1
    //   108: aload_1
    //   109: invokevirtual 1008	java/lang/Throwable:printStackTrace	()V
    //   112: aload_0
    //   113: getfield 178	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   116: invokeinterface 254 1 0
    //   121: return
    //   122: astore_1
    //   123: aload_0
    //   124: getfield 178	com/estrongs/android/appinfo/AppFolderInfoManager:k	Ljava/util/concurrent/locks/Lock;
    //   127: invokeinterface 254 1 0
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
  
  public void a(Context paramContext, com.estrongs.fs.h paramh, String paramString, boolean paramBoolean, v paramv)
  {
    String str = f(paramh);
    if (str == null) {
      return;
    }
    new i(this, str, paramString, paramh, paramv, paramContext, paramBoolean).start();
  }
  
  public void a(v paramv)
  {
    i();
    if (!an.b()) {}
    Date localDate1;
    Date localDate2;
    do
    {
      return;
      localDate1 = new Date(ad.a(FexApplication.a()).aH());
      localDate2 = new Date();
    } while ((localDate1.getYear() == localDate2.getYear()) && (localDate1.getMonth() == localDate2.getMonth()) && (localDate1.getDay() == localDate2.getDay()));
    com.estrongs.android.scanner.l.a().g();
    if (c == null) {
      a();
    }
    a(new g(this, paramv));
  }
  
  /* Error */
  void a(String paramString, Collection<String> paramCollection)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_2
    //   3: invokeinterface 1050 1 0
    //   8: iconst_1
    //   9: anewarray 228	java/lang/String
    //   12: astore 5
    //   14: aload 5
    //   16: iconst_0
    //   17: ldc_w 516
    //   20: aastore
    //   21: aload_0
    //   22: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   25: invokeinterface 224 1 0
    //   30: iconst_1
    //   31: anewarray 228	java/lang/String
    //   34: astore 6
    //   36: aload 6
    //   38: iconst_0
    //   39: aload_1
    //   40: aastore
    //   41: aload_0
    //   42: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   45: ldc_w 514
    //   48: aload 5
    //   50: ldc_w 888
    //   53: aload 6
    //   55: aconst_null
    //   56: aconst_null
    //   57: aconst_null
    //   58: invokevirtual 238	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   61: astore_1
    //   62: aload_1
    //   63: ifnull +222 -> 285
    //   66: aload_1
    //   67: astore_3
    //   68: aload_1
    //   69: astore 4
    //   71: aload_1
    //   72: invokeinterface 244 1 0
    //   77: ifeq +46 -> 123
    //   80: aload_1
    //   81: astore_3
    //   82: aload_1
    //   83: astore 4
    //   85: aload_2
    //   86: aload_1
    //   87: iconst_0
    //   88: invokeinterface 340 2 0
    //   93: invokeinterface 1051 2 0
    //   98: pop
    //   99: goto -33 -> 66
    //   102: astore_1
    //   103: aload_3
    //   104: ifnull +9 -> 113
    //   107: aload_3
    //   108: invokeinterface 251 1 0
    //   113: aload_0
    //   114: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   117: invokeinterface 254 1 0
    //   122: return
    //   123: aload_1
    //   124: astore_3
    //   125: aload_1
    //   126: astore 4
    //   128: aload_1
    //   129: invokeinterface 251 1 0
    //   134: aconst_null
    //   135: astore_1
    //   136: aload_0
    //   137: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   140: ldc_w 332
    //   143: aload 5
    //   145: ldc_w 888
    //   148: aload 6
    //   150: aconst_null
    //   151: aconst_null
    //   152: aconst_null
    //   153: invokevirtual 238	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
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
    //   171: invokeinterface 244 1 0
    //   176: ifeq +50 -> 226
    //   179: aload_1
    //   180: astore_3
    //   181: aload_1
    //   182: astore 4
    //   184: aload_2
    //   185: aload_1
    //   186: iconst_0
    //   187: invokeinterface 340 2 0
    //   192: invokeinterface 1051 2 0
    //   197: pop
    //   198: goto -33 -> 165
    //   201: astore_1
    //   202: aload 4
    //   204: astore_2
    //   205: aload_2
    //   206: ifnull +9 -> 215
    //   209: aload_2
    //   210: invokeinterface 251 1 0
    //   215: aload_0
    //   216: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   219: invokeinterface 254 1 0
    //   224: aload_1
    //   225: athrow
    //   226: aload_1
    //   227: astore_3
    //   228: aload_1
    //   229: astore 4
    //   231: aload_1
    //   232: invokeinterface 251 1 0
    //   237: aconst_null
    //   238: astore_3
    //   239: aload_3
    //   240: ifnull +9 -> 249
    //   243: aload_3
    //   244: invokeinterface 251 1 0
    //   249: aload_0
    //   250: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   253: invokeinterface 254 1 0
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
    a(paramString, paramList, new k(this, paramString));
  }
  
  public void a(String paramString, List<com.estrongs.fs.h> paramList, r paramr)
  {
    if (paramList == null) {}
    boolean bool1;
    label49:
    do
    {
      return;
      boolean bool3 = ad.a(FexApplication.a()).aF();
      bool1 = bool3;
      if (bool3)
      {
        if ((!ap.bC(paramString)) && (!ap.cg(paramString)) && (!ap.bu(paramString))) {
          break;
        }
        bool1 = true;
        boolean bool2 = bool1;
        if (!bool1) {
          bool2 = a(paramList);
        }
        bool1 = bool3;
        if (!bool2) {
          bool1 = false;
        }
      }
    } while (!bool1);
    paramString = null;
    Iterator localIterator = paramList.iterator();
    for (;;)
    {
      label92:
      if (localIterator.hasNext())
      {
        paramList = (com.estrongs.fs.h)localIterator.next();
        if ((paramList.getFileType().a()) && (ap.I(paramList.getAbsolutePath()) != 23)) {
          if ((paramList instanceof com.estrongs.fs.impl.c.d)) {
            paramList = (com.estrongs.fs.h)b.get(0);
          }
        }
      }
    }
    label163:
    label188:
    label238:
    for (;;)
    {
      if (k(paramList.getAbsolutePath()) == null) {
        if (paramString == null)
        {
          paramString = new LinkedList();
          paramString.add(paramList);
        }
      }
      for (;;)
      {
        break label92;
        bool1 = false;
        break label49;
        if (!(paramList instanceof com.estrongs.android.ui.topclassify.c)) {
          break label238;
        }
        paramList = d(paramList);
        break label163;
        if (paramString == null) {
          break;
        }
        a(paramString, paramr);
        return;
        break label188;
      }
    }
  }
  
  public void a(List<com.estrongs.fs.h> paramList, r paramr)
  {
    if ((paramList == null) || (paramr == null)) {
      return;
    }
    new d(this, paramList, paramr).start();
  }
  
  public void a(File[] paramArrayOfFile, r paramr)
  {
    if ((paramArrayOfFile == null) || (paramr == null)) {}
    Object localObject1;
    label83:
    do
    {
      do
      {
        return;
      } while (!ad.a(FexApplication.a()).aF());
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
          if (ap.bC(str)) {
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
          if (d().k(str) == null)
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
    a((List)localObject1, paramr);
  }
  
  public boolean a(Context paramContext, com.estrongs.fs.h paramh)
  {
    if ((!ad.a(paramContext).aF()) || (!paramh.getFileType().a()) || (ap.I(paramh.getAbsolutePath()) == 23)) {}
    do
    {
      return false;
      paramContext = k(paramh.getAbsolutePath());
    } while ((paramContext == null) || ((b != 4) && (b != 6)));
    return true;
  }
  
  public boolean a(List<com.estrongs.fs.h> paramList)
  {
    if ((paramList == null) || (paramList.size() < 1)) {
      return false;
    }
    return e((com.estrongs.fs.h)paramList.get(0));
  }
  
  /* Error */
  public s b(com.estrongs.fs.h paramh)
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
    //   14: invokespecial 978	com/estrongs/android/appinfo/AppFolderInfoManager:f	(Lcom/estrongs/fs/h;)Ljava/lang/String;
    //   17: astore_1
    //   18: aload_1
    //   19: ifnonnull +5 -> 24
    //   22: aconst_null
    //   23: areturn
    //   24: aload_0
    //   25: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   28: ifnull -6 -> 22
    //   31: aload_0
    //   32: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   35: invokeinterface 224 1 0
    //   40: aload_0
    //   41: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   44: ldc_w 1109
    //   47: iconst_1
    //   48: anewarray 228	java/lang/String
    //   51: dup
    //   52: iconst_0
    //   53: aload_1
    //   54: aastore
    //   55: invokevirtual 996	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   58: astore_3
    //   59: aload_3
    //   60: ifnull +120 -> 180
    //   63: aload_3
    //   64: astore 4
    //   66: aload 8
    //   68: astore 5
    //   70: invokestatic 712	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   73: invokevirtual 743	com/estrongs/android/pop/FexApplication:getPackageManager	()Landroid/content/pm/PackageManager;
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
    //   91: invokeinterface 244 1 0
    //   96: ifeq +84 -> 180
    //   99: aload_3
    //   100: astore 4
    //   102: aload_1
    //   103: astore 5
    //   105: aload_3
    //   106: iconst_0
    //   107: invokeinterface 340 2 0
    //   112: astore 7
    //   114: aload_3
    //   115: astore 4
    //   117: aload_1
    //   118: astore 5
    //   120: aload_3
    //   121: iconst_1
    //   122: invokeinterface 248 2 0
    //   127: istore_2
    //   128: aload_3
    //   129: astore 4
    //   131: aload_1
    //   132: astore 5
    //   134: aload 8
    //   136: aload 7
    //   138: iconst_0
    //   139: invokevirtual 577	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   142: ifnull -61 -> 81
    //   145: aload_3
    //   146: astore 4
    //   148: aload_1
    //   149: astore 5
    //   151: new 1111	com/estrongs/android/appinfo/s
    //   154: dup
    //   155: aload_0
    //   156: invokespecial 1113	com/estrongs/android/appinfo/s:<init>	(Lcom/estrongs/android/appinfo/AppFolderInfoManager;)V
    //   159: astore 6
    //   161: aload_3
    //   162: astore 4
    //   164: aload 6
    //   166: aload 7
    //   168: putfield 1114	com/estrongs/android/appinfo/s:a	Ljava/lang/String;
    //   171: aload_3
    //   172: astore 4
    //   174: aload 6
    //   176: iload_2
    //   177: putfield 1115	com/estrongs/android/appinfo/s:b	I
    //   180: aload_3
    //   181: ifnull +9 -> 190
    //   184: aload_3
    //   185: invokeinterface 251 1 0
    //   190: aload_0
    //   191: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   194: invokeinterface 254 1 0
    //   199: aload 6
    //   201: areturn
    //   202: astore_1
    //   203: aconst_null
    //   204: astore_3
    //   205: aload_3
    //   206: astore 4
    //   208: aload_1
    //   209: invokevirtual 257	java/lang/Exception:printStackTrace	()V
    //   212: aload_3
    //   213: ifnull +9 -> 222
    //   216: aload_3
    //   217: invokeinterface 251 1 0
    //   222: aload_0
    //   223: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   226: invokeinterface 254 1 0
    //   231: aload 5
    //   233: areturn
    //   234: astore_1
    //   235: aconst_null
    //   236: astore 4
    //   238: aload 4
    //   240: ifnull +10 -> 250
    //   243: aload 4
    //   245: invokeinterface 251 1 0
    //   250: aload_0
    //   251: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   254: invokeinterface 254 1 0
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
    FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.X();
    if (localFileExplorerActivity != null) {
      localFileExplorerActivity.p(paramString);
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
    //   7: invokeinterface 1050 1 0
    //   12: aload_0
    //   13: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   16: invokeinterface 224 1 0
    //   21: aload_0
    //   22: aload_1
    //   23: invokespecial 543	com/estrongs/android/appinfo/AppFolderInfoManager:o	(Ljava/lang/String;)I
    //   26: istore_3
    //   27: aload 4
    //   29: astore_1
    //   30: iload_3
    //   31: iconst_m1
    //   32: if_icmpeq +103 -> 135
    //   35: new 106	java/lang/StringBuilder
    //   38: dup
    //   39: invokespecial 107	java/lang/StringBuilder:<init>	()V
    //   42: ldc_w 330
    //   45: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: iload_3
    //   49: invokevirtual 273	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   52: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: astore_1
    //   56: aload_0
    //   57: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   60: ldc_w 992
    //   63: iconst_1
    //   64: anewarray 228	java/lang/String
    //   67: dup
    //   68: iconst_0
    //   69: aload_1
    //   70: aastore
    //   71: invokevirtual 996	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   74: astore_1
    //   75: aload_1
    //   76: ifnull +114 -> 190
    //   79: aload_1
    //   80: invokeinterface 244 1 0
    //   85: ifeq +41 -> 126
    //   88: aload_2
    //   89: aload_1
    //   90: iconst_0
    //   91: invokeinterface 340 2 0
    //   96: invokeinterface 1051 2 0
    //   101: pop
    //   102: goto -23 -> 79
    //   105: astore_2
    //   106: aload_1
    //   107: ifnull +9 -> 116
    //   110: aload_1
    //   111: invokeinterface 251 1 0
    //   116: aload_0
    //   117: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   120: invokeinterface 254 1 0
    //   125: return
    //   126: aload_1
    //   127: invokeinterface 251 1 0
    //   132: aload 4
    //   134: astore_1
    //   135: aload_1
    //   136: ifnull +9 -> 145
    //   139: aload_1
    //   140: invokeinterface 251 1 0
    //   145: aload_0
    //   146: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   149: invokeinterface 254 1 0
    //   154: return
    //   155: astore_2
    //   156: aload 5
    //   158: astore_1
    //   159: aload_1
    //   160: ifnull +9 -> 169
    //   163: aload_1
    //   164: invokeinterface 251 1 0
    //   169: aload_0
    //   170: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   173: invokeinterface 254 1 0
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
    f.evictAll();
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
    paramString = FileExplorerActivity.X();
    if (paramString != null) {
      paramString.f(true);
    }
  }
  
  public boolean c(com.estrongs.fs.h paramh)
  {
    if (paramh == null) {}
    do
    {
      return false;
      paramh = f(paramh);
    } while (paramh == null);
    paramh = j(paramh);
    if (paramh == null) {
      return true;
    }
    return c;
  }
  
  public com.estrongs.fs.h d(com.estrongs.fs.h paramh)
  {
    com.estrongs.android.ui.topclassify.c localc = (com.estrongs.android.ui.topclassify.c)paramh;
    paramh = localc;
    if (localc.b() == 20)
    {
      paramh = localc;
      if (localc.c() != null)
      {
        paramh = localc;
        if (localc.d() != null) {
          paramh = new x(localc.d());
        }
      }
    }
    return paramh;
  }
  
  public void d(String paramString)
  {
    d.a();
    paramString = FileExplorerActivity.X();
    if (paramString != null) {
      paramString.f(true);
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
    localObject3 = ap.a();
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
          } while (!ap.i(nexta, a));
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
  public List<w> e()
  {
    // Byte code:
    //   0: new 57	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 949	java/util/ArrayList:<init>	()V
    //   7: astore 8
    //   9: invokestatic 712	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   12: invokevirtual 743	com/estrongs/android/pop/FexApplication:getPackageManager	()Landroid/content/pm/PackageManager;
    //   15: astore 9
    //   17: aload_0
    //   18: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   21: ifnonnull +7 -> 28
    //   24: aload_0
    //   25: invokespecial 637	com/estrongs/android/appinfo/AppFolderInfoManager:g	()V
    //   28: aload_0
    //   29: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   32: ifnull +161 -> 193
    //   35: aload_0
    //   36: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   39: ldc_w 774
    //   42: iconst_2
    //   43: anewarray 228	java/lang/String
    //   46: dup
    //   47: iconst_0
    //   48: ldc_w 364
    //   51: aastore
    //   52: dup
    //   53: iconst_1
    //   54: ldc_w 772
    //   57: aastore
    //   58: aconst_null
    //   59: aconst_null
    //   60: aconst_null
    //   61: aconst_null
    //   62: aconst_null
    //   63: invokevirtual 238	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   66: astore 5
    //   68: aload 5
    //   70: ifnull +331 -> 401
    //   73: aload 5
    //   75: astore 6
    //   77: aload 5
    //   79: invokeinterface 244 1 0
    //   84: ifeq +317 -> 401
    //   87: aload 5
    //   89: astore 6
    //   91: aload 5
    //   93: iconst_0
    //   94: invokeinterface 340 2 0
    //   99: astore 10
    //   101: aload 5
    //   103: astore 6
    //   105: aload 5
    //   107: iconst_1
    //   108: invokeinterface 340 2 0
    //   113: astore 11
    //   115: aload 5
    //   117: astore 6
    //   119: aload 9
    //   121: aload 10
    //   123: iconst_0
    //   124: invokevirtual 577	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   127: astore 7
    //   129: aload 7
    //   131: astore 6
    //   133: aload 6
    //   135: ifnonnull -62 -> 73
    //   138: aload 5
    //   140: astore 6
    //   142: aload 8
    //   144: new 1218	com/estrongs/android/appinfo/w
    //   147: dup
    //   148: aload 11
    //   150: aload 10
    //   152: aload_0
    //   153: aload 10
    //   155: invokevirtual 407	com/estrongs/android/appinfo/AppFolderInfoManager:a	(Ljava/lang/String;)Ljava/lang/String;
    //   158: invokespecial 1221	com/estrongs/android/appinfo/w:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   161: invokeinterface 948 2 0
    //   166: pop
    //   167: goto -94 -> 73
    //   170: astore 7
    //   172: aload 5
    //   174: astore 6
    //   176: aload 7
    //   178: invokevirtual 257	java/lang/Exception:printStackTrace	()V
    //   181: aload 5
    //   183: ifnull +10 -> 193
    //   186: aload 5
    //   188: invokeinterface 251 1 0
    //   193: new 279	java/io/File
    //   196: dup
    //   197: getstatic 127	com/estrongs/android/appinfo/AppFolderInfoManager:n	Ljava/lang/String;
    //   200: invokespecial 592	java/io/File:<init>	(Ljava/lang/String;)V
    //   203: astore 6
    //   205: aload 6
    //   207: invokevirtual 491	java/io/File:exists	()Z
    //   210: ifeq +241 -> 451
    //   213: aload 6
    //   215: invokevirtual 721	java/io/File:isDirectory	()Z
    //   218: ifeq +233 -> 451
    //   221: aload 6
    //   223: invokevirtual 498	java/io/File:list	()[Ljava/lang/String;
    //   226: astore 7
    //   228: aload 7
    //   230: ifnull +221 -> 451
    //   233: aload 7
    //   235: arraylength
    //   236: istore_3
    //   237: iconst_0
    //   238: istore_1
    //   239: iload_1
    //   240: iload_3
    //   241: if_icmpge +210 -> 451
    //   244: aload 7
    //   246: iload_1
    //   247: aaload
    //   248: astore 5
    //   250: new 279	java/io/File
    //   253: dup
    //   254: aload 6
    //   256: aload 5
    //   258: invokespecial 499	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   261: invokevirtual 502	java/io/File:isFile	()Z
    //   264: ifeq +122 -> 386
    //   267: ldc_w 1003
    //   270: aload 5
    //   272: invokestatic 1224	com/estrongs/android/util/ap:bR	(Ljava/lang/String;)Ljava/lang/String;
    //   275: invokevirtual 573	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   278: ifeq +108 -> 386
    //   281: aload 5
    //   283: iconst_0
    //   284: aload 5
    //   286: invokevirtual 532	java/lang/String:length	()I
    //   289: iconst_4
    //   290: isub
    //   291: invokevirtual 536	java/lang/String:substring	(II)Ljava/lang/String;
    //   294: astore 10
    //   296: aload 8
    //   298: invokeinterface 752 1 0
    //   303: astore 5
    //   305: aload 5
    //   307: invokeinterface 566 1 0
    //   312: ifeq +227 -> 539
    //   315: aload 5
    //   317: invokeinterface 570 1 0
    //   322: checkcast 1218	com/estrongs/android/appinfo/w
    //   325: getfield 1225	com/estrongs/android/appinfo/w:b	Ljava/lang/String;
    //   328: aload 10
    //   330: invokevirtual 573	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   333: istore 4
    //   335: iload 4
    //   337: ifeq -32 -> 305
    //   340: iconst_1
    //   341: istore_2
    //   342: iload_2
    //   343: ifne +43 -> 386
    //   346: aload 9
    //   348: aload 10
    //   350: iconst_0
    //   351: invokevirtual 577	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   354: astore 5
    //   356: aload 5
    //   358: ifnonnull +28 -> 386
    //   361: aload 8
    //   363: new 1218	com/estrongs/android/appinfo/w
    //   366: dup
    //   367: aload 10
    //   369: aload 10
    //   371: aload_0
    //   372: aload 10
    //   374: invokevirtual 407	com/estrongs/android/appinfo/AppFolderInfoManager:a	(Ljava/lang/String;)Ljava/lang/String;
    //   377: invokespecial 1221	com/estrongs/android/appinfo/w:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   380: invokeinterface 948 2 0
    //   385: pop
    //   386: iload_1
    //   387: iconst_1
    //   388: iadd
    //   389: istore_1
    //   390: goto -151 -> 239
    //   393: astore 6
    //   395: aconst_null
    //   396: astore 6
    //   398: goto -265 -> 133
    //   401: aload 5
    //   403: ifnull -210 -> 193
    //   406: aload 5
    //   408: invokeinterface 251 1 0
    //   413: goto -220 -> 193
    //   416: astore 5
    //   418: aconst_null
    //   419: astore 6
    //   421: aload 6
    //   423: ifnull +10 -> 433
    //   426: aload 6
    //   428: invokeinterface 251 1 0
    //   433: aload 5
    //   435: athrow
    //   436: astore 5
    //   438: aconst_null
    //   439: astore 5
    //   441: goto -85 -> 356
    //   444: astore 5
    //   446: aload 5
    //   448: invokevirtual 257	java/lang/Exception:printStackTrace	()V
    //   451: aload 8
    //   453: invokeinterface 752 1 0
    //   458: astore 5
    //   460: aload 5
    //   462: invokeinterface 566 1 0
    //   467: ifeq +56 -> 523
    //   470: aload 5
    //   472: invokeinterface 570 1 0
    //   477: checkcast 1218	com/estrongs/android/appinfo/w
    //   480: astore 6
    //   482: ldc_w 1227
    //   485: new 106	java/lang/StringBuilder
    //   488: dup
    //   489: invokespecial 107	java/lang/StringBuilder:<init>	()V
    //   492: aload 6
    //   494: getfield 1225	com/estrongs/android/appinfo/w:b	Ljava/lang/String;
    //   497: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   500: ldc_w 1229
    //   503: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   506: aload 6
    //   508: getfield 1230	com/estrongs/android/appinfo/w:a	Ljava/lang/String;
    //   511: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   514: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   517: invokestatic 1233	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   520: goto -60 -> 460
    //   523: aload 8
    //   525: areturn
    //   526: astore 5
    //   528: goto -107 -> 421
    //   531: astore 7
    //   533: aconst_null
    //   534: astore 5
    //   536: goto -364 -> 172
    //   539: iconst_0
    //   540: istore_2
    //   541: goto -199 -> 342
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	544	0	this	AppFolderInfoManager
    //   238	152	1	i1	int
    //   341	200	2	i2	int
    //   236	6	3	i3	int
    //   333	3	4	bool	boolean
    //   66	341	5	localObject1	Object
    //   416	18	5	localObject2	Object
    //   436	1	5	localNameNotFoundException1	PackageManager.NameNotFoundException
    //   439	1	5	localObject3	Object
    //   444	3	5	localException1	Exception
    //   458	13	5	localIterator	Iterator
    //   526	1	5	localObject4	Object
    //   534	1	5	localObject5	Object
    //   75	180	6	localObject6	Object
    //   393	1	6	localNameNotFoundException2	PackageManager.NameNotFoundException
    //   396	111	6	localw	w
    //   127	3	7	localPackageInfo	PackageInfo
    //   170	7	7	localException2	Exception
    //   226	19	7	arrayOfString	String[]
    //   531	1	7	localException3	Exception
    //   7	517	8	localArrayList	ArrayList
    //   15	332	9	localPackageManager	PackageManager
    //   99	274	10	str1	String
    //   113	36	11	str2	String
    // Exception table:
    //   from	to	target	type
    //   77	87	170	java/lang/Exception
    //   91	101	170	java/lang/Exception
    //   105	115	170	java/lang/Exception
    //   119	129	170	java/lang/Exception
    //   142	167	170	java/lang/Exception
    //   119	129	393	android/content/pm/PackageManager$NameNotFoundException
    //   35	68	416	finally
    //   346	356	436	android/content/pm/PackageManager$NameNotFoundException
    //   193	228	444	java/lang/Exception
    //   233	237	444	java/lang/Exception
    //   250	305	444	java/lang/Exception
    //   305	335	444	java/lang/Exception
    //   346	356	444	java/lang/Exception
    //   361	386	444	java/lang/Exception
    //   77	87	526	finally
    //   91	101	526	finally
    //   105	115	526	finally
    //   119	129	526	finally
    //   142	167	526	finally
    //   176	181	526	finally
    //   35	68	531	java/lang/Exception
  }
  
  public boolean e(com.estrongs.fs.h paramh)
  {
    if ((paramh != null) && ((paramh instanceof com.estrongs.android.ui.topclassify.c)))
    {
      paramh = (com.estrongs.android.ui.topclassify.c)paramh;
      if ((paramh.b() == 20) && (paramh.c() != null)) {
        return true;
      }
    }
    return false;
  }
  
  /* Error */
  Map<String, Boolean> f(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 185	java/util/HashMap
    //   5: dup
    //   6: invokespecial 186	java/util/HashMap:<init>	()V
    //   9: astore 4
    //   11: aload_0
    //   12: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   15: invokeinterface 224 1 0
    //   20: iconst_1
    //   21: anewarray 228	java/lang/String
    //   24: astore 5
    //   26: aload 5
    //   28: iconst_0
    //   29: ldc_w 353
    //   32: aastore
    //   33: iconst_1
    //   34: anewarray 228	java/lang/String
    //   37: astore 6
    //   39: aload 6
    //   41: iconst_0
    //   42: aload_1
    //   43: aastore
    //   44: aload_0
    //   45: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   48: ldc_w 514
    //   51: aload 5
    //   53: ldc_w 1236
    //   56: aload 6
    //   58: aconst_null
    //   59: aconst_null
    //   60: aconst_null
    //   61: invokevirtual 238	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   64: astore_1
    //   65: aload_1
    //   66: ifnull +251 -> 317
    //   69: aload_1
    //   70: astore_2
    //   71: aload_1
    //   72: astore_3
    //   73: aload_1
    //   74: invokeinterface 244 1 0
    //   79: ifeq +52 -> 131
    //   82: aload_1
    //   83: astore_2
    //   84: aload_1
    //   85: astore_3
    //   86: aload 4
    //   88: aload_1
    //   89: iconst_0
    //   90: invokeinterface 340 2 0
    //   95: iconst_1
    //   96: invokestatic 844	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   99: invokeinterface 1237 3 0
    //   104: pop
    //   105: goto -36 -> 69
    //   108: astore_1
    //   109: aload_2
    //   110: ifnull +9 -> 119
    //   113: aload_2
    //   114: invokeinterface 251 1 0
    //   119: aload_0
    //   120: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   123: invokeinterface 254 1 0
    //   128: aload 4
    //   130: areturn
    //   131: aload_1
    //   132: astore_2
    //   133: aload_1
    //   134: astore_3
    //   135: aload_1
    //   136: invokeinterface 251 1 0
    //   141: aconst_null
    //   142: astore_1
    //   143: aload_0
    //   144: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   147: ldc_w 332
    //   150: aload 5
    //   152: ldc_w 1236
    //   155: aload 6
    //   157: aconst_null
    //   158: aconst_null
    //   159: aconst_null
    //   160: invokevirtual 238	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
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
    //   177: invokeinterface 244 1 0
    //   182: ifeq +77 -> 259
    //   185: aload_1
    //   186: astore_2
    //   187: aload_1
    //   188: astore_3
    //   189: aload_1
    //   190: iconst_0
    //   191: invokeinterface 340 2 0
    //   196: astore 5
    //   198: aload_1
    //   199: astore_2
    //   200: aload_1
    //   201: astore_3
    //   202: aload 4
    //   204: aload 5
    //   206: invokeinterface 1240 2 0
    //   211: ifne -39 -> 172
    //   214: aload_1
    //   215: astore_2
    //   216: aload_1
    //   217: astore_3
    //   218: aload 4
    //   220: aload 5
    //   222: iconst_0
    //   223: invokestatic 844	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   226: invokeinterface 1237 3 0
    //   231: pop
    //   232: goto -60 -> 172
    //   235: astore_1
    //   236: aload_3
    //   237: astore_2
    //   238: aload_2
    //   239: ifnull +9 -> 248
    //   242: aload_2
    //   243: invokeinterface 251 1 0
    //   248: aload_0
    //   249: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   252: invokeinterface 254 1 0
    //   257: aload_1
    //   258: athrow
    //   259: aload_1
    //   260: astore_2
    //   261: aload_1
    //   262: astore_3
    //   263: aload_1
    //   264: invokeinterface 251 1 0
    //   269: aconst_null
    //   270: astore_2
    //   271: aload_2
    //   272: ifnull +9 -> 281
    //   275: aload_2
    //   276: invokeinterface 251 1 0
    //   281: aload_0
    //   282: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   285: invokeinterface 254 1 0
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
    //   5: getfield 201	com/estrongs/android/appinfo/AppFolderInfoManager:u	Ljava/lang/Object;
    //   8: astore 4
    //   10: aload 4
    //   12: monitorenter
    //   13: aload_0
    //   14: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   17: ifnonnull +7 -> 24
    //   20: aload_0
    //   21: invokespecial 637	com/estrongs/android/appinfo/AppFolderInfoManager:g	()V
    //   24: aload_0
    //   25: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   28: ifnonnull +8 -> 36
    //   31: aload 4
    //   33: monitorexit
    //   34: aconst_null
    //   35: areturn
    //   36: aload_0
    //   37: getfield 199	com/estrongs/android/appinfo/AppFolderInfoManager:t	Landroid/database/sqlite/SQLiteDatabase;
    //   40: ldc_w 774
    //   43: iconst_1
    //   44: anewarray 228	java/lang/String
    //   47: dup
    //   48: iconst_0
    //   49: ldc_w 772
    //   52: aastore
    //   53: ldc_w 892
    //   56: iconst_1
    //   57: anewarray 228	java/lang/String
    //   60: dup
    //   61: iconst_0
    //   62: aload_1
    //   63: aastore
    //   64: aconst_null
    //   65: aconst_null
    //   66: aconst_null
    //   67: invokevirtual 238	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
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
    //   82: invokeinterface 244 1 0
    //   87: ifeq +11 -> 98
    //   90: aload_2
    //   91: iconst_0
    //   92: invokeinterface 340 2 0
    //   97: astore_1
    //   98: aload_2
    //   99: ifnull +63 -> 162
    //   102: aload_2
    //   103: invokeinterface 251 1 0
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
    //   127: invokeinterface 251 1 0
    //   132: aconst_null
    //   133: astore_1
    //   134: goto -26 -> 108
    //   137: aload_2
    //   138: ifnull +9 -> 147
    //   141: aload_2
    //   142: invokeinterface 251 1 0
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
  
  /* Error */
  public List<o> i(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   4: ifnonnull +7 -> 11
    //   7: aload_0
    //   8: invokevirtual 219	com/estrongs/android/appinfo/AppFolderInfoManager:a	()V
    //   11: new 57	java/util/ArrayList
    //   14: dup
    //   15: invokespecial 949	java/util/ArrayList:<init>	()V
    //   18: astore 4
    //   20: aload_0
    //   21: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   24: invokeinterface 224 1 0
    //   29: iconst_1
    //   30: anewarray 228	java/lang/String
    //   33: astore 5
    //   35: aload 5
    //   37: iconst_0
    //   38: ldc_w 353
    //   41: aastore
    //   42: iconst_1
    //   43: anewarray 228	java/lang/String
    //   46: astore 6
    //   48: aload 6
    //   50: iconst_0
    //   51: aload_1
    //   52: aastore
    //   53: aload_0
    //   54: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   57: ldc_w 514
    //   60: aload 5
    //   62: ldc_w 1236
    //   65: aload 6
    //   67: aconst_null
    //   68: aconst_null
    //   69: aconst_null
    //   70: invokevirtual 238	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   73: astore_2
    //   74: aload_2
    //   75: ifnull +297 -> 372
    //   78: aload_2
    //   79: astore_3
    //   80: aload_2
    //   81: astore_1
    //   82: aload_2
    //   83: invokeinterface 244 1 0
    //   88: ifeq +83 -> 171
    //   91: aload_2
    //   92: astore_3
    //   93: aload_2
    //   94: astore_1
    //   95: new 1248	com/estrongs/android/appinfo/o
    //   98: dup
    //   99: aload_0
    //   100: invokespecial 1249	com/estrongs/android/appinfo/o:<init>	(Lcom/estrongs/android/appinfo/AppFolderInfoManager;)V
    //   103: astore 7
    //   105: aload_2
    //   106: astore_3
    //   107: aload_2
    //   108: astore_1
    //   109: aload 7
    //   111: aload_2
    //   112: iconst_0
    //   113: invokeinterface 340 2 0
    //   118: putfield 1250	com/estrongs/android/appinfo/o:a	Ljava/lang/String;
    //   121: aload_2
    //   122: astore_3
    //   123: aload_2
    //   124: astore_1
    //   125: aload 4
    //   127: aload 7
    //   129: invokeinterface 948 2 0
    //   134: pop
    //   135: goto -57 -> 78
    //   138: astore_1
    //   139: aload_3
    //   140: astore_2
    //   141: aload_1
    //   142: astore_3
    //   143: aload_2
    //   144: astore_1
    //   145: aload_3
    //   146: invokevirtual 257	java/lang/Exception:printStackTrace	()V
    //   149: aload_2
    //   150: ifnull +9 -> 159
    //   153: aload_2
    //   154: invokeinterface 251 1 0
    //   159: aload_0
    //   160: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   163: invokeinterface 254 1 0
    //   168: aload 4
    //   170: areturn
    //   171: aload_2
    //   172: astore_3
    //   173: aload_2
    //   174: astore_1
    //   175: aload_2
    //   176: invokeinterface 251 1 0
    //   181: aconst_null
    //   182: astore_1
    //   183: aload_0
    //   184: getfield 139	com/estrongs/android/appinfo/AppFolderInfoManager:c	Landroid/database/sqlite/SQLiteDatabase;
    //   187: ldc_w 332
    //   190: aload 5
    //   192: ldc_w 1236
    //   195: aload 6
    //   197: aconst_null
    //   198: aconst_null
    //   199: aconst_null
    //   200: invokevirtual 238	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   203: astore_2
    //   204: aload_2
    //   205: astore_1
    //   206: aload_2
    //   207: ifnull +117 -> 324
    //   210: aload_2
    //   211: astore_3
    //   212: aload_2
    //   213: astore_1
    //   214: aload_2
    //   215: invokeinterface 244 1 0
    //   220: ifeq +92 -> 312
    //   223: aload_2
    //   224: astore_3
    //   225: aload_2
    //   226: astore_1
    //   227: new 1248	com/estrongs/android/appinfo/o
    //   230: dup
    //   231: aload_0
    //   232: invokespecial 1249	com/estrongs/android/appinfo/o:<init>	(Lcom/estrongs/android/appinfo/AppFolderInfoManager;)V
    //   235: astore 5
    //   237: aload_2
    //   238: astore_3
    //   239: aload_2
    //   240: astore_1
    //   241: aload 5
    //   243: aload_2
    //   244: iconst_0
    //   245: invokeinterface 340 2 0
    //   250: putfield 1250	com/estrongs/android/appinfo/o:a	Ljava/lang/String;
    //   253: aload_2
    //   254: astore_3
    //   255: aload_2
    //   256: astore_1
    //   257: aload 4
    //   259: aload 5
    //   261: invokeinterface 1253 2 0
    //   266: ifne -56 -> 210
    //   269: aload_2
    //   270: astore_3
    //   271: aload_2
    //   272: astore_1
    //   273: aload 4
    //   275: aload 5
    //   277: invokeinterface 948 2 0
    //   282: pop
    //   283: goto -73 -> 210
    //   286: astore_3
    //   287: aload_1
    //   288: astore_2
    //   289: aload_3
    //   290: astore_1
    //   291: aload_2
    //   292: ifnull +9 -> 301
    //   295: aload_2
    //   296: invokeinterface 251 1 0
    //   301: aload_0
    //   302: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   305: invokeinterface 254 1 0
    //   310: aload_1
    //   311: athrow
    //   312: aload_2
    //   313: astore_3
    //   314: aload_2
    //   315: astore_1
    //   316: aload_2
    //   317: invokeinterface 251 1 0
    //   322: aconst_null
    //   323: astore_1
    //   324: aload_1
    //   325: ifnull +9 -> 334
    //   328: aload_1
    //   329: invokeinterface 251 1 0
    //   334: aload_0
    //   335: getfield 172	com/estrongs/android/appinfo/AppFolderInfoManager:j	Ljava/util/concurrent/locks/Lock;
    //   338: invokeinterface 254 1 0
    //   343: aload 4
    //   345: areturn
    //   346: astore_1
    //   347: aconst_null
    //   348: astore_2
    //   349: goto -58 -> 291
    //   352: astore_3
    //   353: aload_1
    //   354: astore_2
    //   355: aload_3
    //   356: astore_1
    //   357: goto -66 -> 291
    //   360: astore_3
    //   361: aconst_null
    //   362: astore_2
    //   363: goto -220 -> 143
    //   366: astore_3
    //   367: aload_1
    //   368: astore_2
    //   369: goto -226 -> 143
    //   372: aload_2
    //   373: astore_1
    //   374: goto -191 -> 183
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	377	0	this	AppFolderInfoManager
    //   0	377	1	paramString	String
    //   73	300	2	localObject1	Object
    //   79	192	3	localObject2	Object
    //   286	4	3	localObject3	Object
    //   313	1	3	localObject4	Object
    //   352	4	3	localObject5	Object
    //   360	1	3	localException1	Exception
    //   366	1	3	localException2	Exception
    //   18	326	4	localArrayList	ArrayList
    //   33	243	5	localObject6	Object
    //   46	150	6	arrayOfString	String[]
    //   103	25	7	localo	o
    // Exception table:
    //   from	to	target	type
    //   82	91	138	java/lang/Exception
    //   95	105	138	java/lang/Exception
    //   109	121	138	java/lang/Exception
    //   125	135	138	java/lang/Exception
    //   175	181	138	java/lang/Exception
    //   214	223	138	java/lang/Exception
    //   227	237	138	java/lang/Exception
    //   241	253	138	java/lang/Exception
    //   257	269	138	java/lang/Exception
    //   273	283	138	java/lang/Exception
    //   316	322	138	java/lang/Exception
    //   82	91	286	finally
    //   95	105	286	finally
    //   109	121	286	finally
    //   125	135	286	finally
    //   145	149	286	finally
    //   175	181	286	finally
    //   214	223	286	finally
    //   227	237	286	finally
    //   241	253	286	finally
    //   257	269	286	finally
    //   273	283	286	finally
    //   316	322	286	finally
    //   29	35	346	finally
    //   42	48	346	finally
    //   53	74	346	finally
    //   183	204	352	finally
    //   29	35	360	java/lang/Exception
    //   42	48	360	java/lang/Exception
    //   53	74	360	java/lang/Exception
    //   183	204	366	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.AppFolderInfoManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */