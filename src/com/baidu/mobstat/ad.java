package com.baidu.mobstat;

import android.content.ContextWrapper;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.os.Environment;
import java.io.File;
import java.io.IOException;

class ad
  extends ContextWrapper
{
  public ad()
  {
    super(null);
  }
  
  public File getDatabasePath(String paramString)
  {
    if (!"mounted".equals(cl.a())) {
      return null;
    }
    String str = Environment.getExternalStorageDirectory().getAbsolutePath();
    str = str + File.separator + "backups/system";
    File localFile = new File(str);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    paramString = new File(str + File.separator + paramString);
    if (!paramString.exists()) {}
    try
    {
      paramString.createNewFile();
      if (paramString.exists()) {
        return paramString;
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        bb.b(localIOException);
        continue;
        paramString = null;
      }
    }
  }
  
  public SQLiteDatabase openOrCreateDatabase(String paramString, int paramInt, SQLiteDatabase.CursorFactory paramCursorFactory)
  {
    paramString = getDatabasePath(paramString);
    if (paramString == null) {
      throw new NullPointerException("db path is null");
    }
    return SQLiteDatabase.openOrCreateDatabase(paramString, null);
  }
  
  public SQLiteDatabase openOrCreateDatabase(String paramString, int paramInt, SQLiteDatabase.CursorFactory paramCursorFactory, DatabaseErrorHandler paramDatabaseErrorHandler)
  {
    paramString = getDatabasePath(paramString);
    if (paramString == null) {
      throw new NullPointerException("db path is null");
    }
    return SQLiteDatabase.openOrCreateDatabase(paramString, null);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */