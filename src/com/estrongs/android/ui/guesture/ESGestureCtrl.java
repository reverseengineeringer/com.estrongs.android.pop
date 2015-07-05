package com.estrongs.android.ui.guesture;

import android.content.Context;
import android.gesture.Gesture;
import android.gesture.GesturePoint;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import java.util.ArrayList;

public abstract class ESGestureCtrl
  extends FrameLayout
{
  public static float b = 0.0F;
  public boolean a = true;
  private ArrayList<GesturePoint> c = null;
  private boolean d = false;
  private ESGesturePanel e = null;
  
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
    if (e != null)
    {
      float f1 = e.d();
      float f2 = e.e();
      if ((paramFloat1 >= f1 - b) && (paramFloat1 <= f1 + b) && (paramFloat2 >= f2 - b) && (paramFloat2 <= b + f2)) {
        return true;
      }
    }
    return false;
  }
  
  public abstract void a(Gesture paramGesture);
  
  public void a(ESGesturePanel paramESGesturePanel)
  {
    e = paramESGesturePanel;
  }
  
  public void a(boolean paramBoolean)
  {
    d = paramBoolean;
    if (paramBoolean)
    {
      e.setBackgroundResource(2130837677);
      e.a();
      return;
    }
    e.setBackgroundDrawable(null);
    e.b();
  }
  
  public boolean a()
  {
    boolean bool = false;
    if (d)
    {
      a(false);
      bool = true;
    }
    return bool;
  }
  
  /* Error */
  @android.annotation.SuppressLint({"NewApi"})
  public boolean dispatchTouchEvent(android.view.MotionEvent paramMotionEvent)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: aload_1
    //   4: ifnonnull +5 -> 9
    //   7: iconst_1
    //   8: ireturn
    //   9: invokestatic 75	com/estrongs/android/pop/ac:a	()I
    //   12: bipush 8
    //   14: if_icmplt +560 -> 574
    //   17: aload_1
    //   18: invokevirtual 80	android/view/MotionEvent:getActionIndex	()I
    //   21: istore_2
    //   22: aload_0
    //   23: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:e	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   26: ifnull +29 -> 55
    //   29: aload_0
    //   30: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:e	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   33: invokevirtual 83	com/estrongs/android/ui/guesture/ESGesturePanel:getVisibility	()I
    //   36: ifne +19 -> 55
    //   39: iload_2
    //   40: ifne +15 -> 55
    //   43: invokestatic 87	com/estrongs/android/ui/guesture/b:d	()Z
    //   46: ifeq +9 -> 55
    //   49: getstatic 89	com/estrongs/android/ui/guesture/b:b	Z
    //   52: ifne +23 -> 75
    //   55: aload_0
    //   56: aload_1
    //   57: invokespecial 91	android/widget/FrameLayout:dispatchTouchEvent	(Landroid/view/MotionEvent;)Z
    //   60: istore 5
    //   62: iload 5
    //   64: ireturn
    //   65: astore 6
    //   67: iconst_0
    //   68: istore_2
    //   69: goto -47 -> 22
    //   72: astore_1
    //   73: iconst_1
    //   74: ireturn
    //   75: invokestatic 97	com/estrongs/android/pop/view/FileExplorerActivity:J	()Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   78: invokevirtual 100	com/estrongs/android/pop/view/FileExplorerActivity:o	()Z
    //   81: ifeq +16 -> 97
    //   84: aload_0
    //   85: aload_1
    //   86: invokespecial 91	android/widget/FrameLayout:dispatchTouchEvent	(Landroid/view/MotionEvent;)Z
    //   89: istore 5
    //   91: iload 5
    //   93: ireturn
    //   94: astore_1
    //   95: iconst_1
    //   96: ireturn
    //   97: aload_1
    //   98: invokevirtual 103	android/view/MotionEvent:getAction	()I
    //   101: tableswitch	default:+31->132, 0:+48->149, 1:+342->443, 2:+161->262, 3:+342->443
    //   132: aload_0
    //   133: getfield 25	com/estrongs/android/ui/guesture/ESGestureCtrl:a	Z
    //   136: ifne +436 -> 572
    //   139: aload_0
    //   140: aload_1
    //   141: invokespecial 91	android/widget/FrameLayout:dispatchTouchEvent	(Landroid/view/MotionEvent;)Z
    //   144: istore 5
    //   146: iload 5
    //   148: ireturn
    //   149: aload_0
    //   150: aload_1
    //   151: invokevirtual 107	android/view/MotionEvent:getX	()F
    //   154: aload_1
    //   155: invokevirtual 110	android/view/MotionEvent:getY	()F
    //   158: invokespecial 112	com/estrongs/android/ui/guesture/ESGestureCtrl:a	(FF)Z
    //   161: ifeq +82 -> 243
    //   164: aload_0
    //   165: iconst_1
    //   166: putfield 25	com/estrongs/android/ui/guesture/ESGestureCtrl:a	Z
    //   169: aload_0
    //   170: new 114	java/util/ArrayList
    //   173: dup
    //   174: invokespecial 116	java/util/ArrayList:<init>	()V
    //   177: putfield 27	com/estrongs/android/ui/guesture/ESGestureCtrl:c	Ljava/util/ArrayList;
    //   180: aload_0
    //   181: getfield 29	com/estrongs/android/ui/guesture/ESGestureCtrl:d	Z
    //   184: ifne +44 -> 228
    //   187: aload_0
    //   188: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:e	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   191: aload_1
    //   192: invokevirtual 107	android/view/MotionEvent:getX	()F
    //   195: aload_1
    //   196: invokevirtual 110	android/view/MotionEvent:getY	()F
    //   199: invokevirtual 119	com/estrongs/android/ui/guesture/ESGesturePanel:a	(FF)V
    //   202: aload_0
    //   203: getfield 27	com/estrongs/android/ui/guesture/ESGestureCtrl:c	Ljava/util/ArrayList;
    //   206: new 121	android/gesture/GesturePoint
    //   209: dup
    //   210: aload_1
    //   211: invokevirtual 107	android/view/MotionEvent:getX	()F
    //   214: aload_1
    //   215: invokevirtual 110	android/view/MotionEvent:getY	()F
    //   218: invokestatic 127	java/lang/System:currentTimeMillis	()J
    //   221: invokespecial 130	android/gesture/GesturePoint:<init>	(FFJ)V
    //   224: invokevirtual 134	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   227: pop
    //   228: aload_0
    //   229: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:e	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   232: invokevirtual 55	com/estrongs/android/ui/guesture/ESGesturePanel:a	()V
    //   235: goto -103 -> 132
    //   238: astore 6
    //   240: goto -108 -> 132
    //   243: aload_0
    //   244: iconst_0
    //   245: putfield 25	com/estrongs/android/ui/guesture/ESGestureCtrl:a	Z
    //   248: aload_0
    //   249: getfield 29	com/estrongs/android/ui/guesture/ESGestureCtrl:d	Z
    //   252: ifeq -120 -> 132
    //   255: aload_0
    //   256: iconst_0
    //   257: invokevirtual 64	com/estrongs/android/ui/guesture/ESGestureCtrl:a	(Z)V
    //   260: iconst_1
    //   261: ireturn
    //   262: aload_0
    //   263: getfield 25	com/estrongs/android/ui/guesture/ESGestureCtrl:a	Z
    //   266: ifeq -134 -> 132
    //   269: aload_0
    //   270: getfield 29	com/estrongs/android/ui/guesture/ESGestureCtrl:d	Z
    //   273: ifeq +126 -> 399
    //   276: aload_1
    //   277: invokevirtual 107	android/view/MotionEvent:getX	()F
    //   280: f2i
    //   281: istore_3
    //   282: aload_1
    //   283: invokevirtual 110	android/view/MotionEvent:getY	()F
    //   286: f2i
    //   287: istore 4
    //   289: iload_3
    //   290: istore_2
    //   291: iload_3
    //   292: i2f
    //   293: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:b	F
    //   296: fcmpg
    //   297: ifge +8 -> 305
    //   300: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:b	F
    //   303: f2i
    //   304: istore_2
    //   305: iload_2
    //   306: istore_3
    //   307: iload_2
    //   308: i2f
    //   309: aload_0
    //   310: invokevirtual 137	com/estrongs/android/ui/guesture/ESGestureCtrl:getWidth	()I
    //   313: i2f
    //   314: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:b	F
    //   317: fsub
    //   318: fcmpl
    //   319: ifle +13 -> 332
    //   322: aload_0
    //   323: invokevirtual 137	com/estrongs/android/ui/guesture/ESGestureCtrl:getWidth	()I
    //   326: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:b	F
    //   329: f2i
    //   330: isub
    //   331: istore_3
    //   332: iload 4
    //   334: istore_2
    //   335: iload 4
    //   337: i2f
    //   338: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:b	F
    //   341: fcmpg
    //   342: ifge +8 -> 350
    //   345: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:b	F
    //   348: f2i
    //   349: istore_2
    //   350: iload_2
    //   351: istore 4
    //   353: iload_2
    //   354: i2f
    //   355: aload_0
    //   356: invokevirtual 140	com/estrongs/android/ui/guesture/ESGestureCtrl:getHeight	()I
    //   359: i2f
    //   360: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:b	F
    //   363: fsub
    //   364: fcmpl
    //   365: ifle +14 -> 379
    //   368: aload_0
    //   369: invokevirtual 140	com/estrongs/android/ui/guesture/ESGestureCtrl:getHeight	()I
    //   372: getstatic 18	com/estrongs/android/ui/guesture/ESGestureCtrl:b	F
    //   375: f2i
    //   376: isub
    //   377: istore 4
    //   379: aload_0
    //   380: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:e	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   383: iload_3
    //   384: iload 4
    //   386: invokevirtual 143	com/estrongs/android/ui/guesture/ESGesturePanel:a	(II)V
    //   389: aload_0
    //   390: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:e	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   393: invokevirtual 55	com/estrongs/android/ui/guesture/ESGesturePanel:a	()V
    //   396: goto -264 -> 132
    //   399: aload_0
    //   400: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:e	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   403: aload_1
    //   404: invokevirtual 107	android/view/MotionEvent:getX	()F
    //   407: aload_1
    //   408: invokevirtual 110	android/view/MotionEvent:getY	()F
    //   411: invokevirtual 119	com/estrongs/android/ui/guesture/ESGesturePanel:a	(FF)V
    //   414: aload_0
    //   415: getfield 27	com/estrongs/android/ui/guesture/ESGestureCtrl:c	Ljava/util/ArrayList;
    //   418: new 121	android/gesture/GesturePoint
    //   421: dup
    //   422: aload_1
    //   423: invokevirtual 107	android/view/MotionEvent:getX	()F
    //   426: aload_1
    //   427: invokevirtual 110	android/view/MotionEvent:getY	()F
    //   430: invokestatic 127	java/lang/System:currentTimeMillis	()J
    //   433: invokespecial 130	android/gesture/GesturePoint:<init>	(FFJ)V
    //   436: invokevirtual 134	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   439: pop
    //   440: goto -51 -> 389
    //   443: aload_0
    //   444: getfield 25	com/estrongs/android/ui/guesture/ESGestureCtrl:a	Z
    //   447: ifeq -315 -> 132
    //   450: aload_0
    //   451: getfield 27	com/estrongs/android/ui/guesture/ESGestureCtrl:c	Ljava/util/ArrayList;
    //   454: ifnull -322 -> 132
    //   457: aload_0
    //   458: getfield 29	com/estrongs/android/ui/guesture/ESGestureCtrl:d	Z
    //   461: ifne +46 -> 507
    //   464: aload_0
    //   465: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:e	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   468: invokevirtual 61	com/estrongs/android/ui/guesture/ESGesturePanel:b	()V
    //   471: new 145	android/gesture/Gesture
    //   474: dup
    //   475: invokespecial 146	android/gesture/Gesture:<init>	()V
    //   478: astore_1
    //   479: aload_1
    //   480: new 148	android/gesture/GestureStroke
    //   483: dup
    //   484: aload_0
    //   485: getfield 27	com/estrongs/android/ui/guesture/ESGestureCtrl:c	Ljava/util/ArrayList;
    //   488: invokespecial 151	android/gesture/GestureStroke:<init>	(Ljava/util/ArrayList;)V
    //   491: invokevirtual 155	android/gesture/Gesture:addStroke	(Landroid/gesture/GestureStroke;)V
    //   494: aload_0
    //   495: aload_1
    //   496: invokevirtual 157	com/estrongs/android/ui/guesture/ESGestureCtrl:a	(Landroid/gesture/Gesture;)V
    //   499: aload_0
    //   500: iconst_0
    //   501: putfield 25	com/estrongs/android/ui/guesture/ESGestureCtrl:a	Z
    //   504: goto +80 -> 584
    //   507: aload_0
    //   508: invokevirtual 161	com/estrongs/android/ui/guesture/ESGestureCtrl:getContext	()Landroid/content/Context;
    //   511: invokevirtual 167	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   514: invokevirtual 173	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   517: getfield 179	android/content/res/Configuration:orientation	I
    //   520: iconst_1
    //   521: if_icmpne +6 -> 527
    //   524: iconst_1
    //   525: istore 5
    //   527: new 181	android/graphics/Point
    //   530: dup
    //   531: aload_0
    //   532: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:e	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   535: invokevirtual 43	com/estrongs/android/ui/guesture/ESGesturePanel:d	()I
    //   538: aload_0
    //   539: getfield 31	com/estrongs/android/ui/guesture/ESGestureCtrl:e	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   542: invokevirtual 45	com/estrongs/android/ui/guesture/ESGesturePanel:e	()I
    //   545: invokespecial 183	android/graphics/Point:<init>	(II)V
    //   548: astore_1
    //   549: aload_0
    //   550: invokevirtual 161	com/estrongs/android/ui/guesture/ESGestureCtrl:getContext	()Landroid/content/Context;
    //   553: invokestatic 188	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   556: aload_1
    //   557: iload 5
    //   559: invokevirtual 191	com/estrongs/android/pop/ad:a	(Landroid/graphics/Point;Z)V
    //   562: goto -63 -> 499
    //   565: astore_1
    //   566: goto +18 -> 584
    //   569: astore_1
    //   570: iconst_1
    //   571: ireturn
    //   572: iconst_1
    //   573: ireturn
    //   574: iconst_0
    //   575: istore_2
    //   576: goto -554 -> 22
    //   579: astore 6
    //   581: goto -449 -> 132
    //   584: iconst_1
    //   585: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	586	0	this	ESGestureCtrl
    //   0	586	1	paramMotionEvent	android.view.MotionEvent
    //   21	555	2	i	int
    //   281	103	3	j	int
    //   287	98	4	k	int
    //   1	557	5	bool	boolean
    //   65	1	6	localException1	Exception
    //   238	1	6	localException2	Exception
    //   579	1	6	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   17	22	65	java/lang/Exception
    //   55	62	72	java/lang/Exception
    //   75	91	94	java/lang/Exception
    //   164	228	238	java/lang/Exception
    //   228	235	238	java/lang/Exception
    //   457	499	565	java/lang/Exception
    //   499	504	565	java/lang/Exception
    //   507	524	565	java/lang/Exception
    //   527	562	565	java/lang/Exception
    //   139	146	569	java/lang/Exception
    //   269	289	579	java/lang/Exception
    //   291	305	579	java/lang/Exception
    //   307	332	579	java/lang/Exception
    //   335	350	579	java/lang/Exception
    //   353	379	579	java/lang/Exception
    //   379	389	579	java/lang/Exception
    //   389	396	579	java/lang/Exception
    //   399	440	579	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.guesture.ESGestureCtrl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */