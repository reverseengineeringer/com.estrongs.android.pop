package com.estrongs.io.archive;

import com.estrongs.a.b.o;
import com.estrongs.io.a.d;
import com.estrongs.io.archive.rar.RarArchiveEntryFile;
import com.estrongs.io.model.ArchiveEntryFile;
import de.innosystec.unrar.rarfile.g;
import java.io.File;
import java.util.Iterator;
import java.util.List;

public class h
{
  long a = 0L;
  int b = 0;
  int c = 0;
  private d d;
  
  public h() {}
  
  public h(d paramd)
  {
    d = paramd;
  }
  
  public long a()
  {
    return a;
  }
  
  public void a(File paramFile)
  {
    if ((d != null) && (d.b())) {}
    for (;;)
    {
      return;
      if ((paramFile instanceof ArchiveEntryFile))
      {
        if (paramFile.isDirectory())
        {
          c += 1;
          paramFile = paramFile.listFiles();
          int j = paramFile.length;
          int i = 0;
          while (i < j)
          {
            a(paramFile[i]);
            i += 1;
          }
        }
        else if ((paramFile instanceof RarArchiveEntryFile))
        {
          if (!((RarArchiveEntryFile)paramFile).getArchiveEntry().v())
          {
            b += 1;
            a += paramFile.length();
          }
        }
        else
        {
          b += 1;
          a += paramFile.length();
        }
      }
      else
      {
        if (!com.estrongs.fs.impl.local.i.h(paramFile.getPath())) {
          break;
        }
        c += 1;
        paramFile = com.estrongs.fs.impl.local.i.a(paramFile.getPath(), com.estrongs.fs.i.c, o.a).iterator();
        while (paramFile.hasNext()) {
          a(new File(((com.estrongs.fs.h)paramFile.next()).getAbsolutePath()));
        }
      }
    }
    b += 1;
    long l = com.estrongs.fs.impl.local.i.e(paramFile.getPath());
    if (-1L == l)
    {
      a += paramFile.length();
      return;
    }
    a = (l + a);
  }
  
  public int b()
  {
    return b;
  }
  
  public int c()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */