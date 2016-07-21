package com.estrongs.fs.impl.n;

import android.text.TextUtils;
import com.estrongs.android.pop.app.c.j;
import com.estrongs.android.pop.app.c.m;
import com.estrongs.android.ui.topclassify.aa;
import com.estrongs.android.util.TypedMap;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.impl.local.f;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class b
  extends com.estrongs.fs.impl.i.a
{
  private static b a;
  
  private b()
  {
    super(2);
  }
  
  public static b a()
  {
    if (a == null) {
      a = new b();
    }
    return a;
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
  
  protected h a(f paramf)
  {
    return new a(paramf);
  }
  
  public List<h> a(h paramh, i parami, TypedMap paramTypedMap)
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
        parami = super.a(paramh, parami, paramTypedMap);
        if ((localObject != null) && (parami != null))
        {
          paramh = new c(this, (List)localObject);
          parami = parami.iterator();
          while (parami.hasNext())
          {
            paramTypedMap = (h)parami.next();
            if (paramh.a(paramTypedMap)) {
              localLinkedList.add(paramTypedMap);
            }
          }
        }
      }
      return localLinkedList;
    }
    return super.a(paramh, parami, paramTypedMap);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.n.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */