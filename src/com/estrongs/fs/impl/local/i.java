package com.estrongs.fs.impl.local;

import com.estrongs.android.pop.utils.cd;
import com.estrongs.android.util.bd;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import com.estrongs.fs.impl.media.d;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

final class i
  extends Thread
{
  i(String paramString1, String paramString2) {}
  
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
    h.a(new File(b), (List)localObject2, localArrayList1, localArrayList2, localArrayList3);
    try
    {
      if (bd.f())
      {
        d.g((String)localObject1);
        d.a(localArrayList3, null);
        return;
      }
      if (((List)localObject2).size() > 0) {
        com.estrongs.fs.impl.k.b.c().c((String)localObject1);
      }
      if (localArrayList1.size() > 0) {
        com.estrongs.fs.impl.i.b.c().c((String)localObject1);
      }
      if (localArrayList2.size() > 0) {
        com.estrongs.fs.impl.q.b.c().c((String)localObject1);
      }
      if (((List)localObject2).size() > 0) {
        com.estrongs.fs.impl.k.b.c().a((List)localObject2);
      }
      if (localArrayList1.size() > 0) {
        com.estrongs.fs.impl.i.b.c().a(localArrayList1);
      }
      if (localArrayList2.size() > 0)
      {
        com.estrongs.fs.impl.q.b.c().a(localArrayList2);
        return;
      }
    }
    catch (MediaStoreInsertException localMediaStoreInsertException)
    {
      localMediaStoreInsertException.printStackTrace();
      cd.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */