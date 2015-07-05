package com.estrongs.android.pop.app.imageviewer.gallery;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.io.File;
import java.text.Collator;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class a
  implements f
{
  private List<e> a = new LinkedList();
  private final Collator b = Collator.getInstance();
  
  public a(ContentResolver paramContentResolver, Uri paramUri, int paramInt)
  {
    a(paramContentResolver, paramUri);
    Collections.sort(a, c(paramInt));
  }
  
  private void a(ContentResolver paramContentResolver, Uri paramUri)
  {
    paramContentResolver = paramContentResolver.query(paramUri, null, null, null, "bucket_display_name");
    if (paramContentResolver != null)
    {
      while (paramContentResolver.moveToNext())
      {
        paramUri = new File(paramContentResolver.getString(paramContentResolver.getColumnIndexOrThrow("_data")));
        if (paramUri.exists()) {
          a.add(new j(this, null, Uri.fromFile(paramUri), paramUri.lastModified()));
        }
      }
      paramContentResolver.close();
    }
  }
  
  private Comparator<e> c(int paramInt)
  {
    return new b(this, paramInt);
  }
  
  public int a(e parame)
  {
    return a.indexOf(parame);
  }
  
  public e a(int paramInt)
  {
    if ((paramInt > -1) && (paramInt < a.size())) {
      return (e)a.get(paramInt);
    }
    return null;
  }
  
  public e a(Uri paramUri)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      e locale = (e)localIterator.next();
      if (paramUri.getPath().equalsIgnoreCase(locale.d())) {
        return locale;
      }
    }
    return null;
  }
  
  public void a()
  {
    a.clear();
  }
  
  public int b()
  {
    return a.size();
  }
  
  public boolean b(int paramInt)
  {
    return b(a(paramInt));
  }
  
  public boolean b(e parame)
  {
    File localFile = new File(((j)parame).d());
    if ((localFile.exists()) && (localFile.delete()))
    {
      a.remove(parame);
      return true;
    }
    return false;
  }
  
  public boolean c()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.gallery.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */