package com.estrongs.android.pop.app.compress;

import com.estrongs.android.pop.a;
import com.estrongs.android.util.am;
import com.estrongs.fs.util.j;
import com.estrongs.io.a.c;
import com.estrongs.io.archive.h;
import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;

class az
  extends c
{
  az(ay paramay) {}
  
  public String a()
  {
    return aw.c(a.a);
  }
  
  public boolean b()
  {
    return a.a.a;
  }
  
  public String c()
  {
    File localFile1 = j.g(a.j + "/" + am.bB(am.d(aw.a(a.a).j())));
    File localFile2 = new File(localFile1, h.d(aw.b(a.a).getPath()));
    if (localFile2.exists()) {
      j.a(localFile2);
    }
    return localFile1.getAbsolutePath() + "/";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */