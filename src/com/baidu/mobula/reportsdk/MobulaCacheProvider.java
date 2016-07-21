package com.baidu.mobula.reportsdk;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;

public final class MobulaCacheProvider
  extends ContentProvider
{
  private static final String AUTHORITY_SUFFIX = ".duscene.MobulaCacheProvider";
  private static Uri AUTHORITY_URI;
  public static final int RECORD = 4;
  private static Uri RECORD_AUTHORITY_URI;
  private static final String RECORD_TYPE = "vnd.android.cursor.dir/record";
  private static final Object REPORT_DB_LOCK = new Object();
  private static final String SCHEME = "content://";
  private static final String UNKOWN_TYPE = "vnd.android.cursor.dir/unkown";
  private static UriMatcher sUriMatcher;
  private String TAG = "MobulaReport";
  private Context mContext;
  private MobulaDbHelper mSrecordDbHelper;
  
  private static UriMatcher buildUriMatcher(String paramString)
  {
    AUTHORITY_URI = Uri.parse("content://" + paramString);
    RECORD_AUTHORITY_URI = Uri.withAppendedPath(AUTHORITY_URI, "record");
    UriMatcher localUriMatcher = new UriMatcher(-1);
    localUriMatcher.addURI(paramString, "record", 4);
    return localUriMatcher;
  }
  
  private int chechUriMatchCode(Uri paramUri)
  {
    if ((paramUri == null) || (Uri.EMPTY == paramUri)) {
      return -1;
    }
    return sUriMatcher.match(paramUri);
  }
  
  public static Uri getUriByType(Context paramContext, int paramInt)
  {
    Uri localUri = Uri.EMPTY;
    if (AUTHORITY_URI == null)
    {
      paramContext = paramContext.getPackageName() + ".duscene.MobulaCacheProvider";
      AUTHORITY_URI = Uri.parse("content://" + paramContext);
    }
    if (RECORD_AUTHORITY_URI == null) {
      RECORD_AUTHORITY_URI = Uri.withAppendedPath(AUTHORITY_URI, "record");
    }
    switch (paramInt)
    {
    default: 
      return localUri;
    }
    return RECORD_AUTHORITY_URI;
  }
  
  private void init(Context paramContext)
  {
    sUriMatcher = buildUriMatcher(paramContext.getPackageName() + ".duscene.MobulaCacheProvider");
  }
  
  private Object matchDBLock(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    return REPORT_DB_LOCK;
  }
  
  private SQLiteDatabase matchDataBase(Context paramContext, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    if (mSrecordDbHelper == null) {
      mSrecordDbHelper = new MobulaDbHelper(paramContext);
    }
    try
    {
      SQLiteDatabase localSQLiteDatabase = mSrecordDbHelper.getWritableDatabase();
      return localSQLiteDatabase;
    }
    catch (Exception localException)
    {
      paramContext.deleteDatabase("duscene_mobula.db");
    }
    return mSrecordDbHelper.getWritableDatabase();
  }
  
  private String matchTableName(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    return "srecord";
  }
  
  public int delete(Uri arg1, String paramString, String[] paramArrayOfString)
  {
    String str2 = TAG;
    if ("del selcetion  = " + paramString + " , selectionArgs = " + paramString != null) {}
    int i;
    for (String str1 = paramString.toString();; str1 = null)
    {
      LogHelper.d(str2, str1);
      i = chechUriMatchCode(???);
      if ((i > 0) && (i <= 7)) {
        break;
      }
      return -1;
    }
    synchronized (matchDBLock(i))
    {
      i = matchDataBase(getContext(), i).delete(matchTableName(i), paramString, paramArrayOfString);
      return i;
    }
  }
  
  public String getType(Uri paramUri)
  {
    switch (sUriMatcher.match(paramUri))
    {
    default: 
      return "vnd.android.cursor.dir/unkown";
    }
    return "vnd.android.cursor.dir/record";
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    int i = chechUriMatchCode(paramUri);
    if ((i <= 0) || (i > 7)) {
      return null;
    }
    synchronized (matchDBLock(i))
    {
      matchDataBase(getContext(), i).insert(matchTableName(i), null, paramContentValues);
      return paramUri;
    }
  }
  
  public boolean onCreate()
  {
    mContext = getContext();
    init(mContext);
    return true;
  }
  
  public Cursor query(Uri arg1, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    int i = chechUriMatchCode(???);
    if ((i <= 0) || (i > 7)) {
      return null;
    }
    synchronized (matchDBLock(i))
    {
      paramArrayOfString1 = matchDataBase(getContext(), i).query(matchTableName(i), paramArrayOfString1, paramString1, paramArrayOfString2, null, null, paramString2);
      return paramArrayOfString1;
    }
  }
  
  public int update(Uri arg1, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    int i = chechUriMatchCode(???);
    if ((i <= 0) || (i > 7)) {
      return -1;
    }
    synchronized (matchDBLock(i))
    {
      i = matchDataBase(getContext(), i).update(matchTableName(i), paramContentValues, paramString, paramArrayOfString);
      return i;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobula.reportsdk.MobulaCacheProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */