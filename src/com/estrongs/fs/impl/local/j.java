package com.estrongs.fs.impl.local;

import com.estrongs.android.pop.utils.cm;
import com.estrongs.android.util.bk;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import com.estrongs.fs.impl.media.e;
import com.estrongs.fs.impl.n.d;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

final class j
  extends Thread
{
  j(String paramString1, String paramString2) {}
  
  public void run()
  {
    Object localObject2 = a;
    Object localObject1 = localObject2;
    if (!((String)localObject2).endsWith("/")) {
      localObject1 = (String)localObject2 + "/";
    }
    localObject2 = new ArrayList();
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    i.a(new File(b), (List)localObject2, localArrayList1, localArrayList2, localArrayList3);
    try
    {
      if (bk.f())
      {
        e.g((String)localObject1);
        e.a(localArrayList3, null);
        return;
      }
      if (((List)localObject2).size() > 0) {
        com.estrongs.fs.impl.p.c.b().c((String)localObject1);
      }
      if (localArrayList1.size() > 0) {
        d.b().c((String)localObject1);
      }
      if (localArrayList2.size() > 0) {
        com.estrongs.fs.impl.v.c.b().c((String)localObject1);
      }
      if (((List)localObject2).size() > 0) {
        com.estrongs.fs.impl.p.c.b().a((List)localObject2);
      }
      if (localArrayList1.size() > 0) {
        d.b().a(localArrayList1);
      }
      if (localArrayList2.size() > 0)
      {
        com.estrongs.fs.impl.v.c.b().a(localArrayList2);
        return;
      }
    }
    catch (MediaStoreInsertException localMediaStoreInsertException)
    {
      localMediaStoreInsertException.printStackTrace();
      cm.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */