package com.estrongs.android.view;

import android.view.View.OnTouchListener;

class gb
  implements View.OnTouchListener
{
  gb(fy paramfy) {}
  
  /* Error */
  @android.annotation.SuppressLint({"NewApi"})
  public boolean onTouch(android.view.View paramView, android.view.MotionEvent paramMotionEvent)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/estrongs/android/view/gb:a	Lcom/estrongs/android/view/fy;
    //   4: invokestatic 29	com/estrongs/android/view/fy:b	(Lcom/estrongs/android/view/fy;)Z
    //   7: ifne +5 -> 12
    //   10: iconst_0
    //   11: ireturn
    //   12: invokestatic 34	com/estrongs/android/pop/ac:a	()I
    //   15: istore_3
    //   16: iload_3
    //   17: bipush 8
    //   19: if_icmplt +193 -> 212
    //   22: aload_2
    //   23: invokevirtual 39	android/view/MotionEvent:getActionIndex	()I
    //   26: istore_3
    //   27: iload_3
    //   28: ifne +189 -> 217
    //   31: aload_2
    //   32: invokevirtual 42	android/view/MotionEvent:getAction	()I
    //   35: ifne +182 -> 217
    //   38: aload_0
    //   39: getfield 12	com/estrongs/android/view/gb:a	Lcom/estrongs/android/view/fy;
    //   42: getfield 45	com/estrongs/android/view/fy:b	Landroid/graphics/Rect;
    //   45: astore 4
    //   47: aload_0
    //   48: getfield 12	com/estrongs/android/view/gb:a	Lcom/estrongs/android/view/fy;
    //   51: invokestatic 48	com/estrongs/android/view/fy:a	(Lcom/estrongs/android/view/fy;)Landroid/view/View;
    //   54: aload 4
    //   56: invokevirtual 54	android/view/View:getHitRect	(Landroid/graphics/Rect;)V
    //   59: aload_1
    //   60: aload_0
    //   61: getfield 12	com/estrongs/android/view/gb:a	Lcom/estrongs/android/view/fy;
    //   64: invokestatic 48	com/estrongs/android/view/fy:a	(Lcom/estrongs/android/view/fy;)Landroid/view/View;
    //   67: if_acmpeq +21 -> 88
    //   70: aload 4
    //   72: aload_2
    //   73: invokevirtual 58	android/view/MotionEvent:getX	()F
    //   76: f2i
    //   77: aload_2
    //   78: invokevirtual 61	android/view/MotionEvent:getY	()F
    //   81: f2i
    //   82: invokevirtual 67	android/graphics/Rect:contains	(II)Z
    //   85: ifne +132 -> 217
    //   88: aload_0
    //   89: getfield 12	com/estrongs/android/view/gb:a	Lcom/estrongs/android/view/fy;
    //   92: invokestatic 71	com/estrongs/android/view/fy:c	(Lcom/estrongs/android/view/fy;)Landroid/os/Handler;
    //   95: aload_0
    //   96: getfield 12	com/estrongs/android/view/gb:a	Lcom/estrongs/android/view/fy;
    //   99: getfield 74	com/estrongs/android/view/fy:a	Ljava/lang/Runnable;
    //   102: invokevirtual 80	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   105: aload_1
    //   106: aload_0
    //   107: getfield 12	com/estrongs/android/view/gb:a	Lcom/estrongs/android/view/fy;
    //   110: invokestatic 48	com/estrongs/android/view/fy:a	(Lcom/estrongs/android/view/fy;)Landroid/view/View;
    //   113: if_acmpne +38 -> 151
    //   116: aload_0
    //   117: getfield 12	com/estrongs/android/view/gb:a	Lcom/estrongs/android/view/fy;
    //   120: invokestatic 84	com/estrongs/android/view/fy:d	(Lcom/estrongs/android/view/fy;)Ljava/lang/String;
    //   123: invokestatic 89	com/estrongs/android/util/bk:b	(Ljava/lang/CharSequence;)Z
    //   126: ifeq +91 -> 217
    //   129: aload_0
    //   130: getfield 12	com/estrongs/android/view/gb:a	Lcom/estrongs/android/view/fy;
    //   133: invokestatic 93	com/estrongs/android/view/fy:e	(Lcom/estrongs/android/view/fy;)Lcom/estrongs/android/view/VideoEnabledWebView;
    //   136: invokevirtual 99	com/estrongs/android/view/VideoEnabledWebView:getContext	()Landroid/content/Context;
    //   139: aload_0
    //   140: getfield 12	com/estrongs/android/view/gb:a	Lcom/estrongs/android/view/fy;
    //   143: invokestatic 84	com/estrongs/android/view/fy:d	(Lcom/estrongs/android/view/fy;)Ljava/lang/String;
    //   146: invokestatic 102	com/estrongs/android/view/fy:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   149: iconst_0
    //   150: ireturn
    //   151: aload_0
    //   152: getfield 12	com/estrongs/android/view/gb:a	Lcom/estrongs/android/view/fy;
    //   155: invokestatic 48	com/estrongs/android/view/fy:a	(Lcom/estrongs/android/view/fy;)Landroid/view/View;
    //   158: invokevirtual 105	android/view/View:getVisibility	()I
    //   161: ifne +17 -> 178
    //   164: aload_0
    //   165: getfield 12	com/estrongs/android/view/gb:a	Lcom/estrongs/android/view/fy;
    //   168: invokestatic 48	com/estrongs/android/view/fy:a	(Lcom/estrongs/android/view/fy;)Landroid/view/View;
    //   171: bipush 8
    //   173: invokevirtual 109	android/view/View:setVisibility	(I)V
    //   176: iconst_0
    //   177: ireturn
    //   178: aload_0
    //   179: getfield 12	com/estrongs/android/view/gb:a	Lcom/estrongs/android/view/fy;
    //   182: invokestatic 48	com/estrongs/android/view/fy:a	(Lcom/estrongs/android/view/fy;)Landroid/view/View;
    //   185: iconst_0
    //   186: invokevirtual 109	android/view/View:setVisibility	(I)V
    //   189: aload_0
    //   190: getfield 12	com/estrongs/android/view/gb:a	Lcom/estrongs/android/view/fy;
    //   193: invokestatic 71	com/estrongs/android/view/fy:c	(Lcom/estrongs/android/view/fy;)Landroid/os/Handler;
    //   196: aload_0
    //   197: getfield 12	com/estrongs/android/view/gb:a	Lcom/estrongs/android/view/fy;
    //   200: getfield 74	com/estrongs/android/view/fy:a	Ljava/lang/Runnable;
    //   203: ldc2_w 110
    //   206: invokevirtual 115	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   209: pop
    //   210: iconst_0
    //   211: ireturn
    //   212: iconst_0
    //   213: istore_3
    //   214: goto -187 -> 27
    //   217: iconst_0
    //   218: ireturn
    //   219: astore_1
    //   220: iconst_0
    //   221: ireturn
    //   222: astore 4
    //   224: iconst_0
    //   225: istore_3
    //   226: goto -199 -> 27
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	229	0	this	gb
    //   0	229	1	paramView	android.view.View
    //   0	229	2	paramMotionEvent	android.view.MotionEvent
    //   15	211	3	i	int
    //   45	26	4	localRect	android.graphics.Rect
    //   222	1	4	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   0	10	219	java/lang/Exception
    //   12	16	219	java/lang/Exception
    //   31	88	219	java/lang/Exception
    //   88	149	219	java/lang/Exception
    //   151	176	219	java/lang/Exception
    //   178	210	219	java/lang/Exception
    //   22	27	222	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.gb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */