package com.estrongs.android.pop.spfs.facebook;

import android.database.sqlite.SQLiteDatabase;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class FacebookFileSystemCache
{
  private static final String COLUMN_CTIME = "checktime";
  private static final String COLUMN_DB_VERION = "dbver";
  private static final String COLUMN_DIR_TYPE = "dir_type";
  private static final String COLUMN_HASH = "hash";
  private static final String COLUMN_ID = "id";
  private static final String COLUMN_ISDIR = "isdir";
  private static final String COLUMN_MTIME = "mtime";
  private static final String COLUMN_NAME = "name";
  private static final String COLUMN_PATH = "path";
  private static final String COLUMN_PID = "parent_id";
  private static final String COLUMN_PRESENT = "present";
  private static final String COLUMN_SERVER = "server";
  private static final String COLUMN_SERVER_ID = "server_id";
  private static final String COLUMN_SIZE = "size";
  private static final String COLUMN_THUMBNAIL_URL = "thumbnail_url";
  private static final String COLUMN_URL = "url";
  private static final String COLUMN_URL_ID = "urlid";
  private static final int DB_VERSION = 1;
  private static final String dbname = "Instagram_cachedb";
  private static String dbpath = null;
  private static final String filecache_table = "file_cache";
  private static FacebookFileSystemCache inst = null;
  private static HashMap<String, Integer> server_ids = new HashMap();
  private static final String server_table = "server_id";
  private static final String version_table = "cachedb_version";
  private SQLiteDatabase db = null;
  
  private static void createFileCacheTables()
  {
    instdb.execSQL("CREATE TABLE IF NOT EXISTS server_id (id INTEGER PRIMARY KEY,server TEXT UNIQUE)");
    instdb.execSQL("CREATE TABLE IF NOT EXISTS file_cache (id INTEGER PRIMARY KEY,server_id INTEGER,path TEXT,name TEXT,isdir INTEGER,hash  TEXT,mtime  INTEGER,parent_id  INTEGER,checktime INTEGER,size INTEGER,dir_type TEXT,present INTEGER,urlid TEXT,url TEXT,thumbnail_url TEXT)");
    instdb.execSQL("CREATE TABLE IF NOT EXISTS cachedb_version (dbver INTEGER UNIQUE)");
    updateDatabase(getDBVersion());
  }
  
  /* Error */
  private static int getDBVersion()
  {
    // Byte code:
    //   0: getstatic 83	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:inst	Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache;
    //   3: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   6: ldc 75
    //   8: iconst_1
    //   9: anewarray 119	java/lang/String
    //   12: dup
    //   13: iconst_0
    //   14: ldc 11
    //   16: aastore
    //   17: aconst_null
    //   18: aconst_null
    //   19: aconst_null
    //   20: aconst_null
    //   21: aconst_null
    //   22: invokevirtual 123	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   25: astore_3
    //   26: aload_3
    //   27: ifnull +14 -> 41
    //   30: aload_3
    //   31: astore_2
    //   32: aload_3
    //   33: invokeinterface 128 1 0
    //   38: ifne +30 -> 68
    //   41: aload_3
    //   42: astore_2
    //   43: getstatic 83	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:inst	Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache;
    //   46: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   49: ldc -126
    //   51: invokevirtual 103	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   54: aload_3
    //   55: ifnull +9 -> 64
    //   58: aload_3
    //   59: invokeinterface 133 1 0
    //   64: iconst_0
    //   65: istore_0
    //   66: iload_0
    //   67: ireturn
    //   68: aload_3
    //   69: astore_2
    //   70: aload_3
    //   71: invokeinterface 137 1 0
    //   76: pop
    //   77: aload_3
    //   78: astore_2
    //   79: aload_3
    //   80: iconst_0
    //   81: invokeinterface 141 2 0
    //   86: istore_1
    //   87: iload_1
    //   88: istore_0
    //   89: aload_3
    //   90: ifnull -24 -> 66
    //   93: aload_3
    //   94: invokeinterface 133 1 0
    //   99: iload_1
    //   100: ireturn
    //   101: astore 4
    //   103: aconst_null
    //   104: astore_3
    //   105: aload_3
    //   106: astore_2
    //   107: aload 4
    //   109: invokevirtual 144	java/lang/Exception:printStackTrace	()V
    //   112: aload_3
    //   113: ifnull +9 -> 122
    //   116: aload_3
    //   117: invokeinterface 133 1 0
    //   122: iconst_0
    //   123: ireturn
    //   124: astore_3
    //   125: aconst_null
    //   126: astore_2
    //   127: aload_2
    //   128: ifnull +9 -> 137
    //   131: aload_2
    //   132: invokeinterface 133 1 0
    //   137: aload_3
    //   138: athrow
    //   139: astore_3
    //   140: goto -13 -> 127
    //   143: astore 4
    //   145: goto -40 -> 105
    // Local variable table:
    //   start	length	slot	name	signature
    //   65	24	0	i	int
    //   86	14	1	j	int
    //   31	101	2	localCursor1	android.database.Cursor
    //   25	92	3	localCursor2	android.database.Cursor
    //   124	14	3	localObject1	Object
    //   139	1	3	localObject2	Object
    //   101	7	4	localException1	Exception
    //   143	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	26	101	java/lang/Exception
    //   0	26	124	finally
    //   32	41	139	finally
    //   43	54	139	finally
    //   70	77	139	finally
    //   79	87	139	finally
    //   107	112	139	finally
    //   32	41	143	java/lang/Exception
    //   43	54	143	java/lang/Exception
    //   70	77	143	java/lang/Exception
    //   79	87	143	java/lang/Exception
  }
  
  /* Error */
  public static FacebookFileSystemCache instance()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc 2
    //   4: monitorenter
    //   5: getstatic 83	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:inst	Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache;
    //   8: ifnonnull +250 -> 258
    //   11: getstatic 81	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:dbpath	Ljava/lang/String;
    //   14: ifnonnull +16 -> 30
    //   17: new 2	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache
    //   20: dup
    //   21: invokespecial 149	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:<init>	()V
    //   24: astore_0
    //   25: ldc 2
    //   27: monitorexit
    //   28: aload_0
    //   29: areturn
    //   30: new 151	java/io/File
    //   33: dup
    //   34: getstatic 81	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:dbpath	Ljava/lang/String;
    //   37: invokespecial 153	java/io/File:<init>	(Ljava/lang/String;)V
    //   40: astore_1
    //   41: new 151	java/io/File
    //   44: dup
    //   45: getstatic 81	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:dbpath	Ljava/lang/String;
    //   48: invokespecial 153	java/io/File:<init>	(Ljava/lang/String;)V
    //   51: astore_0
    //   52: aload_0
    //   53: invokevirtual 156	java/io/File:exists	()Z
    //   56: ifne +8 -> 64
    //   59: aload_0
    //   60: invokevirtual 159	java/io/File:mkdirs	()Z
    //   63: pop
    //   64: new 2	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache
    //   67: dup
    //   68: invokespecial 149	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:<init>	()V
    //   71: putstatic 83	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:inst	Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache;
    //   74: getstatic 83	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:inst	Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache;
    //   77: new 161	java/lang/StringBuilder
    //   80: dup
    //   81: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   84: getstatic 81	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:dbpath	Ljava/lang/String;
    //   87: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: ldc 62
    //   92: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   98: aconst_null
    //   99: invokestatic 174	android/database/sqlite/SQLiteDatabase:openOrCreateDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   102: putfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   105: getstatic 83	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:inst	Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache;
    //   108: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   111: ifnonnull +144 -> 255
    //   114: new 151	java/io/File
    //   117: dup
    //   118: new 161	java/lang/StringBuilder
    //   121: dup
    //   122: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   125: getstatic 81	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:dbpath	Ljava/lang/String;
    //   128: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: ldc 62
    //   133: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   139: invokespecial 153	java/io/File:<init>	(Ljava/lang/String;)V
    //   142: invokevirtual 177	java/io/File:delete	()Z
    //   145: pop
    //   146: getstatic 83	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:inst	Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache;
    //   149: new 161	java/lang/StringBuilder
    //   152: dup
    //   153: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   156: getstatic 81	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:dbpath	Ljava/lang/String;
    //   159: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: ldc 62
    //   164: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: aconst_null
    //   171: invokestatic 174	android/database/sqlite/SQLiteDatabase:openOrCreateDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   174: putfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   177: getstatic 83	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:inst	Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache;
    //   180: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   183: ifnonnull +72 -> 255
    //   186: aconst_null
    //   187: putstatic 83	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:inst	Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache;
    //   190: aload_2
    //   191: astore_0
    //   192: goto -167 -> 25
    //   195: astore_2
    //   196: aload_0
    //   197: astore_1
    //   198: aload_2
    //   199: astore_0
    //   200: getstatic 83	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:inst	Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache;
    //   203: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   206: ifnull +19 -> 225
    //   209: getstatic 83	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:inst	Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache;
    //   212: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   215: invokevirtual 178	android/database/sqlite/SQLiteDatabase:close	()V
    //   218: getstatic 83	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:inst	Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache;
    //   221: aconst_null
    //   222: putfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   225: aconst_null
    //   226: putstatic 83	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:inst	Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache;
    //   229: aload_1
    //   230: invokevirtual 177	java/io/File:delete	()Z
    //   233: pop
    //   234: aload_0
    //   235: invokevirtual 179	android/database/sqlite/SQLiteDiskIOException:printStackTrace	()V
    //   238: new 2	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache
    //   241: dup
    //   242: invokespecial 149	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:<init>	()V
    //   245: astore_0
    //   246: goto -221 -> 25
    //   249: astore_0
    //   250: ldc 2
    //   252: monitorexit
    //   253: aload_0
    //   254: athrow
    //   255: invokestatic 181	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:createFileCacheTables	()V
    //   258: getstatic 83	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:inst	Lcom/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache;
    //   261: astore_0
    //   262: goto -237 -> 25
    //   265: astore_0
    //   266: aload_0
    //   267: invokevirtual 144	java/lang/Exception:printStackTrace	()V
    //   270: new 2	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache
    //   273: dup
    //   274: invokespecial 149	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:<init>	()V
    //   277: astore_0
    //   278: goto -253 -> 25
    //   281: astore_0
    //   282: goto -82 -> 200
    // Local variable table:
    //   start	length	slot	name	signature
    //   24	222	0	localObject1	Object
    //   249	5	0	localObject2	Object
    //   261	1	0	localFacebookFileSystemCache1	FacebookFileSystemCache
    //   265	2	0	localException	Exception
    //   277	1	0	localFacebookFileSystemCache2	FacebookFileSystemCache
    //   281	1	0	localSQLiteDiskIOException1	android.database.sqlite.SQLiteDiskIOException
    //   40	190	1	localObject3	Object
    //   1	190	2	localObject4	Object
    //   195	4	2	localSQLiteDiskIOException2	android.database.sqlite.SQLiteDiskIOException
    // Exception table:
    //   from	to	target	type
    //   52	64	195	android/database/sqlite/SQLiteDiskIOException
    //   64	190	195	android/database/sqlite/SQLiteDiskIOException
    //   255	258	195	android/database/sqlite/SQLiteDiskIOException
    //   5	25	249	finally
    //   30	41	249	finally
    //   41	52	249	finally
    //   52	64	249	finally
    //   64	190	249	finally
    //   200	225	249	finally
    //   225	246	249	finally
    //   255	258	249	finally
    //   258	262	249	finally
    //   266	278	249	finally
    //   41	52	265	java/lang/Exception
    //   52	64	265	java/lang/Exception
    //   64	190	265	java/lang/Exception
    //   255	258	265	java/lang/Exception
    //   41	52	281	android/database/sqlite/SQLiteDiskIOException
  }
  
  private String qstring(String paramString)
  {
    if (paramString == null) {
      return "\"\"";
    }
    return "\"" + paramString + "\"";
  }
  
  public static void setPath(String paramString)
  {
    dbpath = paramString + "/";
  }
  
  private static void updateDatabase(int paramInt) {}
  
  public void addFile(FacebookFileSystemCache.FacebookFileCacheEntry paramFacebookFileCacheEntry)
  {
    if ((db == null) || (paramFacebookFileCacheEntry == null) || (path == null)) {
      return;
    }
    if ((path.length() > 1) && (path.endsWith("/"))) {
      path = path.substring(0, path.length() - 1);
    }
    paramFacebookFileCacheEntry = "INSERT INTO file_cache (server_id,path,name,isdir,hash,mtime,size,parent_id,checktime,dir_type,url,present,urlid,thumbnail_url) values(" + serverId + "," + qstring(path) + "," + qstring(name) + "," + isDir + "," + qstring(hash) + "," + mtime + "," + size + "," + parentId + "," + checktime + "," + dir_type + "," + qstring(url) + "," + present + "," + qstring(url_id) + "," + qstring(thumbnail_url) + ")";
    try
    {
      db.execSQL(paramFacebookFileCacheEntry);
      return;
    }
    catch (Exception paramFacebookFileCacheEntry)
    {
      paramFacebookFileCacheEntry.printStackTrace();
    }
  }
  
  public void addServer(String paramString)
  {
    if (db == null) {
      return;
    }
    paramString = qstring(paramString);
    try
    {
      db.execSQL("INSERT INTO server_id (server) values(" + paramString + ")");
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public int countSubFiles(int paramInt1, int paramInt2)
  {
    return countSubsNumber(paramInt1, paramInt2, "isdir=0");
  }
  
  public int countSubFolders(int paramInt1, int paramInt2)
  {
    return countSubsNumber(paramInt1, paramInt2, "isdir=1");
  }
  
  /* Error */
  public int countSubsNumber(int paramInt1, int paramInt2, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_0
    //   4: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore 6
    //   9: new 161	java/lang/StringBuilder
    //   12: dup
    //   13: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   16: ldc_w 264
    //   19: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: iload_1
    //   23: invokevirtual 215	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   26: ldc_w 266
    //   29: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: aload_3
    //   33: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: ldc_w 266
    //   39: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: ldc 35
    //   44: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc_w 268
    //   50: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: iload_2
    //   54: invokevirtual 215	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   57: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: astore 7
    //   62: aload 6
    //   64: ldc 66
    //   66: iconst_1
    //   67: anewarray 119	java/lang/String
    //   70: dup
    //   71: iconst_0
    //   72: ldc 20
    //   74: aastore
    //   75: aload 7
    //   77: aconst_null
    //   78: aconst_null
    //   79: aconst_null
    //   80: aconst_null
    //   81: invokevirtual 123	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   84: astore 6
    //   86: aload 6
    //   88: ifnull +153 -> 241
    //   91: aload 6
    //   93: astore 5
    //   95: aload 6
    //   97: invokeinterface 128 1 0
    //   102: ifeq +139 -> 241
    //   105: aload 6
    //   107: astore 5
    //   109: aload 6
    //   111: invokeinterface 137 1 0
    //   116: istore 4
    //   118: iconst_0
    //   119: istore_2
    //   120: iload 4
    //   122: ifeq +40 -> 162
    //   125: aload 6
    //   127: astore 5
    //   129: iload_2
    //   130: aload_0
    //   131: iload_1
    //   132: aload 6
    //   134: iconst_0
    //   135: invokeinterface 141 2 0
    //   140: aload_3
    //   141: invokevirtual 259	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:countSubsNumber	(IILjava/lang/String;)I
    //   144: iadd
    //   145: istore_2
    //   146: aload 6
    //   148: astore 5
    //   150: aload 6
    //   152: invokeinterface 271 1 0
    //   157: istore 4
    //   159: goto -39 -> 120
    //   162: aload 6
    //   164: astore 5
    //   166: aload 6
    //   168: invokeinterface 128 1 0
    //   173: istore_1
    //   174: iload_1
    //   175: iload_2
    //   176: iadd
    //   177: istore_1
    //   178: aload 6
    //   180: ifnull +10 -> 190
    //   183: aload 6
    //   185: invokeinterface 133 1 0
    //   190: iload_1
    //   191: ireturn
    //   192: astore_3
    //   193: aconst_null
    //   194: astore 6
    //   196: aload 6
    //   198: astore 5
    //   200: aload_3
    //   201: invokevirtual 144	java/lang/Exception:printStackTrace	()V
    //   204: aload 6
    //   206: ifnull +10 -> 216
    //   209: aload 6
    //   211: invokeinterface 133 1 0
    //   216: iconst_0
    //   217: ireturn
    //   218: astore_3
    //   219: aload 5
    //   221: ifnull +10 -> 231
    //   224: aload 5
    //   226: invokeinterface 133 1 0
    //   231: aload_3
    //   232: athrow
    //   233: astore_3
    //   234: goto -15 -> 219
    //   237: astore_3
    //   238: goto -42 -> 196
    //   241: iconst_0
    //   242: istore_1
    //   243: goto -65 -> 178
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	246	0	this	FacebookFileSystemCache
    //   0	246	1	paramInt1	int
    //   0	246	2	paramInt2	int
    //   0	246	3	paramString	String
    //   116	42	4	bool	boolean
    //   1	224	5	localObject1	Object
    //   7	203	6	localObject2	Object
    //   60	16	7	str	String
    // Exception table:
    //   from	to	target	type
    //   3	86	192	java/lang/Exception
    //   3	86	218	finally
    //   95	105	233	finally
    //   109	118	233	finally
    //   129	146	233	finally
    //   150	159	233	finally
    //   166	174	233	finally
    //   200	204	233	finally
    //   95	105	237	java/lang/Exception
    //   109	118	237	java/lang/Exception
    //   129	146	237	java/lang/Exception
    //   150	159	237	java/lang/Exception
    //   166	174	237	java/lang/Exception
  }
  
  public void delServer(String paramString)
  {
    if (db == null) {}
    int i;
    do
    {
      return;
      i = getServerId(paramString);
    } while (i == 0);
    try
    {
      paramString = "DELETE FROM server_id WHERE id=" + i;
      db.execSQL(paramString);
      paramString = "DELETE FROM file_cache WHERE server_id=" + i;
      db.execSQL(paramString);
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void deleteEntry(int paramInt, FacebookFileSystemCache.FacebookFileCacheEntry paramFacebookFileCacheEntry, boolean paramBoolean)
  {
    Object localObject;
    if (paramBoolean)
    {
      localObject = "DELETE FROM file_cache WHERE server_id=" + paramInt + " AND " + "id" + "=" + id;
      db.execSQL((String)localObject);
    }
    if (isDir == 1)
    {
      localObject = listFile(paramInt, id);
      paramFacebookFileCacheEntry = "DELETE FROM file_cache WHERE server_id=" + paramInt + " AND " + "parent_id" + "=" + id;
      db.execSQL(paramFacebookFileCacheEntry);
      if (localObject != null)
      {
        paramFacebookFileCacheEntry = ((HashMap)localObject).entrySet().iterator();
        while (paramFacebookFileCacheEntry.hasNext())
        {
          localObject = (FacebookFileSystemCache.FacebookFileCacheEntry)((Map.Entry)paramFacebookFileCacheEntry.next()).getValue();
          if (isDir == 1) {
            deleteEntry(paramInt, (FacebookFileSystemCache.FacebookFileCacheEntry)localObject, false);
          }
        }
      }
    }
  }
  
  public void deleteFile(int paramInt, String paramString)
  {
    paramString = getFile(paramInt, paramString);
    if (paramString == null) {
      return;
    }
    deleteEntry(paramInt, paramString, true);
  }
  
  /* Error */
  public FacebookFileSystemCache.FacebookFileCacheEntry getFile(int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_0
    //   4: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   7: ifnonnull +9 -> 16
    //   10: aconst_null
    //   11: astore 5
    //   13: aload 5
    //   15: areturn
    //   16: aload_0
    //   17: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   20: astore 4
    //   22: new 161	java/lang/StringBuilder
    //   25: dup
    //   26: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   29: ldc_w 264
    //   32: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: iload_1
    //   36: invokevirtual 215	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   39: ldc_w 266
    //   42: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: ldc 20
    //   47: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: ldc_w 268
    //   53: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: iload_2
    //   57: invokevirtual 215	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   60: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: astore 6
    //   65: aload 4
    //   67: ldc 66
    //   69: bipush 13
    //   71: anewarray 119	java/lang/String
    //   74: dup
    //   75: iconst_0
    //   76: ldc 32
    //   78: aastore
    //   79: dup
    //   80: iconst_1
    //   81: ldc 35
    //   83: aastore
    //   84: dup
    //   85: iconst_2
    //   86: ldc 23
    //   88: aastore
    //   89: dup
    //   90: iconst_3
    //   91: ldc 17
    //   93: aastore
    //   94: dup
    //   95: iconst_4
    //   96: ldc 26
    //   98: aastore
    //   99: dup
    //   100: iconst_5
    //   101: ldc 47
    //   103: aastore
    //   104: dup
    //   105: bipush 6
    //   107: ldc 8
    //   109: aastore
    //   110: dup
    //   111: bipush 7
    //   113: ldc 14
    //   115: aastore
    //   116: dup
    //   117: bipush 8
    //   119: ldc 53
    //   121: aastore
    //   122: dup
    //   123: bipush 9
    //   125: ldc 38
    //   127: aastore
    //   128: dup
    //   129: bipush 10
    //   131: ldc 56
    //   133: aastore
    //   134: dup
    //   135: bipush 11
    //   137: ldc 50
    //   139: aastore
    //   140: dup
    //   141: bipush 12
    //   143: ldc 29
    //   145: aastore
    //   146: aload 6
    //   148: aconst_null
    //   149: aconst_null
    //   150: aconst_null
    //   151: aconst_null
    //   152: invokevirtual 123	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   155: astore 4
    //   157: aload 4
    //   159: ifnull +19 -> 178
    //   162: aload 4
    //   164: astore 5
    //   166: aload 4
    //   168: invokeinterface 128 1 0
    //   173: istore_3
    //   174: iload_3
    //   175: ifne +17 -> 192
    //   178: aload 4
    //   180: ifnull +10 -> 190
    //   183: aload 4
    //   185: invokeinterface 133 1 0
    //   190: aconst_null
    //   191: areturn
    //   192: aload 4
    //   194: astore 5
    //   196: aload 4
    //   198: invokeinterface 137 1 0
    //   203: ifeq +283 -> 486
    //   206: aload 4
    //   208: astore 5
    //   210: new 194	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry
    //   213: dup
    //   214: invokespecial 322	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:<init>	()V
    //   217: astore 6
    //   219: aload 4
    //   221: astore 5
    //   223: aload 6
    //   225: iload_2
    //   226: putfield 284	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:id	I
    //   229: aload 4
    //   231: astore 5
    //   233: aload 6
    //   235: iload_1
    //   236: putfield 212	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:serverId	I
    //   239: aload 4
    //   241: astore 5
    //   243: aload 6
    //   245: aload 4
    //   247: iconst_0
    //   248: invokeinterface 326 2 0
    //   253: putfield 196	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:path	Ljava/lang/String;
    //   256: aload 4
    //   258: astore 5
    //   260: aload 6
    //   262: aload 4
    //   264: iconst_1
    //   265: invokeinterface 141 2 0
    //   270: putfield 233	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:parentId	I
    //   273: aload 4
    //   275: astore 5
    //   277: aload 6
    //   279: aload 4
    //   281: iconst_2
    //   282: invokeinterface 141 2 0
    //   287: putfield 224	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:isDir	I
    //   290: aload 4
    //   292: astore 5
    //   294: aload 6
    //   296: aload 4
    //   298: iconst_3
    //   299: invokeinterface 326 2 0
    //   304: putfield 226	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:hash	Ljava/lang/String;
    //   307: aload 4
    //   309: astore 5
    //   311: aload 6
    //   313: aload 4
    //   315: iconst_4
    //   316: invokeinterface 141 2 0
    //   321: putfield 228	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:mtime	I
    //   324: aload 4
    //   326: astore 5
    //   328: aload 6
    //   330: aload 4
    //   332: iconst_5
    //   333: invokeinterface 141 2 0
    //   338: putfield 230	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:size	I
    //   341: aload 4
    //   343: astore 5
    //   345: aload 6
    //   347: aload 4
    //   349: bipush 6
    //   351: invokeinterface 141 2 0
    //   356: putfield 235	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:checktime	I
    //   359: aload 4
    //   361: astore 5
    //   363: aload 6
    //   365: aload 4
    //   367: bipush 7
    //   369: invokeinterface 141 2 0
    //   374: putfield 237	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:dir_type	I
    //   377: aload 4
    //   379: astore 5
    //   381: aload 6
    //   383: aload 4
    //   385: bipush 8
    //   387: invokeinterface 326 2 0
    //   392: putfield 239	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:url	Ljava/lang/String;
    //   395: aload 4
    //   397: astore 5
    //   399: aload 6
    //   401: aload 4
    //   403: bipush 9
    //   405: invokeinterface 141 2 0
    //   410: putfield 241	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:present	I
    //   413: aload 4
    //   415: astore 5
    //   417: aload 6
    //   419: aload 4
    //   421: bipush 10
    //   423: invokeinterface 326 2 0
    //   428: putfield 244	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:url_id	Ljava/lang/String;
    //   431: aload 4
    //   433: astore 5
    //   435: aload 6
    //   437: aload 4
    //   439: bipush 11
    //   441: invokeinterface 326 2 0
    //   446: putfield 246	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:thumbnail_url	Ljava/lang/String;
    //   449: aload 4
    //   451: astore 5
    //   453: aload 6
    //   455: aload 4
    //   457: bipush 12
    //   459: invokeinterface 326 2 0
    //   464: putfield 221	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:name	Ljava/lang/String;
    //   467: aload 6
    //   469: astore 5
    //   471: aload 4
    //   473: ifnull -460 -> 13
    //   476: aload 4
    //   478: invokeinterface 133 1 0
    //   483: aload 6
    //   485: areturn
    //   486: aload 4
    //   488: ifnull +10 -> 498
    //   491: aload 4
    //   493: invokeinterface 133 1 0
    //   498: aconst_null
    //   499: areturn
    //   500: astore 6
    //   502: aconst_null
    //   503: astore 4
    //   505: aload 4
    //   507: astore 5
    //   509: aload 6
    //   511: invokevirtual 144	java/lang/Exception:printStackTrace	()V
    //   514: aload 4
    //   516: ifnull +10 -> 526
    //   519: aload 4
    //   521: invokeinterface 133 1 0
    //   526: aconst_null
    //   527: areturn
    //   528: astore 4
    //   530: aload 5
    //   532: ifnull +10 -> 542
    //   535: aload 5
    //   537: invokeinterface 133 1 0
    //   542: aload 4
    //   544: athrow
    //   545: astore 4
    //   547: goto -17 -> 530
    //   550: astore 6
    //   552: goto -47 -> 505
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	555	0	this	FacebookFileSystemCache
    //   0	555	1	paramInt1	int
    //   0	555	2	paramInt2	int
    //   173	2	3	i	int
    //   20	500	4	localObject1	Object
    //   528	15	4	localObject2	Object
    //   545	1	4	localObject3	Object
    //   1	535	5	localObject4	Object
    //   63	421	6	localObject5	Object
    //   500	10	6	localException1	Exception
    //   550	1	6	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   16	157	500	java/lang/Exception
    //   16	157	528	finally
    //   166	174	545	finally
    //   196	206	545	finally
    //   210	219	545	finally
    //   223	229	545	finally
    //   233	239	545	finally
    //   243	256	545	finally
    //   260	273	545	finally
    //   277	290	545	finally
    //   294	307	545	finally
    //   311	324	545	finally
    //   328	341	545	finally
    //   345	359	545	finally
    //   363	377	545	finally
    //   381	395	545	finally
    //   399	413	545	finally
    //   417	431	545	finally
    //   435	449	545	finally
    //   453	467	545	finally
    //   509	514	545	finally
    //   166	174	550	java/lang/Exception
    //   196	206	550	java/lang/Exception
    //   210	219	550	java/lang/Exception
    //   223	229	550	java/lang/Exception
    //   233	239	550	java/lang/Exception
    //   243	256	550	java/lang/Exception
    //   260	273	550	java/lang/Exception
    //   277	290	550	java/lang/Exception
    //   294	307	550	java/lang/Exception
    //   311	324	550	java/lang/Exception
    //   328	341	550	java/lang/Exception
    //   345	359	550	java/lang/Exception
    //   363	377	550	java/lang/Exception
    //   381	395	550	java/lang/Exception
    //   399	413	550	java/lang/Exception
    //   417	431	550	java/lang/Exception
    //   435	449	550	java/lang/Exception
    //   453	467	550	java/lang/Exception
  }
  
  /* Error */
  public FacebookFileSystemCache.FacebookFileCacheEntry getFile(int paramInt, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   7: ifnonnull +9 -> 16
    //   10: aconst_null
    //   11: astore 4
    //   13: aload 4
    //   15: areturn
    //   16: aload_2
    //   17: astore 5
    //   19: aload_2
    //   20: invokevirtual 199	java/lang/String:length	()I
    //   23: iconst_1
    //   24: if_icmple +28 -> 52
    //   27: aload_2
    //   28: astore 5
    //   30: aload_2
    //   31: ldc -66
    //   33: invokevirtual 203	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   36: ifeq +16 -> 52
    //   39: aload_2
    //   40: iconst_0
    //   41: aload_2
    //   42: invokevirtual 199	java/lang/String:length	()I
    //   45: iconst_1
    //   46: isub
    //   47: invokevirtual 207	java/lang/String:substring	(II)Ljava/lang/String;
    //   50: astore 5
    //   52: aload_0
    //   53: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   56: astore_2
    //   57: new 161	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   64: ldc_w 264
    //   67: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: iload_1
    //   71: invokevirtual 215	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   74: ldc_w 266
    //   77: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: ldc 32
    //   82: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: ldc_w 268
    //   88: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: aload_0
    //   92: aload 5
    //   94: invokespecial 219	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:qstring	(Ljava/lang/String;)Ljava/lang/String;
    //   97: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: astore 6
    //   105: aload_2
    //   106: ldc 66
    //   108: bipush 12
    //   110: anewarray 119	java/lang/String
    //   113: dup
    //   114: iconst_0
    //   115: ldc 20
    //   117: aastore
    //   118: dup
    //   119: iconst_1
    //   120: ldc 35
    //   122: aastore
    //   123: dup
    //   124: iconst_2
    //   125: ldc 23
    //   127: aastore
    //   128: dup
    //   129: iconst_3
    //   130: ldc 17
    //   132: aastore
    //   133: dup
    //   134: iconst_4
    //   135: ldc 26
    //   137: aastore
    //   138: dup
    //   139: iconst_5
    //   140: ldc 47
    //   142: aastore
    //   143: dup
    //   144: bipush 6
    //   146: ldc 8
    //   148: aastore
    //   149: dup
    //   150: bipush 7
    //   152: ldc 14
    //   154: aastore
    //   155: dup
    //   156: bipush 8
    //   158: ldc 53
    //   160: aastore
    //   161: dup
    //   162: bipush 9
    //   164: ldc 38
    //   166: aastore
    //   167: dup
    //   168: bipush 10
    //   170: ldc 56
    //   172: aastore
    //   173: dup
    //   174: bipush 11
    //   176: ldc 50
    //   178: aastore
    //   179: aload 6
    //   181: aconst_null
    //   182: aconst_null
    //   183: aconst_null
    //   184: aconst_null
    //   185: invokevirtual 123	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   188: astore_2
    //   189: aload_2
    //   190: ifnull +17 -> 207
    //   193: aload_2
    //   194: astore 4
    //   196: aload_2
    //   197: invokeinterface 128 1 0
    //   202: istore_3
    //   203: iload_3
    //   204: ifne +15 -> 219
    //   207: aload_2
    //   208: ifnull +9 -> 217
    //   211: aload_2
    //   212: invokeinterface 133 1 0
    //   217: aconst_null
    //   218: areturn
    //   219: aload_2
    //   220: astore 4
    //   222: aload_2
    //   223: invokeinterface 137 1 0
    //   228: ifeq +237 -> 465
    //   231: aload_2
    //   232: astore 4
    //   234: new 194	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry
    //   237: dup
    //   238: invokespecial 322	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:<init>	()V
    //   241: astore 6
    //   243: aload_2
    //   244: astore 4
    //   246: aload 6
    //   248: aload_2
    //   249: iconst_0
    //   250: invokeinterface 141 2 0
    //   255: putfield 284	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:id	I
    //   258: aload_2
    //   259: astore 4
    //   261: aload 6
    //   263: iload_1
    //   264: putfield 212	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:serverId	I
    //   267: aload_2
    //   268: astore 4
    //   270: aload 6
    //   272: aload 5
    //   274: putfield 196	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:path	Ljava/lang/String;
    //   277: aload_2
    //   278: astore 4
    //   280: aload 6
    //   282: aload_2
    //   283: iconst_1
    //   284: invokeinterface 141 2 0
    //   289: putfield 233	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:parentId	I
    //   292: aload_2
    //   293: astore 4
    //   295: aload 6
    //   297: aload_2
    //   298: iconst_2
    //   299: invokeinterface 141 2 0
    //   304: putfield 224	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:isDir	I
    //   307: aload_2
    //   308: astore 4
    //   310: aload 6
    //   312: aload_2
    //   313: iconst_3
    //   314: invokeinterface 326 2 0
    //   319: putfield 226	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:hash	Ljava/lang/String;
    //   322: aload_2
    //   323: astore 4
    //   325: aload 6
    //   327: aload_2
    //   328: iconst_4
    //   329: invokeinterface 141 2 0
    //   334: putfield 228	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:mtime	I
    //   337: aload_2
    //   338: astore 4
    //   340: aload 6
    //   342: aload_2
    //   343: iconst_5
    //   344: invokeinterface 141 2 0
    //   349: putfield 230	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:size	I
    //   352: aload_2
    //   353: astore 4
    //   355: aload 6
    //   357: aload_2
    //   358: bipush 6
    //   360: invokeinterface 141 2 0
    //   365: putfield 235	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:checktime	I
    //   368: aload_2
    //   369: astore 4
    //   371: aload 6
    //   373: aload_2
    //   374: bipush 7
    //   376: invokeinterface 141 2 0
    //   381: putfield 237	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:dir_type	I
    //   384: aload_2
    //   385: astore 4
    //   387: aload 6
    //   389: aload_2
    //   390: bipush 8
    //   392: invokeinterface 326 2 0
    //   397: putfield 239	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:url	Ljava/lang/String;
    //   400: aload_2
    //   401: astore 4
    //   403: aload 6
    //   405: aload_2
    //   406: bipush 9
    //   408: invokeinterface 141 2 0
    //   413: putfield 241	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:present	I
    //   416: aload_2
    //   417: astore 4
    //   419: aload 6
    //   421: aload_2
    //   422: bipush 10
    //   424: invokeinterface 326 2 0
    //   429: putfield 244	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:url_id	Ljava/lang/String;
    //   432: aload_2
    //   433: astore 4
    //   435: aload 6
    //   437: aload_2
    //   438: bipush 11
    //   440: invokeinterface 326 2 0
    //   445: putfield 246	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:thumbnail_url	Ljava/lang/String;
    //   448: aload 6
    //   450: astore 4
    //   452: aload_2
    //   453: ifnull -440 -> 13
    //   456: aload_2
    //   457: invokeinterface 133 1 0
    //   462: aload 6
    //   464: areturn
    //   465: aload_2
    //   466: ifnull +9 -> 475
    //   469: aload_2
    //   470: invokeinterface 133 1 0
    //   475: aconst_null
    //   476: areturn
    //   477: astore 5
    //   479: aconst_null
    //   480: astore_2
    //   481: aload_2
    //   482: astore 4
    //   484: aload 5
    //   486: invokevirtual 144	java/lang/Exception:printStackTrace	()V
    //   489: aload_2
    //   490: ifnull +9 -> 499
    //   493: aload_2
    //   494: invokeinterface 133 1 0
    //   499: aconst_null
    //   500: areturn
    //   501: astore_2
    //   502: aload 4
    //   504: ifnull +10 -> 514
    //   507: aload 4
    //   509: invokeinterface 133 1 0
    //   514: aload_2
    //   515: athrow
    //   516: astore_2
    //   517: goto -15 -> 502
    //   520: astore 5
    //   522: goto -41 -> 481
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	525	0	this	FacebookFileSystemCache
    //   0	525	1	paramInt	int
    //   0	525	2	paramString	String
    //   202	2	3	i	int
    //   1	507	4	localObject1	Object
    //   17	256	5	str	String
    //   477	8	5	localException1	Exception
    //   520	1	5	localException2	Exception
    //   103	360	6	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   52	189	477	java/lang/Exception
    //   52	189	501	finally
    //   196	203	516	finally
    //   222	231	516	finally
    //   234	243	516	finally
    //   246	258	516	finally
    //   261	267	516	finally
    //   270	277	516	finally
    //   280	292	516	finally
    //   295	307	516	finally
    //   310	322	516	finally
    //   325	337	516	finally
    //   340	352	516	finally
    //   355	368	516	finally
    //   371	384	516	finally
    //   387	400	516	finally
    //   403	416	516	finally
    //   419	432	516	finally
    //   435	448	516	finally
    //   484	489	516	finally
    //   196	203	520	java/lang/Exception
    //   222	231	520	java/lang/Exception
    //   234	243	520	java/lang/Exception
    //   246	258	520	java/lang/Exception
    //   261	267	520	java/lang/Exception
    //   270	277	520	java/lang/Exception
    //   280	292	520	java/lang/Exception
    //   295	307	520	java/lang/Exception
    //   310	322	520	java/lang/Exception
    //   325	337	520	java/lang/Exception
    //   340	352	520	java/lang/Exception
    //   355	368	520	java/lang/Exception
    //   371	384	520	java/lang/Exception
    //   387	400	520	java/lang/Exception
    //   403	416	520	java/lang/Exception
    //   419	432	520	java/lang/Exception
    //   435	448	520	java/lang/Exception
  }
  
  /* Error */
  public int getPathId(int paramInt, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_0
    //   4: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   7: ifnonnull +7 -> 14
    //   10: iconst_0
    //   11: istore_1
    //   12: iload_1
    //   13: ireturn
    //   14: aload_2
    //   15: astore 4
    //   17: aload_2
    //   18: invokevirtual 199	java/lang/String:length	()I
    //   21: iconst_1
    //   22: if_icmple +28 -> 50
    //   25: aload_2
    //   26: astore 4
    //   28: aload_2
    //   29: ldc -66
    //   31: invokevirtual 203	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   34: ifeq +16 -> 50
    //   37: aload_2
    //   38: iconst_0
    //   39: aload_2
    //   40: invokevirtual 199	java/lang/String:length	()I
    //   43: iconst_1
    //   44: isub
    //   45: invokevirtual 207	java/lang/String:substring	(II)Ljava/lang/String;
    //   48: astore 4
    //   50: aload_0
    //   51: aload 4
    //   53: invokespecial 219	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:qstring	(Ljava/lang/String;)Ljava/lang/String;
    //   56: astore 4
    //   58: aload_0
    //   59: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   62: astore_2
    //   63: new 161	java/lang/StringBuilder
    //   66: dup
    //   67: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   70: ldc_w 264
    //   73: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: iload_1
    //   77: invokevirtual 215	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   80: ldc_w 266
    //   83: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: ldc 32
    //   88: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: ldc_w 268
    //   94: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: aload 4
    //   99: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   105: astore 4
    //   107: aload_2
    //   108: ldc 66
    //   110: iconst_1
    //   111: anewarray 119	java/lang/String
    //   114: dup
    //   115: iconst_0
    //   116: ldc 20
    //   118: aastore
    //   119: aload 4
    //   121: aconst_null
    //   122: aconst_null
    //   123: aconst_null
    //   124: aconst_null
    //   125: invokevirtual 123	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   128: astore 4
    //   130: aload 4
    //   132: ifnull +18 -> 150
    //   135: aload 4
    //   137: astore_2
    //   138: aload 4
    //   140: invokeinterface 128 1 0
    //   145: istore_1
    //   146: iload_1
    //   147: ifne +17 -> 164
    //   150: aload 4
    //   152: ifnull +10 -> 162
    //   155: aload 4
    //   157: invokeinterface 133 1 0
    //   162: iconst_0
    //   163: ireturn
    //   164: aload 4
    //   166: astore_2
    //   167: aload 4
    //   169: invokeinterface 137 1 0
    //   174: pop
    //   175: aload 4
    //   177: astore_2
    //   178: aload 4
    //   180: iconst_0
    //   181: invokeinterface 141 2 0
    //   186: istore_3
    //   187: iload_3
    //   188: istore_1
    //   189: aload 4
    //   191: ifnull -179 -> 12
    //   194: aload 4
    //   196: invokeinterface 133 1 0
    //   201: iload_3
    //   202: ireturn
    //   203: astore 5
    //   205: aconst_null
    //   206: astore 4
    //   208: aload 4
    //   210: astore_2
    //   211: aload 5
    //   213: invokevirtual 144	java/lang/Exception:printStackTrace	()V
    //   216: aload 4
    //   218: ifnull +10 -> 228
    //   221: aload 4
    //   223: invokeinterface 133 1 0
    //   228: iconst_0
    //   229: ireturn
    //   230: astore_2
    //   231: aload 5
    //   233: astore 4
    //   235: aload 4
    //   237: ifnull +10 -> 247
    //   240: aload 4
    //   242: invokeinterface 133 1 0
    //   247: aload_2
    //   248: athrow
    //   249: astore 5
    //   251: aload_2
    //   252: astore 4
    //   254: aload 5
    //   256: astore_2
    //   257: goto -22 -> 235
    //   260: astore 5
    //   262: goto -54 -> 208
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	265	0	this	FacebookFileSystemCache
    //   0	265	1	paramInt	int
    //   0	265	2	paramString	String
    //   186	16	3	i	int
    //   15	238	4	localObject1	Object
    //   1	1	5	localObject2	Object
    //   203	29	5	localException1	Exception
    //   249	6	5	localObject3	Object
    //   260	1	5	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   58	130	203	java/lang/Exception
    //   58	130	230	finally
    //   138	146	249	finally
    //   167	175	249	finally
    //   178	187	249	finally
    //   211	216	249	finally
    //   138	146	260	java/lang/Exception
    //   167	175	260	java/lang/Exception
    //   178	187	260	java/lang/Exception
  }
  
  /* Error */
  public int getServerId(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   7: ifnonnull +5 -> 12
    //   10: iconst_0
    //   11: ireturn
    //   12: getstatic 90	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:server_ids	Ljava/util/HashMap;
    //   15: aload_1
    //   16: invokevirtual 332	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   19: checkcast 334	java/lang/Integer
    //   22: astore 5
    //   24: aload 5
    //   26: astore_3
    //   27: aload 5
    //   29: ifnonnull +169 -> 198
    //   32: aload_0
    //   33: aload_1
    //   34: invokespecial 219	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:qstring	(Ljava/lang/String;)Ljava/lang/String;
    //   37: astore 5
    //   39: aload_0
    //   40: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   43: astore_3
    //   44: new 161	java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   51: ldc_w 336
    //   54: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: aload 5
    //   59: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   65: astore 5
    //   67: aload_3
    //   68: ldc 44
    //   70: iconst_1
    //   71: anewarray 119	java/lang/String
    //   74: dup
    //   75: iconst_0
    //   76: ldc 20
    //   78: aastore
    //   79: aload 5
    //   81: aconst_null
    //   82: aconst_null
    //   83: aconst_null
    //   84: aconst_null
    //   85: invokevirtual 123	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   88: astore_3
    //   89: aload_3
    //   90: astore 4
    //   92: aload 4
    //   94: ifnull +18 -> 112
    //   97: aload 4
    //   99: astore_3
    //   100: aload 4
    //   102: invokeinterface 128 1 0
    //   107: istore_2
    //   108: iload_2
    //   109: ifne +17 -> 126
    //   112: aload 4
    //   114: ifnull +10 -> 124
    //   117: aload 4
    //   119: invokeinterface 133 1 0
    //   124: iconst_0
    //   125: ireturn
    //   126: aload 4
    //   128: astore_3
    //   129: aload 4
    //   131: invokeinterface 137 1 0
    //   136: pop
    //   137: aload 4
    //   139: astore_3
    //   140: aload 4
    //   142: iconst_0
    //   143: invokeinterface 141 2 0
    //   148: invokestatic 340	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   151: astore 5
    //   153: aload 4
    //   155: astore_3
    //   156: getstatic 90	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:server_ids	Ljava/util/HashMap;
    //   159: astore 6
    //   161: aload 4
    //   163: astore_3
    //   164: aload 6
    //   166: monitorenter
    //   167: getstatic 90	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:server_ids	Ljava/util/HashMap;
    //   170: aload_1
    //   171: aload 5
    //   173: invokevirtual 344	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   176: pop
    //   177: aload 6
    //   179: monitorexit
    //   180: aload 5
    //   182: astore_3
    //   183: aload 4
    //   185: ifnull +13 -> 198
    //   188: aload 4
    //   190: invokeinterface 133 1 0
    //   195: aload 5
    //   197: astore_3
    //   198: aload_3
    //   199: invokevirtual 347	java/lang/Integer:intValue	()I
    //   202: ireturn
    //   203: astore_1
    //   204: aload 6
    //   206: monitorexit
    //   207: aload 4
    //   209: astore_3
    //   210: aload_1
    //   211: athrow
    //   212: astore_1
    //   213: aload 4
    //   215: astore_3
    //   216: aload_1
    //   217: invokevirtual 144	java/lang/Exception:printStackTrace	()V
    //   220: aload 4
    //   222: ifnull +10 -> 232
    //   225: aload 4
    //   227: invokeinterface 133 1 0
    //   232: iconst_0
    //   233: ireturn
    //   234: astore_1
    //   235: aload 4
    //   237: astore_3
    //   238: aload_3
    //   239: ifnull +9 -> 248
    //   242: aload_3
    //   243: invokeinterface 133 1 0
    //   248: aload_1
    //   249: athrow
    //   250: astore_1
    //   251: goto -13 -> 238
    //   254: astore_1
    //   255: aconst_null
    //   256: astore 4
    //   258: goto -45 -> 213
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	261	0	this	FacebookFileSystemCache
    //   0	261	1	paramString	String
    //   107	2	2	i	int
    //   26	217	3	localObject1	Object
    //   1	256	4	localObject2	Object
    //   22	174	5	localObject3	Object
    //   159	46	6	localHashMap	HashMap
    // Exception table:
    //   from	to	target	type
    //   167	180	203	finally
    //   204	207	203	finally
    //   100	108	212	java/lang/Exception
    //   129	137	212	java/lang/Exception
    //   140	153	212	java/lang/Exception
    //   156	161	212	java/lang/Exception
    //   164	167	212	java/lang/Exception
    //   210	212	212	java/lang/Exception
    //   39	89	234	finally
    //   100	108	250	finally
    //   129	137	250	finally
    //   140	153	250	finally
    //   156	161	250	finally
    //   164	167	250	finally
    //   210	212	250	finally
    //   216	220	250	finally
    //   39	89	254	java/lang/Exception
  }
  
  /* Error */
  public HashMap<String, FacebookFileSystemCache.FacebookFileCacheEntry> listFile(int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   7: ifnonnull +9 -> 16
    //   10: aconst_null
    //   11: astore 6
    //   13: aload 6
    //   15: areturn
    //   16: aload_0
    //   17: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   20: astore 5
    //   22: new 161	java/lang/StringBuilder
    //   25: dup
    //   26: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   29: ldc_w 264
    //   32: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: iload_1
    //   36: invokevirtual 215	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   39: ldc_w 266
    //   42: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: ldc 35
    //   47: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: ldc_w 268
    //   53: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: iload_2
    //   57: invokevirtual 215	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   60: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: astore 7
    //   65: aload 5
    //   67: ldc 66
    //   69: bipush 13
    //   71: anewarray 119	java/lang/String
    //   74: dup
    //   75: iconst_0
    //   76: ldc 20
    //   78: aastore
    //   79: dup
    //   80: iconst_1
    //   81: ldc 32
    //   83: aastore
    //   84: dup
    //   85: iconst_2
    //   86: ldc 23
    //   88: aastore
    //   89: dup
    //   90: iconst_3
    //   91: ldc 17
    //   93: aastore
    //   94: dup
    //   95: iconst_4
    //   96: ldc 26
    //   98: aastore
    //   99: dup
    //   100: iconst_5
    //   101: ldc 47
    //   103: aastore
    //   104: dup
    //   105: bipush 6
    //   107: ldc 8
    //   109: aastore
    //   110: dup
    //   111: bipush 7
    //   113: ldc 14
    //   115: aastore
    //   116: dup
    //   117: bipush 8
    //   119: ldc 53
    //   121: aastore
    //   122: dup
    //   123: bipush 9
    //   125: ldc 38
    //   127: aastore
    //   128: dup
    //   129: bipush 10
    //   131: ldc 56
    //   133: aastore
    //   134: dup
    //   135: bipush 11
    //   137: ldc 50
    //   139: aastore
    //   140: dup
    //   141: bipush 12
    //   143: ldc 29
    //   145: aastore
    //   146: aload 7
    //   148: aconst_null
    //   149: aconst_null
    //   150: aconst_null
    //   151: aconst_null
    //   152: invokevirtual 123	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   155: astore 5
    //   157: aload 5
    //   159: ifnull +19 -> 178
    //   162: aload 5
    //   164: astore 6
    //   166: aload 5
    //   168: invokeinterface 128 1 0
    //   173: istore_3
    //   174: iload_3
    //   175: ifne +17 -> 192
    //   178: aload 5
    //   180: ifnull +10 -> 190
    //   183: aload 5
    //   185: invokeinterface 133 1 0
    //   190: aconst_null
    //   191: areturn
    //   192: aload 5
    //   194: astore 6
    //   196: new 85	java/util/HashMap
    //   199: dup
    //   200: invokespecial 88	java/util/HashMap:<init>	()V
    //   203: astore 7
    //   205: aload 5
    //   207: astore 6
    //   209: aload 5
    //   211: invokeinterface 137 1 0
    //   216: istore 4
    //   218: iload 4
    //   220: ifeq +297 -> 517
    //   223: aload 5
    //   225: astore 6
    //   227: new 194	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry
    //   230: dup
    //   231: invokespecial 322	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:<init>	()V
    //   234: astore 8
    //   236: aload 5
    //   238: astore 6
    //   240: aload 8
    //   242: aload 5
    //   244: iconst_0
    //   245: invokeinterface 141 2 0
    //   250: putfield 284	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:id	I
    //   253: aload 5
    //   255: astore 6
    //   257: aload 8
    //   259: iload_1
    //   260: putfield 212	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:serverId	I
    //   263: aload 5
    //   265: astore 6
    //   267: aload 8
    //   269: iload_2
    //   270: putfield 233	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:parentId	I
    //   273: aload 5
    //   275: astore 6
    //   277: aload 8
    //   279: aload 5
    //   281: iconst_1
    //   282: invokeinterface 326 2 0
    //   287: putfield 196	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:path	Ljava/lang/String;
    //   290: aload 5
    //   292: astore 6
    //   294: aload 8
    //   296: aload 5
    //   298: iconst_2
    //   299: invokeinterface 141 2 0
    //   304: putfield 224	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:isDir	I
    //   307: aload 5
    //   309: astore 6
    //   311: aload 8
    //   313: aload 5
    //   315: iconst_3
    //   316: invokeinterface 326 2 0
    //   321: putfield 226	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:hash	Ljava/lang/String;
    //   324: aload 5
    //   326: astore 6
    //   328: aload 8
    //   330: aload 5
    //   332: iconst_4
    //   333: invokeinterface 141 2 0
    //   338: putfield 228	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:mtime	I
    //   341: aload 5
    //   343: astore 6
    //   345: aload 8
    //   347: aload 5
    //   349: iconst_5
    //   350: invokeinterface 141 2 0
    //   355: putfield 230	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:size	I
    //   358: aload 5
    //   360: astore 6
    //   362: aload 8
    //   364: aload 5
    //   366: bipush 6
    //   368: invokeinterface 141 2 0
    //   373: putfield 235	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:checktime	I
    //   376: aload 5
    //   378: astore 6
    //   380: aload 8
    //   382: aload 5
    //   384: bipush 7
    //   386: invokeinterface 141 2 0
    //   391: putfield 237	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:dir_type	I
    //   394: aload 5
    //   396: astore 6
    //   398: aload 8
    //   400: aload 5
    //   402: bipush 8
    //   404: invokeinterface 326 2 0
    //   409: putfield 239	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:url	Ljava/lang/String;
    //   412: aload 5
    //   414: astore 6
    //   416: aload 8
    //   418: aload 5
    //   420: bipush 9
    //   422: invokeinterface 141 2 0
    //   427: putfield 241	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:present	I
    //   430: aload 5
    //   432: astore 6
    //   434: aload 8
    //   436: aload 5
    //   438: bipush 10
    //   440: invokeinterface 326 2 0
    //   445: putfield 244	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:url_id	Ljava/lang/String;
    //   448: aload 5
    //   450: astore 6
    //   452: aload 8
    //   454: aload 5
    //   456: bipush 11
    //   458: invokeinterface 326 2 0
    //   463: putfield 246	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:thumbnail_url	Ljava/lang/String;
    //   466: aload 5
    //   468: astore 6
    //   470: aload 8
    //   472: aload 5
    //   474: bipush 12
    //   476: invokeinterface 326 2 0
    //   481: putfield 221	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:name	Ljava/lang/String;
    //   484: aload 5
    //   486: astore 6
    //   488: aload 7
    //   490: aload 8
    //   492: getfield 196	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:path	Ljava/lang/String;
    //   495: aload 8
    //   497: invokevirtual 344	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   500: pop
    //   501: aload 5
    //   503: astore 6
    //   505: aload 5
    //   507: invokeinterface 271 1 0
    //   512: istore 4
    //   514: goto -296 -> 218
    //   517: aload 7
    //   519: astore 6
    //   521: aload 5
    //   523: ifnull -510 -> 13
    //   526: aload 5
    //   528: invokeinterface 133 1 0
    //   533: aload 7
    //   535: areturn
    //   536: astore 7
    //   538: aconst_null
    //   539: astore 5
    //   541: aload 5
    //   543: astore 6
    //   545: aload 7
    //   547: invokevirtual 144	java/lang/Exception:printStackTrace	()V
    //   550: aload 5
    //   552: ifnull +10 -> 562
    //   555: aload 5
    //   557: invokeinterface 133 1 0
    //   562: aconst_null
    //   563: areturn
    //   564: astore 5
    //   566: aload 6
    //   568: ifnull +10 -> 578
    //   571: aload 6
    //   573: invokeinterface 133 1 0
    //   578: aload 5
    //   580: athrow
    //   581: astore 5
    //   583: goto -17 -> 566
    //   586: astore 7
    //   588: goto -47 -> 541
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	591	0	this	FacebookFileSystemCache
    //   0	591	1	paramInt1	int
    //   0	591	2	paramInt2	int
    //   173	2	3	i	int
    //   216	297	4	bool	boolean
    //   20	536	5	localObject1	Object
    //   564	15	5	localObject2	Object
    //   581	1	5	localObject3	Object
    //   1	571	6	localObject4	Object
    //   63	471	7	localObject5	Object
    //   536	10	7	localException1	Exception
    //   586	1	7	localException2	Exception
    //   234	262	8	localFacebookFileCacheEntry	FacebookFileSystemCache.FacebookFileCacheEntry
    // Exception table:
    //   from	to	target	type
    //   16	157	536	java/lang/Exception
    //   16	157	564	finally
    //   166	174	581	finally
    //   196	205	581	finally
    //   209	218	581	finally
    //   227	236	581	finally
    //   240	253	581	finally
    //   257	263	581	finally
    //   267	273	581	finally
    //   277	290	581	finally
    //   294	307	581	finally
    //   311	324	581	finally
    //   328	341	581	finally
    //   345	358	581	finally
    //   362	376	581	finally
    //   380	394	581	finally
    //   398	412	581	finally
    //   416	430	581	finally
    //   434	448	581	finally
    //   452	466	581	finally
    //   470	484	581	finally
    //   488	501	581	finally
    //   505	514	581	finally
    //   545	550	581	finally
    //   166	174	586	java/lang/Exception
    //   196	205	586	java/lang/Exception
    //   209	218	586	java/lang/Exception
    //   227	236	586	java/lang/Exception
    //   240	253	586	java/lang/Exception
    //   257	263	586	java/lang/Exception
    //   267	273	586	java/lang/Exception
    //   277	290	586	java/lang/Exception
    //   294	307	586	java/lang/Exception
    //   311	324	586	java/lang/Exception
    //   328	341	586	java/lang/Exception
    //   345	358	586	java/lang/Exception
    //   362	376	586	java/lang/Exception
    //   380	394	586	java/lang/Exception
    //   398	412	586	java/lang/Exception
    //   416	430	586	java/lang/Exception
    //   434	448	586	java/lang/Exception
    //   452	466	586	java/lang/Exception
    //   470	484	586	java/lang/Exception
    //   488	501	586	java/lang/Exception
    //   505	514	586	java/lang/Exception
  }
  
  public void udpateFile(FacebookFileSystemCache.FacebookFileCacheEntry paramFacebookFileCacheEntry)
  {
    if ((db == null) || (paramFacebookFileCacheEntry == null) || (path == null)) {
      return;
    }
    if ((path.length() > 1) && (path.endsWith("/"))) {
      path = path.substring(0, path.length() - 1);
    }
    try
    {
      paramFacebookFileCacheEntry = "UPDATE file_cache SET mtime=" + mtime + "," + "size" + "=" + size + "," + "hash" + "=" + qstring(hash) + "," + "checktime" + "=" + checktime + "," + "parent_id" + "=" + parentId + "," + "path" + "=" + qstring(path) + "," + "name" + "=" + qstring(name) + "," + "url" + "=" + qstring(url) + "," + "dir_type" + "=" + dir_type + "," + "present" + "=" + present + "," + "urlid" + "=" + qstring(url_id) + "," + "thumbnail_url" + "=" + qstring(thumbnail_url) + " WHERE " + "server_id" + "=" + serverId + " AND " + "id" + "=" + id;
      db.execSQL(paramFacebookFileCacheEntry);
      return;
    }
    catch (Exception paramFacebookFileCacheEntry)
    {
      paramFacebookFileCacheEntry.printStackTrace();
    }
  }
  
  public void updateFiles(int paramInt1, int paramInt2, HashMap<String, FacebookFileSystemCache.FacebookFileCacheEntry> paramHashMap1, HashMap<String, FacebookFileSystemCache.FacebookFileCacheEntry> paramHashMap2, boolean paramBoolean)
  {
    if (paramHashMap2 != null)
    {
      Iterator localIterator = paramHashMap2.entrySet().iterator();
      while (localIterator.hasNext())
      {
        paramHashMap2 = (Map.Entry)localIterator.next();
        String str = (String)paramHashMap2.getKey();
        FacebookFileSystemCache.FacebookFileCacheEntry localFacebookFileCacheEntry = (FacebookFileSystemCache.FacebookFileCacheEntry)paramHashMap2.getValue();
        serverId = paramInt1;
        parentId = paramInt2;
        if (paramHashMap1 == null)
        {
          paramHashMap2 = null;
          label82:
          if (paramHashMap2 == null) {
            break label237;
          }
          if (isDir != isDir) {
            break label216;
          }
          if ((size != size) || ((url != null) && (!url.equals(url))) || (present != present) || (dir_type != dir_type) || (mtime != mtime))
          {
            id = id;
            udpateFile(localFacebookFileCacheEntry);
          }
        }
        for (;;)
        {
          paramHashMap1.remove(str);
          break;
          paramHashMap2 = (FacebookFileSystemCache.FacebookFileCacheEntry)paramHashMap1.get(str);
          break label82;
          label216:
          deleteEntry(serverId, paramHashMap2, true);
          addFile(localFacebookFileCacheEntry);
        }
        label237:
        addFile(localFacebookFileCacheEntry);
      }
    }
    if ((paramHashMap1 != null) && (!paramBoolean))
    {
      paramHashMap1 = paramHashMap1.entrySet().iterator();
      while (paramHashMap1.hasNext())
      {
        paramHashMap2 = (FacebookFileSystemCache.FacebookFileCacheEntry)((Map.Entry)paramHashMap1.next()).getValue();
        deleteEntry(serverId, paramHashMap2, true);
      }
    }
  }
  
  /* Error */
  public void updateFiles(int paramInt1, int paramInt2, HashMap<String, FacebookFileSystemCache.FacebookFileCacheEntry> paramHashMap, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   7: ifnonnull +4 -> 11
    //   10: return
    //   11: new 85	java/util/HashMap
    //   14: dup
    //   15: invokespecial 88	java/util/HashMap:<init>	()V
    //   18: astore 8
    //   20: aload_0
    //   21: getfield 94	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:db	Landroid/database/sqlite/SQLiteDatabase;
    //   24: astore 7
    //   26: new 161	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 162	java/lang/StringBuilder:<init>	()V
    //   33: ldc_w 264
    //   36: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: iload_1
    //   40: invokevirtual 215	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   43: ldc_w 266
    //   46: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: ldc 35
    //   51: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: ldc_w 268
    //   57: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: iload_2
    //   61: invokevirtual 215	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   64: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: astore 9
    //   69: aload 7
    //   71: ldc 66
    //   73: bipush 12
    //   75: anewarray 119	java/lang/String
    //   78: dup
    //   79: iconst_0
    //   80: ldc 20
    //   82: aastore
    //   83: dup
    //   84: iconst_1
    //   85: ldc 32
    //   87: aastore
    //   88: dup
    //   89: iconst_2
    //   90: ldc 23
    //   92: aastore
    //   93: dup
    //   94: iconst_3
    //   95: ldc 17
    //   97: aastore
    //   98: dup
    //   99: iconst_4
    //   100: ldc 26
    //   102: aastore
    //   103: dup
    //   104: iconst_5
    //   105: ldc 47
    //   107: aastore
    //   108: dup
    //   109: bipush 6
    //   111: ldc 8
    //   113: aastore
    //   114: dup
    //   115: bipush 7
    //   117: ldc 14
    //   119: aastore
    //   120: dup
    //   121: bipush 8
    //   123: ldc 53
    //   125: aastore
    //   126: dup
    //   127: bipush 9
    //   129: ldc 38
    //   131: aastore
    //   132: dup
    //   133: bipush 10
    //   135: ldc 56
    //   137: aastore
    //   138: dup
    //   139: bipush 11
    //   141: ldc 50
    //   143: aastore
    //   144: aload 9
    //   146: aconst_null
    //   147: aconst_null
    //   148: aconst_null
    //   149: aconst_null
    //   150: invokevirtual 123	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   153: astore 7
    //   155: aload 7
    //   157: ifnull +311 -> 468
    //   160: aload 7
    //   162: astore 6
    //   164: aload 7
    //   166: invokeinterface 128 1 0
    //   171: ifeq +297 -> 468
    //   174: aload 7
    //   176: astore 6
    //   178: aload 7
    //   180: invokeinterface 137 1 0
    //   185: istore 5
    //   187: iload 5
    //   189: ifeq +279 -> 468
    //   192: aload 7
    //   194: astore 6
    //   196: new 194	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry
    //   199: dup
    //   200: invokespecial 322	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:<init>	()V
    //   203: astore 9
    //   205: aload 7
    //   207: astore 6
    //   209: aload 9
    //   211: aload 7
    //   213: iconst_0
    //   214: invokeinterface 141 2 0
    //   219: putfield 284	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:id	I
    //   222: aload 7
    //   224: astore 6
    //   226: aload 9
    //   228: iload_1
    //   229: putfield 212	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:serverId	I
    //   232: aload 7
    //   234: astore 6
    //   236: aload 9
    //   238: iload_2
    //   239: putfield 233	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:parentId	I
    //   242: aload 7
    //   244: astore 6
    //   246: aload 9
    //   248: aload 7
    //   250: iconst_1
    //   251: invokeinterface 326 2 0
    //   256: putfield 196	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:path	Ljava/lang/String;
    //   259: aload 7
    //   261: astore 6
    //   263: aload 9
    //   265: aload 7
    //   267: iconst_2
    //   268: invokeinterface 141 2 0
    //   273: putfield 224	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:isDir	I
    //   276: aload 7
    //   278: astore 6
    //   280: aload 9
    //   282: aload 7
    //   284: iconst_3
    //   285: invokeinterface 326 2 0
    //   290: putfield 226	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:hash	Ljava/lang/String;
    //   293: aload 7
    //   295: astore 6
    //   297: aload 9
    //   299: aload 7
    //   301: iconst_4
    //   302: invokeinterface 141 2 0
    //   307: putfield 228	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:mtime	I
    //   310: aload 7
    //   312: astore 6
    //   314: aload 9
    //   316: aload 7
    //   318: iconst_5
    //   319: invokeinterface 141 2 0
    //   324: putfield 230	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:size	I
    //   327: aload 7
    //   329: astore 6
    //   331: aload 9
    //   333: aload 7
    //   335: bipush 6
    //   337: invokeinterface 141 2 0
    //   342: putfield 235	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:checktime	I
    //   345: aload 7
    //   347: astore 6
    //   349: aload 9
    //   351: aload 7
    //   353: bipush 7
    //   355: invokeinterface 141 2 0
    //   360: putfield 237	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:dir_type	I
    //   363: aload 7
    //   365: astore 6
    //   367: aload 9
    //   369: aload 7
    //   371: bipush 8
    //   373: invokeinterface 326 2 0
    //   378: putfield 239	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:url	Ljava/lang/String;
    //   381: aload 7
    //   383: astore 6
    //   385: aload 9
    //   387: aload 7
    //   389: bipush 9
    //   391: invokeinterface 141 2 0
    //   396: putfield 241	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:present	I
    //   399: aload 7
    //   401: astore 6
    //   403: aload 9
    //   405: aload 7
    //   407: bipush 10
    //   409: invokeinterface 326 2 0
    //   414: putfield 244	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:url_id	Ljava/lang/String;
    //   417: aload 7
    //   419: astore 6
    //   421: aload 9
    //   423: aload 7
    //   425: bipush 11
    //   427: invokeinterface 326 2 0
    //   432: putfield 246	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:thumbnail_url	Ljava/lang/String;
    //   435: aload 7
    //   437: astore 6
    //   439: aload 8
    //   441: aload 9
    //   443: getfield 196	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache$FacebookFileCacheEntry:path	Ljava/lang/String;
    //   446: aload 9
    //   448: invokevirtual 344	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   451: pop
    //   452: aload 7
    //   454: astore 6
    //   456: aload 7
    //   458: invokeinterface 271 1 0
    //   463: istore 5
    //   465: goto -278 -> 187
    //   468: aload 7
    //   470: ifnull +10 -> 480
    //   473: aload 7
    //   475: invokeinterface 133 1 0
    //   480: aload_0
    //   481: iload_1
    //   482: iload_2
    //   483: aload 8
    //   485: aload_3
    //   486: iload 4
    //   488: invokevirtual 374	com/estrongs/android/pop/spfs/facebook/FacebookFileSystemCache:updateFiles	(IILjava/util/HashMap;Ljava/util/HashMap;Z)V
    //   491: return
    //   492: astore_3
    //   493: aconst_null
    //   494: astore 7
    //   496: aload 7
    //   498: astore 6
    //   500: aload_3
    //   501: invokevirtual 144	java/lang/Exception:printStackTrace	()V
    //   504: aload 7
    //   506: ifnull -496 -> 10
    //   509: aload 7
    //   511: invokeinterface 133 1 0
    //   516: return
    //   517: astore_3
    //   518: aload 6
    //   520: ifnull +10 -> 530
    //   523: aload 6
    //   525: invokeinterface 133 1 0
    //   530: aload_3
    //   531: athrow
    //   532: astore_3
    //   533: goto -15 -> 518
    //   536: astore_3
    //   537: goto -41 -> 496
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	540	0	this	FacebookFileSystemCache
    //   0	540	1	paramInt1	int
    //   0	540	2	paramInt2	int
    //   0	540	3	paramHashMap	HashMap<String, FacebookFileSystemCache.FacebookFileCacheEntry>
    //   0	540	4	paramBoolean	boolean
    //   185	279	5	bool	boolean
    //   1	523	6	localObject1	Object
    //   24	486	7	localObject2	Object
    //   18	466	8	localHashMap	HashMap
    //   67	380	9	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   20	155	492	java/lang/Exception
    //   20	155	517	finally
    //   164	174	532	finally
    //   178	187	532	finally
    //   196	205	532	finally
    //   209	222	532	finally
    //   226	232	532	finally
    //   236	242	532	finally
    //   246	259	532	finally
    //   263	276	532	finally
    //   280	293	532	finally
    //   297	310	532	finally
    //   314	327	532	finally
    //   331	345	532	finally
    //   349	363	532	finally
    //   367	381	532	finally
    //   385	399	532	finally
    //   403	417	532	finally
    //   421	435	532	finally
    //   439	452	532	finally
    //   456	465	532	finally
    //   500	504	532	finally
    //   164	174	536	java/lang/Exception
    //   178	187	536	java/lang/Exception
    //   196	205	536	java/lang/Exception
    //   209	222	536	java/lang/Exception
    //   226	232	536	java/lang/Exception
    //   236	242	536	java/lang/Exception
    //   246	259	536	java/lang/Exception
    //   263	276	536	java/lang/Exception
    //   280	293	536	java/lang/Exception
    //   297	310	536	java/lang/Exception
    //   314	327	536	java/lang/Exception
    //   331	345	536	java/lang/Exception
    //   349	363	536	java/lang/Exception
    //   367	381	536	java/lang/Exception
    //   385	399	536	java/lang/Exception
    //   403	417	536	java/lang/Exception
    //   421	435	536	java/lang/Exception
    //   439	452	536	java/lang/Exception
    //   456	465	536	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.facebook.FacebookFileSystemCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */