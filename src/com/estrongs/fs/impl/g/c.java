package com.estrongs.fs.impl.g;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.pop.utils.ae;
import com.estrongs.android.pop.utils.af;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bd;
import com.estrongs.fs.m;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class c
  extends a
{
  static final String[] a = { "_id", "title", "_data", "_size", "date_modified", "mime_type", "datetaken", "mini_thumb_magic", "orientation" };
  private static final String[] c = new String[0];
  protected ContentResolver b = null;
  
  public c(ContentResolver paramContentResolver)
  {
    b = paramContentResolver;
  }
  
  private String g(String paramString)
  {
    return String.format("gallery://local/buckets/%s", new Object[] { paramString });
  }
  
  private boolean h(String paramString)
  {
    if (!"mounted".equals(Environment.getExternalStorageState())) {
      return false;
    }
    File localFile = new File(paramString);
    long l = localFile.length();
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    if (!localFile.exists()) {}
    for (boolean bool = true;; bool = com.estrongs.fs.impl.local.h.a(FexApplication.a(), paramString, null))
    {
      if ((bool) && (locala != null))
      {
        locala.sendMessage(1, new Object[] { Long.valueOf(1L), paramString });
        if (l > 0L) {
          locala.sendMessage(2, new Object[] { Long.valueOf(l), paramString });
        }
      }
      return bool;
    }
  }
  
  private String i(String paramString)
  {
    Object localObject = b;
    Uri localUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    paramString = "_id='" + paramString + "'";
    paramString = MediaStore.Images.Media.query((ContentResolver)localObject, localUri, new String[] { "_data" }, paramString, null, null);
    if (paramString == null) {}
    while (!paramString.moveToNext()) {
      return null;
    }
    localObject = paramString.getString(0);
    paramString.close();
    return (String)localObject;
  }
  
  protected List<com.estrongs.fs.h> a()
  {
    af[] arrayOfaf = aa.f();
    Object localObject4 = aa.a(arrayOfaf);
    Object localObject5;
    int i;
    Object localObject2;
    Object localObject1;
    if ((arrayOfaf.length > 0) && (arrayOfaf.length <= 500))
    {
      localObject5 = new StringBuffer();
      i = 0;
      if (i < arrayOfaf.length)
      {
        if (a)
        {
          localObject2 = localObject4[i];
          localObject1 = localObject2;
          if (((String)localObject2).endsWith("/")) {
            localObject1 = ((String)localObject2).substring(0, ((String)localObject2).length() - 1);
          }
          ((StringBuffer)localObject5).append(" and ").append("_data").append("!=").append(DatabaseUtils.sqlEscapeString((String)localObject1));
          ((StringBuffer)localObject5).append(" and ").append("_data").append(" not like ").append(DatabaseUtils.sqlEscapeString((String)localObject1 + "/" + "%"));
        }
        for (;;)
        {
          i += 1;
          break;
          ((StringBuffer)localObject5).append(" and ").append("_data").append("!=").append(DatabaseUtils.sqlEscapeString(localObject4[i]));
        }
      }
      localObject1 = ((StringBuffer)localObject5).toString();
      localObject2 = b;
      localObject4 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
      localObject5 = new StringBuilder().append("1=1) ");
      if (localObject1 == null) {}
      for (localObject1 = "";; localObject1 = (String)localObject1 + " ")
      {
        localObject1 = (String)localObject1 + "group by (" + "bucket_id";
        localObject1 = MediaStore.Images.Media.query((ContentResolver)localObject2, (Uri)localObject4, new String[] { "bucket_id", "bucket_display_name", "_data", "count(bucket_id)" }, (String)localObject1, null, null);
        localObject2 = new LinkedList();
        if (localObject1 != null) {
          break;
        }
        return (List<com.estrongs.fs.h>)localObject2;
      }
    }
    for (;;)
    {
      int[] arrayOfInt;
      int j;
      try
      {
        localObject4 = com.estrongs.a.a.getCurrentTask();
        if (((Cursor)localObject1).moveToNext())
        {
          if (localObject4 != null)
          {
            boolean bool = ((com.estrongs.a.a)localObject4).taskStopped();
            if (!bool) {}
          }
        }
        else {
          return (List<com.estrongs.fs.h>)localObject2;
        }
        localObject5 = ((Cursor)localObject1).getString(0);
        String str1 = ((Cursor)localObject1).getString(1);
        String str2 = am.bk(((Cursor)localObject1).getString(2));
        arrayOfInt = new int[1];
        arrayOfInt[0] = ((Cursor)localObject1).getInt(3);
        if ((bd.a(str2)) || (arrayOfInt[0] <= 0)) {
          continue;
        }
        if (arrayOfaf.length > 500)
        {
          ae localae = aa.d(str2, Integer.MAX_VALUE);
          if ((localae == null) || (d == null) || (d.size() <= 0)) {
            break label609;
          }
          j = 0;
          i = 0;
          k = i;
          if (j >= d.size()) {
            break label611;
          }
          if (bc.c(d.get(j)).a))
          {
            i += 1;
            break label602;
          }
        }
        else
        {
          if (arrayOfInt[0] <= 0) {
            continue;
          }
          ((LinkedList)localObject2).add(new d(this, g((String)localObject5), str2, m.a, str1, arrayOfInt, str2));
          continue;
        }
      }
      finally
      {
        ((Cursor)localObject1).close();
      }
      localObject1 = null;
      break;
      label602:
      j += 1;
      continue;
      label609:
      int k = 0;
      label611:
      arrayOfInt[0] -= k;
    }
  }
  
  protected List<com.estrongs.fs.h> a(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    ae localae = aa.d(paramString2, Integer.MAX_VALUE);
    Object localObject3;
    int i;
    Object localObject2;
    Object localObject1;
    if ((localae != null) && (d != null) && (d.size() > 0)) {
      if (d.size() <= 500)
      {
        paramString2 = am.bE(paramString2);
        if (paramString2.endsWith("/")) {
          break label730;
        }
        paramString2 = paramString2 + "/";
        localObject3 = new StringBuffer();
        i = 0;
        if (i < d.size())
        {
          if (d.get(i)).c)
          {
            localObject2 = paramString2 + d.get(i)).a;
            localObject1 = localObject2;
            if (((String)localObject2).endsWith("/")) {
              localObject1 = ((String)localObject2).substring(0, ((String)localObject2).length() - 1);
            }
            ((StringBuffer)localObject3).append(" and ").append("_data").append("!=").append(DatabaseUtils.sqlEscapeString((String)localObject1));
            ((StringBuffer)localObject3).append(" and ").append("_data").append(" not like ").append(DatabaseUtils.sqlEscapeString((String)localObject1 + "/" + "%"));
          }
          for (;;)
          {
            i += 1;
            break;
            ((StringBuffer)localObject3).append(" and ").append("_data").append("!=").append(DatabaseUtils.sqlEscapeString(paramString2 + d.get(i)).a));
          }
        }
        paramString2 = ((StringBuffer)localObject3).toString();
        localObject1 = null;
      }
    }
    for (;;)
    {
      localObject3 = b;
      Object localObject4 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
      Object localObject5 = a;
      StringBuilder localStringBuilder = new StringBuilder().append("bucket_id = ?");
      localObject2 = paramString2;
      if (paramString2 == null) {
        localObject2 = "";
      }
      paramString2 = MediaStore.Images.Media.query((ContentResolver)localObject3, (Uri)localObject4, (String[])localObject5, (String)localObject2, f(paramString1), null);
      localObject2 = new LinkedList();
      if (paramString2 == null)
      {
        return (List<com.estrongs.fs.h>)localObject2;
        localObject1 = new HashSet();
        i = 0;
        while (i < d.size())
        {
          ((Set)localObject1).add(d.get(i)).a);
          i += 1;
        }
      }
      i = 0;
      try
      {
        for (;;)
        {
          boolean bool = paramString2.moveToNext();
          if (bool)
          {
            i += 1;
            if (i < paramInt1) {
              continue;
            }
            if ((paramInt2 == -1) || (i != paramInt2)) {}
          }
          else
          {
            return (List<com.estrongs.fs.h>)localObject2;
          }
          localObject3 = paramString2.getString(paramString2.getColumnIndexOrThrow("_id"));
          localObject4 = String.format("gallery://local/buckets/%s/%s", new Object[] { paramString1, localObject3 });
          localObject5 = paramString2.getString(paramString2.getColumnIndexOrThrow("_data"));
          if ((localae == null) || (d == null) || (d.size() <= 500) || (!((Set)localObject1).contains(am.d((String)localObject5)))) {
            ((LinkedList)localObject2).add(new b((String)localObject3, (String)localObject4, (String)localObject5, am.d((String)localObject5), paramString2.getLong(paramString2.getColumnIndexOrThrow("_size")), paramString2.getLong(paramString2.getColumnIndexOrThrow("date_modified")) * 1000L));
          }
        }
        paramString2 = null;
      }
      finally
      {
        paramString2.close();
      }
      continue;
      label730:
      break;
      localObject1 = null;
      paramString2 = null;
    }
  }
  
  protected boolean b(String paramString1, String paramString2)
  {
    if (!"mounted".equals(Environment.getExternalStorageState())) {
      return false;
    }
    paramString2 = a(paramString1, 0, -1, paramString2);
    paramString1 = new LinkedList();
    paramString2 = paramString2.iterator();
    boolean bool2;
    for (boolean bool1 = true; paramString2.hasNext(); bool1 = bool2 & bool1)
    {
      String str = ((com.estrongs.fs.h)paramString2.next()).getAbsolutePath();
      bool2 = h(str);
      paramString1.add(str);
    }
    if (bool1)
    {
      com.estrongs.fs.impl.k.b.c().c(paramString1);
      return true;
    }
    return false;
  }
  
  protected boolean d(String paramString1, String paramString2)
  {
    if (!"mounted".equals(Environment.getExternalStorageState())) {}
    File localFile2;
    File localFile1;
    do
    {
      do
      {
        return false;
        localObject = i(paramString1);
      } while (bd.a((CharSequence)localObject));
      localFile2 = new File((String)localObject);
      localFile1 = new File(localFile2.getParentFile(), paramString2);
    } while ((localFile2 != null) && (localFile2.exists()) && (!com.estrongs.fs.impl.local.h.a((String)localObject, localFile1.getPath())));
    paramString1 = "_id=" + paramString1;
    Object localObject = new ContentValues();
    ((ContentValues)localObject).put("title", am.bB(paramString2));
    ((ContentValues)localObject).put("_data", localFile1.getAbsolutePath());
    b.update(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, (ContentValues)localObject, paramString1, null);
    return true;
  }
  
  protected boolean e(String paramString)
  {
    if (!"mounted".equals(Environment.getExternalStorageState())) {}
    do
    {
      return false;
      paramString = i(paramString);
    } while ((bd.a(paramString)) || (!h(paramString)) || (com.estrongs.fs.impl.k.b.c().b(paramString) <= 0));
    return true;
  }
  
  protected String[] f(String paramString)
  {
    if (paramString != null)
    {
      int i = c.length;
      String[] arrayOfString = new String[i + 1];
      System.arraycopy(c, 0, arrayOfString, 0, i);
      arrayOfString[i] = paramString;
      return arrayOfString;
    }
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.g.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */