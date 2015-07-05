package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import android.app.NotificationManager;
import java.util.List;

final class j
  extends Thread
{
  j(List paramList, Activity paramActivity, NotificationManager paramNotificationManager) {}
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: getstatic 32	com/estrongs/android/pop/view/utils/AppRunner:b	Ljava/lang/Object;
    //   3: astore_2
    //   4: aload_2
    //   5: monitorenter
    //   6: getstatic 35	com/estrongs/android/pop/view/utils/AppRunner:a	Ljava/lang/Integer;
    //   9: invokevirtual 41	java/lang/Integer:intValue	()I
    //   12: istore_1
    //   13: getstatic 35	com/estrongs/android/pop/view/utils/AppRunner:a	Ljava/lang/Integer;
    //   16: astore_3
    //   17: getstatic 35	com/estrongs/android/pop/view/utils/AppRunner:a	Ljava/lang/Integer;
    //   20: invokevirtual 41	java/lang/Integer:intValue	()I
    //   23: iconst_1
    //   24: iadd
    //   25: invokestatic 45	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   28: putstatic 35	com/estrongs/android/pop/view/utils/AppRunner:a	Ljava/lang/Integer;
    //   31: aload_2
    //   32: monitorexit
    //   33: aload_0
    //   34: getfield 14	com/estrongs/android/pop/view/utils/j:a	Ljava/util/List;
    //   37: invokeinterface 51 1 0
    //   42: astore_3
    //   43: aload_3
    //   44: invokeinterface 57 1 0
    //   49: ifeq +181 -> 230
    //   52: aload_3
    //   53: invokeinterface 61 1 0
    //   58: checkcast 63	com/estrongs/fs/impl/b/f
    //   61: astore_2
    //   62: aload_2
    //   63: invokevirtual 67	com/estrongs/fs/impl/b/f:getAbsolutePath	()Ljava/lang/String;
    //   66: invokestatic 73	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   69: astore 4
    //   71: aload_0
    //   72: getfield 16	com/estrongs/android/pop/view/utils/j:b	Landroid/app/Activity;
    //   75: new 75	java/lang/StringBuilder
    //   78: dup
    //   79: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   82: aload_0
    //   83: getfield 16	com/estrongs/android/pop/view/utils/j:b	Landroid/app/Activity;
    //   86: ldc 77
    //   88: invokevirtual 83	android/app/Activity:getText	(I)Ljava/lang/CharSequence;
    //   91: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   94: ldc 89
    //   96: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: aload 4
    //   104: iload_1
    //   105: iconst_1
    //   106: invokestatic 98	com/estrongs/android/pop/view/utils/AppRunner:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    //   109: aload_0
    //   110: getfield 16	com/estrongs/android/pop/view/utils/j:b	Landroid/app/Activity;
    //   113: aload_2
    //   114: invokevirtual 67	com/estrongs/fs/impl/b/f:getAbsolutePath	()Ljava/lang/String;
    //   117: aload_2
    //   118: invokestatic 101	com/estrongs/android/pop/view/utils/AppRunner:b	(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/impl/b/f;)Z
    //   121: ifeq +73 -> 194
    //   124: new 75	java/lang/StringBuilder
    //   127: dup
    //   128: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   131: aload 4
    //   133: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: ldc 103
    //   138: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: aload_0
    //   142: getfield 16	com/estrongs/android/pop/view/utils/j:b	Landroid/app/Activity;
    //   145: ldc 104
    //   147: invokevirtual 83	android/app/Activity:getText	(I)Ljava/lang/CharSequence;
    //   150: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   153: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   156: astore_2
    //   157: ldc2_w 105
    //   160: invokestatic 110	java/lang/Thread:sleep	(J)V
    //   163: aload_0
    //   164: getfield 16	com/estrongs/android/pop/view/utils/j:b	Landroid/app/Activity;
    //   167: aload_2
    //   168: iconst_1
    //   169: invokestatic 115	com/estrongs/android/ui/view/ag:a	(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    //   172: goto -129 -> 43
    //   175: astore_2
    //   176: aload_2
    //   177: invokevirtual 118	java/lang/Exception:printStackTrace	()V
    //   180: aload_0
    //   181: getfield 18	com/estrongs/android/pop/view/utils/j:c	Landroid/app/NotificationManager;
    //   184: iload_1
    //   185: invokevirtual 124	android/app/NotificationManager:cancel	(I)V
    //   188: return
    //   189: astore_3
    //   190: aload_2
    //   191: monitorexit
    //   192: aload_3
    //   193: athrow
    //   194: new 75	java/lang/StringBuilder
    //   197: dup
    //   198: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   201: aload 4
    //   203: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: ldc 103
    //   208: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: aload_0
    //   212: getfield 16	com/estrongs/android/pop/view/utils/j:b	Landroid/app/Activity;
    //   215: ldc 125
    //   217: invokevirtual 83	android/app/Activity:getText	(I)Ljava/lang/CharSequence;
    //   220: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   223: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   226: astore_2
    //   227: goto -70 -> 157
    //   230: aload_0
    //   231: getfield 18	com/estrongs/android/pop/view/utils/j:c	Landroid/app/NotificationManager;
    //   234: iload_1
    //   235: invokevirtual 124	android/app/NotificationManager:cancel	(I)V
    //   238: return
    //   239: astore_2
    //   240: aload_0
    //   241: getfield 18	com/estrongs/android/pop/view/utils/j:c	Landroid/app/NotificationManager;
    //   244: iload_1
    //   245: invokevirtual 124	android/app/NotificationManager:cancel	(I)V
    //   248: aload_2
    //   249: athrow
    //   250: astore 4
    //   252: goto -89 -> 163
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	255	0	this	j
    //   12	233	1	i	int
    //   3	165	2	localObject1	Object
    //   175	16	2	localException	Exception
    //   226	1	2	str1	String
    //   239	10	2	localObject2	Object
    //   16	37	3	localObject3	Object
    //   189	4	3	localObject4	Object
    //   69	133	4	str2	String
    //   250	1	4	localInterruptedException	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   33	43	175	java/lang/Exception
    //   43	157	175	java/lang/Exception
    //   157	163	175	java/lang/Exception
    //   163	172	175	java/lang/Exception
    //   194	227	175	java/lang/Exception
    //   6	33	189	finally
    //   190	192	189	finally
    //   33	43	239	finally
    //   43	157	239	finally
    //   157	163	239	finally
    //   163	172	239	finally
    //   176	180	239	finally
    //   194	227	239	finally
    //   157	163	250	java/lang/InterruptedException
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */