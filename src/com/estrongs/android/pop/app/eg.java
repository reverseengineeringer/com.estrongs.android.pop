package com.estrongs.android.pop.app;

import android.widget.AdapterView.OnItemClickListener;

class eg
  implements AdapterView.OnItemClickListener
{
  eg(OpenRecomm paramOpenRecomm) {}
  
  /* Error */
  public void onItemClick(android.widget.AdapterView<?> paramAdapterView, android.view.View paramView, int paramInt, long paramLong)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokevirtual 26	android/view/View:getTag	()Ljava/lang/Object;
    //   4: checkcast 28	com/estrongs/android/pop/view/utils/t
    //   7: astore_1
    //   8: aload_1
    //   9: ifnull +213 -> 222
    //   12: aload_0
    //   13: getfield 12	com/estrongs/android/pop/app/eg:a	Lcom/estrongs/android/pop/app/OpenRecomm;
    //   16: invokestatic 33	com/estrongs/android/pop/app/OpenRecomm:a	(Lcom/estrongs/android/pop/app/OpenRecomm;)Landroid/content/Intent;
    //   19: ifnonnull +4 -> 23
    //   22: return
    //   23: aload_0
    //   24: getfield 12	com/estrongs/android/pop/app/eg:a	Lcom/estrongs/android/pop/app/OpenRecomm;
    //   27: invokestatic 33	com/estrongs/android/pop/app/OpenRecomm:a	(Lcom/estrongs/android/pop/app/OpenRecomm;)Landroid/content/Intent;
    //   30: aload_1
    //   31: getfield 37	com/estrongs/android/pop/view/utils/t:c	Ljava/lang/String;
    //   34: aload_1
    //   35: getfield 40	com/estrongs/android/pop/view/utils/t:d	Ljava/lang/String;
    //   38: invokevirtual 46	android/content/Intent:setClassName	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   41: pop
    //   42: aload_1
    //   43: getfield 49	com/estrongs/android/pop/view/utils/t:e	Ljava/lang/String;
    //   46: ifnull +18 -> 64
    //   49: aload_0
    //   50: getfield 12	com/estrongs/android/pop/app/eg:a	Lcom/estrongs/android/pop/app/OpenRecomm;
    //   53: invokestatic 33	com/estrongs/android/pop/app/OpenRecomm:a	(Lcom/estrongs/android/pop/app/OpenRecomm;)Landroid/content/Intent;
    //   56: aload_1
    //   57: getfield 49	com/estrongs/android/pop/view/utils/t:e	Ljava/lang/String;
    //   60: invokevirtual 53	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   63: pop
    //   64: aload_1
    //   65: getfield 37	com/estrongs/android/pop/view/utils/t:c	Ljava/lang/String;
    //   68: invokestatic 58	com/estrongs/android/pop/view/utils/AppRunner:d	(Ljava/lang/String;)Z
    //   71: ifeq +15 -> 86
    //   74: aload_0
    //   75: getfield 12	com/estrongs/android/pop/app/eg:a	Lcom/estrongs/android/pop/app/OpenRecomm;
    //   78: invokestatic 33	com/estrongs/android/pop/app/OpenRecomm:a	(Lcom/estrongs/android/pop/app/OpenRecomm;)Landroid/content/Intent;
    //   81: ldc 59
    //   83: invokestatic 62	com/estrongs/android/pop/view/utils/AppRunner:a	(Landroid/content/Intent;I)V
    //   86: aload_0
    //   87: getfield 12	com/estrongs/android/pop/app/eg:a	Lcom/estrongs/android/pop/app/OpenRecomm;
    //   90: invokestatic 66	com/estrongs/android/pop/app/OpenRecomm:b	(Lcom/estrongs/android/pop/app/OpenRecomm;)Z
    //   93: ifeq +57 -> 150
    //   96: aload_0
    //   97: getfield 12	com/estrongs/android/pop/app/eg:a	Lcom/estrongs/android/pop/app/OpenRecomm;
    //   100: invokestatic 69	com/estrongs/android/pop/app/OpenRecomm:c	(Lcom/estrongs/android/pop/app/OpenRecomm;)Ljava/lang/String;
    //   103: invokestatic 74	com/estrongs/android/util/ap:d	(Ljava/lang/String;)Ljava/lang/String;
    //   106: invokestatic 77	com/estrongs/android/util/ap:bR	(Ljava/lang/String;)Ljava/lang/String;
    //   109: astore_2
    //   110: aload_2
    //   111: ifnull +39 -> 150
    //   114: ldc 79
    //   116: aload_2
    //   117: invokevirtual 85	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   120: ifne +30 -> 150
    //   123: aload_0
    //   124: getfield 12	com/estrongs/android/pop/app/eg:a	Lcom/estrongs/android/pop/app/OpenRecomm;
    //   127: aload_2
    //   128: new 87	com/estrongs/android/pop/view/utils/u
    //   131: dup
    //   132: aload_1
    //   133: getfield 37	com/estrongs/android/pop/view/utils/t:c	Ljava/lang/String;
    //   136: aload_1
    //   137: getfield 40	com/estrongs/android/pop/view/utils/t:d	Ljava/lang/String;
    //   140: aload_1
    //   141: getfield 49	com/estrongs/android/pop/view/utils/t:e	Ljava/lang/String;
    //   144: invokespecial 90	com/estrongs/android/pop/view/utils/u:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   147: invokestatic 95	com/estrongs/android/pop/view/utils/n:a	(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/android/pop/view/utils/u;)V
    //   150: aload_1
    //   151: getfield 40	com/estrongs/android/pop/view/utils/t:d	Ljava/lang/String;
    //   154: ifnull +32 -> 186
    //   157: aload_1
    //   158: getfield 40	com/estrongs/android/pop/view/utils/t:d	Ljava/lang/String;
    //   161: ldc 97
    //   163: invokevirtual 103	java/lang/Class:getName	()Ljava/lang/String;
    //   166: invokevirtual 85	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   169: ifeq +17 -> 186
    //   172: aload_0
    //   173: getfield 12	com/estrongs/android/pop/app/eg:a	Lcom/estrongs/android/pop/app/OpenRecomm;
    //   176: invokestatic 108	com/estrongs/android/j/c:a	(Landroid/content/Context;)Lcom/estrongs/android/j/c;
    //   179: ldc 110
    //   181: ldc 112
    //   183: invokevirtual 115	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   186: aload_0
    //   187: getfield 12	com/estrongs/android/pop/app/eg:a	Lcom/estrongs/android/pop/app/OpenRecomm;
    //   190: aload_0
    //   191: getfield 12	com/estrongs/android/pop/app/eg:a	Lcom/estrongs/android/pop/app/OpenRecomm;
    //   194: invokestatic 33	com/estrongs/android/pop/app/OpenRecomm:a	(Lcom/estrongs/android/pop/app/OpenRecomm;)Landroid/content/Intent;
    //   197: invokevirtual 119	com/estrongs/android/pop/app/OpenRecomm:startActivity	(Landroid/content/Intent;)V
    //   200: aload_0
    //   201: getfield 12	com/estrongs/android/pop/app/eg:a	Lcom/estrongs/android/pop/app/OpenRecomm;
    //   204: invokevirtual 122	com/estrongs/android/pop/app/OpenRecomm:finish	()V
    //   207: return
    //   208: astore_1
    //   209: aload_1
    //   210: invokevirtual 125	java/lang/Exception:printStackTrace	()V
    //   213: return
    //   214: astore_1
    //   215: aload_1
    //   216: invokevirtual 125	java/lang/Exception:printStackTrace	()V
    //   219: goto -33 -> 186
    //   222: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	223	0	this	eg
    //   0	223	1	paramAdapterView	android.widget.AdapterView<?>
    //   0	223	2	paramView	android.view.View
    //   0	223	3	paramInt	int
    //   0	223	4	paramLong	long
    // Exception table:
    //   from	to	target	type
    //   0	8	208	java/lang/Exception
    //   12	22	208	java/lang/Exception
    //   23	64	208	java/lang/Exception
    //   64	86	208	java/lang/Exception
    //   86	110	208	java/lang/Exception
    //   114	150	208	java/lang/Exception
    //   186	207	208	java/lang/Exception
    //   215	219	208	java/lang/Exception
    //   150	186	214	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */