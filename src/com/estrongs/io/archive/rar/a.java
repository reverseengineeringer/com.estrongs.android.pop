package com.estrongs.io.archive.rar;

import android.util.Log;
import com.estrongs.android.util.bd;
import com.estrongs.android.util.f;
import com.estrongs.io.archive.h;
import com.estrongs.io.model.ArchiveEntryFile;
import de.innosystec.unrar.exception.RarException;
import de.innosystec.unrar.rarfile.k;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;

public class a
  extends h
{
  private static String j = "RarInArchive";
  de.innosystec.unrar.a h = null;
  boolean i = false;
  
  public a(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
    if (paramString2.equalsIgnoreCase(f.a[0]))
    {
      i = true;
      c = f.a();
    }
  }
  
  /* Error */
  private File a(RarArchiveEntryFile paramRarArchiveEntryFile, com.estrongs.io.a.b paramb)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +14 -> 15
    //   4: aload_2
    //   5: invokeinterface 52 1 0
    //   10: ifeq +5 -> 15
    //   13: aconst_null
    //   14: areturn
    //   15: aload_1
    //   16: invokevirtual 58	com/estrongs/io/archive/rar/RarArchiveEntryFile:getArchiveEntry	()Lde/innosystec/unrar/rarfile/g;
    //   19: invokevirtual 63	de/innosystec/unrar/rarfile/g:x	()Z
    //   22: ifeq +17 -> 39
    //   25: new 65	java/io/IOException
    //   28: dup
    //   29: getstatic 71	de/innosystec/unrar/exception/RarException$RarExceptionType:rarEncryptedException	Lde/innosystec/unrar/exception/RarException$RarExceptionType;
    //   32: invokevirtual 74	de/innosystec/unrar/exception/RarException$RarExceptionType:name	()Ljava/lang/String;
    //   35: invokespecial 77	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   38: athrow
    //   39: aload_0
    //   40: aload_1
    //   41: aload_2
    //   42: invokevirtual 80	com/estrongs/io/archive/rar/a:c	(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    //   45: astore_3
    //   46: aload_3
    //   47: ifnonnull +9 -> 56
    //   50: aconst_null
    //   51: invokestatic 85	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   54: aconst_null
    //   55: areturn
    //   56: aload_3
    //   57: invokevirtual 90	java/io/File:getCanonicalPath	()Ljava/lang/String;
    //   60: invokestatic 96	com/estrongs/fs/impl/local/h:f	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   63: astore_2
    //   64: aload_0
    //   65: getfield 23	com/estrongs/io/archive/rar/a:h	Lde/innosystec/unrar/a;
    //   68: aload_1
    //   69: invokevirtual 58	com/estrongs/io/archive/rar/RarArchiveEntryFile:getArchiveEntry	()Lde/innosystec/unrar/rarfile/g;
    //   72: aload_2
    //   73: invokevirtual 101	de/innosystec/unrar/a:a	(Lde/innosystec/unrar/rarfile/g;Ljava/io/OutputStream;)V
    //   76: aload_2
    //   77: invokestatic 85	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   80: aload_3
    //   81: areturn
    //   82: astore_2
    //   83: aconst_null
    //   84: astore_1
    //   85: new 65	java/io/IOException
    //   88: dup
    //   89: aload_2
    //   90: invokevirtual 104	de/innosystec/unrar/exception/RarException:getMessage	()Ljava/lang/String;
    //   93: invokespecial 77	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   96: athrow
    //   97: astore_3
    //   98: aload_1
    //   99: astore_2
    //   100: aload_3
    //   101: astore_1
    //   102: aload_2
    //   103: invokestatic 85	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   106: aload_1
    //   107: athrow
    //   108: astore_1
    //   109: aconst_null
    //   110: astore_2
    //   111: goto -9 -> 102
    //   114: astore_1
    //   115: goto -13 -> 102
    //   118: astore_3
    //   119: aload_2
    //   120: astore_1
    //   121: aload_3
    //   122: astore_2
    //   123: goto -38 -> 85
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	a
    //   0	126	1	paramRarArchiveEntryFile	RarArchiveEntryFile
    //   0	126	2	paramb	com.estrongs.io.a.b
    //   45	36	3	localFile	File
    //   97	4	3	localObject	Object
    //   118	4	3	localRarException	RarException
    // Exception table:
    //   from	to	target	type
    //   39	46	82	de/innosystec/unrar/exception/RarException
    //   56	64	82	de/innosystec/unrar/exception/RarException
    //   85	97	97	finally
    //   39	46	108	finally
    //   56	64	108	finally
    //   64	76	114	finally
    //   64	76	118	de/innosystec/unrar/exception/RarException
  }
  
  private void g(String paramString)
  {
    if (h == null) {}
    try
    {
      h = new de.innosystec.unrar.a(new File(paramString), c, new d(this), null, i);
      return;
    }
    catch (RarException paramString)
    {
      paramString.printStackTrace();
      throw new IOException(paramString.getMessage());
    }
  }
  
  public InputStream a(String paramString)
  {
    return null;
  }
  
  public void a(com.estrongs.io.a.b paramb)
  {
    boolean bool2 = false;
    Object localObject3 = new com.estrongs.io.archive.g();
    boolean bool1;
    try
    {
      b();
      if ((h.f().p()) && (!h.f().q()))
      {
        if (!h.f().v()) {
          break label663;
        }
        if (!h.g()) {
          break label159;
        }
        break label663;
        localObject1 = de.innosystec.unrar.e.b(b, bool1);
        if ((!bd.a((CharSequence)localObject1)) && (new File((String)localObject1).exists()))
        {
          c();
          b = ((String)localObject1);
          b();
        }
      }
      Object localObject1 = i();
      for (;;)
      {
        if (!((Iterator)localObject1).hasNext()) {
          break label228;
        }
        if (paramb != null)
        {
          bool1 = paramb.b();
          if (bool1)
          {
            Log.i(j, "Extraction is done.");
            try
            {
              c();
              return;
            }
            catch (IOException paramb)
            {
              label159:
              paramb.printStackTrace();
              return;
            }
            bool1 = false;
            break;
          }
        }
        ((com.estrongs.io.archive.g)localObject3).a((ArchiveEntryFile)((Iterator)localObject1).next());
      }
      try
      {
        c();
        throw paramb;
        if (h.f().p())
        {
          str = b;
          if (h.f().v())
          {
            bool1 = bool2;
            if (!h.g())
            {
              for (localObject2 = de.innosystec.unrar.e.a(b, bool1); (!bd.a((CharSequence)localObject2)) && (new File((String)localObject2).exists()); localObject2 = de.innosystec.unrar.e.a(b, bool1))
              {
                if (paramb != null)
                {
                  bool2 = paramb.b();
                  if (bool2)
                  {
                    Log.i(j, "Extraction is done.");
                    try
                    {
                      c();
                      return;
                    }
                    catch (IOException paramb)
                    {
                      paramb.printStackTrace();
                      return;
                    }
                  }
                }
                c();
                b = ((String)localObject2);
                b();
                localObject2 = i();
                while (((Iterator)localObject2).hasNext())
                {
                  if (paramb != null)
                  {
                    bool2 = paramb.b();
                    if (bool2)
                    {
                      Log.i(j, "Extraction is done.");
                      try
                      {
                        c();
                        return;
                      }
                      catch (IOException paramb)
                      {
                        paramb.printStackTrace();
                        return;
                      }
                    }
                  }
                  ((com.estrongs.io.archive.g)localObject3).a((ArchiveEntryFile)((Iterator)localObject2).next());
                }
              }
              c();
              b = str;
              b();
            }
          }
        }
        else
        {
          paramb.a(new File(b).getName(), ((com.estrongs.io.archive.g)localObject3).a(), ((com.estrongs.io.archive.g)localObject3).b() + ((com.estrongs.io.archive.g)localObject3).c());
          localObject2 = i();
          h.h();
          h.a(paramb);
          h.a(new b(this, paramb, paramb, (com.estrongs.io.archive.g)localObject3));
          while (((Iterator)localObject2).hasNext())
          {
            if (paramb != null)
            {
              bool1 = paramb.b();
              if (bool1)
              {
                Log.i(j, "Extraction is done.");
                try
                {
                  c();
                  return;
                }
                catch (IOException paramb)
                {
                  paramb.printStackTrace();
                  return;
                }
              }
            }
            localObject3 = a((RarArchiveEntryFile)((Iterator)localObject2).next(), paramb);
            if ((localObject3 != null) && (((File)localObject3).isFile())) {
              a((File)localObject3);
            }
          }
          Log.i(j, "Extraction is done.");
          try
          {
            c();
            return;
          }
          catch (IOException paramb)
          {
            paramb.printStackTrace();
            return;
          }
          Log.i(j, "Extraction is done.");
          try
          {
            c();
            return;
          }
          catch (IOException paramb)
          {
            paramb.printStackTrace();
            return;
          }
        }
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          localIOException.printStackTrace();
        }
      }
    }
    catch (Exception localException)
    {
      if (!paramb.b()) {
        throw new IOException(localException.getMessage());
      }
    }
    finally
    {
      Log.i(j, "Extraction is done.");
    }
    for (;;)
    {
      label228:
      String str;
      Object localObject2;
      label663:
      bool1 = true;
      break;
      bool1 = true;
    }
  }
  
  public void a(List<String> paramList, com.estrongs.io.a.b paramb)
  {
    h.h();
    super.a(paramList, paramb);
  }
  
  public boolean a()
  {
    return h != null;
  }
  
  public void b()
  {
    g(b);
  }
  
  public void c()
  {
    if (h != null) {
      h.close();
    }
    h = null;
  }
  
  public File d(ArchiveEntryFile paramArchiveEntryFile, com.estrongs.io.a.b paramb)
  {
    paramArchiveEntryFile = (RarArchiveEntryFile)paramArchiveEntryFile;
    if ((paramArchiveEntryFile.getArchiveEntry().v()) || (paramArchiveEntryFile.getArchiveEntry().u())) {
      return null;
    }
    h.a(paramb);
    h.a(new e(paramb));
    return a(paramArchiveEntryFile, paramb);
  }
  
  protected Iterator<ArchiveEntryFile> i()
  {
    h.d();
    return new c(this);
  }
  
  public boolean l()
  {
    if ((h == null) || (h.f() == null)) {
      return false;
    }
    return h.f().p();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.rar.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */