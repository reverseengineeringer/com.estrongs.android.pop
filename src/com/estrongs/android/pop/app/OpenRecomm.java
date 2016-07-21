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
import com.estrongs.android.ui.theme.at;
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
  private at u;
  private MaxWidthLinearLayout v;
  
  private void a()
  {
    f = ((LinearLayout)findViewById(2131625326));
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
      i3 = findViewById2131625327getLayoutParamsheight;
      i4 = findViewById2131625335getLayoutParamsheight;
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
      r = ((int)(100.0F * f1 + 0.5F));
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
    //   7: invokevirtual 158	com/estrongs/android/pop/app/OpenRecomm:supportRequestWindowFeature	(I)Z
    //   10: pop
    //   11: aload_0
    //   12: invokevirtual 162	com/estrongs/android/pop/app/OpenRecomm:getWindow	()Landroid/view/Window;
    //   15: ldc -93
    //   17: invokevirtual 169	android/view/Window:setBackgroundDrawableResource	(I)V
    //   20: aload_0
    //   21: aload_0
    //   22: invokestatic 174	com/estrongs/android/ui/theme/at:a	(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;
    //   25: putfield 176	com/estrongs/android/pop/app/OpenRecomm:u	Lcom/estrongs/android/ui/theme/at;
    //   28: aload_0
    //   29: aload_0
    //   30: invokestatic 181	com/estrongs/android/pop/esclasses/k:a	(Landroid/content/Context;)Landroid/view/LayoutInflater;
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
    //   54: invokestatic 203	com/estrongs/android/pop/utils/cu:a	(Landroid/content/Context;)Z
    //   57: istore_3
    //   58: aload_0
    //   59: invokevirtual 192	com/estrongs/android/pop/app/OpenRecomm:getResources	()Landroid/content/res/Resources;
    //   62: invokevirtual 207	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   65: getfield 212	android/content/res/Configuration:orientation	I
    //   68: iconst_1
    //   69: if_icmpne +178 -> 247
    //   72: iconst_1
    //   73: istore_2
    //   74: invokestatic 216	com/estrongs/android/pop/ac:a	()I
    //   77: bipush 14
    //   79: if_icmplt +28 -> 107
    //   82: iload_3
    //   83: ifne +169 -> 252
    //   86: iload_2
    //   87: ifne +165 -> 252
    //   90: aload_0
    //   91: getfield 126	com/estrongs/android/pop/app/OpenRecomm:v	Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;
    //   94: aload_0
    //   95: invokevirtual 192	com/estrongs/android/pop/app/OpenRecomm:getResources	()Landroid/content/res/Resources;
    //   98: invokevirtual 198	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   101: getfield 219	android/util/DisplayMetrics:heightPixels	I
    //   104: invokevirtual 222	com/estrongs/android/ui/view/MaxWidthLinearLayout:setMaxWidth	(I)V
    //   107: aload_0
    //   108: aload_0
    //   109: getfield 126	com/estrongs/android/pop/app/OpenRecomm:v	Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;
    //   112: invokevirtual 226	com/estrongs/android/pop/app/OpenRecomm:setContentView	(Landroid/view/View;)V
    //   115: aload_0
    //   116: aload_0
    //   117: ldc -29
    //   119: invokevirtual 73	com/estrongs/android/pop/app/OpenRecomm:findViewById	(I)Landroid/view/View;
    //   122: checkcast 229	android/widget/TextView
    //   125: putfield 231	com/estrongs/android/pop/app/OpenRecomm:a	Landroid/widget/TextView;
    //   128: aload_0
    //   129: aload_0
    //   130: ldc -24
    //   132: invokevirtual 73	com/estrongs/android/pop/app/OpenRecomm:findViewById	(I)Landroid/view/View;
    //   135: checkcast 75	android/widget/LinearLayout
    //   138: putfield 234	com/estrongs/android/pop/app/OpenRecomm:g	Landroid/widget/LinearLayout;
    //   141: aload_0
    //   142: aload_0
    //   143: ldc -21
    //   145: invokevirtual 73	com/estrongs/android/pop/app/OpenRecomm:findViewById	(I)Landroid/view/View;
    //   148: checkcast 237	android/widget/ImageView
    //   151: putfield 239	com/estrongs/android/pop/app/OpenRecomm:d	Landroid/widget/ImageView;
    //   154: aload_0
    //   155: aload_0
    //   156: ldc -16
    //   158: invokevirtual 73	com/estrongs/android/pop/app/OpenRecomm:findViewById	(I)Landroid/view/View;
    //   161: checkcast 237	android/widget/ImageView
    //   164: putfield 242	com/estrongs/android/pop/app/OpenRecomm:e	Landroid/widget/ImageView;
    //   167: aload_0
    //   168: aload_0
    //   169: ldc -13
    //   171: invokevirtual 73	com/estrongs/android/pop/app/OpenRecomm:findViewById	(I)Landroid/view/View;
    //   174: checkcast 245	android/widget/ListView
    //   177: putfield 247	com/estrongs/android/pop/app/OpenRecomm:b	Landroid/widget/ListView;
    //   180: aload_0
    //   181: aload_0
    //   182: ldc -8
    //   184: invokevirtual 73	com/estrongs/android/pop/app/OpenRecomm:findViewById	(I)Landroid/view/View;
    //   187: checkcast 250	com/estrongs/android/ui/view/RecommendListView
    //   190: putfield 252	com/estrongs/android/pop/app/OpenRecomm:c	Lcom/estrongs/android/ui/view/RecommendListView;
    //   193: aload_0
    //   194: getfield 252	com/estrongs/android/pop/app/OpenRecomm:c	Lcom/estrongs/android/ui/view/RecommendListView;
    //   197: iconst_1
    //   198: invokevirtual 256	com/estrongs/android/ui/view/RecommendListView:setDialogStyle	(Z)V
    //   201: aload_0
    //   202: aload_0
    //   203: ldc_w 257
    //   206: invokevirtual 73	com/estrongs/android/pop/app/OpenRecomm:findViewById	(I)Landroid/view/View;
    //   209: checkcast 259	android/widget/CheckBox
    //   212: putfield 261	com/estrongs/android/pop/app/OpenRecomm:h	Landroid/widget/CheckBox;
    //   215: aload_0
    //   216: getfield 261	com/estrongs/android/pop/app/OpenRecomm:h	Landroid/widget/CheckBox;
    //   219: new 263	com/estrongs/android/pop/app/ef
    //   222: dup
    //   223: aload_0
    //   224: invokespecial 266	com/estrongs/android/pop/app/ef:<init>	(Lcom/estrongs/android/pop/app/OpenRecomm;)V
    //   227: invokevirtual 270	android/widget/CheckBox:setOnCheckedChangeListener	(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    //   230: aload_0
    //   231: invokevirtual 274	com/estrongs/android/pop/app/OpenRecomm:getIntent	()Landroid/content/Intent;
    //   234: invokevirtual 280	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   237: astore_1
    //   238: aload_1
    //   239: ifnonnull +83 -> 322
    //   242: aload_0
    //   243: invokevirtual 283	com/estrongs/android/pop/app/OpenRecomm:finish	()V
    //   246: return
    //   247: iconst_0
    //   248: istore_2
    //   249: goto -175 -> 74
    //   252: iload_3
    //   253: ifeq +27 -> 280
    //   256: iload_2
    //   257: ifne +23 -> 280
    //   260: aload_0
    //   261: getfield 126	com/estrongs/android/pop/app/OpenRecomm:v	Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;
    //   264: aload_0
    //   265: invokevirtual 192	com/estrongs/android/pop/app/OpenRecomm:getResources	()Landroid/content/res/Resources;
    //   268: invokevirtual 198	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   271: getfield 219	android/util/DisplayMetrics:heightPixels	I
    //   274: invokevirtual 222	com/estrongs/android/ui/view/MaxWidthLinearLayout:setMaxWidth	(I)V
    //   277: goto -170 -> 107
    //   280: iload_3
    //   281: ifeq +27 -> 308
    //   284: iload_2
    //   285: ifeq +23 -> 308
    //   288: aload_0
    //   289: getfield 126	com/estrongs/android/pop/app/OpenRecomm:v	Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;
    //   292: aload_0
    //   293: invokevirtual 192	com/estrongs/android/pop/app/OpenRecomm:getResources	()Landroid/content/res/Resources;
    //   296: invokevirtual 198	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   299: getfield 286	android/util/DisplayMetrics:widthPixels	I
    //   302: invokevirtual 222	com/estrongs/android/ui/view/MaxWidthLinearLayout:setMaxWidth	(I)V
    //   305: goto -198 -> 107
    //   308: aload_0
    //   309: getfield 126	com/estrongs/android/pop/app/OpenRecomm:v	Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;
    //   312: aload_1
    //   313: getfield 286	android/util/DisplayMetrics:widthPixels	I
    //   316: invokevirtual 222	com/estrongs/android/ui/view/MaxWidthLinearLayout:setMaxWidth	(I)V
    //   319: goto -212 -> 107
    //   322: aload_0
    //   323: aload_1
    //   324: ldc_w 288
    //   327: invokevirtual 294	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   330: putfield 48	com/estrongs/android/pop/app/OpenRecomm:k	Ljava/lang/String;
    //   333: aload_0
    //   334: aload_0
    //   335: getfield 48	com/estrongs/android/pop/app/OpenRecomm:k	Ljava/lang/String;
    //   338: invokestatic 299	com/estrongs/android/pop/view/utils/AppRunner:c	(Ljava/lang/String;)Landroid/content/Intent;
    //   341: putfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   344: aload_0
    //   345: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   348: ifnonnull +20 -> 368
    //   351: aload_0
    //   352: aload_0
    //   353: invokevirtual 274	com/estrongs/android/pop/app/OpenRecomm:getIntent	()Landroid/content/Intent;
    //   356: ldc_w 301
    //   359: invokevirtual 305	android/content/Intent:getParcelableExtra	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   362: checkcast 276	android/content/Intent
    //   365: putfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   368: aload_0
    //   369: aload_0
    //   370: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   373: invokevirtual 309	android/content/Intent:getType	()Ljava/lang/String;
    //   376: putfield 46	com/estrongs/android/pop/app/OpenRecomm:j	Ljava/lang/String;
    //   379: aload_0
    //   380: aload_0
    //   381: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   384: invokestatic 314	com/estrongs/android/pop/view/utils/n:a	(Landroid/content/Context;Landroid/content/Intent;)[Lcom/estrongs/android/pop/view/utils/t;
    //   387: astore_1
    //   388: aload_0
    //   389: iconst_0
    //   390: putfield 52	com/estrongs/android/pop/app/OpenRecomm:m	Z
    //   393: aload_1
    //   394: ifnull +39 -> 433
    //   397: aload_1
    //   398: arraylength
    //   399: ifle +34 -> 433
    //   402: aload_0
    //   403: aload_1
    //   404: arraylength
    //   405: putfield 56	com/estrongs/android/pop/app/OpenRecomm:o	I
    //   408: aload_0
    //   409: getfield 247	com/estrongs/android/pop/app/OpenRecomm:b	Landroid/widget/ListView;
    //   412: new 316	com/estrongs/android/pop/app/eh
    //   415: dup
    //   416: aload_0
    //   417: aload_0
    //   418: ldc_w 317
    //   421: aload_1
    //   422: invokespecial 320	com/estrongs/android/pop/app/eh:<init>	(Lcom/estrongs/android/pop/app/OpenRecomm;Landroid/content/Context;I[Lcom/estrongs/android/pop/view/utils/t;)V
    //   425: invokevirtual 324	android/widget/ListView:setAdapter	(Landroid/widget/ListAdapter;)V
    //   428: aload_0
    //   429: iconst_1
    //   430: putfield 52	com/estrongs/android/pop/app/OpenRecomm:m	Z
    //   433: invokestatic 327	com/estrongs/android/pop/view/utils/n:b	()Lcom/estrongs/android/pop/view/utils/n;
    //   436: aload_0
    //   437: invokevirtual 330	com/estrongs/android/pop/view/utils/n:a	(Landroid/content/Context;)J
    //   440: pop2
    //   441: invokestatic 327	com/estrongs/android/pop/view/utils/n:b	()Lcom/estrongs/android/pop/view/utils/n;
    //   444: iconst_1
    //   445: invokevirtual 332	com/estrongs/android/pop/view/utils/n:a	(Z)V
    //   448: aload_0
    //   449: getfield 52	com/estrongs/android/pop/app/OpenRecomm:m	Z
    //   452: ifeq +157 -> 609
    //   455: aload_1
    //   456: arraylength
    //   457: iconst_1
    //   458: if_icmpne +80 -> 538
    //   461: aload_0
    //   462: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   465: aload_1
    //   466: iconst_0
    //   467: aaload
    //   468: getfield 336	com/estrongs/android/pop/view/utils/t:c	Ljava/lang/String;
    //   471: aload_1
    //   472: iconst_0
    //   473: aaload
    //   474: getfield 338	com/estrongs/android/pop/view/utils/t:d	Ljava/lang/String;
    //   477: invokevirtual 342	android/content/Intent:setClassName	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   480: pop
    //   481: aload_1
    //   482: iconst_0
    //   483: aaload
    //   484: getfield 344	com/estrongs/android/pop/view/utils/t:e	Ljava/lang/String;
    //   487: ifnull +17 -> 504
    //   490: aload_0
    //   491: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   494: aload_1
    //   495: iconst_0
    //   496: aaload
    //   497: getfield 344	com/estrongs/android/pop/view/utils/t:e	Ljava/lang/String;
    //   500: invokevirtual 347	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   503: pop
    //   504: aload_1
    //   505: iconst_0
    //   506: aaload
    //   507: getfield 336	com/estrongs/android/pop/view/utils/t:c	Ljava/lang/String;
    //   510: invokestatic 350	com/estrongs/android/pop/view/utils/AppRunner:d	(Ljava/lang/String;)Z
    //   513: ifeq +13 -> 526
    //   516: aload_0
    //   517: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   520: ldc_w 351
    //   523: invokestatic 354	com/estrongs/android/pop/view/utils/AppRunner:a	(Landroid/content/Intent;I)V
    //   526: aload_0
    //   527: aload_0
    //   528: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   531: invokevirtual 358	com/estrongs/android/pop/app/OpenRecomm:startActivity	(Landroid/content/Intent;)V
    //   534: aload_0
    //   535: invokevirtual 283	com/estrongs/android/pop/app/OpenRecomm:finish	()V
    //   538: aload_0
    //   539: getfield 231	com/estrongs/android/pop/app/OpenRecomm:a	Landroid/widget/TextView;
    //   542: aload_0
    //   543: ldc_w 359
    //   546: invokevirtual 362	com/estrongs/android/pop/app/OpenRecomm:getString	(I)Ljava/lang/String;
    //   549: invokevirtual 366	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   552: aload_0
    //   553: getfield 252	com/estrongs/android/pop/app/OpenRecomm:c	Lcom/estrongs/android/ui/view/RecommendListView;
    //   556: bipush 8
    //   558: invokevirtual 369	com/estrongs/android/ui/view/RecommendListView:setVisibility	(I)V
    //   561: new 371	com/estrongs/android/pop/app/eg
    //   564: dup
    //   565: aload_0
    //   566: invokespecial 372	com/estrongs/android/pop/app/eg:<init>	(Lcom/estrongs/android/pop/app/OpenRecomm;)V
    //   569: astore_1
    //   570: aload_0
    //   571: getfield 247	com/estrongs/android/pop/app/OpenRecomm:b	Landroid/widget/ListView;
    //   574: aload_1
    //   575: invokevirtual 376	android/widget/ListView:setOnItemClickListener	(Landroid/widget/AdapterView$OnItemClickListener;)V
    //   578: aload_0
    //   579: invokespecial 148	com/estrongs/android/pop/app/OpenRecomm:a	()V
    //   582: aload_0
    //   583: getfield 46	com/estrongs/android/pop/app/OpenRecomm:j	Ljava/lang/String;
    //   586: ifnonnull +90 -> 676
    //   589: aload_0
    //   590: invokestatic 381	com/estrongs/android/j/c:a	(Landroid/content/Context;)Lcom/estrongs/android/j/c;
    //   593: ldc_w 383
    //   596: ldc_w 385
    //   599: invokevirtual 388	com/estrongs/android/j/c:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   602: return
    //   603: astore_1
    //   604: aload_1
    //   605: invokevirtual 391	java/lang/Exception:printStackTrace	()V
    //   608: return
    //   609: aload_0
    //   610: aload_0
    //   611: ldc_w 392
    //   614: invokevirtual 362	com/estrongs/android/pop/app/OpenRecomm:getString	(I)Ljava/lang/String;
    //   617: iconst_1
    //   618: invokestatic 397	com/estrongs/android/ui/view/ak:a	(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    //   621: aload_0
    //   622: invokevirtual 283	com/estrongs/android/pop/app/OpenRecomm:finish	()V
    //   625: return
    //   626: astore_1
    //   627: aload_1
    //   628: invokevirtual 391	java/lang/Exception:printStackTrace	()V
    //   631: aload_0
    //   632: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   635: ifnull +11 -> 646
    //   638: aload_0
    //   639: aload_0
    //   640: getfield 50	com/estrongs/android/pop/app/OpenRecomm:l	Landroid/content/Intent;
    //   643: invokevirtual 358	com/estrongs/android/pop/app/OpenRecomm:startActivity	(Landroid/content/Intent;)V
    //   646: aload_0
    //   647: invokevirtual 283	com/estrongs/android/pop/app/OpenRecomm:finish	()V
    //   650: goto -68 -> 582
    //   653: astore_1
    //   654: aload_1
    //   655: invokevirtual 391	java/lang/Exception:printStackTrace	()V
    //   658: goto -37 -> 621
    //   661: astore_1
    //   662: aload_0
    //   663: invokevirtual 283	com/estrongs/android/pop/app/OpenRecomm:finish	()V
    //   666: goto -84 -> 582
    //   669: astore_1
    //   670: aload_0
    //   671: invokevirtual 283	com/estrongs/android/pop/app/OpenRecomm:finish	()V
    //   674: aload_1
    //   675: athrow
    //   676: aload_0
    //   677: invokestatic 381	com/estrongs/android/j/c:a	(Landroid/content/Context;)Lcom/estrongs/android/j/c;
    //   680: ldc_w 383
    //   683: aload_0
    //   684: getfield 46	com/estrongs/android/pop/app/OpenRecomm:j	Ljava/lang/String;
    //   687: invokevirtual 388	com/estrongs/android/j/c:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   690: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	691	0	this	OpenRecomm
    //   0	691	1	paramBundle	android.os.Bundle
    //   73	212	2	i1	int
    //   57	224	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   582	602	603	java/lang/Exception
    //   676	690	603	java/lang/Exception
    //   115	238	626	java/lang/Exception
    //   242	246	626	java/lang/Exception
    //   322	368	626	java/lang/Exception
    //   368	393	626	java/lang/Exception
    //   397	433	626	java/lang/Exception
    //   433	504	626	java/lang/Exception
    //   504	526	626	java/lang/Exception
    //   526	538	626	java/lang/Exception
    //   538	582	626	java/lang/Exception
    //   621	625	626	java/lang/Exception
    //   654	658	626	java/lang/Exception
    //   609	621	653	java/lang/Exception
    //   631	646	661	java/lang/Exception
    //   631	646	669	finally
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