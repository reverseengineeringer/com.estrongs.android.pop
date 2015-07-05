package com.estrongs.android.pop.a;

import android.os.IBinder;

class f
  extends Thread
{
  f(e parame, IBinder paramIBinder) {}
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: new 25	com/estrongs/android/pop/a/a/c
    //   3: dup
    //   4: aload_0
    //   5: getfield 14	com/estrongs/android/pop/a/f:a	Landroid/os/IBinder;
    //   8: invokespecial 28	com/estrongs/android/pop/a/a/c:<init>	(Landroid/os/IBinder;)V
    //   11: astore 5
    //   13: aload 5
    //   15: invokevirtual 31	com/estrongs/android/pop/a/a/c:a	()Z
    //   18: istore 4
    //   20: iload 4
    //   22: ifeq +17 -> 39
    //   25: new 33	com/estrongs/android/pop/a/g
    //   28: dup
    //   29: aload_0
    //   30: iload 4
    //   32: invokespecial 36	com/estrongs/android/pop/a/g:<init>	(Lcom/estrongs/android/pop/a/f;Z)V
    //   35: invokestatic 41	com/estrongs/android/util/bd:a	(Ljava/lang/Runnable;)V
    //   38: return
    //   39: aload 5
    //   41: invokevirtual 44	com/estrongs/android/pop/a/a/c:b	()I
    //   44: istore_2
    //   45: iload_2
    //   46: ifeq +10 -> 56
    //   49: iload_2
    //   50: istore_1
    //   51: iload_2
    //   52: iconst_3
    //   53: if_icmpne +130 -> 183
    //   56: aload 5
    //   58: iconst_0
    //   59: invokevirtual 47	com/estrongs/android/pop/a/a/c:a	(Z)Z
    //   62: pop
    //   63: ldc2_w 48
    //   66: invokestatic 53	java/lang/Thread:sleep	(J)V
    //   69: aload 5
    //   71: invokevirtual 44	com/estrongs/android/pop/a/a/c:b	()I
    //   74: istore_3
    //   75: iload_3
    //   76: iconst_1
    //   77: if_icmpeq -14 -> 63
    //   80: iload_3
    //   81: iconst_3
    //   82: if_icmpne +43 -> 125
    //   85: iload_3
    //   86: istore_1
    //   87: goto +96 -> 183
    //   90: new 55	com/estrongs/android/pop/a/h
    //   93: dup
    //   94: aload_0
    //   95: iload 4
    //   97: invokespecial 56	com/estrongs/android/pop/a/h:<init>	(Lcom/estrongs/android/pop/a/f;Z)V
    //   100: invokestatic 41	com/estrongs/android/util/bd:a	(Ljava/lang/Runnable;)V
    //   103: return
    //   104: astore 5
    //   106: aload 5
    //   108: invokevirtual 59	android/os/RemoteException:printStackTrace	()V
    //   111: aload_0
    //   112: getfield 12	com/estrongs/android/pop/a/f:b	Lcom/estrongs/android/pop/a/e;
    //   115: getfield 64	com/estrongs/android/pop/a/e:a	Lcom/estrongs/android/pop/a/j;
    //   118: iconst_0
    //   119: invokeinterface 69 2 0
    //   124: return
    //   125: iload_3
    //   126: iconst_2
    //   127: if_icmpne +72 -> 199
    //   130: iconst_0
    //   131: istore_2
    //   132: iload_3
    //   133: istore_1
    //   134: iload_2
    //   135: bipush 20
    //   137: if_icmpge +46 -> 183
    //   140: ldc2_w 70
    //   143: invokestatic 53	java/lang/Thread:sleep	(J)V
    //   146: iload_3
    //   147: istore_1
    //   148: aload 5
    //   150: invokevirtual 31	com/estrongs/android/pop/a/a/c:a	()Z
    //   153: ifne +30 -> 183
    //   156: iload_2
    //   157: iconst_1
    //   158: iadd
    //   159: istore_2
    //   160: goto -28 -> 132
    //   163: aload 5
    //   165: invokevirtual 31	com/estrongs/android/pop/a/a/c:a	()Z
    //   168: istore 4
    //   170: goto -80 -> 90
    //   173: astore 6
    //   175: goto -106 -> 69
    //   178: astore 6
    //   180: goto -34 -> 146
    //   183: iload_1
    //   184: iconst_3
    //   185: if_icmpeq +8 -> 193
    //   188: iload_1
    //   189: iconst_4
    //   190: if_icmpne -27 -> 163
    //   193: iconst_0
    //   194: istore 4
    //   196: goto -106 -> 90
    //   199: iload_3
    //   200: iconst_4
    //   201: if_icmpne -138 -> 63
    //   204: iload_3
    //   205: istore_1
    //   206: goto -23 -> 183
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	209	0	this	f
    //   50	156	1	i	int
    //   44	116	2	j	int
    //   74	131	3	k	int
    //   18	177	4	bool	boolean
    //   11	59	5	localc	com.estrongs.android.pop.a.a.c
    //   104	60	5	localRemoteException	android.os.RemoteException
    //   173	1	6	localInterruptedException1	InterruptedException
    //   178	1	6	localInterruptedException2	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   13	20	104	android/os/RemoteException
    //   25	38	104	android/os/RemoteException
    //   39	45	104	android/os/RemoteException
    //   56	63	104	android/os/RemoteException
    //   63	69	104	android/os/RemoteException
    //   69	75	104	android/os/RemoteException
    //   90	103	104	android/os/RemoteException
    //   140	146	104	android/os/RemoteException
    //   148	156	104	android/os/RemoteException
    //   163	170	104	android/os/RemoteException
    //   63	69	173	java/lang/InterruptedException
    //   140	146	178	java/lang/InterruptedException
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */