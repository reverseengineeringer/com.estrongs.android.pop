package com.baidu.scenery.dispatcher.appinfo;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.baidu.scenery.utils.LogHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class AppInfoDB
  extends SQLiteOpenHelper
{
  public static final String APP_INFO_COLUMN_APPNAME = "appname";
  public static final String APP_INFO_COLUMN_INSTALL_TIME = "install_time";
  public static final String APP_INFO_COLUMN_PKGNAME = "pkgname";
  public static final String APP_INFO_TABLE = "app_info_table";
  private static final String DATABASE_NAME = "scenery_app_info";
  private static final int DATABASE_VERSION = 1;
  private static final boolean DEBUG = ;
  private static AppInfoDB sInstance;
  private SQLiteDatabase db;
  
  private AppInfoDB(Context paramContext)
  {
    super(paramContext, "scenery_app_info", null, 1);
  }
  
  private void createAppInfoTable(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("create table if not exists app_info_table(pkgname TEXT UNIQUE,appname TEXT ,install_time INTEGER, primary key (pkgname))");
  }
  
  private void deleteAppInfoTable(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS app_info_table");
  }
  
  public static List<AppInfo> fromCursor(Cursor paramCursor)
  {
    Object localObject;
    if ((paramCursor == null) || (paramCursor.getCount() == 0))
    {
      localObject = Collections.emptyList();
      return (List<AppInfo>)localObject;
    }
    int i = paramCursor.getColumnIndexOrThrow("pkgname");
    int j = paramCursor.getColumnIndexOrThrow("appname");
    int k = paramCursor.getColumnIndexOrThrow("install_time");
    ArrayList localArrayList = new ArrayList(paramCursor.getCount());
    for (;;)
    {
      localObject = localArrayList;
      if (!paramCursor.moveToNext()) {
        break;
      }
      localObject = new AppInfo();
      ((AppInfo)localObject).setPkgName(paramCursor.getString(i));
      ((AppInfo)localObject).setAppName(paramCursor.getString(j));
      ((AppInfo)localObject).setInstallTime(paramCursor.getLong(k));
      localArrayList.add(localObject);
    }
  }
  
  public static AppInfoDB getInstance(Context paramContext)
  {
    if (sInstance == null) {}
    try
    {
      if (sInstance == null) {
        sInstance = new AppInfoDB(paramContext);
      }
      return sInstance;
    }
    finally {}
  }
  
  private void initDatabase()
  {
    if ((db == null) || (!db.isOpen())) {
      db = getWritableDatabase();
    }
  }
  
  /* Error */
  List<AppInfo> getAllAppInfo()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 133	com/baidu/scenery/dispatcher/appinfo/AppInfoDB:initDatabase	()V
    //   4: aload_0
    //   5: getfield 121	com/baidu/scenery/dispatcher/appinfo/AppInfoDB:db	Landroid/database/sqlite/SQLiteDatabase;
    //   8: ldc 17
    //   10: aconst_null
    //   11: aconst_null
    //   12: aconst_null
    //   13: aconst_null
    //   14: aconst_null
    //   15: aconst_null
    //   16: invokevirtual 137	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore_1
    //   20: aload_1
    //   21: astore_2
    //   22: aload_1
    //   23: invokestatic 139	com/baidu/scenery/dispatcher/appinfo/AppInfoDB:fromCursor	(Landroid/database/Cursor;)Ljava/util/List;
    //   26: astore_3
    //   27: aload_3
    //   28: astore_2
    //   29: aload_1
    //   30: ifnull +11 -> 41
    //   33: aload_1
    //   34: invokeinterface 142 1 0
    //   39: aload_3
    //   40: astore_2
    //   41: aload_2
    //   42: areturn
    //   43: astore_3
    //   44: aconst_null
    //   45: astore_1
    //   46: aload_1
    //   47: astore_2
    //   48: getstatic 39	com/baidu/scenery/dispatcher/appinfo/AppInfoDB:DEBUG	Z
    //   51: ifeq +27 -> 78
    //   54: aload_1
    //   55: astore_2
    //   56: new 144	java/lang/RuntimeException
    //   59: dup
    //   60: aload_3
    //   61: invokespecial 147	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   64: athrow
    //   65: astore_1
    //   66: aload_2
    //   67: ifnull +9 -> 76
    //   70: aload_2
    //   71: invokeinterface 142 1 0
    //   76: aload_1
    //   77: athrow
    //   78: aload_1
    //   79: astore_2
    //   80: invokestatic 72	java/util/Collections:emptyList	()Ljava/util/List;
    //   83: astore_3
    //   84: aload_3
    //   85: astore_2
    //   86: aload_1
    //   87: ifnull -46 -> 41
    //   90: aload_1
    //   91: invokeinterface 142 1 0
    //   96: aload_3
    //   97: areturn
    //   98: astore_1
    //   99: aconst_null
    //   100: astore_2
    //   101: goto -35 -> 66
    //   104: astore_3
    //   105: goto -59 -> 46
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	this	AppInfoDB
    //   19	36	1	localCursor	Cursor
    //   65	26	1	localObject1	Object
    //   98	1	1	localObject2	Object
    //   21	80	2	localObject3	Object
    //   26	14	3	localList1	List
    //   43	18	3	localException1	Exception
    //   83	14	3	localList2	List
    //   104	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	20	43	java/lang/Exception
    //   22	27	65	finally
    //   48	54	65	finally
    //   56	65	65	finally
    //   80	84	65	finally
    //   0	20	98	finally
    //   22	27	104	java/lang/Exception
  }
  
  /* Error */
  AppInfo getAppInfo(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 156	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +23 -> 27
    //   7: getstatic 39	com/baidu/scenery/dispatcher/appinfo/AppInfoDB:DEBUG	Z
    //   10: ifeq +13 -> 23
    //   13: new 158	java/lang/IllegalArgumentException
    //   16: dup
    //   17: ldc -96
    //   19: invokespecial 162	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   22: athrow
    //   23: aconst_null
    //   24: astore_3
    //   25: aload_3
    //   26: areturn
    //   27: aload_0
    //   28: invokespecial 133	com/baidu/scenery/dispatcher/appinfo/AppInfoDB:initDatabase	()V
    //   31: aload_0
    //   32: getfield 121	com/baidu/scenery/dispatcher/appinfo/AppInfoDB:db	Landroid/database/sqlite/SQLiteDatabase;
    //   35: ldc 17
    //   37: aconst_null
    //   38: ldc -92
    //   40: iconst_1
    //   41: anewarray 166	java/lang/String
    //   44: dup
    //   45: iconst_0
    //   46: aload_1
    //   47: aastore
    //   48: aconst_null
    //   49: aconst_null
    //   50: aconst_null
    //   51: invokevirtual 137	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   54: astore_1
    //   55: aload_1
    //   56: astore_3
    //   57: aload_1
    //   58: invokestatic 139	com/baidu/scenery/dispatcher/appinfo/AppInfoDB:fromCursor	(Landroid/database/Cursor;)Ljava/util/List;
    //   61: astore 4
    //   63: aload_1
    //   64: astore_3
    //   65: aload 4
    //   67: invokeinterface 170 1 0
    //   72: istore_2
    //   73: iload_2
    //   74: ifeq +15 -> 89
    //   77: aload_1
    //   78: ifnull +9 -> 87
    //   81: aload_1
    //   82: invokeinterface 142 1 0
    //   87: aconst_null
    //   88: areturn
    //   89: aload_1
    //   90: astore_3
    //   91: aload 4
    //   93: iconst_0
    //   94: invokeinterface 174 2 0
    //   99: checkcast 86	com/baidu/scenery/dispatcher/appinfo/AppInfo
    //   102: astore 4
    //   104: aload 4
    //   106: astore_3
    //   107: aload_1
    //   108: ifnull -83 -> 25
    //   111: aload_1
    //   112: invokeinterface 142 1 0
    //   117: aload 4
    //   119: areturn
    //   120: astore 4
    //   122: aconst_null
    //   123: astore_1
    //   124: aload_1
    //   125: astore_3
    //   126: getstatic 39	com/baidu/scenery/dispatcher/appinfo/AppInfoDB:DEBUG	Z
    //   129: ifeq +28 -> 157
    //   132: aload_1
    //   133: astore_3
    //   134: new 144	java/lang/RuntimeException
    //   137: dup
    //   138: aload 4
    //   140: invokespecial 147	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   143: athrow
    //   144: astore_1
    //   145: aload_3
    //   146: ifnull +9 -> 155
    //   149: aload_3
    //   150: invokeinterface 142 1 0
    //   155: aload_1
    //   156: athrow
    //   157: aload_1
    //   158: ifnull +9 -> 167
    //   161: aload_1
    //   162: invokeinterface 142 1 0
    //   167: aconst_null
    //   168: areturn
    //   169: astore_1
    //   170: aconst_null
    //   171: astore_3
    //   172: goto -27 -> 145
    //   175: astore 4
    //   177: goto -53 -> 124
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	180	0	this	AppInfoDB
    //   0	180	1	paramString	String
    //   72	2	2	bool	boolean
    //   24	148	3	localObject1	Object
    //   61	57	4	localObject2	Object
    //   120	19	4	localException1	Exception
    //   175	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   27	55	120	java/lang/Exception
    //   57	63	144	finally
    //   65	73	144	finally
    //   91	104	144	finally
    //   126	132	144	finally
    //   134	144	144	finally
    //   27	55	169	finally
    //   57	63	175	java/lang/Exception
    //   65	73	175	java/lang/Exception
    //   91	104	175	java/lang/Exception
  }
  
  void insertAppInfo(AppInfo paramAppInfo)
  {
    if (paramAppInfo == null)
    {
      if (!DEBUG) {
        break label77;
      }
      throw new IllegalArgumentException("null == appInfo");
    }
    try
    {
      initDatabase();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("pkgname", paramAppInfo.getPkgName());
      localContentValues.put("appname", paramAppInfo.getAppName());
      localContentValues.put("install_time", Long.valueOf(paramAppInfo.getInstallTime()));
      db.replace("app_info_table", null, localContentValues);
      label77:
      return;
    }
    catch (Exception paramAppInfo)
    {
      while (!DEBUG) {}
      throw new RuntimeException(paramAppInfo);
    }
  }
  
  void insertAppInfoList(List<AppInfo> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()))
    {
      if (DEBUG) {
        throw new IllegalArgumentException("appInfoList is empty or null");
      }
    }
    else
    {
      try
      {
        initDatabase();
        db.beginTransaction();
        paramList = paramList.iterator();
        while (paramList.hasNext())
        {
          AppInfo localAppInfo = (AppInfo)paramList.next();
          ContentValues localContentValues = new ContentValues();
          localContentValues.put("pkgname", localAppInfo.getPkgName());
          localContentValues.put("appname", localAppInfo.getAppName());
          localContentValues.put("install_time", Long.valueOf(localAppInfo.getInstallTime()));
          db.insert("app_info_table", null, localContentValues);
        }
        db.setTransactionSuccessful();
      }
      catch (Exception paramList)
      {
        if (!DEBUG) {
          break label197;
        }
        throw new RuntimeException(paramList);
      }
      finally
      {
        if ((db != null) && (db.inTransaction())) {
          db.endTransaction();
        }
      }
      if ((db != null) && (db.inTransaction())) {
        db.endTransaction();
      }
    }
    label197:
    do
    {
      return;
    } while ((db == null) || (!db.inTransaction()));
    db.endTransaction();
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    createAppInfoTable(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    deleteAppInfoTable(paramSQLiteDatabase);
    createAppInfoTable(paramSQLiteDatabase);
  }
  
  void removeAllAppInfo()
  {
    try
    {
      initDatabase();
      db.delete("app_info_table", null, null);
      return;
    }
    catch (Exception localException)
    {
      while (!DEBUG) {}
      throw new RuntimeException(localException);
    }
  }
  
  void removeAppInfo(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      if (!DEBUG) {
        break label47;
      }
      throw new IllegalArgumentException("pkgName is null or zero length");
    }
    try
    {
      initDatabase();
      db.delete("app_info_table", "pkgname=?", new String[] { paramString });
      label47:
      return;
    }
    catch (Exception paramString)
    {
      while (!DEBUG) {}
      throw new RuntimeException(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.appinfo.AppInfoDB
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */