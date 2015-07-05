package com.estrongs.android.pop.app;

import android.content.Intent;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.view.MaxWidthLinearLayout;
import com.estrongs.android.ui.view.RecommendListView;

public class OpenRecomm
  extends ESActivity
{
  private TextView a;
  private ListView b;
  private RecommendListView c;
  private ImageView d;
  private ImageView e;
  private LinearLayout f;
  private LinearLayout g;
  private CheckBox h;
  private boolean i = false;
  private String j = null;
  private String k = null;
  private Intent l = null;
  private boolean m = false;
  private int n = 0;
  private int o = 0;
  private long p = 2592000L;
  private int q = 0;
  private int r = 0;
  private int t = 0;
  private al u;
  private MaxWidthLinearLayout v;
  
  private void a()
  {
    f = ((LinearLayout)findViewById(2131362575));
    Object localObject1 = getWindowManager().getDefaultDisplay();
    Object localObject2 = new DisplayMetrics();
    ((Display)localObject1).getMetrics((DisplayMetrics)localObject2);
    float f1 = density;
    int i2 = ((Display)localObject1).getHeight() - (int)(25.0F * f1 + 0.5F);
    ((Display)localObject1).getWidth();
    localObject1 = f.getLayoutParams();
    int i3;
    int i4;
    int i5;
    if (q == 0)
    {
      i3 = findViewById2131362576getLayoutParamsheight;
      i4 = findViewById2131362584getLayoutParamsheight;
      i5 = (int)(60.0F * f1 + 0.5F);
      if (n <= o) {
        break label229;
      }
    }
    label229:
    for (int i1 = n;; i1 = o)
    {
      localObject2 = v.getChildAt(0);
      q = ((int)(i1 * f1 + 0.5F) + (i3 + i4 + i1 * i5) + ((View)localObject2).getPaddingTop() + ((View)localObject2).getPaddingBottom());
      r = ((int)(28.0F * f1 + 0.5F));
      t = ((int)(24.0F * f1 + 0.5F));
      if (i2 <= q + r) {
        break;
      }
      height = q;
      return;
    }
    height = (i2 - r);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    a();
  }
  
  /* Error */
  public void onCreate(android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 154	com/estrongs/android/pop/esclasses/ESActivity:onCreate	(Landroid/os/Bundle;)V
    //   5: aload_0
    //   6: iconst_1
    //   7: invokevirtual 158	com/estrongs/android/pop/app/OpenRecomm:requestWindowFeature	(I)Z
    //   10: pop
    //   11: aload_0
    //   12: invokevirtual 162	com/estrongs/android/pop/app/OpenRecomm:getWindow	()Landroid/view/Window;
    //   15: ldc -93
    //   17: invokevirtual 169	android/view/Window:setBackgroundDrawableResource	(I)V
    //   20: aload_0
    //   21: aload_0
    //   22: invokestatic 174	com/estrongs/android/ui/theme/al:a	(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;
    //   25: putfield 176	com/estrongs/android/pop/app/OpenRecomm:u	Lcom/estrongs/android/ui/theme/al;
    //   28: aload_0
    //   29: aload_0
    //   30: invokestatic 181	com/estrongs/android/pop/esclasses/g:a	(Landroid/content/Context;)Landroid/view/LayoutInflater;
    //   33: ldc -74
    //   35: aconst_null
    //   36: invokevirtual 188	android/view/LayoutInflater:inflate	(ILandroid/view/ViewGroup;)Landroid/view/View;
    //   39: checkcast 128	com/estrongs/android/ui/view/MaxWidthLinearLayout
    //   42: putfield 126	com/estrongs/android/pop/app/OpenRecomm:v	Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;
    //   45: aload_0
    //   46: invokevirtual 192	com/estrongs/android/pop/app/OpenRecomm:getResources	()Landroid/content/res/Resources;
    //   49: invokevirtual 198	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   52: astore_1
    //   53: aload_0
    //   54: invokestatic 203	com/estrongs/android/pop/utils/cl:a	(Landroid/content/Context;)Z
    //   57: istore_3
    //   58: aload_0
    //   59: invokevirtual 192	com/estrongs/android/pop/app/OpenRecomm:getResources	()Landroid/content/res/Resources;
    //   62: invokevirtual 207	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   65: getfield 212	android/content/res/Configuration:orientation	I
    //   68: iconst_1
    //   69: if_icmpne +177 -> 246
    //   72: iconst_1
    //   73: istore_2
    //   74: invokestatic 216	com/estrongs/android/pop/ac:a	()I
    //   77: bipush 14
    //   79: if_icmplt +28 -> 107
    //   82: iload_3
    //   83: ifne +168 -> 251
    //   86: iload_2
    //   87: ifne +164 -> 251
    //   90: aload_0
    //   91: getfield 126	com/estrongs/android/pop/app/OpenRecomm:v	Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;
    //   94: aload_0
    //   95: invokevirtual 192	com/estrongs/android/pop/app/OpenRecomm:getResources	()Landroid/content/res/Resources;
    //   98: invokevirtual 198	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   101: getfield 219	android/util/DisplayMetrics:heightPixels	I
    //   104: invokevirtual 221	com/estrongs/android/ui/view/MaxWidthLinearLayout:a	(I)V
    //   107: aload_0
    //   108: aload_0
    //   109: getfield 126	com/estrongs/android/pop/app/OpenRecomm:v	Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;
    //   112: invokevirtual 225	com/estrongs/android/pop/app/OpenRecomm:setContentView	(Landroid/view/View;)V
    //   115: aload_0
    //   116: aload_0
    //   117: ldc -30
    //   119: invokevirtual 73	com/estrongs/android/pop/app/OpenRecomm:findViewById	(I)Landroid/view/View;
    //   122: checkcast 228	android/widget/TextView
    //   125: putfield 230	com/estrongs/android/pop/app/OpenRecomm:a	Landroid/widget/TextView;
    //   128: aload_0
    //   129: aload_0
    //   130: ldc -25
    //   132: invokevirtual 73	com/estrongs/android/pop/app/OpenRecomm:findViewById	(I)Landroid/view/View;
    //   135: checkcast 75	android/widget/LinearLayout
    //   138: putfield 233	com/estrongs/android/pop/app/OpenRecomm:g	Landroid/widget/LinearLayout;
    //   141: aload_0
    //   142: aload_0
    //   143: ldc -22
    //   145: invokevirtual 73	com/estrongs/android/pop/app/OpenRecomm:findViewById	(I)Landroid/view/View;
    //   148: checkcast 236	android/widget/ImageView
    //   151: putfield 238	com/estrongs/android/pop/app/OpenRecomm:d	Landroid/widget/ImageView;
    //   154: aload_0
    //   155: aload_0
    //   156: ldc -17
    //   158: invokevirtual 73	com/estrongs/android/pop/app/OpenRecomm:findViewById	(I)Landroid/view/View;
    //   161: checkcast 236	android/widget/ImageView
    //   164: putfield 241	com/estrongs/android/pop/app/OpenRecomm:e	Landroid/widget/ImageView;
    //   167: aload_0
    //   168: aload_0
    //   169: ldc -14
    //   171: invokevirtual 73	com/estrongs/android/pop/app/OpenRecomm:findViewById	(I)Landroid/view/View;
    //   174: checkcast 244	android/widget/ListView
    //   177: putfield 246	com/estrongs/android/pop/app/OpenRecomm:b	Landroid/widget/ListView;
    //   180: aload_0
    //   181: aload_0
    //   182: ldc -9
    //   184: invokevirtual 73	com/estrongs/android/pop/app/OpenRecomm:findViewById	(I)Landroid/view/View;
    //   187: checkcast 249	com/estrongs/android/ui/view/RecommendListView
    //   190: putfield 251	com/estrongs/android/pop/app/OpenRecomm:c	Lcom/estrongs/android/ui/view/RecommendListView;
    //   193: aload_0
    //   194: getfield 251	com/estrongs/android/pop/app/OpenRecomm:c	Lcom/estrongs/android/ui/view/RecommendListView;
    //   197: iconst_1
    //   198: invokevirtual 254	com/estrongs/android/ui/view/RecommendListView:a	(Z)V
    //   201: aload_0
    //   202: aload_0
    //   203: ldc -1
    //   205: invokevirtual 73	com/estrongs/android/pop/app/OpenRecomm:findViewById	(I)Landroid/view/View;
    //   208: checkcast 257	android/widget/CheckBox
    //   211: putfield 259	com/estrongs/android/pop/app/OpenRecomm:h	Landroid/widget/CheckBox;
    //   214: aload_0
    //   215: getfield 259	com/estrongs/android/pop/app/OpenRecomm:h	Landroid/widget/CheckBox;
    //   218: new 261	com/estrongs/android/pop/app/eg
    //   221: dup
    //   222: aload_0
    //   223: invokespecial 264	com/estrongs/android/pop/app/eg:<init>	(Lcom/estrongs/android/pop/app/OpenRecomm;)V
    //   226: invokevirtual 268	android/widget/CheckBox:setOnCheckedChangeListener	(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    //   229: aload_0
    //   230: invokevirtual 272	com/estrongs/android/pop/app/OpenRecomm:getIntent	()Landroid/content/Intent;
    //   233: invokevirtual 278	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   236: astore_1
    //   237: aload_1
    //   238: ifnonnull +51 -> 289
    //   241: aload_0
    //   242: invokevirtual 281	com/estrongs/android/pop/app/OpenRecomm:finish	()V
    //   245: return
    //   246: iconst_0
    //   247: istore_2
    //   248: goto -174 -> 74
    //   251: iload_3
    //   252: ifeq +23 -> 275
    //   255: aload_0
    //   256: getfield 126	com/estrongs/android/pop/app/OpenRecomm:v	Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;
    //   259: aload_0
    //   260: invokevirtual 192	com/estrongs/android/pop/app/OpenRecomm:getResources	()Landroid/content/res/Resources;
    //   263: invokevirtual 198	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   266: getfield 284	android/util/DisplayMetrics:widthPixels	I
    //   269: invokevirtual 221	com/estrongs/android/ui/view/MaxWidthLinearLayout:a	(I)V
    //   272: goto -165 -> 107
    //   275: aload_0
    //   276: getfield 126	com/estrongs/android/pop/app/OpenRecomm:v	Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;
    //   279: aload_1
    //   280: getfield 284	android/util/DisplayMetrics:widthPixels	I
    //   283: invokevirtual 221	com/estrongs/android/ui/view/MaxWidthLinearLayout:a	(I)V
    //   286: goto -179 -> 107
    //   289: aload_0
    //   290: aload_1
    //   291: ldc_w 286
    //   294: invokevirtual 292	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   297: putfield 48	com/estrongs/android/pop/app/OpenRecomm:k	Ljava/lang/String;
    //   300: aload_0
    //   301: aload_0
    //   302: getfield 48	com/estrongs/android/pop/app/OpenRecomm:k	Ljava/lang/String;
    //   305: invokestatic 297	com/estrongs/android/pop/view/utils/AppRunner:c	(Ljava/lang/String;)Landroid/content/Intent;
    //   308: putfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   311: aload_0
    //   312: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   315: ifnonnull +20 -> 335
    //   318: aload_0
    //   319: aload_0
    //   320: invokevirtual 272	com/estrongs/android/pop/app/OpenRecomm:getIntent	()Landroid/content/Intent;
    //   323: ldc_w 299
    //   326: invokevirtual 303	android/content/Intent:getParcelableExtra	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   329: checkcast 274	android/content/Intent
    //   332: putfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   335: aload_0
    //   336: aload_0
    //   337: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   340: invokevirtual 307	android/content/Intent:getType	()Ljava/lang/String;
    //   343: putfield 46	com/estrongs/android/pop/app/OpenRecomm:j	Ljava/lang/String;
    //   346: aload_0
    //   347: aload_0
    //   348: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   351: invokestatic 312	com/estrongs/android/pop/view/utils/n:a	(Landroid/content/Context;Landroid/content/Intent;)[Lcom/estrongs/android/pop/view/utils/t;
    //   354: astore_1
    //   355: aload_0
    //   356: iconst_0
    //   357: putfield 52	com/estrongs/android/pop/app/OpenRecomm:m	Z
    //   360: aload_1
    //   361: ifnull +39 -> 400
    //   364: aload_1
    //   365: arraylength
    //   366: ifle +34 -> 400
    //   369: aload_0
    //   370: aload_1
    //   371: arraylength
    //   372: putfield 56	com/estrongs/android/pop/app/OpenRecomm:o	I
    //   375: aload_0
    //   376: getfield 246	com/estrongs/android/pop/app/OpenRecomm:b	Landroid/widget/ListView;
    //   379: new 314	com/estrongs/android/pop/app/ei
    //   382: dup
    //   383: aload_0
    //   384: aload_0
    //   385: ldc_w 315
    //   388: aload_1
    //   389: invokespecial 318	com/estrongs/android/pop/app/ei:<init>	(Lcom/estrongs/android/pop/app/OpenRecomm;Landroid/content/Context;I[Lcom/estrongs/android/pop/view/utils/t;)V
    //   392: invokevirtual 322	android/widget/ListView:setAdapter	(Landroid/widget/ListAdapter;)V
    //   395: aload_0
    //   396: iconst_1
    //   397: putfield 52	com/estrongs/android/pop/app/OpenRecomm:m	Z
    //   400: invokestatic 325	com/estrongs/android/pop/view/utils/n:b	()Lcom/estrongs/android/pop/view/utils/n;
    //   403: aload_0
    //   404: invokevirtual 328	com/estrongs/android/pop/view/utils/n:a	(Landroid/content/Context;)J
    //   407: ldc2_w 329
    //   410: ldiv
    //   411: aload_0
    //   412: getfield 60	com/estrongs/android/pop/app/OpenRecomm:p	J
    //   415: lcmp
    //   416: ifle +10 -> 426
    //   419: invokestatic 325	com/estrongs/android/pop/view/utils/n:b	()Lcom/estrongs/android/pop/view/utils/n;
    //   422: iconst_1
    //   423: invokevirtual 331	com/estrongs/android/pop/view/utils/n:a	(Z)V
    //   426: aload_0
    //   427: getfield 52	com/estrongs/android/pop/app/OpenRecomm:m	Z
    //   430: ifeq +156 -> 586
    //   433: aload_1
    //   434: arraylength
    //   435: iconst_1
    //   436: if_icmpne +80 -> 516
    //   439: aload_0
    //   440: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   443: aload_1
    //   444: iconst_0
    //   445: aaload
    //   446: getfield 335	com/estrongs/android/pop/view/utils/t:c	Ljava/lang/String;
    //   449: aload_1
    //   450: iconst_0
    //   451: aaload
    //   452: getfield 337	com/estrongs/android/pop/view/utils/t:d	Ljava/lang/String;
    //   455: invokevirtual 341	android/content/Intent:setClassName	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   458: pop
    //   459: aload_1
    //   460: iconst_0
    //   461: aaload
    //   462: getfield 343	com/estrongs/android/pop/view/utils/t:e	Ljava/lang/String;
    //   465: ifnull +17 -> 482
    //   468: aload_0
    //   469: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   472: aload_1
    //   473: iconst_0
    //   474: aaload
    //   475: getfield 343	com/estrongs/android/pop/view/utils/t:e	Ljava/lang/String;
    //   478: invokevirtual 346	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   481: pop
    //   482: aload_1
    //   483: iconst_0
    //   484: aaload
    //   485: getfield 335	com/estrongs/android/pop/view/utils/t:c	Ljava/lang/String;
    //   488: invokestatic 349	com/estrongs/android/pop/view/utils/AppRunner:d	(Ljava/lang/String;)Z
    //   491: ifeq +13 -> 504
    //   494: aload_0
    //   495: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   498: ldc_w 350
    //   501: invokestatic 353	com/estrongs/android/pop/view/utils/AppRunner:a	(Landroid/content/Intent;I)V
    //   504: aload_0
    //   505: aload_0
    //   506: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   509: invokevirtual 357	com/estrongs/android/pop/app/OpenRecomm:startActivity	(Landroid/content/Intent;)V
    //   512: aload_0
    //   513: invokevirtual 281	com/estrongs/android/pop/app/OpenRecomm:finish	()V
    //   516: aload_0
    //   517: getfield 230	com/estrongs/android/pop/app/OpenRecomm:a	Landroid/widget/TextView;
    //   520: aload_0
    //   521: ldc_w 358
    //   524: invokevirtual 361	com/estrongs/android/pop/app/OpenRecomm:getString	(I)Ljava/lang/String;
    //   527: invokevirtual 365	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   530: aload_0
    //   531: getfield 251	com/estrongs/android/pop/app/OpenRecomm:c	Lcom/estrongs/android/ui/view/RecommendListView;
    //   534: bipush 8
    //   536: invokevirtual 368	com/estrongs/android/ui/view/RecommendListView:setVisibility	(I)V
    //   539: new 370	com/estrongs/android/pop/app/eh
    //   542: dup
    //   543: aload_0
    //   544: invokespecial 371	com/estrongs/android/pop/app/eh:<init>	(Lcom/estrongs/android/pop/app/OpenRecomm;)V
    //   547: astore_1
    //   548: aload_0
    //   549: getfield 246	com/estrongs/android/pop/app/OpenRecomm:b	Landroid/widget/ListView;
    //   552: aload_1
    //   553: invokevirtual 375	android/widget/ListView:setOnItemClickListener	(Landroid/widget/AdapterView$OnItemClickListener;)V
    //   556: aload_0
    //   557: invokespecial 148	com/estrongs/android/pop/app/OpenRecomm:a	()V
    //   560: return
    //   561: astore_1
    //   562: aload_1
    //   563: invokevirtual 378	java/lang/Exception:printStackTrace	()V
    //   566: aload_0
    //   567: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   570: ifnull +11 -> 581
    //   573: aload_0
    //   574: aload_0
    //   575: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   578: invokevirtual 357	com/estrongs/android/pop/app/OpenRecomm:startActivity	(Landroid/content/Intent;)V
    //   581: aload_0
    //   582: invokevirtual 281	com/estrongs/android/pop/app/OpenRecomm:finish	()V
    //   585: return
    //   586: aload_0
    //   587: aload_0
    //   588: ldc_w 379
    //   591: invokevirtual 361	com/estrongs/android/pop/app/OpenRecomm:getString	(I)Ljava/lang/String;
    //   594: iconst_1
    //   595: invokestatic 384	com/estrongs/android/ui/view/ag:a	(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    //   598: aload_0
    //   599: invokevirtual 281	com/estrongs/android/pop/app/OpenRecomm:finish	()V
    //   602: return
    //   603: astore_1
    //   604: aload_0
    //   605: invokevirtual 281	com/estrongs/android/pop/app/OpenRecomm:finish	()V
    //   608: return
    //   609: astore_1
    //   610: aload_0
    //   611: invokevirtual 281	com/estrongs/android/pop/app/OpenRecomm:finish	()V
    //   614: aload_1
    //   615: athrow
    //   616: astore_1
    //   617: goto -19 -> 598
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	620	0	this	OpenRecomm
    //   0	620	1	paramBundle	android.os.Bundle
    //   73	175	2	i1	int
    //   57	195	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   115	237	561	java/lang/Exception
    //   241	245	561	java/lang/Exception
    //   289	335	561	java/lang/Exception
    //   335	360	561	java/lang/Exception
    //   364	400	561	java/lang/Exception
    //   400	426	561	java/lang/Exception
    //   426	482	561	java/lang/Exception
    //   482	504	561	java/lang/Exception
    //   504	516	561	java/lang/Exception
    //   516	560	561	java/lang/Exception
    //   598	602	561	java/lang/Exception
    //   566	581	603	java/lang/Exception
    //   566	581	609	finally
    //   586	598	616	java/lang/Exception
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4) {
      n.b().f();
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void onResume()
  {
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.OpenRecomm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */