package com.estrongs.android.pop.utils;

import com.estrongs.a.a;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import com.estrongs.fs.impl.media.e;
import java.io.File;
import java.util.ArrayList;

class ae
  extends a
{
  ae(ad paramad, String paramString) {}
  
  public boolean task()
  {
    try
    {
      e.e(a);
      ArrayList localArrayList = new ArrayList();
      ad.a(b, new File(a), localArrayList);
      e.a(localArrayList, null);
      return true;
    }
    catch (MediaStoreInsertException localMediaStoreInsertException)
    {
      for (;;)
      {
        localMediaStoreInsertException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */