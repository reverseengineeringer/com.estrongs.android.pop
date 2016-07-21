package com.estrongs.android.pop.multicopy;

import com.estrongs.android.util.ap;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.d;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class MultiThreadCopy
{
  public static final String a = com.estrongs.android.pop.a.f + "/copy/";
  public static int b = 10;
  private MultiThreadCopy.SegmentInfos c;
  private File d;
  private String e;
  
  private static long a(MultiThreadCopy.SegmentInfos paramSegmentInfos)
  {
    long l1 = 0L;
    long l2;
    if (paramSegmentInfos == null)
    {
      l2 = l1;
      return l2;
    }
    int i = 0;
    for (;;)
    {
      l2 = l1;
      if (i >= segs.size()) {
        break;
      }
      l1 += segs.get(i)).totalWriteLen;
      i += 1;
    }
  }
  
  public static long a(File paramFile, String paramString)
  {
    return a(b(paramFile, paramString));
  }
  
  public static File a(String paramString)
  {
    if (ap.bl(paramString)) {
      return new File(paramString + ".escopy");
    }
    if (!new File(a).exists()) {
      new File(a).mkdirs();
    }
    return new File(a + paramString.hashCode() + ".escopy");
  }
  
  /* Error */
  private static Object a(File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 109	java/io/ObjectInputStream
    //   5: dup
    //   6: new 111	java/io/FileInputStream
    //   9: dup
    //   10: aload_0
    //   11: invokespecial 114	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   14: invokespecial 117	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   17: astore_1
    //   18: aload_1
    //   19: astore_0
    //   20: aload_1
    //   21: invokevirtual 121	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   24: astore_2
    //   25: aload_2
    //   26: astore_0
    //   27: aload_0
    //   28: astore_2
    //   29: aload_1
    //   30: ifnull +9 -> 39
    //   33: aload_1
    //   34: invokevirtual 124	java/io/ObjectInputStream:close	()V
    //   37: aload_0
    //   38: astore_2
    //   39: aload_2
    //   40: areturn
    //   41: astore_2
    //   42: aconst_null
    //   43: astore_1
    //   44: aload_1
    //   45: astore_0
    //   46: aload_2
    //   47: invokevirtual 127	java/lang/Exception:printStackTrace	()V
    //   50: aload_3
    //   51: astore_2
    //   52: aload_1
    //   53: ifnull -14 -> 39
    //   56: aload_1
    //   57: invokevirtual 124	java/io/ObjectInputStream:close	()V
    //   60: aconst_null
    //   61: areturn
    //   62: astore_0
    //   63: aconst_null
    //   64: areturn
    //   65: astore_1
    //   66: aconst_null
    //   67: astore_0
    //   68: aload_0
    //   69: ifnull +7 -> 76
    //   72: aload_0
    //   73: invokevirtual 124	java/io/ObjectInputStream:close	()V
    //   76: aload_1
    //   77: athrow
    //   78: astore_1
    //   79: aload_0
    //   80: areturn
    //   81: astore_0
    //   82: goto -6 -> 76
    //   85: astore_1
    //   86: goto -18 -> 68
    //   89: astore_2
    //   90: goto -46 -> 44
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	93	0	paramFile	File
    //   17	40	1	localObjectInputStream	java.io.ObjectInputStream
    //   65	12	1	localObject1	Object
    //   78	1	1	localIOException	java.io.IOException
    //   85	1	1	localObject2	Object
    //   24	16	2	localObject3	Object
    //   41	6	2	localException1	Exception
    //   51	1	2	localObject4	Object
    //   89	1	2	localException2	Exception
    //   1	50	3	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   2	18	41	java/lang/Exception
    //   56	60	62	java/io/IOException
    //   2	18	65	finally
    //   33	37	78	java/io/IOException
    //   72	76	81	java/io/IOException
    //   20	25	85	finally
    //   46	50	85	finally
    //   20	25	89	java/lang/Exception
  }
  
  /* Error */
  private void a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: new 131	java/io/ObjectOutputStream
    //   7: dup
    //   8: new 133	java/io/FileOutputStream
    //   11: dup
    //   12: aload_0
    //   13: invokespecial 136	com/estrongs/android/pop/multicopy/MultiThreadCopy:b	()Ljava/io/File;
    //   16: invokespecial 137	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   19: invokespecial 140	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   22: astore_1
    //   23: aload_1
    //   24: astore_2
    //   25: aload_1
    //   26: aload_0
    //   27: getfield 73	com/estrongs/android/pop/multicopy/MultiThreadCopy:c	Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;
    //   30: invokevirtual 144	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   33: aload_1
    //   34: astore_2
    //   35: aload_1
    //   36: invokevirtual 147	java/io/ObjectOutputStream:flush	()V
    //   39: aload_1
    //   40: ifnull +7 -> 47
    //   43: aload_1
    //   44: invokevirtual 148	java/io/ObjectOutputStream:close	()V
    //   47: return
    //   48: astore_3
    //   49: aconst_null
    //   50: astore_1
    //   51: aload_1
    //   52: astore_2
    //   53: aload_3
    //   54: invokevirtual 149	java/io/FileNotFoundException:printStackTrace	()V
    //   57: aload_1
    //   58: ifnull -11 -> 47
    //   61: aload_1
    //   62: invokevirtual 148	java/io/ObjectOutputStream:close	()V
    //   65: return
    //   66: astore_1
    //   67: return
    //   68: astore_2
    //   69: aload_3
    //   70: astore_1
    //   71: aload_2
    //   72: astore_3
    //   73: aload_1
    //   74: astore_2
    //   75: aload_3
    //   76: invokevirtual 150	java/io/IOException:printStackTrace	()V
    //   79: aload_1
    //   80: ifnull -33 -> 47
    //   83: aload_1
    //   84: invokevirtual 148	java/io/ObjectOutputStream:close	()V
    //   87: return
    //   88: astore_1
    //   89: return
    //   90: astore_1
    //   91: aload_2
    //   92: ifnull +7 -> 99
    //   95: aload_2
    //   96: invokevirtual 148	java/io/ObjectOutputStream:close	()V
    //   99: aload_1
    //   100: athrow
    //   101: astore_1
    //   102: return
    //   103: astore_2
    //   104: goto -5 -> 99
    //   107: astore_1
    //   108: goto -17 -> 91
    //   111: astore_3
    //   112: goto -39 -> 73
    //   115: astore_3
    //   116: goto -65 -> 51
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	119	0	this	MultiThreadCopy
    //   22	40	1	localObjectOutputStream	java.io.ObjectOutputStream
    //   66	1	1	localIOException1	java.io.IOException
    //   70	14	1	localFileNotFoundException1	java.io.FileNotFoundException
    //   88	1	1	localIOException2	java.io.IOException
    //   90	10	1	localObject1	Object
    //   101	1	1	localIOException3	java.io.IOException
    //   107	1	1	localObject2	Object
    //   1	52	2	localObject3	Object
    //   68	4	2	localIOException4	java.io.IOException
    //   74	22	2	localObject4	Object
    //   103	1	2	localIOException5	java.io.IOException
    //   3	1	3	localObject5	Object
    //   48	22	3	localFileNotFoundException2	java.io.FileNotFoundException
    //   72	4	3	localIOException6	java.io.IOException
    //   111	1	3	localIOException7	java.io.IOException
    //   115	1	3	localFileNotFoundException3	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   4	23	48	java/io/FileNotFoundException
    //   61	65	66	java/io/IOException
    //   4	23	68	java/io/IOException
    //   83	87	88	java/io/IOException
    //   4	23	90	finally
    //   75	79	90	finally
    //   43	47	101	java/io/IOException
    //   95	99	103	java/io/IOException
    //   25	33	107	finally
    //   35	39	107	finally
    //   53	57	107	finally
    //   25	33	111	java/io/IOException
    //   35	39	111	java/io/IOException
    //   25	33	115	java/io/FileNotFoundException
    //   35	39	115	java/io/FileNotFoundException
  }
  
  private static MultiThreadCopy.SegmentInfos b(File paramFile, String paramString)
  {
    paramFile = (MultiThreadCopy.SegmentInfos)a(paramFile);
    if ((paramFile != null) && (ap.bm(paramString)))
    {
      int i = 0;
      while (i < segs.size())
      {
        paramString = (MultiThreadCopy.SegmentInfo)segs.get(i);
        if (!paramString.isCopyFinished()) {
          totalWriteLen -= bufferSize;
        }
        if (totalWriteLen < 0L) {
          totalWriteLen = 0L;
        }
        i += 1;
      }
    }
    return paramFile;
  }
  
  private File b()
  {
    if (d == null) {
      d = a(e);
    }
    return d;
  }
  
  public boolean a(com.estrongs.a.a parama, String paramString1, long paramLong1, String paramString2, long paramLong2, int paramInt1, int paramInt2)
  {
    e = paramString2;
    if (paramInt2 > b) {
      paramInt2 = b;
    }
    for (;;)
    {
      if (paramInt2 < 1) {
        paramInt2 = 1;
      }
      for (;;)
      {
        l2 = 0L;
        l1 = l2;
        try
        {
          if (d.a().b(paramString2))
          {
            if (!b().exists()) {
              break label347;
            }
            c = b(b(), paramString2);
            if (c == null) {
              break label322;
            }
            if ((paramLong2 == c.srcLength) && (paramLong1 == MultiThreadCopy.SegmentInfos.access$300(c))) {
              break label310;
            }
            d.a().a(paramString2, null);
            b().delete();
            c = null;
            l1 = l2;
          }
        }
        catch (FileSystemException localFileSystemException)
        {
          for (;;)
          {
            label233:
            long l3;
            Object localObject;
            label310:
            label322:
            label347:
            l1 = l2;
          }
        }
        if (parama != null)
        {
          if (l1 > 0L) {
            parama.sendMessage(2, new Object[] { Long.valueOf(l1), paramString1, "RBT" });
          }
          parama.sendMessage(9, new Object[] { Long.valueOf(paramLong2), Long.valueOf(l1) });
        }
        if (c == null)
        {
          c = new MultiThreadCopy.SegmentInfos(paramString1, paramLong1, paramString2, paramLong2, paramInt1);
          l1 = paramLong2 / paramInt2;
          l2 = paramInt2;
          paramInt1 = 0;
          if (paramInt1 < paramInt2)
          {
            l3 = paramInt1;
            if (paramInt1 == paramInt2 - 1) {}
            for (paramLong1 = (paramInt1 + 1) * l1 - 1L + paramLong2 % l2;; paramLong1 = (paramInt1 + 1) * l1 - 1L)
            {
              localObject = new MultiThreadCopy.SegmentInfo(l3 * l1, paramLong1);
              c.segs.add(localObject);
              paramInt1 += 1;
              break label233;
              l1 = a(c);
              break;
              d.a().a(paramString2, null);
              b().delete();
              l1 = l2;
              break;
              d.a().a(paramString2, null);
              l1 = l2;
              break;
            }
          }
        }
        localObject = new Thread(new c(this, parama), "Update SegmentInfos");
        ((Thread)localObject).start();
        while (!c.isCopyFinished())
        {
          List localList = c.getUnfinshedSegs();
          ExecutorService localExecutorService = Executors.newFixedThreadPool(paramInt2);
          a[] arrayOfa = new a[paramInt2];
          paramInt1 = 0;
          while ((paramInt1 < paramInt2) && (paramInt1 < localList.size()))
          {
            a locala = new a(parama);
            locala.a(paramInt1);
            locala.a(getstartOffset);
            locala.b(getendOffset);
            locala.b(c.destPath);
            locala.a(paramString1);
            locala.c(c.srcLength);
            locala.b(c.bufferSize);
            locala.a((MultiThreadCopy.SegmentInfo)localList.get(paramInt1));
            arrayOfa[paramInt1] = locala;
            localExecutorService.execute(locala);
            paramInt1 += 1;
          }
          localExecutorService.shutdown();
          try
          {
            localExecutorService.awaitTermination(31536000L, TimeUnit.SECONDS);
            paramInt1 = 0;
            int i = 0;
            while ((i < paramInt2) && (i < localList.size()))
            {
              int j = paramInt1;
              if (arrayOfa[i].a()) {
                j = paramInt1 + 1;
              }
              i += 1;
              paramInt1 = j;
            }
          }
          catch (InterruptedException localInterruptedException)
          {
            for (;;)
            {
              localInterruptedException.printStackTrace();
            }
            if (paramInt1 == 0)
            {
              ((Thread)localObject).interrupt();
              a();
              if ((parama != null) && (parama.taskStopped()))
              {
                parama = new ArrayList();
                parama.add(d.a().j(paramString2));
                parama.add(d.a().j(b().getPath()));
                new ab(d.a(), parama, false).execute(false);
              }
              return false;
            }
            paramInt2 = paramInt1;
          }
        }
        ((Thread)localObject).interrupt();
        if (b().exists()) {
          b().delete();
        }
        return true;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.multicopy.MultiThreadCopy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */