package com.estrongs.android.ui.guesture;

import android.content.Context;
import android.gesture.Gesture;
import android.gesture.GesturePoint;
import android.support.design.widget.CoordinatorLayout;
import android.util.AttributeSet;
import java.util.ArrayList;

public abstract class ESGestureCtrl
  extends CoordinatorLayout
{
  public static float h = 0.0F;
  public boolean g = true;
  private ArrayList<GesturePoint> i = null;
  private boolean j = false;
  private ESGesturePanel k = null;
  
  public ESGestureCtrl(Context paramContext)
  {
    super(paramContext);
  }
  
  public ESGestureCtrl(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ESGestureCtrl(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    if (k != null)
    {
      float f1 = k.getGestureStartX();
      float f2 = k.getGestureStartY();
      if ((paramFloat1 >= f1 - h) && (paramFloat1 <= f1 + h) && (paramFloat2 >= f2 - h) && (paramFloat2 <= h + f2)) {
        return true;
      }
    }
    return false;
  }
  
  public abstract void a(Gesture paramGesture);
  
  /* Error */
  @android.annotation.SuppressLint({"NewApi"})
  public boolean dispatchTouchEvent(android.view.MotionEvent paramMotionEvent)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: aload_1
    //   4: ifnonnull +5 -> 9
    //   7: iconst_1
    //   8: ireturn
    //   9: invokestatic 60	com/estrongs/android/pop/ac:a	()I
    //   12: bipush 8
    //   14: if_icmplt +586 -> 600
    //   17: aload_1
    //   18: invokevirtual 65	android/view/MotionEvent:getActionIndex	()I
    //   21: istore 5
    //   23: aload_0
    //   24: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:k	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   27: ifnull +30 -> 57
    //   30: aload_0
    //   31: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:k	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   34: invokevirtual 68	com/estrongs/android/ui/guesture/ESGesturePanel:getVisibility	()I
    //   37: ifne +20 -> 57
    //   40: iload 5
    //   42: ifne +15 -> 57
    //   45: invokestatic 74	com/estrongs/android/ui/guesture/b:d	()Z
    //   48: ifeq +9 -> 57
    //   51: getstatic 77	com/estrongs/android/ui/guesture/b:b	Z
    //   54: ifne +24 -> 78
    //   57: aload_0
    //   58: aload_1
    //   59: invokespecial 79	android/support/design/widget/CoordinatorLayout:dispatchTouchEvent	(Landroid/view/MotionEvent;)Z
    //   62: istore 6
    //   64: iload 6
    //   66: ireturn
    //   67: astore 7
    //   69: iconst_0
    //   70: istore 5
    //   72: goto -49 -> 23
    //   75: astore_1
    //   76: iconst_1
    //   77: ireturn
    //   78: invokestatic 85	com/estrongs/android/pop/view/FileExplorerActivity:X	()Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   81: invokevirtual 88	com/estrongs/android/pop/view/FileExplorerActivity:v	()Z
    //   84: ifeq +16 -> 100
    //   87: aload_0
    //   88: aload_1
    //   89: invokespecial 79	android/support/design/widget/CoordinatorLayout:dispatchTouchEvent	(Landroid/view/MotionEvent;)Z
    //   92: istore 6
    //   94: iload 6
    //   96: ireturn
    //   97: astore_1
    //   98: iconst_1
    //   99: ireturn
    //   100: aload_1
    //   101: invokevirtual 92	android/view/MotionEvent:getX	()F
    //   104: fstore_2
    //   105: aload_1
    //   106: invokevirtual 95	android/view/MotionEvent:getY	()F
    //   109: fstore_3
    //   110: iconst_2
    //   111: newarray <illegal type>
    //   113: astore 7
    //   115: iconst_2
    //   116: newarray <illegal type>
    //   118: astore 8
    //   120: aload_0
    //   121: aload 7
    //   123: invokevirtual 99	com/estrongs/android/ui/guesture/ESGestureCtrl:getLocationOnScreen	([I)V
    //   126: aload_0
    //   127: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:k	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   130: aload 8
    //   132: invokevirtual 100	com/estrongs/android/ui/guesture/ESGesturePanel:getLocationOnScreen	([I)V
    //   135: aload 7
    //   137: iconst_0
    //   138: iaload
    //   139: aload 8
    //   141: iconst_0
    //   142: iaload
    //   143: isub
    //   144: i2f
    //   145: fload_2
    //   146: fadd
    //   147: fstore_2
    //   148: aload 7
    //   150: iconst_1
    //   151: iaload
    //   152: aload 8
    //   154: iconst_1
    //   155: iaload
    //   156: isub
    //   157: i2f
    //   158: fload_3
    //   159: fadd
    //   160: fstore 4
    //   162: aload_1
    //   163: invokevirtual 103	android/view/MotionEvent:getAction	()I
    //   166: tableswitch	default:+30->196, 0:+47->213, 1:+300->466, 2:+145->311, 3:+300->466
    //   196: aload_0
    //   197: getfield 25	com/estrongs/android/ui/guesture/ESGestureCtrl:g	Z
    //   200: ifne +395 -> 595
    //   203: aload_0
    //   204: aload_1
    //   205: invokespecial 79	android/support/design/widget/CoordinatorLayout:dispatchTouchEvent	(Landroid/view/MotionEvent;)Z
    //   208: istore 6
    //   210: iload 6
    //   212: ireturn
    //   213: aload_0
    //   214: fload_2
    //   215: fload 4
    //   217: invokespecial 105	com/estrongs/android/ui/guesture/ESGestureCtrl:a	(FF)Z
    //   220: ifeq +72 -> 292
    //   223: aload_0
    //   224: iconst_1
    //   225: putfield 25	com/estrongs/android/ui/guesture/ESGestureCtrl:g	Z
    //   228: aload_0
    //   229: new 107	java/util/ArrayList
    //   232: dup
    //   233: invokespecial 109	java/util/ArrayList:<init>	()V
    //   236: putfield 27	com/estrongs/android/ui/guesture/ESGestureCtrl:i	Ljava/util/ArrayList;
    //   239: aload_0
    //   240: getfield 29	com/estrongs/android/ui/guesture/ESGestureCtrl:j	Z
    //   243: ifne +34 -> 277
    //   246: aload_0
    //   247: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:k	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   250: fload_2
    //   251: fload 4
    //   253: invokevirtual 112	com/estrongs/android/ui/guesture/ESGesturePanel:a	(FF)V
    //   256: aload_0
    //   257: getfield 27	com/estrongs/android/ui/guesture/ESGestureCtrl:i	Ljava/util/ArrayList;
    //   260: new 114	android/gesture/GesturePoint
    //   263: dup
    //   264: fload_2
    //   265: fload 4
    //   267: invokestatic 120	java/lang/System:currentTimeMillis	()J
    //   270: invokespecial 123	android/gesture/GesturePoint:<init>	(FFJ)V
    //   273: invokevirtual 127	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   276: pop
    //   277: aload_0
    //   278: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:k	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   281: invokevirtual 129	com/estrongs/android/ui/guesture/ESGesturePanel:a	()V
    //   284: goto -88 -> 196
    //   287: astore 7
    //   289: goto -93 -> 196
    //   292: aload_0
    //   293: iconst_0
    //   294: putfield 25	com/estrongs/android/ui/guesture/ESGestureCtrl:g	Z
    //   297: aload_0
    //   298: getfield 29	com/estrongs/android/ui/guesture/ESGestureCtrl:j	Z
    //   301: ifeq -105 -> 196
    //   304: aload_0
    //   305: iconst_0
    //   306: invokevirtual 133	com/estrongs/android/ui/guesture/ESGestureCtrl:setMovingStart	(Z)V
    //   309: iconst_1
    //   310: ireturn
    //   311: aload_0
    //   312: getfield 25	com/estrongs/android/ui/guesture/ESGestureCtrl:g	Z
    //   315: ifeq -119 -> 196
    //   318: aload_0
    //   319: getfield 29	com/estrongs/android/ui/guesture/ESGestureCtrl:j	Z
    //   322: ifeq +110 -> 432
    //   325: fload_2
    //   326: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:h	F
    //   329: fcmpg
    //   330: ifge +267 -> 597
    //   333: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:h	F
    //   336: fstore_2
    //   337: fload_2
    //   338: fstore_3
    //   339: fload_2
    //   340: aload_0
    //   341: invokevirtual 136	com/estrongs/android/ui/guesture/ESGestureCtrl:getWidth	()I
    //   344: i2f
    //   345: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:h	F
    //   348: fsub
    //   349: fcmpl
    //   350: ifle +13 -> 363
    //   353: aload_0
    //   354: invokevirtual 136	com/estrongs/android/ui/guesture/ESGestureCtrl:getWidth	()I
    //   357: i2f
    //   358: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:h	F
    //   361: fsub
    //   362: fstore_3
    //   363: fload 4
    //   365: fstore_2
    //   366: fload 4
    //   368: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:h	F
    //   371: fcmpg
    //   372: ifge +9 -> 381
    //   375: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:h	F
    //   378: f2i
    //   379: i2f
    //   380: fstore_2
    //   381: fload_2
    //   382: fstore 4
    //   384: fload_2
    //   385: aload_0
    //   386: invokevirtual 139	com/estrongs/android/ui/guesture/ESGestureCtrl:getHeight	()I
    //   389: i2f
    //   390: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:h	F
    //   393: fsub
    //   394: fcmpl
    //   395: ifle +15 -> 410
    //   398: aload_0
    //   399: invokevirtual 139	com/estrongs/android/ui/guesture/ESGestureCtrl:getHeight	()I
    //   402: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:h	F
    //   405: f2i
    //   406: isub
    //   407: i2f
    //   408: fstore 4
    //   410: aload_0
    //   411: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:k	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   414: fload_3
    //   415: f2i
    //   416: fload 4
    //   418: f2i
    //   419: invokevirtual 142	com/estrongs/android/ui/guesture/ESGesturePanel:a	(II)V
    //   422: aload_0
    //   423: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:k	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   426: invokevirtual 129	com/estrongs/android/ui/guesture/ESGesturePanel:a	()V
    //   429: goto -233 -> 196
    //   432: aload_0
    //   433: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:k	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   436: fload_2
    //   437: fload 4
    //   439: invokevirtual 112	com/estrongs/android/ui/guesture/ESGesturePanel:a	(FF)V
    //   442: aload_0
    //   443: getfield 27	com/estrongs/android/ui/guesture/ESGestureCtrl:i	Ljava/util/ArrayList;
    //   446: new 114	android/gesture/GesturePoint
    //   449: dup
    //   450: fload_2
    //   451: fload 4
    //   453: invokestatic 120	java/lang/System:currentTimeMillis	()J
    //   456: invokespecial 123	android/gesture/GesturePoint:<init>	(FFJ)V
    //   459: invokevirtual 127	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   462: pop
    //   463: goto -41 -> 422
    //   466: aload_0
    //   467: getfield 25	com/estrongs/android/ui/guesture/ESGestureCtrl:g	Z
    //   470: ifeq -274 -> 196
    //   473: aload_0
    //   474: getfield 27	com/estrongs/android/ui/guesture/ESGestureCtrl:i	Ljava/util/ArrayList;
    //   477: ifnull -281 -> 196
    //   480: aload_0
    //   481: getfield 29	com/estrongs/android/ui/guesture/ESGestureCtrl:j	Z
    //   484: ifne +46 -> 530
    //   487: aload_0
    //   488: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:k	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   491: invokevirtual 144	com/estrongs/android/ui/guesture/ESGesturePanel:b	()V
    //   494: new 146	android/gesture/Gesture
    //   497: dup
    //   498: invokespecial 147	android/gesture/Gesture:<init>	()V
    //   501: astore_1
    //   502: aload_1
    //   503: new 149	android/gesture/GestureStroke
    //   506: dup
    //   507: aload_0
    //   508: getfield 27	com/estrongs/android/ui/guesture/ESGestureCtrl:i	Ljava/util/ArrayList;
    //   511: invokespecial 152	android/gesture/GestureStroke:<init>	(Ljava/util/ArrayList;)V
    //   514: invokevirtual 156	android/gesture/Gesture:addStroke	(Landroid/gesture/GestureStroke;)V
    //   517: aload_0
    //   518: aload_1
    //   519: invokevirtual 158	com/estrongs/android/ui/guesture/ESGestureCtrl:a	(Landroid/gesture/Gesture;)V
    //   522: aload_0
    //   523: iconst_0
    //   524: putfield 25	com/estrongs/android/ui/guesture/ESGestureCtrl:g	Z
    //   527: goto +84 -> 611
    //   530: aload_0
    //   531: invokevirtual 162	com/estrongs/android/ui/guesture/ESGestureCtrl:getContext	()Landroid/content/Context;
    //   534: invokevirtual 168	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   537: invokevirtual 174	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   540: getfield 180	android/content/res/Configuration:orientation	I
    //   543: iconst_1
    //   544: if_icmpne +6 -> 550
    //   547: iconst_1
    //   548: istore 6
    //   550: new 182	android/graphics/Point
    //   553: dup
    //   554: aload_0
    //   555: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:k	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   558: invokevirtual 45	com/estrongs/android/ui/guesture/ESGesturePanel:getGestureStartX	()I
    //   561: aload_0
    //   562: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:k	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   565: invokevirtual 48	com/estrongs/android/ui/guesture/ESGesturePanel:getGestureStartY	()I
    //   568: invokespecial 184	android/graphics/Point:<init>	(II)V
    //   571: astore_1
    //   572: aload_0
    //   573: invokevirtual 162	com/estrongs/android/ui/guesture/ESGestureCtrl:getContext	()Landroid/content/Context;
    //   576: invokestatic 189	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   579: aload_1
    //   580: iload 6
    //   582: invokevirtual 192	com/estrongs/android/pop/ad:a	(Landroid/graphics/Point;Z)V
    //   585: goto -63 -> 522
    //   588: astore_1
    //   589: goto +22 -> 611
    //   592: astore_1
    //   593: iconst_1
    //   594: ireturn
    //   595: iconst_1
    //   596: ireturn
    //   597: goto -260 -> 337
    //   600: iconst_0
    //   601: istore 5
    //   603: goto -580 -> 23
    //   606: astore 7
    //   608: goto -412 -> 196
    //   611: iconst_1
    //   612: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	613	0	this	ESGestureCtrl
    //   0	613	1	paramMotionEvent	android.view.MotionEvent
    //   104	347	2	f1	float
    //   109	306	3	f2	float
    //   160	292	4	f3	float
    //   21	581	5	m	int
    //   1	580	6	bool	boolean
    //   67	1	7	localException1	Exception
    //   113	36	7	arrayOfInt1	int[]
    //   287	1	7	localException2	Exception
    //   606	1	7	localException3	Exception
    //   118	35	8	arrayOfInt2	int[]
    // Exception table:
    //   from	to	target	type
    //   17	23	67	java/lang/Exception
    //   57	64	75	java/lang/Exception
    //   78	94	97	java/lang/Exception
    //   223	277	287	java/lang/Exception
    //   277	284	287	java/lang/Exception
    //   480	522	588	java/lang/Exception
    //   522	527	588	java/lang/Exception
    //   530	547	588	java/lang/Exception
    //   550	585	588	java/lang/Exception
    //   203	210	592	java/lang/Exception
    //   318	337	606	java/lang/Exception
    //   339	363	606	java/lang/Exception
    //   366	381	606	java/lang/Exception
    //   384	410	606	java/lang/Exception
    //   410	422	606	java/lang/Exception
    //   422	429	606	java/lang/Exception
    //   432	463	606	java/lang/Exception
  }
  
  public boolean e()
  {
    boolean bool = false;
    if (j)
    {
      setMovingStart(false);
      bool = true;
    }
    return bool;
  }
  
  public void setGesturePanel(ESGesturePanel paramESGesturePanel)
  {
    k = paramESGesturePanel;
  }
  
  public void setMovingStart(boolean paramBoolean)
  {
    j = paramBoolean;
    if (paramBoolean)
    {
      k.setBackgroundResource(2130837937);
      k.a();
      return;
    }
    k.setBackgroundDrawable(null);
    k.b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.guesture.ESGestureCtrl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */