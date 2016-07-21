package com.estrongs.android.pop.app.imageviewer;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.estrongs.android.util.l;
import java.io.FileDescriptor;
import java.util.WeakHashMap;

public class BitmapManager
{
  private static BitmapManager b = null;
  private final WeakHashMap<Thread, d> a = new WeakHashMap();
  
  public static BitmapManager a()
  {
    try
    {
      if (b == null) {
        b = new BitmapManager();
      }
      BitmapManager localBitmapManager = b;
      return localBitmapManager;
    }
    finally {}
  }
  
  private void a(Thread paramThread, BitmapFactory.Options paramOptions)
  {
    try
    {
      cb = paramOptions;
      return;
    }
    finally
    {
      paramThread = finally;
      throw paramThread;
    }
  }
  
  private d c(Thread paramThread)
  {
    try
    {
      d locald2 = (d)a.get(paramThread);
      d locald1 = locald2;
      if (locald2 == null)
      {
        locald1 = new d(null);
        a.put(paramThread, locald1);
      }
      return locald1;
    }
    finally {}
  }
  
  public Bitmap a(FileDescriptor paramFileDescriptor, BitmapFactory.Options paramOptions)
  {
    if (mCancel) {
      return null;
    }
    Thread localThread = Thread.currentThread();
    if (!b(localThread))
    {
      l.b("BitmapManager", "Thread " + localThread + " is not allowed to decode.");
      return null;
    }
    a(localThread, paramOptions);
    paramFileDescriptor = BitmapFactory.decodeFileDescriptor(paramFileDescriptor, null, paramOptions);
    a(localThread);
    return paramFileDescriptor;
  }
  
  void a(Thread paramThread)
  {
    try
    {
      a.get(paramThread)).b = null;
      return;
    }
    finally
    {
      paramThread = finally;
      throw paramThread;
    }
  }
  
  public void a(Thread paramThread, ContentResolver paramContentResolver)
  {
    try
    {
      paramThread = c(paramThread);
      a = BitmapManager.State.CANCEL;
      if (b != null) {
        b.requestCancelDecode();
      }
      notifyAll();
      return;
    }
    finally {}
  }
  
  /* Error */
  public boolean b(Thread paramThread)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 22	com/estrongs/android/pop/app/imageviewer/BitmapManager:a	Ljava/util/WeakHashMap;
    //   8: aload_1
    //   9: invokevirtual 38	java/util/WeakHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   12: checkcast 31	com/estrongs/android/pop/app/imageviewer/d
    //   15: astore_1
    //   16: aload_1
    //   17: ifnonnull +7 -> 24
    //   20: aload_0
    //   21: monitorexit
    //   22: iload_2
    //   23: ireturn
    //   24: aload_1
    //   25: getfield 106	com/estrongs/android/pop/app/imageviewer/d:a	Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;
    //   28: astore_1
    //   29: getstatic 104	com/estrongs/android/pop/app/imageviewer/BitmapManager$State:CANCEL	Lcom/estrongs/android/pop/app/imageviewer/BitmapManager$State;
    //   32: astore_3
    //   33: aload_1
    //   34: aload_3
    //   35: if_acmpeq +8 -> 43
    //   38: iconst_1
    //   39: istore_2
    //   40: goto -20 -> 20
    //   43: iconst_0
    //   44: istore_2
    //   45: goto -5 -> 40
    //   48: astore_1
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_1
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	BitmapManager
    //   0	53	1	paramThread	Thread
    //   1	44	2	bool	boolean
    //   32	3	3	localState	BitmapManager.State
    // Exception table:
    //   from	to	target	type
    //   4	16	48	finally
    //   24	33	48	finally
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.BitmapManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */