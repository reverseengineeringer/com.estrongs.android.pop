package com.estrongs.android.pop.app;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MatrixCursor.RowBuilder;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.estrongs.android.util.bc;
import java.io.File;
import java.io.FileNotFoundException;

public class FileContentProvider
  extends ContentProvider
{
  public static Uri a(String paramString)
  {
    try
    {
      String str = Uri.fromFile(new File(paramString)).toString();
      str = "content://com.estrongs.files" + str.substring("file://".length());
      paramString = str;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        if (paramString.startsWith("/")) {
          paramString = "content://com.estrongs.files" + paramString;
        } else {
          paramString = "content://com.estrongs.files" + "/" + paramString;
        }
      }
    }
    return Uri.parse(paramString);
  }
  
  private String a(Uri paramUri)
  {
    if (!paramUri.toString().startsWith("content://com.estrongs.files")) {
      return null;
    }
    return paramUri.getPath();
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
  
  public String getType(Uri paramUri)
  {
    return bc.S(a(paramUri));
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }
  
  public boolean onCreate()
  {
    return true;
  }
  
  public ParcelFileDescriptor openFile(Uri paramUri, String paramString)
  {
    try
    {
      paramString = a(paramUri);
      if (paramString != null)
      {
        paramUri = new File(paramString);
        if (paramUri.exists()) {
          return ParcelFileDescriptor.open(paramUri, 268435456);
        }
      }
    }
    catch (Exception paramString)
    {
      throw new FileNotFoundException("Failed to find uri: " + paramUri.toString());
    }
    throw new FileNotFoundException("No file found: " + paramString);
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    paramString1 = a(paramUri);
    if (paramArrayOfString1 != null)
    {
      paramUri = paramArrayOfString1;
      if (paramArrayOfString1.length != 0) {}
    }
    else
    {
      paramUri = new String[7];
      paramUri[0] = "_data";
      paramUri[1] = "mime_type";
      paramUri[2] = "_display_name";
      paramUri[3] = "_size";
      paramUri[4] = "date_modified";
      paramUri[5] = "album";
      paramUri[6] = "artist";
    }
    paramArrayOfString2 = new MatrixCursor(paramUri);
    if (paramString1 == null) {
      return paramArrayOfString2;
    }
    File localFile = new File(paramString1);
    if ((!localFile.exists()) || (localFile.isDirectory())) {
      return paramArrayOfString2;
    }
    paramString2 = paramArrayOfString2.newRow();
    int i = paramString1.lastIndexOf(File.separatorChar) + 1;
    if (i >= paramString1.length()) {
      throw new RuntimeException("No file name specified: ".concat(paramString1));
    }
    String str;
    long l1;
    long l2;
    if (i > 0)
    {
      paramArrayOfString1 = paramString1.substring(i);
      str = bc.S(paramString1);
      l1 = localFile.length();
      l2 = localFile.lastModified();
      int j = paramUri.length;
      i = 0;
      label185:
      if (i >= j) {
        break label366;
      }
      localFile = paramUri[i];
      if (!localFile.equals("_data")) {
        break label229;
      }
      paramString2.add(paramString1);
    }
    for (;;)
    {
      i += 1;
      break label185;
      paramArrayOfString1 = paramString1;
      break;
      label229:
      if (localFile.equals("mime_type")) {
        paramString2.add(str);
      } else if (localFile.equals("_display_name")) {
        paramString2.add(paramArrayOfString1);
      } else if (localFile.equals("_size"))
      {
        if (l1 >= 0L) {
          paramString2.add(Long.valueOf(l1));
        } else {
          paramString2.add(null);
        }
      }
      else if (localFile.equals("date_modified"))
      {
        if (l2 >= 0L) {
          paramString2.add(Long.valueOf(l2));
        } else {
          paramString2.add(Long.valueOf(l2));
        }
      }
      else {
        paramString2.add(null);
      }
    }
    label366:
    return paramArrayOfString2;
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.FileContentProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */