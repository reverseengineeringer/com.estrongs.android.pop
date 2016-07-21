package com.estrongs.fs.impl.l;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.utils.ad;
import com.estrongs.android.pop.utils.ai;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.i;
import com.estrongs.fs.w;
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
  static final String[] a = { "_id", "title", "_data", "_size", "date_modified", "mime_type", "datetaken", "mini_thumb_magic", "orientation", "width", "height" };
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
    for (boolean bool = true;; bool = i.a(FexApplication.a(), paramString, null))
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
  
  protected List<h> a()
  {
    aj[] arrayOfaj = ad.f();
    Object localObject4 = ad.a(arrayOfaj);
    Object localObject5;
    int i;
    Object localObject2;
    Object localObject1;
    if ((arrayOfaj.length > 0) && (arrayOfaj.length <= 500))
    {
      localObject5 = new StringBuffer();
      i = 0;
      if (i < arrayOfaj.length)
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
        return (List<h>)localObject2;
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
          return (List<h>)localObject2;
        }
        localObject5 = ((Cursor)localObject1).getString(0);
        String str1 = ((Cursor)localObject1).getString(1);
        String str2 = ap.bB(((Cursor)localObject1).getString(2));
        arrayOfInt = new int[1];
        arrayOfInt[0] = ((Cursor)localObject1).getInt(3);
        if ((bk.a(str2)) || (arrayOfInt[0] <= 0)) {
          continue;
        }
        if (arrayOfaj.length > 500)
        {
          ai localai = ad.d(str2, Integer.MAX_VALUE);
          if ((localai == null) || (d == null) || (d.size() <= 0)) {
            break label609;
          }
          j = 0;
          i = 0;
          k = i;
          if (j >= d.size()) {
            break label611;
          }
          if (bg.c(d.get(j)).a))
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
          ((LinkedList)localObject2).add(new d(this, g((String)localObject5), str2, w.a, str1, arrayOfInt, str2));
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
  
  protected List<h> a(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    ai localai = ad.d(paramString2, Integer.MAX_VALUE);
    Object localObject3;
    int i;
    Object localObject2;
    Object localObject1;
    if ((localai != null) && (d != null) && (d.size() > 0)) {
      if (d.size() <= 500)
      {
        paramString2 = ap.bV(paramString2);
        if (paramString2.endsWith("/")) {
          break label803;
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
      Object localObject6 = new StringBuilder().append("bucket_id = ?");
      localObject2 = paramString2;
      if (paramString2 == null) {
        localObject2 = "";
      }
      paramString2 = MediaStore.Images.Media.query((ContentResolver)localObject3, (Uri)localObject4, (String[])localObject5, (String)localObject2, f(paramString1), null);
      localObject2 = new LinkedList();
      if (paramString2 == null)
      {
        return (List<h>)localObject2;
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
            return (List<h>)localObject2;
          }
          localObject3 = paramString2.getString(paramString2.getColumnIndexOrThrow("_id"));
          localObject4 = String.format("gallery://local/buckets/%s/%s", new Object[] { paramString1, localObject3 });
          localObject5 = paramString2.getString(paramString2.getColumnIndexOrThrow("_data"));
          if ((localai == null) || (d == null) || (d.size() <= 500) || (!((Set)localObject1).contains(ap.d((String)localObject5))))
          {
            localObject6 = ap.d((String)localObject5);
            long l1 = paramString2.getLong(paramString2.getColumnIndexOrThrow("_size"));
            long l2 = paramString2.getLong(paramString2.getColumnIndexOrThrow("date_modified"));
            long l3 = paramString2.getLong(paramString2.getColumnIndexOrThrow("datetaken"));
            localObject3 = new b((String)localObject3, (String)localObject4, (String)localObject5, (String)localObject6, l1, l2 * 1000L, paramString2.getInt(paramString2.getColumnIndexOrThrow("width")), paramString2.getInt(paramString2.getColumnIndexOrThrow("height")));
            ((b)localObject3).a(l3);
            ((LinkedList)localObject2).add(localObject3);
          }
        }
        paramString2 = null;
      }
      finally
      {
        paramString2.close();
      }
      continue;
      label803:
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
      String str = ((h)paramString2.next()).getAbsolutePath();
      bool2 = h(str);
      paramString1.add(str);
    }
    if (bool1)
    {
      com.estrongs.fs.impl.p.c.b().c(paramString1);
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
      } while (bk.a((CharSequence)localObject));
      localFile2 = new File((String)localObject);
      localFile1 = new File(localFile2.getParentFile(), paramString2);
    } while ((localFile2 != null) && (localFile2.exists()) && (!i.a((String)localObject, localFile1.getPath())));
    paramString1 = "_id=" + paramString1;
    Object localObject = new ContentValues();
    ((ContentValues)localObject).put("title", ap.bS(paramString2));
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
    } while ((bk.a(paramString)) || (!h(paramString)) || (com.estrongs.fs.impl.p.c.b().b(paramString) <= 0));
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
 * Qualified Name:     com.estrongs.fs.impl.l.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */