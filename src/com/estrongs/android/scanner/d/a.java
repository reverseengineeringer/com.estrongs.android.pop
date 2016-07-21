package com.estrongs.android.scanner.d;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import com.estrongs.android.pop.FexApplication;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class a
  extends SQLiteOpenHelper
{
  private static a a = new a(FexApplication.a());
  private SQLiteDatabase b;
  private int c = 0;
  private final Map<String, String> d = new HashMap();
  
  private a(Context paramContext)
  {
    this(paramContext, "scanner.db", null, 5);
  }
  
  private a(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    super(paramContext, paramString, paramCursorFactory, paramInt);
    d.put("directory", String.format(com.estrongs.android.scanner.a.b.a, new Object[] { "directory" }));
    d.put("apk", String.format(com.estrongs.android.scanner.a.d.a, new Object[] { "apk" }));
    d.put("image", String.format(com.estrongs.android.scanner.a.d.a, new Object[] { "image" }));
    d.put("audio", String.format(com.estrongs.android.scanner.a.d.a, new Object[] { "audio" }));
    d.put("video", String.format(com.estrongs.android.scanner.a.d.a, new Object[] { "video" }));
    d.put("zip", String.format(com.estrongs.android.scanner.a.d.a, new Object[] { "zip" }));
    d.put("encrypt", String.format(com.estrongs.android.scanner.a.d.a, new Object[] { "encrypt" }));
    d.put("text", String.format(com.estrongs.android.scanner.a.h.b, new Object[] { "text" }));
  }
  
  public static a a()
  {
    return a;
  }
  
  private void a(Boolean paramBoolean)
  {
    if (paramBoolean.booleanValue()) {}
    for (paramBoolean = a.getReadableDatabase();; paramBoolean = a.getWritableDatabase())
    {
      b = paramBoolean;
      return;
    }
  }
  
  private boolean a(k paramk)
  {
    boolean bool2 = true;
    if (paramk == null) {
      return true;
    }
    boolean bool1 = bool2;
    try
    {
      b();
      bool1 = bool2;
      b.beginTransaction();
      bool1 = bool2;
      bool2 = paramk.a();
      if (bool2)
      {
        bool1 = bool2;
        b.setTransactionSuccessful();
      }
      try
      {
        b.endTransaction();
        close();
        return bool2;
      }
      catch (Exception paramk)
      {
        paramk.printStackTrace();
        return bool2;
      }
      try
      {
        b.endTransaction();
        close();
        throw paramk;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
    }
    catch (Exception paramk)
    {
      paramk = paramk;
      paramk.printStackTrace();
      try
      {
        b.endTransaction();
        close();
        return bool1;
      }
      catch (Exception paramk)
      {
        paramk.printStackTrace();
        return bool1;
      }
    }
    finally {}
  }
  
  /* Error */
  private int b(l paraml, String paramString1, String[] paramArrayOfString, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +9 -> 10
    //   4: iconst_0
    //   5: istore 9
    //   7: iload 9
    //   9: ireturn
    //   10: aload_0
    //   11: invokevirtual 111	com/estrongs/android/scanner/d/a:b	()V
    //   14: aload_0
    //   15: getfield 86	com/estrongs/android/scanner/d/a:b	Landroid/database/sqlite/SQLiteDatabase;
    //   18: iconst_1
    //   19: aload_2
    //   20: aload_3
    //   21: aload 4
    //   23: aconst_null
    //   24: aload 5
    //   26: aconst_null
    //   27: aload 6
    //   29: aload 7
    //   31: invokevirtual 137	android/database/sqlite/SQLiteDatabase:query	(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   34: astore_2
    //   35: aload_2
    //   36: ifnull +141 -> 177
    //   39: aload_2
    //   40: invokeinterface 143 1 0
    //   45: istore 9
    //   47: iload 9
    //   49: istore 8
    //   51: aload_2
    //   52: invokeinterface 146 1 0
    //   57: ifeq +34 -> 91
    //   60: aload_1
    //   61: aload_2
    //   62: invokeinterface 151 2 0
    //   67: aload_1
    //   68: aload_2
    //   69: invokeinterface 153 2 0
    //   74: aload_2
    //   75: invokeinterface 156 1 0
    //   80: istore 10
    //   82: iload 10
    //   84: ifne -17 -> 67
    //   87: iload 9
    //   89: istore 8
    //   91: aload_0
    //   92: invokevirtual 129	com/estrongs/android/scanner/d/a:close	()V
    //   95: iload 8
    //   97: istore 9
    //   99: aload_2
    //   100: ifnull -93 -> 7
    //   103: aload_2
    //   104: invokeinterface 157 1 0
    //   109: iload 8
    //   111: ireturn
    //   112: astore_1
    //   113: iconst_0
    //   114: istore 8
    //   116: aconst_null
    //   117: astore_2
    //   118: aload_0
    //   119: invokevirtual 129	com/estrongs/android/scanner/d/a:close	()V
    //   122: iload 8
    //   124: istore 9
    //   126: aload_2
    //   127: ifnull -120 -> 7
    //   130: aload_2
    //   131: invokeinterface 157 1 0
    //   136: iload 8
    //   138: ireturn
    //   139: astore_1
    //   140: aconst_null
    //   141: astore_2
    //   142: aload_0
    //   143: invokevirtual 129	com/estrongs/android/scanner/d/a:close	()V
    //   146: aload_2
    //   147: ifnull +9 -> 156
    //   150: aload_2
    //   151: invokeinterface 157 1 0
    //   156: aload_1
    //   157: athrow
    //   158: astore_1
    //   159: goto -17 -> 142
    //   162: astore_1
    //   163: iconst_0
    //   164: istore 8
    //   166: goto -48 -> 118
    //   169: astore_1
    //   170: iload 9
    //   172: istore 8
    //   174: goto -56 -> 118
    //   177: iconst_0
    //   178: istore 8
    //   180: goto -89 -> 91
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	183	0	this	a
    //   0	183	1	paraml	l
    //   0	183	2	paramString1	String
    //   0	183	3	paramArrayOfString	String[]
    //   0	183	4	paramString2	String
    //   0	183	5	paramString3	String
    //   0	183	6	paramString4	String
    //   0	183	7	paramString5	String
    //   49	130	8	i	int
    //   5	166	9	j	int
    //   80	3	10	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   10	35	112	java/lang/Exception
    //   10	35	139	finally
    //   39	47	158	finally
    //   51	67	158	finally
    //   67	82	158	finally
    //   39	47	162	java/lang/Exception
    //   51	67	169	java/lang/Exception
    //   67	82	169	java/lang/Exception
  }
  
  private List<String> f(String paramString, List<Long> paramList)
  {
    int j = 0;
    if (paramList.isEmpty()) {
      return Collections.emptyList();
    }
    ArrayList localArrayList = new ArrayList(paramList.size() / 100 + 1);
    for (;;)
    {
      int k = j + 100;
      int i = k;
      if (k > paramList.size()) {
        i = paramList.size();
      }
      Object localObject = paramList.subList(j, i);
      if ((localObject == null) || (((List)localObject).isEmpty())) {}
      do
      {
        return localArrayList;
        StringBuilder localStringBuilder = new StringBuilder(paramString);
        localStringBuilder.append(" IN (");
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          localStringBuilder.append((Long)((Iterator)localObject).next()).append(",");
        }
        localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
        localStringBuilder.append(")");
        com.estrongs.android.util.l.c("Dbhelper", "where: " + localStringBuilder);
        localArrayList.add(localStringBuilder.toString());
      } while (i >= paramList.size());
      j = i;
    }
  }
  
  public int a(l paraml, String paramString1, String[] paramArrayOfString, String paramString2, String paramString3)
  {
    return b(paraml, paramString1, paramArrayOfString, paramString2, null, paramString3, null);
  }
  
  public int a(l paraml, String paramString1, String[] paramArrayOfString, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    return b(paraml, paramString1, paramArrayOfString, paramString2, paramString3, paramString4, paramString5);
  }
  
  public Cursor a(String paramString1, String[] paramArrayOfString, String paramString2, String paramString3)
  {
    return b.query(true, paramString1, paramArrayOfString, paramString2, null, null, null, paramString3, null);
  }
  
  public Cursor a(String paramString1, String[] paramArrayOfString, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    return b.query(true, paramString1, paramArrayOfString, paramString2, null, paramString3, null, paramString4, paramString5);
  }
  
  public List<Long> a(String paramString)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("path").append(">=").append(DatabaseUtils.sqlEscapeString(paramString)).append(" AND ");
    ((StringBuilder)localObject).append("path").append("<").append(DatabaseUtils.sqlEscapeString(paramString));
    ((StringBuilder)localObject).deleteCharAt(((StringBuilder)localObject).length() - 1);
    ((StringBuilder)localObject).deleteCharAt(((StringBuilder)localObject).length() - 1);
    ((StringBuilder)localObject).append("0'");
    paramString = ((StringBuilder)localObject).toString();
    localObject = new LinkedList();
    a(new i(this, (List)localObject), "directory", new String[] { "_id" }, paramString, null);
    return (List<Long>)localObject;
  }
  
  public void a(List<String> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return;
    }
    a(new j(this, paramList));
  }
  
  public void a(boolean paramBoolean)
  {
    long l = System.currentTimeMillis();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("timestamp", Long.valueOf(l));
    localContentValues.put("name", "scanner");
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put("value", Integer.valueOf(i));
      b();
      b.insert("status", null, localContentValues);
      close();
      return;
    }
  }
  
  public boolean a(String paramString, ContentValues paramContentValues)
  {
    boolean bool = true;
    if (paramContentValues == null) {
      return true;
    }
    b();
    if (b.replace(paramString, null, paramContentValues) != -1L) {}
    for (;;)
    {
      close();
      return bool;
      bool = false;
    }
  }
  
  public boolean a(String paramString1, ContentValues paramContentValues, String paramString2)
  {
    boolean bool = true;
    if ((paramString2 == null) || (paramString1 == null) || (paramContentValues == null)) {
      return true;
    }
    com.estrongs.android.util.l.b("Dbhelper", "update file, where:" + paramString2 + ", values:" + paramContentValues);
    b();
    if (b.update(paramString1, paramContentValues, paramString2, null) != -1) {}
    for (;;)
    {
      close();
      return bool;
      bool = false;
    }
  }
  
  public boolean a(String paramString, List<Long> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return true;
    }
    return a(new b(this, paramList, paramString));
  }
  
  public boolean a(String paramString, Set<com.estrongs.android.scanner.a.d> paramSet)
  {
    if ((paramSet == null) || (paramSet.isEmpty())) {
      return true;
    }
    return a(new f(this, paramSet, paramString, System.currentTimeMillis()));
  }
  
  public boolean a(Set<com.estrongs.android.scanner.a.b> paramSet)
  {
    if ((paramSet == null) || (paramSet.isEmpty())) {
      return true;
    }
    return a(new e(this, paramSet, System.currentTimeMillis()));
  }
  
  public void b()
  {
    try
    {
      c += 1;
      if (b != null) {
        return;
      }
      com.estrongs.android.util.l.d("Dbhelper", "open new db instance!");
      a(Boolean.valueOf(false));
      return;
    }
    finally {}
  }
  
  public boolean b(String paramString, List<com.estrongs.android.scanner.a.d> paramList)
  {
    if (paramList == null) {
      return true;
    }
    return a(new c(this, paramList, paramString));
  }
  
  public boolean c()
  {
    b();
    Cursor localCursor = b.query(true, "status", new String[] { "value", "timestamp" }, "name='scanner'", null, null, null, null, null);
    if ((localCursor != null) && (localCursor.moveToFirst())) {
      localCursor.getLong(1);
    }
    for (int i = localCursor.getInt(0);; i = 0)
    {
      localCursor.close();
      close();
      return i == 1;
    }
  }
  
  public boolean c(String paramString, List<com.estrongs.android.scanner.a.c> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return true;
    }
    return a(new d(this, paramString, paramList));
  }
  
  public void close()
  {
    try
    {
      if ((c == 0) || (b == null))
      {
        com.estrongs.android.util.l.d("Dbhelper", "has closed db instance!!");
        return;
      }
      c -= 1;
      if (c == 0)
      {
        com.estrongs.android.util.l.d("Dbhelper", "close db instance!");
        b.close();
        b = null;
      }
      return;
    }
    finally {}
  }
  
  public boolean d(String paramString, List<com.estrongs.android.scanner.a.c> paramList)
  {
    if (paramList == null) {
      return true;
    }
    return a(new g(this, paramList, paramString));
  }
  
  public boolean e(String paramString, List<com.estrongs.android.scanner.a.d> paramList)
  {
    if (paramList == null) {
      return true;
    }
    return a(new h(this, paramList, paramString));
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("create table directory (_id integer primary key, name text not null, lastmodified int not null, pathtype integer not null, isLogPath int not null, path text unique not null);");
    paramSQLiteDatabase.execSQL("create table image (_id integer primary key, name text not null, lastmodified int not null, pathtype integer not null, isLogPath int not null, pid integer not null, size integer not null, filetype integer not null, extension text, groupname text);");
    paramSQLiteDatabase.execSQL("create table video (_id integer primary key, name text not null, lastmodified int not null, pathtype integer not null, isLogPath int not null, pid integer not null, size integer not null, filetype integer not null, extension text, groupname text);");
    paramSQLiteDatabase.execSQL("create table text (_id integer primary key, name text not null, lastmodified int not null, pathtype integer not null, isLogPath int not null, pid integer not null, size integer not null, filetype integer not null, extension text, groupname text, archive int);");
    paramSQLiteDatabase.execSQL("create table audio (_id integer primary key, name text not null, lastmodified int not null, pathtype integer not null, isLogPath int not null, pid integer not null, size integer not null, filetype integer not null, extension text, groupname text);");
    paramSQLiteDatabase.execSQL("create table apk (_id integer primary key, name text not null, lastmodified int not null, pathtype integer not null, isLogPath int not null, pid integer not null, size integer not null, filetype integer not null, extension text, groupname text);");
    paramSQLiteDatabase.execSQL("create table zip (_id integer primary key, name text not null, lastmodified int not null, pathtype integer not null, isLogPath int not null, pid integer not null, size integer not null, filetype integer not null, extension text, groupname text);");
    paramSQLiteDatabase.execSQL("create table encrypt (_id integer primary key, name text not null, lastmodified int not null, pathtype integer not null, isLogPath int not null, pid integer not null, size integer not null, filetype integer not null, extension text, groupname text);");
    paramSQLiteDatabase.execSQL("create table latestOpen (_id integer primary key, path text unique not null, timestamp long not null, category integer not null);");
    paramSQLiteDatabase.execSQL("create table status(_id integer primary key, name text not null, value integer not null, timestamp integer not null);");
    paramSQLiteDatabase.execSQL("CREATE INDEX directory_path_index ON directory (path);");
    paramSQLiteDatabase.execSQL("CREATE INDEX image_pid_index ON image (pid);");
    paramSQLiteDatabase.execSQL("CREATE INDEX audio_pid_index ON audio (pid);");
    paramSQLiteDatabase.execSQL("CREATE INDEX video_pid_index ON video (pid);");
    paramSQLiteDatabase.execSQL("CREATE INDEX text_pid_index ON text (pid);");
    paramSQLiteDatabase.execSQL("CREATE INDEX apk_pid_index ON apk (pid);");
    paramSQLiteDatabase.execSQL("CREATE INDEX zip_pid_index ON zip (pid);");
    paramSQLiteDatabase.execSQL("CREATE INDEX encrypt_pid_index ON encrypt (pid);");
    paramSQLiteDatabase.execSQL("CREATE INDEX image_groupname_index ON image (groupname);");
    paramSQLiteDatabase.execSQL("CREATE INDEX audio_groupname_index ON audio (groupname);");
    paramSQLiteDatabase.execSQL("CREATE INDEX video_groupname_index ON video (groupname);");
    paramSQLiteDatabase.execSQL("CREATE INDEX text_groupname_index ON text (groupname);");
    paramSQLiteDatabase.execSQL("CREATE INDEX apk_groupname_index ON apk (groupname);");
    paramSQLiteDatabase.execSQL("CREATE INDEX zip_groupname_index ON zip (groupname);");
    paramSQLiteDatabase.execSQL("CREATE INDEX encrypt_groupname_index ON encrypt (groupname);");
    paramSQLiteDatabase.execSQL("CREATE INDEX image_size_index ON image (size);");
    paramSQLiteDatabase.execSQL("CREATE INDEX audio_size_index ON audio (size);");
    paramSQLiteDatabase.execSQL("CREATE INDEX video_size_index ON video (size);");
    paramSQLiteDatabase.execSQL("CREATE INDEX text_size_index ON text (size);");
    paramSQLiteDatabase.execSQL("CREATE INDEX apk_size_index ON apk (size);");
    paramSQLiteDatabase.execSQL("CREATE INDEX zip_size_index ON zip (size);");
    paramSQLiteDatabase.execSQL("CREATE INDEX encrypt_size_index ON encrypt (size);");
    paramSQLiteDatabase.execSQL("CREATE INDEX image_lastmodified_index ON image (lastmodified);");
    paramSQLiteDatabase.execSQL("CREATE INDEX audio_lastmodified_index ON audio (lastmodified);");
    paramSQLiteDatabase.execSQL("CREATE INDEX video_lastmodified_index ON video (lastmodified);");
    paramSQLiteDatabase.execSQL("CREATE INDEX text_lastmodified_index ON text (lastmodified);");
    paramSQLiteDatabase.execSQL("CREATE INDEX apk_lastmodified_index ON apk (lastmodified);");
    paramSQLiteDatabase.execSQL("CREATE INDEX zip_lastmodified_index ON zip (lastmodified);");
    paramSQLiteDatabase.execSQL("CREATE INDEX encrypt_lastmodified_index ON encrypt (lastmodified);");
    paramSQLiteDatabase.execSQL("CREATE INDEX lastaccess_index ON latestOpen (timestamp);");
    paramSQLiteDatabase.execSQL("CREATE INDEX image_extension_index ON image (extension);");
    paramSQLiteDatabase.execSQL("CREATE INDEX audio_extension_index ON audio (extension);");
    paramSQLiteDatabase.execSQL("CREATE INDEX video_extension_index ON video (extension);");
    paramSQLiteDatabase.execSQL("CREATE INDEX text_extension_index ON text (extension);");
    paramSQLiteDatabase.execSQL("CREATE INDEX apk_extension_index ON apk (extension);");
    paramSQLiteDatabase.execSQL("CREATE INDEX zip_extension_index ON zip (extension);");
    paramSQLiteDatabase.execSQL("CREATE INDEX encrypt_extension_index ON encrypt (extension);");
    paramSQLiteDatabase.execSQL("create view imageview as select image._id, image.pid, directory.path, image.name, image.lastmodified, image.isLogPath, image.size, image.filetype, image.extension, image.groupname, image.pathtype from directory, image where image.pid=directory._id;");
    paramSQLiteDatabase.execSQL("create view videoview as select video._id, video.pid, directory.path, video.name, video.lastmodified, video.isLogPath, video.size, video.filetype, video.extension, video.groupname, video.pathtype from directory, video where video.pid=directory._id;");
    paramSQLiteDatabase.execSQL("create view textview as select text._id, text.pid, directory.path, text.name, text.lastmodified, text.isLogPath, text.size, text.filetype, text.extension, text.groupname, text.pathtype, text.archive from directory, text where text.pid=directory._id;");
    paramSQLiteDatabase.execSQL("create view audioview as select audio._id, audio.pid, directory.path, audio.name, audio.lastmodified, audio.isLogPath, audio.size, audio.filetype, audio.extension, audio.groupname, audio.pathtype from directory, audio where audio.pid=directory._id;");
    paramSQLiteDatabase.execSQL("create view apkview as select apk._id, apk.pid, directory.path, apk.name, apk.lastmodified, apk.isLogPath, apk.size, apk.filetype, apk.extension, apk.groupname, apk.pathtype from directory, apk where apk.pid=directory._id;");
    paramSQLiteDatabase.execSQL("create view zipview as select zip._id, zip.pid, directory.path, zip.name, zip.lastmodified, zip.isLogPath, zip.size, zip.filetype, zip.extension, zip.groupname, zip.pathtype from directory, zip where zip.pid=directory._id;");
    paramSQLiteDatabase.execSQL("create view encryptview as select encrypt._id, encrypt.pid, directory.path, encrypt.name, encrypt.lastmodified, encrypt.isLogPath, encrypt.size, encrypt.filetype, encrypt.extension, encrypt.groupname, encrypt.pathtype from directory, encrypt where encrypt.pid=directory._id;");
    com.estrongs.android.util.l.e("Dbhelper", "create database");
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    com.estrongs.android.util.l.e("Dbhelper", "update database");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS directory");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS audio");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS image");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS video");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS apk");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS text");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS zip");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS encrypt");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS latestOpen");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS status");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS directory_path_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS image_pid_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS audio_pid_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS video_pid_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS text_pid_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS apk_pid_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS zip_pid_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS encrypt_pid_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS image_groupname_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS audio_groupname_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS video_groupname_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS text_groupname_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS apk_groupname_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS zip_groupname_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS encrypt_groupname_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS image_size_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS audio_size_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS video_size_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS text_size_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS apk_size_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS zip_size_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS encrypt_size_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS image_lastmodified_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS audio_lastmodified_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS video_lastmodified_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS text_lastmodified_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS apk_lastmodified_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS zip_lastmodified_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS encrypt_lastmodified_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS lastaccess_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS image_extension_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS audio_extension_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS video_extension_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS text_extension_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS apk_extension_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS zip_extension_index");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS encrypt_extension_index");
    paramSQLiteDatabase.execSQL("DROP VIEW IF EXISTS audioview");
    paramSQLiteDatabase.execSQL("DROP VIEW IF EXISTS imageview");
    paramSQLiteDatabase.execSQL("DROP VIEW IF EXISTS videoview");
    paramSQLiteDatabase.execSQL("DROP VIEW IF EXISTS apkview");
    paramSQLiteDatabase.execSQL("DROP VIEW IF EXISTS textview");
    paramSQLiteDatabase.execSQL("DROP VIEW IF EXISTS zipview");
    paramSQLiteDatabase.execSQL("DROP VIEW IF EXISTS encryptview");
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */