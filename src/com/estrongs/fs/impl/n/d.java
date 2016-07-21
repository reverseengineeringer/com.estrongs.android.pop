package com.estrongs.fs.impl.n;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.DatabaseUtils;
import android.provider.MediaStore.Audio.Media;
import android.text.TextUtils;
import com.estrongs.a.b.o;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.c.j;
import com.estrongs.android.pop.app.c.m;
import com.estrongs.android.ui.topclassify.aa;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class d
  extends com.estrongs.fs.impl.media.c
{
  private static d g;
  
  private d()
  {
    c = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
    d = "_data";
    e = "title_key";
  }
  
  private List<h> a(h paramh)
  {
    LinkedList localLinkedList = new LinkedList();
    Object localObject = m.a().j();
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        j localj = (j)((Iterator)localObject).next();
        if (!TextUtils.isEmpty(localj.a())) {
          localLinkedList.add(new aa(paramh.getPath(), localj));
        }
      }
    }
    return localLinkedList;
  }
  
  public static d b()
  {
    if (g == null) {
      g = new d();
    }
    return g;
  }
  
  public static boolean e(String paramString)
  {
    if (paramString.equals("music://")) {}
    for (paramString = ap.g();; paramString = paramString.substring("music://".length()))
    {
      return new File(paramString).exists();
      if (!paramString.startsWith("music://")) {
        break;
      }
    }
    return false;
  }
  
  public int a(String paramString1, String paramString2)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put(d, paramString2);
      paramString1 = d + "=" + DatabaseUtils.sqlEscapeString(paramString1);
      int i = FexApplication.a().getContentResolver().update(c, localContentValues, paramString1, null);
      return i;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return 0;
  }
  
  protected h a(File paramFile)
  {
    return new a(paramFile);
  }
  
  protected String a()
  {
    return null;
  }
  
  public List<h> a(Context paramContext, h paramh, i parami, o<String> paramo, TypedMap paramTypedMap)
  {
    LinkedList localLinkedList = new LinkedList();
    if ((paramh != null) && ((paramh instanceof com.estrongs.android.ui.topclassify.c)))
    {
      if (((com.estrongs.android.ui.topclassify.c)paramh).b() == 6) {
        return a(paramh);
      }
    }
    else if ((paramh != null) && ((paramh instanceof aa)))
    {
      Object localObject = ((aa)paramh).a();
      if (localObject != null)
      {
        localObject = ((j)localObject).c();
        paramh = super.a(paramContext, paramh, parami, paramo, paramTypedMap);
        if ((localObject != null) && (paramh != null))
        {
          paramContext = new e(this, (List)localObject);
          paramh = paramh.iterator();
          while (paramh.hasNext())
          {
            parami = (h)paramh.next();
            if (paramContext.a(parami)) {
              localLinkedList.add(parami);
            }
          }
        }
      }
      return localLinkedList;
    }
    return super.a(paramContext, paramh, parami, paramo, paramTypedMap);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.n.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */