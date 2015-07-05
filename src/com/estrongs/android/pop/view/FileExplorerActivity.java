package com.estrongs.android.pop.view;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.gesture.Gesture;
import android.graphics.Bitmap;
import android.graphics.LightingColorFilter;
import android.graphics.Rect;
import android.net.LocalSocket;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings.System;
import android.text.Editable;
import android.text.Html;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager.BadTokenException;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebIconDatabase;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.a.an;
import com.estrongs.android.pop.esclasses.ESAbsToolbarActivity;
import com.estrongs.android.pop.spfs.SPFileObject;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.addressbar.AdvancedAddressBar;
import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.android.ui.dialog.ProgressDialog.ProgressStyle;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog.DialogType;
import com.estrongs.android.ui.drag.DragActionZone;
import com.estrongs.android.ui.drag.DragLayer;
import com.estrongs.android.ui.e.in;
import com.estrongs.android.ui.e.jb;
import com.estrongs.android.ui.guesture.ESGestureCtrl;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.ui.notification.ChromeCastPlayerNotificationHelper;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.am;
import com.estrongs.android.util.be;
import com.estrongs.android.view.WebViewWrapper;
import com.estrongs.android.view.dj;
import com.estrongs.android.widget.ThumbContentViewSwitcher;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

public class FileExplorerActivity
  extends ESAbsToolbarActivity
  implements jb
{
  public static boolean G;
  public static GregorianCalendar H;
  private static final String W = FileExplorerActivity.class.getSimpleName();
  private static FileExplorerActivity bf = null;
  private static Object bg = new Object();
  private static LocalSocket bl = null;
  public static String e = "";
  public static boolean w = false;
  protected ProgressBar A;
  protected ProgressBar B;
  public com.estrongs.android.ui.navigation.s C = null;
  public View D = null;
  public ESGesturePanel E = null;
  public int F = 0;
  protected com.estrongs.android.view.ca I = new c(this);
  com.estrongs.android.view.cb J = new bp(this);
  public com.estrongs.fs.i K = new co(this);
  protected AdapterView.OnItemLongClickListener L = new cz(this);
  protected com.estrongs.android.view.cc M = new ds(this);
  com.estrongs.android.ui.f.f N = null;
  boolean O = false;
  public com.estrongs.android.widget.g P;
  com.estrongs.android.widget.au Q = new ec(this);
  public com.estrongs.android.widget.ai R;
  DialogInterface.OnClickListener S = new ee(this);
  ff T;
  SparseArray<Object> U = new SparseArray();
  Handler V = new et(this);
  private boolean X = false;
  private int Y = 0;
  private al Z;
  private TranslateAnimation aA;
  private DragActionZone aB;
  private com.estrongs.android.ui.drag.c aC;
  private TranslateAnimation aD;
  private TranslateAnimation aE;
  private DragLayer aF;
  private com.estrongs.android.ui.drag.p aG;
  private com.estrongs.android.ui.navigation.n aH = null;
  private View aI;
  private TextView aJ;
  private com.estrongs.android.util.a aK = null;
  private com.estrongs.android.ui.pcs.r aL;
  private String aM;
  private com.estrongs.android.ui.view.bn aN = null;
  private HashMap<String, Runnable> aO;
  private ESGestureCtrl aP;
  private boolean aQ = false;
  private TextWatcher aR;
  private TextView.OnEditorActionListener aS;
  private View.OnKeyListener aT;
  private int aU = 2000;
  private Runnable aV = null;
  private boolean aW = false;
  private ProgressDialog aX;
  private boolean aY;
  private boolean aZ = true;
  private FrameLayout aa;
  private View ab;
  private Rect ac;
  private LinearLayout ad;
  private RelativeLayout ae = null;
  private ImageView af;
  private com.estrongs.android.view.aw ag;
  private String ah = null;
  private List<com.estrongs.android.util.o<com.estrongs.android.view.aw, String>> ai = new LinkedList();
  private ImageView aj;
  private AdvancedAddressBar ak;
  private EditText al;
  private DragLayer am;
  private DragLayer an;
  private com.estrongs.android.ui.drag.d ao;
  private DragActionZone ap;
  private com.estrongs.android.ui.drag.c aq;
  private TranslateAnimation ar;
  private TranslateAnimation as;
  private DragActionZone at;
  private com.estrongs.android.ui.drag.c au;
  private TranslateAnimation av;
  private TranslateAnimation aw;
  private DragActionZone ax;
  private com.estrongs.android.ui.drag.c ay;
  private TranslateAnimation az;
  private ServiceConnection ba;
  private com.estrongs.android.ui.c.b.t bb = null;
  private boolean bc = false;
  private com.estrongs.android.view.av<com.estrongs.fs.h> bd = new bf(this);
  private boolean be = false;
  private BroadcastReceiver bh;
  private BroadcastReceiver bi = null;
  private BroadcastReceiver bj;
  private com.estrongs.android.pop.utils.c bk;
  private fh bm = new fh(this);
  public ThumbContentViewSwitcher f;
  public RelativeLayout g;
  public Handler h;
  public com.estrongs.android.ui.view.by i = null;
  public String j;
  public com.estrongs.android.ui.e.w k = null;
  public com.estrongs.android.c.a l = null;
  public com.estrongs.android.pop.ad m;
  protected com.estrongs.android.ui.d.b n;
  public com.estrongs.android.view.ac o;
  public boolean p = false;
  public boolean q;
  public boolean r = false;
  public com.estrongs.fs.h t;
  public boolean u = true;
  public boolean v = false;
  public List<com.estrongs.android.view.aw> x = new ArrayList();
  public final List<com.estrongs.fs.h> y = new ArrayList();
  protected Button z;
  
  static
  {
    G = false;
    H = null;
    H = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
    H.set(1980, 8, 30, 0, 0, 0);
  }
  
  public static FileExplorerActivity I()
  {
    return bf;
  }
  
  public static FileExplorerActivity J()
  {
    return bf;
  }
  
  public static LocalSocket T()
  {
    for (;;)
    {
      Object localObject2;
      synchronized (bg)
      {
        if (bl == null)
        {
          bl = com.estrongs.android.nativetool.c.a();
          localObject2 = bl;
          return (LocalSocket)localObject2;
        }
      }
      try
      {
        localObject2 = bl.getOutputStream();
        InputStream localInputStream = bl.getInputStream();
        com.estrongs.fs.impl.local.l.a((OutputStream)localObject2, 80);
        com.estrongs.fs.impl.local.l.c(localInputStream);
        if (bl != null) {
          continue;
        }
        bl = com.estrongs.android.nativetool.c.a();
        continue;
        localObject3 = finally;
        throw ((Throwable)localObject3);
      }
      catch (Exception localException)
      {
        for (;;)
        {
          bl = null;
        }
      }
    }
  }
  
  private com.estrongs.android.view.aw a(Activity paramActivity, com.estrongs.fs.util.a.a parama, com.estrongs.android.view.cb paramcb, String paramString)
  {
    if ((am.aO(paramString)) || (am.aG(paramString)) || (am.T(paramString))) {
      paramActivity = a(parama, paramString);
    }
    for (;;)
    {
      paramActivity.g(com.estrongs.android.pop.ad.a(this).i());
      u = paramString;
      b(paramActivity, paramString);
      return paramActivity;
      if ("#home_page#".equals(paramString))
      {
        paramActivity = new di(this, this, parama, paramcb);
        paramActivity.j(Z.i());
        paramActivity.a(I);
        a(paramActivity);
      }
      else if ("download://".equals(paramString))
      {
        paramActivity = new com.estrongs.android.ui.b.u(this, parama, paramcb);
        paramActivity.a(L);
        paramActivity.a(bd);
        a(paramActivity);
      }
      else if (am.aQ(paramString))
      {
        parama = new com.estrongs.android.view.e(this, parama, paramcb);
        parama.a(L);
        parama.a(bd);
        parama.a(com.estrongs.android.pop.view.utils.ac.b(paramActivity, paramString));
        parama.j(Z.i());
        parama.a(I);
        a(parama);
        paramActivity = parama;
      }
      else if (am.s(paramString))
      {
        paramActivity = new com.estrongs.android.pop.app.diskusage.h(this, parama, paramcb);
        paramActivity.a(L);
        paramActivity.a(bd);
        paramActivity.a(I);
        a(paramActivity);
      }
      else if ("remote://".equals(paramString))
      {
        paramActivity = new dj(this, parama, paramcb);
        a(paramActivity);
      }
      else if ((paramString.startsWith("http")) || (paramString.startsWith("https")))
      {
        paramActivity = new WebViewWrapper(this, paramcb);
        paramActivity.a(I);
        a(paramActivity);
      }
      else if ((am.ba(paramString)) || (am.az(paramString)))
      {
        parama = new dk(this, paramActivity, parama, paramcb);
        parama.a(I);
        parama.a(L);
        parama.a(M);
        parama.a(bd);
        parama.a(com.estrongs.android.pop.view.utils.ac.b(paramActivity, paramString));
        parama.b(K);
        parama.a(ao);
        parama.j(Z.i());
        a(parama);
        paramActivity = parama;
      }
      else if ((am.Y(paramString)) || (am.W(paramString)))
      {
        parama = new com.estrongs.android.view.a(this, parama, paramcb);
        parama.a(I);
        parama.a(L);
        parama.a(M);
        parama.a(bd);
        parama.a(com.estrongs.android.pop.view.utils.ac.b(paramActivity, paramString));
        parama.b(K);
        parama.a(ao);
        parama.j(Z.i());
        a(parama);
        paramActivity = parama;
      }
      else if (am.bR(paramString))
      {
        parama = new com.estrongs.android.view.cq(paramActivity, parama, paramcb);
        parama.a(com.estrongs.android.pop.view.utils.ac.b(paramActivity, paramString));
        parama.a(L);
        parama.a(bd);
        a(parama);
        paramActivity = parama;
      }
      else
      {
        parama = new dp(this, paramActivity, parama, paramcb);
        parama.a(I);
        parama.a(L);
        parama.a(M);
        parama.a(bd);
        parama.a(com.estrongs.android.pop.view.utils.ac.b(paramActivity, paramString));
        parama.b(K);
        parama.a(ao);
        parama.j(Z.i());
        a(parama);
        paramActivity = parama;
      }
    }
  }
  
  /* Error */
  private com.estrongs.android.view.aw a(com.estrongs.android.ui.d.d arg1)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 601	com/estrongs/android/ui/d/d:b	()Ljava/lang/String;
    //   4: astore 4
    //   6: aload_1
    //   7: ifnull +16 -> 23
    //   10: aload_1
    //   11: invokevirtual 603	com/estrongs/android/ui/d/d:a	()I
    //   14: iconst_m1
    //   15: if_icmpeq +8 -> 23
    //   18: aload 4
    //   20: ifnonnull +5 -> 25
    //   23: aconst_null
    //   24: areturn
    //   25: aload 4
    //   27: astore_3
    //   28: aload 4
    //   30: invokestatic 605	com/estrongs/android/util/am:aV	(Ljava/lang/String;)Z
    //   33: ifeq +9 -> 42
    //   36: aload 4
    //   38: invokestatic 608	com/estrongs/android/util/am:bc	(Ljava/lang/String;)Ljava/lang/String;
    //   41: astore_3
    //   42: aload_3
    //   43: invokestatic 574	com/estrongs/android/util/am:Y	(Ljava/lang/String;)Z
    //   46: ifeq +88 -> 134
    //   49: aload_0
    //   50: getfield 610	com/estrongs/android/pop/view/FileExplorerActivity:m	Lcom/estrongs/android/pop/ad;
    //   53: aload_3
    //   54: invokevirtual 613	com/estrongs/android/pop/ad:A	(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;
    //   57: astore 4
    //   59: aload_0
    //   60: aload_0
    //   61: aload 4
    //   63: aload_0
    //   64: getfield 318	com/estrongs/android/pop/view/FileExplorerActivity:J	Lcom/estrongs/android/view/cb;
    //   67: aload_3
    //   68: invokespecial 615	com/estrongs/android/pop/view/FileExplorerActivity:a	(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;Ljava/lang/String;)Lcom/estrongs/android/view/aw;
    //   71: astore 4
    //   73: aload_0
    //   74: getfield 617	com/estrongs/android/pop/view/FileExplorerActivity:f	Lcom/estrongs/android/widget/ThumbContentViewSwitcher;
    //   77: aload 4
    //   79: invokevirtual 620	com/estrongs/android/view/aw:aq	()Landroid/view/View;
    //   82: invokevirtual 626	com/estrongs/android/widget/ThumbContentViewSwitcher:addView	(Landroid/view/View;)V
    //   85: aload_1
    //   86: invokestatic 631	com/estrongs/android/ui/d/e:b	(Lcom/estrongs/android/ui/d/d;)I
    //   89: istore_2
    //   90: aload_0
    //   91: getfield 271	com/estrongs/android/pop/view/FileExplorerActivity:x	Ljava/util/List;
    //   94: astore_1
    //   95: aload_1
    //   96: monitorenter
    //   97: aload_0
    //   98: getfield 271	com/estrongs/android/pop/view/FileExplorerActivity:x	Ljava/util/List;
    //   101: iload_2
    //   102: aload 4
    //   104: invokeinterface 637 3 0
    //   109: aload_1
    //   110: monitorexit
    //   111: aload_0
    //   112: getfield 256	com/estrongs/android/pop/view/FileExplorerActivity:ai	Ljava/util/List;
    //   115: new 639	com/estrongs/android/util/o
    //   118: dup
    //   119: aload 4
    //   121: aload_3
    //   122: invokespecial 642	com/estrongs/android/util/o:<init>	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   125: invokeinterface 644 2 0
    //   130: pop
    //   131: aload 4
    //   133: areturn
    //   134: aload_0
    //   135: getfield 610	com/estrongs/android/pop/view/FileExplorerActivity:m	Lcom/estrongs/android/pop/ad;
    //   138: aload_3
    //   139: invokevirtual 646	com/estrongs/android/pop/ad:z	(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;
    //   142: astore 4
    //   144: goto -85 -> 59
    //   147: astore_1
    //   148: aload_1
    //   149: invokevirtual 649	java/lang/Exception:printStackTrace	()V
    //   152: aconst_null
    //   153: areturn
    //   154: astore_3
    //   155: aload_1
    //   156: monitorexit
    //   157: aconst_null
    //   158: areturn
    //   159: astore_3
    //   160: aload_1
    //   161: monitorexit
    //   162: aload_3
    //   163: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	164	0	this	FileExplorerActivity
    //   89	13	2	i1	int
    //   27	112	3	localObject1	Object
    //   154	1	3	localException	Exception
    //   159	4	3	localObject2	Object
    //   4	139	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   59	85	147	java/lang/Exception
    //   97	109	154	java/lang/Exception
    //   97	109	159	finally
    //   109	111	159	finally
    //   155	157	159	finally
    //   160	162	159	finally
  }
  
  private com.estrongs.android.view.aw a(com.estrongs.android.ui.d.d paramd, String paramString, TypedMap paramTypedMap)
  {
    return a(paramd, paramString, paramTypedMap, false);
  }
  
  /* Error */
  private com.estrongs.android.view.aw a(com.estrongs.android.ui.d.d paramd, String paramString, TypedMap paramTypedMap, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 574	com/estrongs/android/util/am:Y	(Ljava/lang/String;)Z
    //   4: ifeq +148 -> 152
    //   7: aload_0
    //   8: getfield 610	com/estrongs/android/pop/view/FileExplorerActivity:m	Lcom/estrongs/android/pop/ad;
    //   11: aload_2
    //   12: invokevirtual 613	com/estrongs/android/pop/ad:A	(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;
    //   15: astore 6
    //   17: aload_0
    //   18: aload_0
    //   19: aload 6
    //   21: aload_0
    //   22: getfield 318	com/estrongs/android/pop/view/FileExplorerActivity:J	Lcom/estrongs/android/view/cb;
    //   25: aload_2
    //   26: invokespecial 615	com/estrongs/android/pop/view/FileExplorerActivity:a	(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;Ljava/lang/String;)Lcom/estrongs/android/view/aw;
    //   29: astore 6
    //   31: iload 4
    //   33: ifeq +12 -> 45
    //   36: aload_2
    //   37: aload 6
    //   39: invokevirtual 656	java/lang/Object:hashCode	()I
    //   42: invokestatic 661	com/estrongs/android/pop/utils/aa:a	(Ljava/lang/String;I)V
    //   45: aload 6
    //   47: aload_2
    //   48: aload_3
    //   49: invokevirtual 664	com/estrongs/android/view/aw:a	(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    //   52: aload_1
    //   53: ifnull +8 -> 61
    //   56: aload_1
    //   57: aload_2
    //   58: invokevirtual 667	com/estrongs/android/ui/d/d:a	(Ljava/lang/String;)V
    //   61: aload_1
    //   62: invokestatic 631	com/estrongs/android/ui/d/e:b	(Lcom/estrongs/android/ui/d/d;)I
    //   65: istore 5
    //   67: aload_0
    //   68: getfield 271	com/estrongs/android/pop/view/FileExplorerActivity:x	Ljava/util/List;
    //   71: astore_1
    //   72: aload_1
    //   73: monitorenter
    //   74: iload 5
    //   76: iflt +96 -> 172
    //   79: aload_0
    //   80: getfield 271	com/estrongs/android/pop/view/FileExplorerActivity:x	Ljava/util/List;
    //   83: invokeinterface 670 1 0
    //   88: iload 5
    //   90: if_icmple +82 -> 172
    //   93: aload_0
    //   94: getfield 271	com/estrongs/android/pop/view/FileExplorerActivity:x	Ljava/util/List;
    //   97: iload 5
    //   99: invokeinterface 674 2 0
    //   104: pop
    //   105: aload_0
    //   106: getfield 271	com/estrongs/android/pop/view/FileExplorerActivity:x	Ljava/util/List;
    //   109: iload 5
    //   111: aload 6
    //   113: invokeinterface 637 3 0
    //   118: aload_1
    //   119: monitorexit
    //   120: aload_0
    //   121: getfield 676	com/estrongs/android/pop/view/FileExplorerActivity:n	Lcom/estrongs/android/ui/d/b;
    //   124: iload 5
    //   126: invokevirtual 680	com/estrongs/android/ui/d/b:f	(I)V
    //   129: aload_0
    //   130: getfield 617	com/estrongs/android/pop/view/FileExplorerActivity:f	Lcom/estrongs/android/widget/ThumbContentViewSwitcher;
    //   133: aload 6
    //   135: invokevirtual 620	com/estrongs/android/view/aw:aq	()Landroid/view/View;
    //   138: iload 5
    //   140: invokevirtual 683	com/estrongs/android/widget/ThumbContentViewSwitcher:addView	(Landroid/view/View;I)V
    //   143: aload_0
    //   144: iload 5
    //   146: invokevirtual 684	com/estrongs/android/pop/view/FileExplorerActivity:f	(I)V
    //   149: aload 6
    //   151: areturn
    //   152: aload_0
    //   153: getfield 610	com/estrongs/android/pop/view/FileExplorerActivity:m	Lcom/estrongs/android/pop/ad;
    //   156: aload_2
    //   157: invokevirtual 646	com/estrongs/android/pop/ad:z	(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;
    //   160: astore 6
    //   162: goto -145 -> 17
    //   165: astore_1
    //   166: aload_1
    //   167: invokevirtual 649	java/lang/Exception:printStackTrace	()V
    //   170: aconst_null
    //   171: areturn
    //   172: iconst_0
    //   173: istore 5
    //   175: goto -70 -> 105
    //   178: astore_2
    //   179: aload_1
    //   180: monitorexit
    //   181: aload_2
    //   182: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	183	0	this	FileExplorerActivity
    //   0	183	1	paramd	com.estrongs.android.ui.d.d
    //   0	183	2	paramString	String
    //   0	183	3	paramTypedMap	TypedMap
    //   0	183	4	paramBoolean	boolean
    //   65	109	5	i1	int
    //   15	146	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   17	31	165	java/lang/Exception
    //   79	105	178	finally
    //   105	120	178	finally
    //   179	181	178	finally
  }
  
  private com.estrongs.android.view.cd a(com.estrongs.fs.util.a.a parama, String paramString)
  {
    parama = new dt(this, this, parama, J);
    parama.a(I);
    parama.a(new du(this));
    parama.a(new dv(this));
    parama.a(11);
    parama.a(bd);
    a(parama);
    return parama;
  }
  
  private void a(com.estrongs.android.util.o<com.estrongs.android.view.aw, String> paramo, boolean paramBoolean)
  {
    com.estrongs.android.view.aw localaw = (com.estrongs.android.view.aw)a;
    paramo = (String)b;
    if ((localaw != null) && (paramo != null))
    {
      localaw.a(null);
      localaw.g(paramo);
      localaw.a(I);
    }
  }
  
  private void a(com.estrongs.android.view.aw paramaw, com.estrongs.android.ui.d.d paramd, String paramString, String[] paramArrayOfString)
  {
    Object localObject4 = null;
    if (am.t(paramString))
    {
      if (paramString.startsWith("http://win-title/"))
      {
        paramArrayOfString[0] = paramString.substring("http://win-title/".length());
        paramArrayOfString[1] = null;
        return;
      }
      if ((paramaw != null) && ((paramaw instanceof WebViewWrapper)))
      {
        paramaw = ((WebViewWrapper)paramaw).at();
        if (com.estrongs.android.util.bd.b(paramaw))
        {
          paramArrayOfString[0] = paramaw;
          paramArrayOfString[1] = null;
          return;
        }
      }
      paramArrayOfString[0] = getString(2131427442);
      paramArrayOfString[1] = null;
      return;
    }
    if ((paramString != null) && (paramd != null)) {
      paramd.a(paramString);
    }
    Object localObject2 = (String)getText(2131428653);
    Object localObject3;
    Object localObject1;
    if ((u) && (paramd != null))
    {
      localObject3 = paramd.a(this);
      if (!am.aO(paramString))
      {
        localObject1 = localObject3;
        if (!am.aG(paramString)) {}
      }
      else
      {
        localObject1 = localObject3;
        if (!am.aN(paramString))
        {
          localObject1 = localObject3;
          if (!am.aF(paramString))
          {
            localObject1 = localObject3;
            if (paramaw != null)
            {
              if (paramaw.b() == null) {
                break label490;
              }
              localObject1 = paramaw.b().getName();
            }
          }
        }
      }
      if ((am.bd(paramString)) || (am.aS(paramString))) {
        break label1162;
      }
      if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/files"))
      {
        paramaw = am.bk(paramString.replace("PCS_DRIVE_Js1a7M5e_9yAcTvFX/files", "PCS_DRIVE_Js1a7M5e_9yAcTvFX"));
        label241:
        if (!am.be(paramaw)) {
          break label507;
        }
        localObject3 = "/";
        paramd = (com.estrongs.android.ui.d.d)localObject1;
        localObject1 = localObject3;
      }
    }
    for (;;)
    {
      label260:
      localObject3 = am.aC(am.bM(paramString));
      int i1;
      if ((localObject3 == null) && (paramaw != null))
      {
        paramaw = am.aC(am.bM(paramaw));
        i1 = 1;
      }
      for (;;)
      {
        if (paramaw != null) {
          if (paramaw.equals("/files")) {
            paramaw = (String)getText(2131427428);
          }
        }
        for (;;)
        {
          label314:
          if ((paramd != null) && ((paramd.equals(localObject2)) || ("PCS_DRIVE_Js1a7M5e_9yAcTvFX".equals(paramd)))) {
            localObject3 = localObject1;
          }
          for (;;)
          {
            label341:
            paramaw = (com.estrongs.android.view.aw)localObject2;
            if (am.bn(paramString))
            {
              paramaw = (com.estrongs.android.view.aw)localObject2;
              if (aY) {
                paramaw = (String)localObject2 + "  " + com.estrongs.fs.impl.local.l.i();
              }
            }
            if (paramString.contains("m.baidu.com/app")) {
              paramaw = getString(2131427606);
            }
            for (paramd = (com.estrongs.android.ui.d.d)localObject4;; paramd = (com.estrongs.android.ui.d.d)localObject3)
            {
              localObject1 = paramd;
              localObject2 = paramaw;
              if ("pcs".equals(am.an(paramString)))
              {
                localObject1 = am.a(paramString, 4);
                if ((!"/files".equals(localObject1)) && (!"/files/".equals(localObject1))) {
                  break label1039;
                }
                localObject2 = com.estrongs.android.pop.ad.a(this).h(paramString);
                localObject1 = getString(2131427412);
              }
              for (;;)
              {
                paramArrayOfString[0] = localObject2;
                paramArrayOfString[1] = localObject1;
                return;
                label490:
                localObject1 = am.d(paramString);
                break;
                paramaw = am.bk(paramString);
                break label241;
                label507:
                if ("#home_page#".equals(paramaw))
                {
                  paramd = (com.estrongs.android.ui.d.d)localObject1;
                  localObject1 = null;
                  break label260;
                }
                if ((am.bb(paramaw)) || (am.bQ(paramaw)))
                {
                  localObject3 = paramd.a(this, paramaw);
                  paramd = (com.estrongs.android.ui.d.d)localObject1;
                  localObject1 = localObject3;
                  break label260;
                }
                if (am.aN(paramaw))
                {
                  localObject3 = paramd.a(this, paramaw);
                  paramd = (com.estrongs.android.ui.d.d)localObject1;
                  localObject1 = localObject3;
                  break label260;
                }
                if (am.bW(paramString))
                {
                  localObject3 = am.d(paramaw);
                  if (am.d(paramString).equals("es_recycle_content"))
                  {
                    paramd = getString(2131428402);
                    localObject1 = null;
                    break label260;
                  }
                  paramd = (com.estrongs.android.ui.d.d)localObject3;
                  if (!((String)localObject3).equals("es_recycle_content")) {
                    break label1149;
                  }
                  localObject3 = getString(2131428402);
                  paramd = (com.estrongs.android.ui.d.d)localObject1;
                  localObject1 = localObject3;
                  break label260;
                }
                localObject3 = am.d(paramaw);
                paramd = (com.estrongs.android.ui.d.d)localObject3;
                if (!am.aQ(paramaw)) {
                  break label1149;
                }
                i1 = ((String)localObject3).indexOf('*');
                paramd = (com.estrongs.android.ui.d.d)localObject3;
                if (i1 <= 0) {
                  break label1149;
                }
                localObject3 = ((String)localObject3).substring(i1 + 1);
                paramd = (com.estrongs.android.ui.d.d)localObject1;
                localObject1 = localObject3;
                break label260;
                if (paramaw.equals("/pictures"))
                {
                  paramaw = (String)getText(2131427421);
                  break label314;
                }
                if (paramaw.equals("/music"))
                {
                  paramaw = (String)getText(2131427422);
                  break label314;
                }
                if (paramaw.equals("/videos"))
                {
                  paramaw = (String)getText(2131427425);
                  break label314;
                }
                if (paramaw.equals("/apps"))
                {
                  paramaw = (String)getText(2131427423);
                  break label314;
                }
                if (paramaw.equals("/documents"))
                {
                  paramaw = (String)getText(2131427424);
                  break label314;
                }
                if (!paramaw.equals("/others")) {
                  break label1135;
                }
                paramaw = (String)getText(2131427573);
                break label314;
                if ((localObject1 != null) && ((((String)localObject1).equals(localObject2)) || ("PCS_DRIVE_Js1a7M5e_9yAcTvFX".equals(localObject1))))
                {
                  if ((paramaw == null) || (am.aC(am.bM(paramString)) == null)) {
                    break label1125;
                  }
                  localObject3 = localObject2;
                  localObject2 = paramaw;
                  break label341;
                }
                if (am.bR(paramString))
                {
                  localObject2 = getString(2131428505);
                  localObject3 = null;
                  break label341;
                }
                if (am.v(paramString))
                {
                  localObject2 = getString(2131428716);
                  localObject3 = null;
                  break label341;
                }
                localObject2 = paramd;
                localObject3 = localObject1;
                if (paramaw == null) {
                  break label341;
                }
                if (i1 != 0)
                {
                  localObject2 = paramd;
                  localObject3 = paramaw;
                  break label341;
                }
                localObject2 = paramaw;
                localObject3 = localObject1;
                break label341;
                if ((am.bb(paramString)) && (!am.bg(paramString)))
                {
                  localObject2 = am.bL(paramString);
                  localObject3 = null;
                  break label341;
                }
                if (paramString.startsWith("search:"))
                {
                  localObject2 = "Search Result";
                  localObject3 = null;
                  break label341;
                }
                localObject2 = paramString;
                localObject3 = null;
                break label341;
                label1039:
                localObject3 = am.bk((String)localObject1);
                if (!"/files".equals(localObject3))
                {
                  localObject1 = paramd;
                  localObject2 = paramaw;
                  if (!"/files/".equals(localObject3)) {}
                }
                else
                {
                  paramString = am.bk(paramString);
                  paramd = paramString;
                  if (paramString.endsWith("/")) {
                    paramd = paramString.substring(0, paramString.length() - 1);
                  }
                  localObject1 = com.estrongs.android.pop.ad.a(this).h(paramd);
                  localObject2 = paramaw;
                }
              }
            }
            label1125:
            localObject3 = localObject2;
            localObject2 = paramd;
          }
          label1135:
          paramaw = null;
        }
        i1 = 0;
        paramaw = (com.estrongs.android.view.aw)localObject3;
      }
      label1149:
      localObject3 = paramd;
      paramd = (com.estrongs.android.ui.d.d)localObject1;
      localObject1 = localObject3;
      continue;
      label1162:
      paramaw = null;
      paramd = (com.estrongs.android.ui.d.d)localObject1;
      localObject1 = null;
    }
  }
  
  private void a(Thread paramThread)
  {
    aj();
    com.estrongs.android.pop.utils.aa.d();
    Object localObject1;
    if (com.estrongs.android.pop.utils.cc.a())
    {
      aL = com.estrongs.android.ui.pcs.r.a();
      localObject1 = m.ae();
      if (localObject1 != null)
      {
        if (!"pcs_temp_mode".equals(m.ad())) {
          break label500;
        }
        aL.a(2);
      }
    }
    int i2;
    label276:
    boolean bool;
    label335:
    label372:
    Object localObject2;
    for (;;)
    {
      aL.a((String)localObject1);
      E();
      i1 = -1;
      if (com.estrongs.android.ui.d.e.c() != 0) {
        break;
      }
      ak();
      i2 = i1;
      if (i1 < 0)
      {
        if (com.estrongs.android.ui.d.e.a() <= 0) {
          break label974;
        }
        i2 = com.estrongs.android.ui.d.e.a();
      }
      if ((i2 >= 0) && (i2 < com.estrongs.android.ui.d.e.c()))
      {
        f.a(i2);
        n.d(i2);
        localObject1 = com.estrongs.android.ui.d.e.c(i2);
        if (localObject1 != null) {
          I.a(((com.estrongs.android.ui.d.d)localObject1).b(), true);
        }
      }
      if (am.aZ(z())) {
        com.estrongs.android.pop.app.b.a.a().c();
      }
      localObject1 = y();
      if ((localObject1 != null) && ((localObject1 instanceof com.estrongs.android.pop.app.diskusage.h))) {
        ((com.estrongs.android.view.aw)localObject1).l();
      }
      aB();
      aF();
      if (!com.estrongs.android.pop.ad.a(this).X())
      {
        com.estrongs.android.pop.ad.a(this).Y();
        com.estrongs.android.pop.ad.a(this).j(true);
      }
      ag();
      af();
      localObject1 = getIntent().getStringExtra("archive_file_name");
      if (localObject1 == null) {
        break label704;
      }
      if (!com.estrongs.android.util.bc.o((String)localObject1)) {
        break label675;
      }
      com.estrongs.io.archive.sevenzip.f.a(new ac(this, (String)localObject1), com.estrongs.io.archive.sevenzip.f.a);
      if ((!com.estrongs.android.pop.z.ai) && (!com.estrongs.android.pop.utils.cl.d(this)))
      {
        if ((!u) && (!v)) {
          break label863;
        }
        if (m.an())
        {
          localObject1 = y();
          if ((localObject1 == null) || (!(localObject1 instanceof com.estrongs.android.ui.c.a))) {
            break label968;
          }
          bool = false;
          aN = new com.estrongs.android.ui.view.bn(this, u, v, bool);
          aN.c();
          m.n(false);
        }
      }
      if (!com.estrongs.android.pop.z.w) {
        break label957;
      }
      if (!com.estrongs.android.pop.ad.a(this).ap()) {
        break label945;
      }
      localObject1 = com.estrongs.android.pop.esclasses.g.a(this).inflate(2130903265, null);
      localObject2 = (CheckBox)((View)localObject1).findViewById(2131362785);
      com.estrongs.android.ui.dialog.cg localcg = new com.estrongs.android.ui.dialog.cg(this);
      localcg.setCancelable(false);
      localcg.setTitle(getString(2131427404));
      localcg.setContentView((View)localObject1);
      localcg.setConfirmButton(getString(2131427390), new as(this, (CheckBox)localObject2, paramThread));
      localcg.setCancelButton(getString(2131427363), new ax(this));
      localcg.show();
      return;
      label500:
      aL.a(1);
    }
    if (ah != null)
    {
      i2 = -1;
      i1 = 0;
      while (i1 < com.estrongs.android.ui.d.e.c())
      {
        localObject1 = com.estrongs.android.ui.d.e.c(i1);
        int i3 = i2;
        if (localObject1 != null)
        {
          i3 = i2;
          if (i2 < 0)
          {
            i3 = i2;
            if (am.G(ah) == am.G(((com.estrongs.android.ui.d.d)localObject1).b()))
            {
              ((com.estrongs.android.ui.d.d)localObject1).a(ah);
              i3 = i1;
            }
          }
        }
        i1 += 1;
        i2 = i3;
      }
      i1 = i2;
      if (i2 < 0)
      {
        i1 = i2;
        if (com.estrongs.android.ui.d.e.c() < 12)
        {
          i2 = com.estrongs.android.ui.d.e.a(ah);
          localObject1 = com.estrongs.android.ui.d.e.c(i2);
          i1 = i2;
          if (localObject1 != null) {
            n.a((com.estrongs.android.ui.d.d)localObject1);
          }
        }
      }
    }
    for (int i1 = i2;; i1 = -1)
    {
      i2 = 0;
      for (;;)
      {
        if (i2 < com.estrongs.android.ui.d.e.c())
        {
          localObject1 = com.estrongs.android.ui.d.e.c(i2);
          if (localObject1 != null) {
            a((com.estrongs.android.ui.d.d)localObject1);
          }
          i2 += 1;
          continue;
          label675:
          d("cmpn://" + (String)localObject1);
          break label276;
          label704:
          if ("com.estrongs.android.SHOW_DISK_USAGE".equals(getIntent().getAction()))
          {
            localObject2 = com.estrongs.android.pop.b.b();
            localObject1 = localObject2;
            if (!((String)localObject2).endsWith("/")) {
              localObject1 = (String)localObject2 + "/";
            }
            d("du://" + (String)localObject1);
            break label276;
          }
          if ("show_app".equals(getIntent().getStringExtra("action")))
          {
            d("app://user");
            break label276;
          }
          if (!"from_update_notification".equals(getIntent().getStringExtra("action"))) {
            break label276;
          }
          com.estrongs.android.pop.utils.c.c(Q().b(this));
          d("app://update");
          break label276;
          label863:
          if ((!m.ao()) || (!m.an())) {
            break label372;
          }
          localObject1 = y();
          if ((localObject1 != null) && ((localObject1 instanceof com.estrongs.android.ui.c.a))) {}
          for (bool = false;; bool = true)
          {
            aN = new com.estrongs.android.ui.view.bn(this, u, v, bool);
            aN.c();
            m.o(false);
            break;
            label945:
            FexApplication.a().a(true);
            paramThread.start();
            return;
            label957:
            paramThread.start();
            return;
          }
          label968:
          bool = true;
          break label335;
          label974:
          i2 = 0;
          break;
        }
      }
      break;
    }
  }
  
  public static boolean a(com.estrongs.android.view.aw paramaw, String paramString)
  {
    boolean bool2 = false;
    boolean bool3 = true;
    boolean bool1;
    if ((paramaw == null) || (paramaw.c() == null)) {
      bool1 = false;
    }
    int i1;
    do
    {
      do
      {
        do
        {
          return bool1;
          if (!paramaw.c().startsWith("/")) {
            break;
          }
          bool1 = bool3;
        } while (am.az(paramString));
        bool1 = bool3;
      } while (paramaw.c().equals(paramString));
      if ("#home_page#".equals(paramString)) {
        return paramaw instanceof com.estrongs.android.ui.c.a;
      }
      i1 = am.G(paramString);
      int i2 = am.G(paramaw.c());
      if ((i1 != i2) && ((!am.a(i2)) || (!am.a(i1))) && ((!am.b(i2)) || (!am.b(i1))) && ((!am.c(i2)) || (!am.c(i1)))) {
        break;
      }
      if (i1 == 28) {
        return paramString.equals(am.bK(paramaw.c()));
      }
      bool1 = bool3;
    } while (i1 != 23);
    if ((!am.aB(paramString)) || (!am.aB(paramaw.c())))
    {
      bool1 = bool2;
      if (am.az(paramString))
      {
        bool1 = bool2;
        if (!am.az(paramaw.c())) {}
      }
    }
    else
    {
      bool1 = true;
    }
    return bool1;
    return false;
  }
  
  private boolean a(String paramString, int paramInt1, int paramInt2)
  {
    try
    {
      InputStream localInputStream = getResources().openRawResource(paramInt1);
      if (!com.estrongs.android.util.bd.a(localInputStream, paramString, paramInt2)) {
        return false;
      }
      localInputStream.close();
      return true;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  private boolean a(String paramString1, String paramString2, boolean paramBoolean)
  {
    com.estrongs.fs.d locald = com.estrongs.fs.d.a(this);
    if (paramString1.charAt(paramString1.length() - 1) != '/') {
      if (paramBoolean) {
        paramString1 = paramString1 + "/" + paramString2 + "/";
      }
    }
    for (;;)
    {
      try
      {
        boolean bool = y().d(paramString1);
        if (!bool) {
          break;
        }
        com.estrongs.android.ui.view.ag.a(this, getText(2131427817), 0);
        return false;
      }
      catch (Exception paramString1)
      {
        com.estrongs.android.ui.view.ag.a(this, getText(2131427766) + ":" + paramString1.getMessage(), 0);
        return false;
      }
      paramString1 = paramString1 + "/" + paramString2;
      continue;
      if (paramBoolean) {
        paramString1 = paramString1 + paramString2 + "/";
      } else {
        paramString1 = paramString1 + paramString2;
      }
    }
    if (!com.estrongs.android.util.p.a(paramBoolean, paramString1, paramString2)) {
      return false;
    }
    new dy(this, locald, paramString1, paramBoolean, paramString2).start();
    c(getString(2131428149, new Object[] { paramString2 }));
    return true;
  }
  
  private void aA()
  {
    Object localObject;
    if (com.estrongs.android.ui.pcs.aj.a(this))
    {
      localObject = new cs(this);
      com.estrongs.android.ui.pcs.r.a().a((com.estrongs.android.ui.pcs.n)localObject);
    }
    ae = ((RelativeLayout)findViewById(2131362011));
    k = new com.estrongs.android.ui.e.w(this, u);
    i = k.l();
    if ("edit_mode".equals(j))
    {
      k.d(Y);
      k.n();
    }
    for (;;)
    {
      localObject = y();
      if ((localObject != null) && (((com.estrongs.android.view.aw)localObject).w() != null) && (((com.estrongs.android.view.aw)localObject).z())) {
        bd.a(((com.estrongs.android.view.aw)localObject).w());
      }
      return;
      i.a(j, Boolean.valueOf(false));
    }
  }
  
  private void aB() {}
  
  private void aC()
  {
    if (aI != null)
    {
      aI.findViewById(2131361926).setOnClickListener(new dc(this));
      aI.findViewById(2131362648).setOnClickListener(new dd(this));
      aI.findViewById(2131362649).setOnClickListener(new de(this));
      aI.findViewById(2131362647).setOnClickListener(new df(this));
      aI.findViewById(2131362418).setOnClickListener(new dg(this));
    }
  }
  
  private void aD()
  {
    if ((am != null) && (f != null)) {
      am.removeView(f);
    }
    if (n != null) {
      n.c();
    }
  }
  
  private void aE()
  {
    if (i != null) {
      i.c();
    }
    com.estrongs.android.view.u.d();
    com.estrongs.android.ui.f.a.d();
    com.estrongs.android.ui.f.c.d();
    ac = null;
    if (ao != null)
    {
      ao.a();
      ao.c();
    }
    an = null;
    aF = null;
    if (aH != null) {
      aH.g();
    }
    aH = null;
    B = null;
    aj = null;
    if (aX != null)
    {
      if (aX.isShowing()) {
        aX.dismiss();
      }
      aX = null;
    }
  }
  
  @TargetApi(12)
  private void aF()
  {
    bh = new eu(this);
    bi = new ey(this);
    bj = new fa(this);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.PACKAGE_ADDED");
    localIntentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
    localIntentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
    localIntentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
    localIntentFilter.addDataScheme("package");
    registerReceiver(bi, localIntentFilter);
    localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
    localIntentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
    localIntentFilter.addAction("android.intent.action.MEDIA_REMOVED");
    localIntentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
    localIntentFilter.addDataScheme("file");
    registerReceiver(bh, localIntentFilter);
    localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
    localIntentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
    localIntentFilter.addAction("android.hardware.usb.action.USB_ACCESSORY_ATTACHED");
    localIntentFilter.addAction("android.hardware.usb.action.USB_ACCESSORY_DETACHED");
    registerReceiver(bj, localIntentFilter);
  }
  
  private void aG()
  {
    try
    {
      if (bi != null) {
        unregisterReceiver(bi);
      }
      if (bh != null) {
        unregisterReceiver(bh);
      }
      if (bj != null) {
        unregisterReceiver(bj);
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  private com.estrongs.android.ui.navigation.n aH()
  {
    if (aH == null)
    {
      aH = new com.estrongs.android.ui.navigation.n(this, findViewById(2131361998), h);
      ai();
    }
    return aH;
  }
  
  private void aI()
  {
    ImageView localImageView = (ImageView)findViewById(2131362010);
    localImageView.setOnClickListener(new fc(this));
    localImageView.setVisibility(0);
  }
  
  private void aJ()
  {
    aO = new HashMap();
    aO.put("back", new fd(this));
    aO.put("close_current", new fe(this));
    aO.put("refresh", new h(this));
    aO.put("#home_page#", new i(this));
    aO.put("#home#", new j(this));
    aO.put("open_lib_pic", new k(this));
    aO.put("open_lib_music", new l(this));
    aO.put("open_lib_video", new m(this));
    aO.put("open_lib_text", new n(this));
    aO.put("show_navi", new o(this));
    aO.put("exit", new p(this));
    aO.put("open_settings", new q(this));
    aO.put("mynetwork://", new s(this));
    aO.put("smb://", new t(this));
    aO.put("net://", new u(this));
    aO.put("pcs://", new v(this));
    aO.put("ftp://", new w(this));
    aO.put("bt://", new x(this));
    aO.put("app://user", new y(this));
    aO.put("download://", new z(this));
    aO.put("task_manager", new aa(this));
    aO.put("du://", new ab(this));
    aO.put("remote://", new ad(this));
    aO.put("net_manager", new ae(this));
    aO.put("clipboard", new af(this));
    aO.put("hide_list", new ag(this));
    aO.put("root_explorer", new ah(this));
    aO.put("recycle://", new ai(this));
  }
  
  private void ad()
  {
    com.estrongs.android.view.aw localaw = y();
    String str;
    ArrayList localArrayList;
    if (localaw == null)
    {
      str = "";
      localArrayList = com.estrongs.android.pop.app.b.f.a(str);
      if ((localArrayList == null) || (localArrayList.isEmpty())) {
        break label72;
      }
    }
    label72:
    label117:
    label195:
    label201:
    label203:
    do
    {
      for (;;)
      {
        try
        {
          bool = FexApplication.a().l().b(localArrayList);
          d(bool);
          return;
          str = localaw.c();
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          boolean bool = false;
          continue;
        }
        if ("bt://".equalsIgnoreCase(localException))
        {
          d(com.estrongs.fs.impl.c.a.a());
          return;
        }
        int i1;
        if ((com.estrongs.fs.d.a(this).l(localException) > 0) || (am.aX(localException)) || (am.t(localException)))
        {
          i1 = 1;
          if ((i1 == 0) || (localaw == null) || (!localaw.o())) {
            break label195;
          }
          d(true);
        }
        for (;;)
        {
          if (B == null) {
            break label201;
          }
          if ((!am.aX(localException)) || (localaw == null) || (!localaw.o())) {
            break label203;
          }
          B.setVisibility(0);
          if (aj == null) {
            break;
          }
          aj.setVisibility(4);
          return;
          i1 = 0;
          break label117;
          d(false);
        }
      }
      B.setVisibility(8);
    } while ((al == null) || (al.getEditableText().length() <= 0) || (aj == null));
    aj.setVisibility(0);
  }
  
  private void ae()
  {
    if ((!ChromeCastPlayerNotificationHelper.a().i()) && (com.estrongs.android.pop.app.aa.g().c())) {
      com.estrongs.android.pop.app.aa.g().q();
    }
  }
  
  private void af()
  {
    com.estrongs.a.l.a().a(new az(this));
  }
  
  private void ag()
  {
    aR = new bb(this);
    aS = new bc(this);
    aT = new bd(this);
  }
  
  private void ah()
  {
    h.post(new bg(this));
  }
  
  private void ai()
  {
    if (!aW) {
      return;
    }
    new Thread(new bl(this)).start();
  }
  
  private void aj()
  {
    com.estrongs.android.d.f.a(new com.estrongs.android.d.d(this));
    com.estrongs.fs.d.c();
    com.estrongs.fs.d.a(am.by("flashair://"), new com.estrongs.fs.impl.f.c());
    com.estrongs.fs.d.a(am.by("search://"), com.estrongs.fs.impl.n.b.a());
    if (com.estrongs.android.util.bd.f())
    {
      com.estrongs.fs.d.a(am.by("book://"), com.estrongs.fs.impl.d.c.b());
      com.estrongs.fs.d.a(am.by("apk://"), new com.estrongs.fs.impl.a.c());
      return;
    }
    com.estrongs.fs.d.a(am.by("book://"), com.estrongs.fs.impl.d.b.a());
    com.estrongs.fs.d.a(am.by("apk://"), com.estrongs.fs.impl.a.b.a());
  }
  
  private com.estrongs.android.view.aw ak()
  {
    if (ah == null) {
      ??? = am.bE(am.bF(m.j("Market")));
    }
    for (;;)
    {
      Object localObject2 = ???;
      if (com.estrongs.android.util.bd.a((CharSequence)???)) {
        localObject2 = com.estrongs.android.pop.b.b();
      }
      com.estrongs.android.ui.d.d locald = new com.estrongs.android.ui.d.d((String)localObject2);
      com.estrongs.android.ui.d.e.a(locald);
      n.a(locald);
      n.d(com.estrongs.android.ui.d.e.a());
      n.e(n.d());
      synchronized (x)
      {
        x.add(null);
        return a(locald, (String)localObject2, null);
        ??? = ah;
      }
    }
  }
  
  private void al()
  {
    ad = ((LinearLayout)ab.findViewById(2131361907));
    if (n == null)
    {
      n = new bn(this, ad, this);
      return;
    }
    n.a(ad);
  }
  
  private void am()
  {
    if (aQ) {
      return;
    }
    ae();
    aQ = true;
    if ((com.estrongs.android.pop.app.b.a.a) && (com.estrongs.android.pop.ad.a(this).A())) {
      com.estrongs.android.pop.app.b.a.a().d();
    }
    try
    {
      com.estrongs.a.b.d.a();
      an();
      com.estrongs.android.d.f.c();
      al.m();
      aE();
      com.estrongs.android.view.u.f();
      com.estrongs.android.pop.app.b.a.a().j();
      com.estrongs.android.pop.app.b.a.a().g();
      VerifyPasswordDialog.a();
      com.estrongs.android.pop.view.utils.n.b().a();
      com.estrongs.android.ui.g.a.c();
      com.estrongs.fs.d.b();
      com.estrongs.android.ui.pcs.r.a().k();
      new bo(this, com.estrongs.android.pop.ad.a(this).w()).start();
      aG();
      com.estrongs.android.view.aw.ae();
      if ((com.estrongs.android.pop.ad.a(this).ap()) && (com.estrongs.android.pop.z.w)) {
        FexApplication.a().a(false);
      }
    }
    catch (IOException localIOException)
    {
      try
      {
        WebIconDatabase.getInstance().removeAllIcons();
        WebIconDatabase.getInstance().close();
        com.estrongs.android.util.a locala = com.estrongs.android.util.a.a();
        if (locala != null) {
          locala.d();
        }
        if ((!be) && (!com.estrongs.android.pop.z.ap)) {
          AppFolderInfoManager.d().c();
        }
        com.estrongs.fs.impl.j.b.a();
        return;
        localIOException = localIOException;
        localIOException.printStackTrace();
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
    }
  }
  
  private void an()
  {
    com.estrongs.android.ftp.a locala = com.estrongs.android.ftp.a.e();
    if ((com.estrongs.android.pop.ad.a(this).R()) && (locala != null) && (locala.i())) {
      com.estrongs.android.ftp.k.a(this);
    }
  }
  
  private void ao()
  {
    h = new bs(this);
  }
  
  private void ap()
  {
    int i2 = -1;
    Object localObject;
    if (f == null)
    {
      f = new bt(this, this);
      localObject = new bu(this);
      f.a((com.estrongs.android.widget.bc)localObject);
      f.a(x);
    }
    for (;;)
    {
      f.a(ao);
      am.removeAllViews();
      am.addView(f, new FrameLayout.LayoutParams(-1, -1));
      ao.a(f);
      if (!c) {
        break;
      }
      f.a(aH().j(), aH().k());
      return;
      f.l();
    }
    if (v)
    {
      boolean bool = com.estrongs.android.pop.esclasses.e.b();
      localObject = f;
      int i1;
      if (bool)
      {
        i1 = aH().j();
        if (!bool) {
          break label186;
        }
      }
      for (;;)
      {
        ((ThumbContentViewSwitcher)localObject).a(i1, i2);
        return;
        i1 = -1;
        break;
        label186:
        i2 = aH().k();
      }
    }
    f.a(-1, -1);
  }
  
  private void aq()
  {
    aa.removeAllViewsInLayout();
    Object localObject1;
    Object localObject2;
    if ((v) && (!c))
    {
      localObject1 = com.estrongs.android.pop.esclasses.g.a(this).inflate(2130903069, null);
      aa.addView((View)localObject1);
      ab = ((View)localObject1).findViewById(2131362013);
      localObject2 = (LinearLayout.LayoutParams)ab.getLayoutParams();
      weight = 1.0F;
      width = 0;
      D = ((View)localObject1).findViewById(2131362012);
      localObject1 = (LinearLayout.LayoutParams)D.getLayoutParams();
      if (w)
      {
        width = (getResourcesgetDisplayMetricswidthPixels * 3 / 10);
        aH();
        setTabletSideBar(D);
        label136:
        g = ((RelativeLayout)findViewById(2131361909));
        if (u) {
          g.setBackgroundResource(2130837792);
        }
        ak = ((AdvancedAddressBar)findViewById(2131362651));
        z = ((Button)findViewById(2131362003));
        av();
        aA();
        ((ImageView)ab.findViewById(2131362006)).setImageDrawable(Z.h());
        al();
        if (com.estrongs.android.ui.d.e.c() != 0) {
          break label418;
        }
      }
    }
    label418:
    label496:
    label501:
    for (int i1 = -1;; i1 = -1)
    {
      int i2 = i1;
      if (i1 < 0) {
        if (com.estrongs.android.ui.d.e.a() <= 0) {
          break label496;
        }
      }
      for (i2 = com.estrongs.android.ui.d.e.a();; i2 = 0)
      {
        if ((i2 >= 0) && (i2 < com.estrongs.android.ui.d.e.c()))
        {
          localObject1 = com.estrongs.android.ui.d.e.c(i2);
          if (localObject1 == null) {}
        }
        for (localObject2 = ((com.estrongs.android.ui.d.d)localObject1).b();; localObject2 = null)
        {
          localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = am.bE(am.bF(m.j("Market")));
          }
          localObject2 = localObject1;
          if (com.estrongs.android.util.bd.a((CharSequence)localObject1)) {
            localObject2 = com.estrongs.android.pop.b.b();
          }
          try
          {
            I.a((String)localObject2, true);
            if (!d()) {
              aI();
            }
            if (E.getVisibility() != 0) {
              E.setVisibility(0);
            }
            return;
            width = (getResourcesgetDisplayMetricswidthPixels * 3 / 10);
            break;
            ab = com.estrongs.android.pop.esclasses.g.a(this).inflate(2130903068, null);
            aa.addView(ab);
            aH();
            break label136;
            if (ah == null) {
              break label501;
            }
            i1 = 0;
            for (;;)
            {
              if (i1 >= com.estrongs.android.ui.d.e.c()) {
                break label501;
              }
              localObject1 = com.estrongs.android.ui.d.e.c(i1);
              if ((localObject1 != null) && (am.G(ah) == am.G(((com.estrongs.android.ui.d.d)localObject1).b())))
              {
                ((com.estrongs.android.ui.d.d)localObject1).a(ah);
                com.estrongs.android.ui.d.e.a(i1);
                break;
              }
              i1 += 1;
            }
          }
          catch (Exception localException)
          {
            for (;;)
            {
              localException.printStackTrace();
            }
          }
        }
      }
    }
  }
  
  private void ar()
  {
    A = ((ProgressBar)findViewById(2131362004));
    am = ((DragLayer)ab.findViewById(2131362007));
    if (ao == null) {
      ao = new com.estrongs.android.ui.drag.d(this);
    }
    am.a(ao);
    synchronized (x)
    {
      Iterator localIterator = x.iterator();
      while (localIterator.hasNext())
      {
        com.estrongs.android.view.aw localaw = (com.estrongs.android.view.aw)localIterator.next();
        if (localaw != null) {
          localaw.a(localaw.B());
        }
      }
    }
    ap();
    aw();
    if ((c) || (v))
    {
      az();
      aI = findViewById(2131362646);
      aJ = ((TextView)findViewById(2131362005));
      aC();
      if (!"edit_mode".equals(i.b())) {
        break label259;
      }
      aI.setVisibility(0);
      aJ.setVisibility(0);
      ??? = y();
      if ((??? != null) && (bd != null)) {
        bd.a(((com.estrongs.android.view.aw)???).w());
      }
    }
    for (;;)
    {
      b(a);
      ab.setBackgroundColor(0);
      return;
      ax();
      break;
      label259:
      aI.setVisibility(4);
    }
  }
  
  private void as()
  {
    aq();
    ar();
  }
  
  private void at()
  {
    if ((ao != null) || (aq == null)) {
      aq = new bw(this);
    }
    if (au == null) {
      au = new bx(this);
    }
    if (ay == null) {
      ay = new by(this);
    }
    if (aC == null) {
      aC = new bz(this);
    }
    if (ar == null)
    {
      ar = new TranslateAnimation(1, -1.0F, 1, 0.0F, 1, -1.0F, 1, 0.0F);
      ar.setDuration(150L);
      as = new TranslateAnimation(1, 0.0F, 1, -1.0F, 1, 0.0F, 1, -1.0F);
      as.setDuration(150L);
    }
    if (av == null)
    {
      av = new TranslateAnimation(1, 1.0F, 1, 0.0F, 1, -1.0F, 1, 0.0F);
      av.setDuration(150L);
      aw = new TranslateAnimation(1, 0.0F, 1, 1.0F, 1, 0.0F, 1, -1.0F);
      aw.setDuration(150L);
    }
    if (az == null)
    {
      az = new TranslateAnimation(1, -1.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
      az.setDuration(150L);
      aA = new TranslateAnimation(1, 0.0F, 1, -1.0F, 1, 0.0F, 1, 1.0F);
      aA.setDuration(150L);
    }
    if (aD == null)
    {
      aD = new TranslateAnimation(1, 1.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
      aD.setDuration(150L);
      aE = new TranslateAnimation(1, 0.0F, 1, 1.0F, 1, 0.0F, 1, 1.0F);
      aE.setDuration(150L);
      aE.setAnimationListener(new ca(this));
    }
  }
  
  private void au()
  {
    if (an == null)
    {
      an = ((DragLayer)com.estrongs.android.pop.esclasses.g.a(this).inflate(2130903114, null));
      aa.addView(an);
      ap = ((DragActionZone)an.findViewById(2131362181));
      ap.a(0);
      ap.a(aq);
      at = ((DragActionZone)an.findViewById(2131362183));
      at.a(1);
      at.a(au);
      ax = ((DragActionZone)an.findViewById(2131362184));
      ax.a(2);
      ax.a(ay);
      aB = ((DragActionZone)an.findViewById(2131362185));
      aB.a(3);
      aB.a(aC);
    }
  }
  
  private void av()
  {
    if (u)
    {
      ak.a(new cb(this));
      ak.a(new cd(this));
      return;
    }
    View localView = findViewById(2131362464);
    localView.setOnClickListener(new ce(this));
    localView.setOnLongClickListener(new cf(this));
  }
  
  private void aw()
  {
    View localView = findViewById(2131362463);
    ImageView localImageView = (ImageView)localView.findViewById(2131361853);
    ch localch = new ch(this);
    ci localci = new ci(this);
    if (u) {
      localImageView.setImageResource(2130837785);
    }
    for (;;)
    {
      localView.setOnClickListener(localch);
      localView.setOnLongClickListener(localci);
      return;
      localImageView.setImageResource(2130837786);
    }
  }
  
  private void ax()
  {
    View localView = findViewById(2131362465);
    if (localView == null) {
      return;
    }
    localView.setOnClickListener(new cj(this));
    localView.setOnLongClickListener(new cl(this));
  }
  
  private void ay()
  {
    Message localMessage = new Message();
    if (com.estrongs.android.ui.d.e.c() <= 1) {
      what = 211;
    }
    for (;;)
    {
      if (h != null) {
        h.sendMessage(localMessage);
      }
      if (f.f()) {
        f.a(false);
      }
      return;
      what = 2;
      arg1 = com.estrongs.android.ui.d.e.a();
    }
  }
  
  private void az()
  {
    View localView = findViewById(2131362466);
    af = ((ImageView)localView.findViewById(2131361853));
    if (af == null) {
      return;
    }
    cp localcp = new cp(this);
    cq localcq = new cq(this);
    if (!u) {
      af.setImageResource(2130838160);
    }
    localView.setOnClickListener(localcp);
    localView.setOnLongClickListener(localcq);
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    if (k == null) {
      return;
    }
    Y = paramInt1;
    k.d(paramInt1);
    aB();
  }
  
  private void b(View paramView)
  {
    paramView = com.estrongs.android.ui.f.a.a(paramView, getString(2131427415), 0, t(), false);
    paramView.a(new cg(this, paramView));
    try
    {
      paramView.c();
      return;
    }
    catch (WindowManager.BadTokenException paramView)
    {
      paramView.printStackTrace();
    }
  }
  
  private void b(com.estrongs.android.view.aw paramaw, String paramString)
  {
    if (am.S(paramString)) {
      paramaw.m("music");
    }
    do
    {
      return;
      if (am.U(paramString))
      {
        paramaw.m("video");
        return;
      }
      if ((am.T(paramString)) || (am.aO(paramString)))
      {
        paramaw.m("image");
        return;
      }
      if (am.Y(paramString))
      {
        paramaw.m("apk");
        return;
      }
    } while (!am.V(paramString));
    paramaw.m("document");
  }
  
  private com.estrongs.android.view.aw c(String paramString, TypedMap paramTypedMap, boolean paramBoolean)
  {
    Object localObject;
    if (paramString == null) {
      localObject = new com.estrongs.android.ui.d.d("New");
    }
    for (;;)
    {
      int i1 = com.estrongs.android.ui.d.e.a() + 1;
      synchronized (x)
      {
        if (i1 > x.size()) {
          paramTypedMap = null;
        }
        do
        {
          return paramTypedMap;
          localObject = new com.estrongs.android.ui.d.d(paramString);
          break;
          if (x.size() == 0) {
            i1 = 0;
          }
          com.estrongs.android.ui.d.e.a((com.estrongs.android.ui.d.d)localObject, i1);
          n.a((com.estrongs.android.ui.d.d)localObject, i1);
          x.add(i1, null);
          if (paramString == null) {
            break label176;
          }
          ag = y();
          if (ag != null) {
            ag.b_();
          }
          localObject = a((com.estrongs.android.ui.d.d)localObject, paramString, paramTypedMap, paramBoolean);
          paramTypedMap = (TypedMap)localObject;
        } while (!am.aZ(paramString));
        com.estrongs.android.pop.app.b.a.a().c();
        return (com.estrongs.android.view.aw)localObject;
      }
    }
    label176:
    return null;
  }
  
  private void c(com.estrongs.android.view.aw paramaw)
  {
    String str = paramaw.c();
    if (((am.J(str)) || (am.I(str)) || (am.p(str)) || (am.n(str)) || (am.H(str))) && ((am.bg(am.bk(str))) || (paramaw.P() == 1)) && (m.g(str))) {
      m.a(str, m.h(str));
    }
  }
  
  private void c(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, al.getText().toString());
  }
  
  private void c(String paramString, boolean paramBoolean)
  {
    int i2 = -1;
    try
    {
      String str = paramString + "/es_dropbox.jar";
      if (paramBoolean)
      {
        i1 = -1;
        a(str, 2131099655, i1);
        str = paramString + "/es_sugarsync.jar";
        if (!paramBoolean) {
          break label445;
        }
        i1 = -1;
        label70:
        a(str, 2131099663, i1);
        str = paramString + "/es_boxnet.jar";
        if (!paramBoolean) {
          break label458;
        }
        i1 = -1;
        label109:
        a(str, 2131099654, i1);
        str = paramString + "/es_kanbox.jar";
        if (!paramBoolean) {
          break label471;
        }
        i1 = -1;
        label148:
        a(str, 2131099657, i1);
        str = paramString + "/es_kuaipan.jar";
        if (!paramBoolean) {
          break label484;
        }
        i1 = -1;
        label187:
        a(str, 2131099658, i1);
        str = paramString + "/es_vdisk.jar";
        if (!paramBoolean) {
          break label497;
        }
        i1 = -1;
        label226:
        a(str, 2131099664, i1);
        str = paramString + "/es_skydrv.jar";
        if (!paramBoolean) {
          break label510;
        }
        i1 = -1;
        label265:
        a(str, 2131099662, i1);
        str = paramString + "/es_gdrive.jar";
        if (!paramBoolean) {
          break label523;
        }
        i1 = -1;
        label304:
        a(str, 2131099656, i1);
        str = paramString + "/es_s3.jar";
        if (!paramBoolean) {
          break label536;
        }
        i1 = -1;
        label343:
        a(str, 2131099661, i1);
        str = paramString + "/es_megacloud.jar";
        if (!paramBoolean) {
          break label549;
        }
        i1 = -1;
        label382:
        a(str, 2131099660, i1);
        paramString = paramString + "/es_mediafire.jar";
        if (!paramBoolean) {
          break label562;
        }
      }
      label445:
      label458:
      label471:
      label484:
      label497:
      label510:
      label523:
      label536:
      label549:
      label562:
      for (int i1 = i2;; i1 = com.estrongs.android.util.bd.a(bf, 2131099659))
      {
        a(paramString, 2131099659, i1);
        return;
        i1 = com.estrongs.android.util.bd.a(bf, 2131099655);
        break;
        i1 = com.estrongs.android.util.bd.a(bf, 2131099663);
        break label70;
        i1 = com.estrongs.android.util.bd.a(bf, 2131099654);
        break label109;
        i1 = com.estrongs.android.util.bd.a(bf, 2131099657);
        break label148;
        i1 = com.estrongs.android.util.bd.a(bf, 2131099658);
        break label187;
        i1 = com.estrongs.android.util.bd.a(bf, 2131099664);
        break label226;
        i1 = com.estrongs.android.util.bd.a(bf, 2131099662);
        break label265;
        i1 = com.estrongs.android.util.bd.a(bf, 2131099656);
        break label304;
        i1 = com.estrongs.android.util.bd.a(bf, 2131099661);
        break label343;
        i1 = com.estrongs.android.util.bd.a(bf, 2131099660);
        break label382;
      }
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private void d(com.estrongs.android.view.aw paramaw)
  {
    Object localObject = com.estrongs.android.pop.esclasses.g.a(this).inflate(2130903100, null);
    View localView1 = ((View)localObject).findViewById(2131362089);
    View localView2 = ((View)localObject).findViewById(2131362090);
    localObject = new com.estrongs.android.ui.dialog.ct(this).a(2131427375).a((View)localObject).c();
    localView1.setOnClickListener(new cm(this, paramaw, (com.estrongs.android.ui.dialog.cg)localObject));
    localView2.setOnClickListener(new cn(this, paramaw, (com.estrongs.android.ui.dialog.cg)localObject));
  }
  
  public static void h(boolean paramBoolean)
  {
    if (bf == null) {
      return;
    }
    List localList = bfx;
    com.estrongs.android.ui.c.a locala = null;
    for (;;)
    {
      int i1;
      try
      {
        int i2 = bfx.size();
        i1 = 0;
        if (i1 < i2)
        {
          com.estrongs.android.view.aw localaw = (com.estrongs.android.view.aw)bfx.get(i1);
          if ((locala == null) && ((localaw instanceof com.estrongs.android.ui.c.a))) {
            locala = (com.estrongs.android.ui.c.a)localaw;
          }
        }
        else
        {
          if (locala != null) {
            locala.i(paramBoolean);
          }
          return;
        }
      }
      finally {}
      i1 += 1;
    }
  }
  
  private void i(boolean paramBoolean)
  {
    if ((aI != null) && (aI.getVisibility() == 0))
    {
      if (paramBoolean)
      {
        AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.1F);
        localAlphaAnimation.setDuration(200L);
        localAlphaAnimation.setInterpolator(new AccelerateInterpolator());
        aI.setAnimation(localAlphaAnimation);
        localAlphaAnimation.start();
      }
      aI.setVisibility(8);
      if (!u) {
        findViewById(2131362462).setVisibility(0);
      }
    }
    if (aJ != null) {
      aJ.setVisibility(4);
    }
  }
  
  private int l(String paramString)
  {
    int i1 = Y;
    return in.a(paramString);
  }
  
  private void m(String paramString)
  {
    M();
  }
  
  private void n(String paramString)
  {
    com.estrongs.android.view.aw localaw = y();
    if (localaw == null) {
      return;
    }
    boolean bool2 = f(localaw.c());
    boolean bool1 = bool2;
    if (am.aX(localaw.c())) {
      bool1 = bool2 | f(am.bz(localaw.c()));
    }
    if (bool1)
    {
      paramString = com.estrongs.android.pop.app.b.q.b(paramString);
      if (T == null) {
        T = new ff(this);
      }
      localaw.a(T);
      T.a((String)paramString.get("keyword"));
      T.a(com.estrongs.android.util.bd.a((String)paramString.get("minSize"), -1L), com.estrongs.android.util.bd.a((String)paramString.get("maxSize"), -1L));
      T.b(com.estrongs.android.util.bd.a((String)paramString.get("minDate"), -1L), com.estrongs.android.util.bd.a((String)paramString.get("maxDate"), -1L));
      localaw.b(false);
      return;
    }
    String str;
    TypedMap localTypedMap;
    for (;;)
    {
      try
      {
        if (localaw.ac() == 0L)
        {
          l1 = System.currentTimeMillis();
          localaw.a(l1);
          str = "search://" + l1 + "/" + com.estrongs.fs.a.a.d(com.estrongs.android.pop.app.b.q.a("searchPath", paramString)).replace("/", "#");
          localTypedMap = new TypedMap();
          localTypedMap.put("pattern", paramString);
          localTypedMap.put("refresh", "true");
          if (!(localaw instanceof com.estrongs.android.ui.c.a)) {
            break label355;
          }
          localaw = c(str, localTypedMap);
          if (localaw == null) {
            break;
          }
          localaw.m(com.estrongs.android.pop.app.b.q.a("category", paramString));
          return;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return;
      }
      long l1 = localaw.ac();
    }
    label355:
    localaw.a(str, localTypedMap);
  }
  
  private void o(String paramString)
  {
    if (!paramString.equalsIgnoreCase("Market")) {}
    for (;;)
    {
      com.estrongs.android.util.a.a(paramString);
      return;
      paramString = "Google Market";
    }
  }
  
  public com.estrongs.fs.h B()
  {
    if (y() == null) {
      return null;
    }
    return y().b();
  }
  
  public boolean C()
  {
    for (;;)
    {
      try
      {
        List localList = x;
        int i1 = 0;
        try
        {
          if (i1 < x.size())
          {
            com.estrongs.android.view.aw localaw = (com.estrongs.android.view.aw)x.get(i1);
            if ((localaw != null) && ((am.Y(localaw.c())) || (am.W(localaw.c()))))
            {
              boolean bool = r;
              return bool;
            }
          }
          else
          {
            return false;
          }
        }
        finally {}
        i1 += 1;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return false;
      }
    }
  }
  
  public boolean D()
  {
    for (;;)
    {
      try
      {
        List localList = x;
        int i1 = 0;
        try
        {
          if (i1 < x.size())
          {
            com.estrongs.android.view.aw localaw = (com.estrongs.android.view.aw)x.get(i1);
            if ((localaw != null) && ((am.Y(localaw.c())) || (am.W(localaw.c()))))
            {
              boolean bool = s;
              return bool;
            }
          }
          else
          {
            return false;
          }
        }
        finally {}
        i1 += 1;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return false;
      }
    }
  }
  
  public void E()
  {
    if (k != null) {
      k.k();
    }
  }
  
  public void F()
  {
    k.m();
  }
  
  public void G()
  {
    y.clear();
  }
  
  public boolean H()
  {
    return g(z());
  }
  
  public void K()
  {
    i1 = 0;
    h.post(new ei(this));
    Object localObject;
    if ((com.estrongs.android.c.a.b()) || ((com.estrongs.android.pop.ad.a(this).j()) && (com.estrongs.fs.impl.local.l.a(this, true))))
    {
      localObject = com.estrongs.fs.impl.local.l.a(com.estrongs.fs.impl.local.l.l());
      String str = com.estrongs.android.pop.ad.a(this).at();
      if ((str.length() > 0) && (!((String)localObject).equals(str)))
      {
        localObject = com.estrongs.fs.impl.local.l.k(str);
        if ((localObject == null) || (localObject.length <= 0)) {}
      }
    }
    try
    {
      com.estrongs.fs.impl.local.l.b((String[])localObject);
      if (!com.estrongs.android.pop.z.y) {}
      try
      {
        boolean bool2 = com.estrongs.android.pop.ad.a(this).r();
        boolean bool1 = bool2;
        if (bool2)
        {
          bool1 = bool2;
          if (H != null)
          {
            bool1 = bool2;
            if (new GregorianCalendar(TimeZone.getTimeZone("GMT")).before(H)) {
              bool1 = false;
            }
          }
        }
        if (bool1)
        {
          long l1 = com.estrongs.android.pop.ad.a(this).C();
          if (new Date().getTime() - l1 > 1296000000L) {
            a(11, null, 3000, 0);
          }
        }
      }
      catch (Exception localException6)
      {
        for (;;)
        {
          continue;
          i1 = 1;
        }
      }
      if ((com.estrongs.android.pop.utils.cc.a()) && (com.estrongs.android.pop.ad.a(this).aK() != com.estrongs.android.util.k.a()) && (ak.b()))
      {
        com.estrongs.android.pop.ad.a(this).aJ();
        Q().a(this);
      }
      try
      {
        if (a.b(this))
        {
          com.estrongs.fs.impl.local.l.n();
          c(com.estrongs.android.util.h.a(), true);
          if (Looper.myLooper() == null) {
            Looper.prepare();
          }
        }
      }
      catch (Exception localException2)
      {
        try
        {
          if (Settings.System.getString(getContentResolver(), "time_12_24").equals("24"))
          {
            G = true;
            com.estrongs.android.util.f.c();
          }
        }
        catch (Exception localException2)
        {
          try
          {
            for (;;)
            {
              com.estrongs.a.b.d.a(this, null);
              new Thread(new ej(this), "Synchronize Files").start();
              m.j(System.currentTimeMillis());
              if ((!ak.b()) || (com.estrongs.android.pop.view.utils.n.b().a(this) <= 86400000L)) {
                break label434;
              }
              com.estrongs.android.pop.view.utils.n.b().c();
              if (i1 != 0) {
                com.estrongs.android.pop.view.utils.n.b().d();
              }
              try
              {
                if (!be.c().a()) {
                  be.c().b();
                }
                return;
              }
              catch (Exception localException5)
              {
                return;
              }
              c(com.estrongs.android.util.h.a(), false);
              continue;
              localException1 = localException1;
              continue;
              G = false;
            }
            localException2 = localException2;
          }
          catch (Exception localException3)
          {
            for (;;)
            {
              localException3.printStackTrace();
            }
          }
        }
      }
    }
    catch (Exception localException4)
    {
      for (;;) {}
    }
  }
  
  public boolean L()
  {
    return com.estrongs.android.pop.app.b.a.a().b();
  }
  
  public boolean M()
  {
    if (B() == null) {
      return false;
    }
    Intent localIntent = new Intent();
    String str = B().getAbsolutePath();
    Object localObject = str;
    if (am.aX(str)) {
      localObject = am.bz(str);
    }
    localIntent.putExtra("CURRENT_WORKING_PATH", (String)localObject);
    localObject = (EditText)findViewById(2131361988);
    if ((localObject != null) && (((EditText)localObject).getText().toString().length() > 0)) {
      localIntent.putExtra("keyword", ((EditText)localObject).getText().toString());
    }
    new com.estrongs.android.pop.app.b.y(this, localIntent).a(new es(this)).a();
    return true;
  }
  
  public void N()
  {
    int i2 = com.estrongs.android.ui.d.e.a();
    List localList = x;
    int i1 = 0;
    for (;;)
    {
      try
      {
        if (i1 < x.size())
        {
          com.estrongs.android.view.aw localaw = (com.estrongs.android.view.aw)x.get(i1);
          if ((localaw == null) || (!am.Y(localaw.c()))) {
            break label90;
          }
          if (i2 == i1) {
            localaw.b(true);
          } else {
            localaw.i(true);
          }
        }
      }
      finally {}
      return;
      label90:
      i1 += 1;
    }
  }
  
  public com.estrongs.android.ui.navigation.n O()
  {
    return aH;
  }
  
  public boolean P()
  {
    return aQ;
  }
  
  public com.estrongs.android.pop.utils.c Q()
  {
    if (bk == null) {
      bk = new com.estrongs.android.pop.utils.c(this);
    }
    return bk;
  }
  
  public void R()
  {
    be = true;
    finish();
    startActivity(new Intent(this, FileExplorerActivity.class));
  }
  
  public void S()
  {
    h.postDelayed(new fb(this), 200L);
  }
  
  public void U()
  {
    if (aW) {
      return;
    }
    h.post(new aj(this));
    aW = true;
  }
  
  public void V()
  {
    for (;;)
    {
      try
      {
        int i1;
        synchronized (x)
        {
          if (am.bP(z()))
          {
            a(new ap(this));
            return;
          }
          List localList2 = x;
          i1 = 0;
          if (i1 >= localList2.size()) {
            continue;
          }
          com.estrongs.android.view.aw localaw = (com.estrongs.android.view.aw)localList2.get(i1);
          if ((localaw != null) && (am.bP(localaw.c()))) {
            localaw.a(true, true);
          }
        }
        i1 += 1;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
    }
  }
  
  public void W()
  {
    runOnUiThread(new aq(this));
  }
  
  public void X()
  {
    a(new ar(this));
  }
  
  public boolean Y()
  {
    return Looper.getMainLooper().getThread() == Thread.currentThread();
  }
  
  public boolean Z()
  {
    com.estrongs.android.view.aw localaw = y();
    if (localaw != null) {
      try
      {
        if ((!(localaw instanceof com.estrongs.android.ui.c.a)) && (!(localaw instanceof dj)))
        {
          int i1 = localaw.d();
          if (i1 <= 0) {}
        }
        else
        {
          return true;
        }
      }
      catch (Exception localException) {}
    }
    return false;
  }
  
  public Intent a(Intent paramIntent, com.estrongs.fs.h paramh)
  {
    if ((paramh instanceof SPFileObject))
    {
      SPFileObject localSPFileObject = (SPFileObject)paramh;
      paramIntent.putExtra("ownerId", localSPFileObject.getOwnerId());
      paramIntent.putExtra("ownerName", localSPFileObject.getOwnerUsername());
      paramIntent.putExtra("name", localSPFileObject.getName());
      paramIntent.putExtra("desc", localSPFileObject.getDescription());
      if (localSPFileObject.lastModified() > 0L) {
        paramIntent.putExtra("createdTime", localSPFileObject.lastModified());
      }
    }
    paramIntent.putExtra("title", paramh.getName());
    paramIntent.putExtra("pic_path", paramh.getPath());
    paramIntent.putExtra("pic_abs_path", paramh.getAbsolutePath());
    paramIntent.putExtra("is_dir", paramh.getFileType().a());
    return paramIntent;
  }
  
  protected View a()
  {
    return g;
  }
  
  public com.estrongs.android.view.aw a(String paramString, TypedMap paramTypedMap)
  {
    if (am.aB(paramString)) {
      return b(paramString, paramTypedMap);
    }
    return a(paramString, paramTypedMap, false);
  }
  
  public com.estrongs.android.view.aw a(String paramString, TypedMap paramTypedMap, boolean paramBoolean)
  {
    if (com.estrongs.android.ui.d.e.c() >= 12)
    {
      com.estrongs.android.ui.view.ag.a(this, 2131428177, 0);
      paramString = null;
    }
    do
    {
      do
      {
        return paramString;
        c(paramString, paramTypedMap, paramBoolean);
        paramTypedMap = y();
        paramString = paramTypedMap;
      } while (paramTypedMap == null);
      paramString = paramTypedMap;
    } while (!(paramTypedMap instanceof com.estrongs.android.pop.app.diskusage.h));
    paramTypedMap.l();
    return paramTypedMap;
  }
  
  public void a(int paramInt)
  {
    com.estrongs.android.ui.view.ag.a(this, getText(paramInt), 0);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    ImageView localImageView;
    if (aI != null)
    {
      if (paramInt1 != paramInt2) {
        break label160;
      }
      aI.findViewById(2131362649).setVisibility(0);
      aI.findViewById(2131362648).setVisibility(8);
      aJ.setText(paramInt1 + "/" + paramInt2);
      localImageView = (ImageView)aI.findViewById(2131362647).findViewById(2131361853);
      boolean bool = y().x();
      localImageView.setEnabled(bool);
      if (!bool) {
        break label192;
      }
      localImageView.setColorFilter(null);
    }
    for (;;)
    {
      localImageView = (ImageView)aI.findViewById(2131362418).findViewById(2131361853);
      if ((paramInt1 <= 0) || (paramInt1 > 3)) {
        break label211;
      }
      localImageView.setEnabled(true);
      localImageView.setColorFilter(null);
      return;
      label160:
      aI.findViewById(2131362649).setVisibility(8);
      aI.findViewById(2131362648).setVisibility(0);
      break;
      label192:
      localImageView.setColorFilter(new LightingColorFilter(1, -7829368));
    }
    label211:
    localImageView.setEnabled(false);
    localImageView.setColorFilter(new LightingColorFilter(1, -7829368));
  }
  
  /* Error */
  public void a(int paramInt1, Object paramObject, int paramInt2, int paramInt3)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 359	com/estrongs/android/pop/view/FileExplorerActivity:V	Landroid/os/Handler;
    //   6: iload_1
    //   7: aload_2
    //   8: invokestatic 2711	android/os/Message:obtain	(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    //   11: astore_2
    //   12: aload_2
    //   13: iload 4
    //   15: putfield 2142	android/os/Message:arg1	I
    //   18: iload_3
    //   19: ifne +15 -> 34
    //   22: aload_0
    //   23: getfield 359	com/estrongs/android/pop/view/FileExplorerActivity:V	Landroid/os/Handler;
    //   26: aload_2
    //   27: invokevirtual 2137	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   30: pop
    //   31: aload_0
    //   32: monitorexit
    //   33: return
    //   34: aload_0
    //   35: getfield 359	com/estrongs/android/pop/view/FileExplorerActivity:V	Landroid/os/Handler;
    //   38: aload_2
    //   39: iload_3
    //   40: i2l
    //   41: invokevirtual 2715	android/os/Handler:sendMessageDelayed	(Landroid/os/Message;J)Z
    //   44: pop
    //   45: goto -14 -> 31
    //   48: astore_2
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_2
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	FileExplorerActivity
    //   0	53	1	paramInt1	int
    //   0	53	2	paramObject	Object
    //   0	53	3	paramInt2	int
    //   0	53	4	paramInt3	int
    // Exception table:
    //   from	to	target	type
    //   2	18	48	finally
    //   22	31	48	finally
    //   34	45	48	finally
  }
  
  public void a(int paramInt1, String paramString1, DialogInterface.OnClickListener paramOnClickListener, int paramInt2, String paramString2)
  {
    if (P == null)
    {
      P = new com.estrongs.android.widget.g(this, paramString2, new eb(this), paramInt2);
      P.a(false);
      P.c(getString(2131427340), (DialogInterface.OnClickListener)null);
    }
    for (;;)
    {
      P.a(paramInt2);
      P.a(paramString1);
      P.b(getString(2131427339), paramOnClickListener);
      P.j();
      return;
      if (aZ != com.estrongs.android.pop.ad.a(this).p())
      {
        aZ = com.estrongs.android.pop.ad.a(this).p();
        P.b(true);
        P.b(paramString2);
      }
      else
      {
        P.b(true);
      }
    }
  }
  
  public void a(Intent paramIntent)
  {
    super.startActivity(paramIntent);
  }
  
  public void a(Gesture paramGesture)
  {
    Object localObject = com.estrongs.android.ui.guesture.b.c();
    if ((localObject == null) || (((List)localObject).size() == 0)) {
      com.estrongs.android.ui.view.ag.a(bf, getString(2131428353) + "\n" + getString(2131428355), 0);
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            paramGesture = com.estrongs.android.ui.guesture.b.a(paramGesture);
          } while (paramGesture == null);
          try
          {
            if (paramGesture.startsWith("start_app"))
            {
              paramGesture = paramGesture.substring("start_app".length()).split("#");
              localObject = new Intent();
              ((Intent)localObject).setComponent(new ComponentName(paramGesture[0], paramGesture[1]));
              ((Intent)localObject).setFlags(268435456);
              try
              {
                a(this, (Intent)localObject);
                return;
              }
              catch (Exception paramGesture)
              {
                com.estrongs.android.ui.view.ag.a(this, getString(2131427839), 0);
                return;
              }
            }
            if (!paramGesture.startsWith("open_folder")) {
              break;
            }
          }
          catch (Exception paramGesture)
          {
            paramGesture.printStackTrace();
            return;
          }
          paramGesture = paramGesture.substring("open_folder".length());
        } while ((paramGesture == null) || ("".equals(paramGesture)));
        e(paramGesture);
        return;
        if (!paramGesture.startsWith("open_window")) {
          break;
        }
        paramGesture = paramGesture.substring("open_window".length());
        paramGesture = (Runnable)aO.get(paramGesture);
      } while (paramGesture == null);
      h.post(paramGesture);
      return;
      paramGesture = (Runnable)aO.get(paramGesture);
    } while (paramGesture == null);
    h.post(paramGesture);
  }
  
  public void a(com.estrongs.android.ui.c.b.t paramt)
  {
    bb = paramt;
  }
  
  public void a(com.estrongs.android.ui.navigation.r paramr)
  {
    if ((aH != null) && (aH.i())) {
      aH.a(paramr);
    }
    while (paramr == null) {
      return;
    }
    try
    {
      paramr.a(null);
      return;
    }
    catch (Exception paramr) {}
  }
  
  public void a(com.estrongs.android.util.x<com.estrongs.android.view.aw> paramx)
  {
    int i2 = com.estrongs.android.ui.d.e.a();
    List localList = x;
    int i1 = 0;
    for (;;)
    {
      try
      {
        if (i1 < x.size())
        {
          com.estrongs.android.view.aw localaw = (com.estrongs.android.view.aw)x.get(i1);
          if ((localaw == null) || ((paramx != null) && (!paramx.a(localaw)))) {
            break label96;
          }
          if (i2 == i1) {
            localaw.b(true);
          } else {
            localaw.i(true);
          }
        }
      }
      finally {}
      return;
      label96:
      i1 += 1;
    }
  }
  
  public void a(com.estrongs.fs.h paramh)
  {
    a(paramh, false);
  }
  
  public void a(com.estrongs.fs.h paramh, boolean paramBoolean)
  {
    if (!g(paramh.getPath())) {
      d(2131428090);
    }
    for (;;)
    {
      return;
      com.estrongs.android.view.aw localaw = y();
      if ((localaw != null) && (localaw.z())) {}
      for (int i1 = 1; (i1 != 0) || (y.size() != 0); i1 = 0)
      {
        if (!p) {
          com.estrongs.android.view.u.a(this).b(o);
        }
        com.estrongs.android.pop.utils.aj.a(this, y, paramh, p, paramBoolean);
        return;
      }
    }
  }
  
  public void a(String paramString)
  {
    if (paramString == null) {}
    Object localObject1;
    do
    {
      return;
      for (;;)
      {
        int i1;
        try
        {
          localObject1 = com.estrongs.fs.impl.usb.e.b(paramString);
          if (!com.estrongs.a.a.isAllTaskFinished()) {
            break label217;
          }
          if (localObject1 == null) {
            break;
          }
          str = ((com.estrongs.fs.impl.usb.g)localObject1).k();
          ((com.estrongs.fs.impl.usb.g)localObject1).e();
          Object localObject2 = O();
          if (localObject2 != null) {
            ((com.estrongs.android.ui.navigation.n)localObject2).b(paramString);
          }
          localObject2 = x;
          i1 = 0;
          if (i1 < ((List)localObject2).size())
          {
            com.estrongs.android.view.aw localaw = (com.estrongs.android.view.aw)((List)localObject2).get(i1);
            if ((localaw != null) && (localaw.c() != null) && (localaw.c().startsWith(paramString))) {
              b(localaw);
            }
          }
          else
          {
            ((com.estrongs.fs.impl.usb.g)localObject1).f();
            com.estrongs.android.ui.view.ag.a(this, getString(2131428540, new Object[] { str }), 1);
            return;
          }
        }
        catch (Exception paramString)
        {
          paramString.printStackTrace();
          return;
        }
        i1 += 1;
      }
      if (am.bu(paramString))
      {
        paramString = new Intent("android.settings.INTERNAL_STORAGE_SETTINGS");
        paramString.setFlags(268435456);
        startActivity(paramString);
        return;
      }
      localObject1 = O();
    } while (localObject1 == null);
    ((com.estrongs.android.ui.navigation.n)localObject1).b(paramString);
    com.estrongs.android.ui.view.ag.a(this, getString(2131428540, new Object[] { "" }), 1);
    return;
    label217:
    String str = getString(2131428541) + "<font size='8px' color='grey'><br /><br />" + getString(2131428542) + "</font>";
    paramString = new com.estrongs.android.ui.dialog.ct(this).a(2131427398).b(Html.fromHtml(str)).b(2131428543, new bk(this, (com.estrongs.fs.impl.usb.g)localObject1, paramString)).c(2131427340, new bj(this));
    paramString.b(false);
    paramString.c();
  }
  
  public void a(String paramString, int paramInt, com.estrongs.android.view.aw paramaw)
  {
    int i1 = l(paramString);
    if ((paramaw instanceof WebViewWrapper)) {
      i1 = 22;
    }
    Object localObject;
    if ((i1 == 4) || (i1 == 2) || (i1 == 1) || (i1 == 3) || (i1 == 28)) {
      if ((paramaw != null) && (paramaw.h().isEmpty()))
      {
        b(in.a(i1), paramInt);
        if (!r) {
          break label220;
        }
        if (k != null)
        {
          localObject = i.a("paste_mode");
          paramaw = ((com.estrongs.android.ui.e.a)localObject).a(0);
          localObject = ((com.estrongs.android.ui.e.a)localObject).a(1);
          if (g(paramString)) {
            break label182;
          }
          if ((paramaw != null) && (paramaw.isEnabled())) {
            paramaw.d(false);
          }
          if ((localObject != null) && (((com.estrongs.android.view.a.a)localObject).isEnabled())) {
            ((com.estrongs.android.view.a.a)localObject).d(false);
          }
        }
      }
    }
    label182:
    label220:
    do
    {
      do
      {
        return;
        b(i1, paramInt);
        break;
        b(i1, paramInt);
        break;
        if ((paramaw != null) && (!paramaw.isEnabled())) {
          paramaw.d(true);
        }
      } while ((localObject == null) || (((com.estrongs.android.view.a.a)localObject).isEnabled()));
      ((com.estrongs.android.view.a.a)localObject).d(true);
      return;
      i.a(j, Boolean.valueOf(false));
    } while ((paramaw == null) || (!paramaw.z()) || (paramaw.w() == null));
    bd.a(paramaw.w());
  }
  
  public void a(String paramString1, String paramString2)
  {
    if ((paramString2 == null) || (paramString2.length() == 0)) {}
    do
    {
      return;
      String str = paramString1;
      if (paramString1 == null) {
        str = paramString2;
      }
      AppRunner.a(this, str, paramString2);
    } while ((!am.ba(paramString2)) || (-1 == com.estrongs.android.util.bc.b(paramString2)));
    be.c().a(paramString2, false);
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    Object localObject = y();
    if (localObject != null)
    {
      if (f(((com.estrongs.android.view.aw)localObject).c()))
      {
        if (T == null) {
          T = new ff(this);
        }
        ((com.estrongs.android.view.aw)localObject).a(T);
        T.a(paramString3);
        ((com.estrongs.android.view.aw)localObject).b(false);
      }
    }
    else {
      return;
    }
    localObject = paramString1;
    if (am.aX(paramString1)) {
      localObject = am.bz(paramString1);
    }
    paramString1 = new StringBuffer();
    paramString1.append("searchPath").append("=").append((String)localObject);
    if ((paramString3 != null) && (paramString3.trim().length() > 0)) {
      paramString1.append("&&").append("keyword").append("=").append(Uri.encode(paramString3));
    }
    if ((paramString2 != null) && (paramString2.length() > 0)) {
      paramString1.append("&&").append("category").append("=").append(paramString2);
    }
    paramString1.append("&&").append("recursion").append("=").append("true");
    n(paramString1.toString());
  }
  
  public void a(String paramString, List<com.estrongs.fs.h> paramList, boolean paramBoolean)
  {
    if (R == null)
    {
      R = new com.estrongs.android.widget.ai(this, Q, true);
      R.setOnDismissListener(new ed(this));
    }
    for (;;)
    {
      y.clear();
      y.addAll(paramList);
      p = paramBoolean;
      R.setTitle(paramString);
      R.show();
      return;
      R.a(true);
    }
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    Object localObject = getString(2131427361);
    if (paramBoolean) {}
    for (int i1 = 2131427427;; i1 = 2131427426)
    {
      localObject = new com.estrongs.android.ui.dialog.eo(this, (String)localObject, getString(i1));
      if (am.d(paramString, "kanbox")) {
        ((com.estrongs.android.ui.dialog.eo)localObject).c(true);
      }
      ((com.estrongs.android.ui.dialog.eo)localObject).a(new cr(this, paramBoolean));
      ((com.estrongs.android.ui.dialog.eo)localObject).show();
      return;
    }
  }
  
  public void a(boolean paramBoolean, Handler paramHandler, Runnable paramRunnable)
  {
    if ((com.estrongs.android.pop.ad.a(this).q()) || (paramBoolean))
    {
      com.estrongs.android.d.f.b();
      new Thread(new br(this, paramHandler, paramRunnable)).start();
    }
  }
  
  public boolean a(View paramView)
  {
    int i2 = f.getChildCount();
    label66:
    for (paramView = paramView.getParent();; paramView = paramView.getParent())
    {
      int i1;
      if (paramView != null) {
        i1 = 0;
      }
      for (;;)
      {
        if ((i1 >= i2) || (paramView.equals(f.getChildAt(i1))))
        {
          if (i1 >= i2) {
            break label66;
          }
          if (f.i() != i1) {
            break;
          }
          return false;
        }
        i1 += 1;
      }
      return true;
    }
  }
  
  public boolean a(ArrayList<com.estrongs.android.pop.app.b.f> paramArrayList)
  {
    if (!ak.b())
    {
      paramArrayList = new com.estrongs.android.ui.dialog.cg(this);
      paramArrayList.setTitle(2131427480);
      paramArrayList.setConfirmButton(getResources().getString(2131427339), new ek(this));
      paramArrayList.setCancelButton(getResources().getString(2131427340), new el(this));
      paramArrayList.setMessage(getString(2131427565));
      paramArrayList.show();
      d(false);
      return false;
    }
    for (;;)
    {
      try
      {
        localb = FexApplication.a().l();
        if (localb == null) {
          continue;
        }
        if (!localb.b(paramArrayList)) {
          continue;
        }
        runOnUiThread(new em(this));
        if (aX != null) {
          continue;
        }
        aX = ProgressDialog.a(this, getString(2131427442), getString(2131427446), true, true);
        aX.setCancelButton(getString(2131427340), new en(this, localb));
        aX.setConfirmButton(getString(2131427367), new eo(this));
        aX.a(ProgressDialog.ProgressStyle.horizontal);
      }
      catch (Resources.NotFoundException paramArrayList)
      {
        com.estrongs.android.pop.app.service.b localb;
        paramArrayList.printStackTrace();
        break label266;
        aX.show();
        continue;
      }
      runOnUiThread(new ep(this));
      new er(this, localb).start();
      break label266;
      localb.a(paramArrayList);
    }
    label266:
    return true;
  }
  
  public boolean a(List<com.estrongs.fs.h> paramList)
  {
    return com.estrongs.android.pop.utils.aj.a(this, paramList, y());
  }
  
  public void aa()
  {
    try
    {
      boolean bool = com.estrongs.android.pop.esclasses.e.b();
      View localView;
      label22:
      ScaleAnimation localScaleAnimation1;
      if (bool)
      {
        localView = findViewById(2131362213);
        if (!bool) {
          break label116;
        }
        f1 = 0.0F;
        localScaleAnimation1 = new ScaleAnimation(0.0F, 2.0F, 1.0F, 1.0F, 1, f1, 1, 0.5F);
        if (!bool) {
          break label121;
        }
      }
      label116:
      label121:
      for (float f1 = 0.0F;; f1 = 1.0F)
      {
        ScaleAnimation localScaleAnimation2 = new ScaleAnimation(2.0F, 0.0F, 1.0F, 1.0F, 1, f1, 1, 0.5F);
        localScaleAnimation1.setDuration(300L);
        localScaleAnimation2.setDuration(300L);
        localScaleAnimation1.setAnimationListener(new aw(this, localView, localScaleAnimation2));
        localView.startAnimation(localScaleAnimation1);
        return;
        localView = findViewById(2131362214);
        break;
        f1 = 1.0F;
        break label22;
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public fh ab()
  {
    return bm;
  }
  
  protected View b()
  {
    return ae;
  }
  
  public com.estrongs.android.view.aw b(String paramString)
  {
    if (("#home_page#".equals(paramString)) || ("mynetwork://".equalsIgnoreCase(paramString))) {
      return d(paramString);
    }
    return a(paramString, null);
  }
  
  public com.estrongs.android.view.aw b(String paramString, TypedMap paramTypedMap)
  {
    return b(paramString, false);
  }
  
  public com.estrongs.android.view.aw b(String paramString, TypedMap paramTypedMap, boolean paramBoolean)
  {
    int i2 = -1;
    for (;;)
    {
      try
      {
        List localList = x;
        int i1 = 0;
        try
        {
          if (i1 < x.size())
          {
            if (a((com.estrongs.android.view.aw)x.get(i1), paramString)) {
              i2 = i1;
            }
          }
          else
          {
            if (i2 >= 0)
            {
              f(i2);
              if (paramBoolean) {
                com.estrongs.android.pop.utils.aa.a(paramString, ((com.estrongs.android.view.aw)x.get(i2)).hashCode());
              }
              if (am.G(paramString) != 28) {
                ((com.estrongs.android.view.aw)x.get(i2)).g(paramString);
              }
              paramString = (com.estrongs.android.view.aw)x.get(i2);
              return paramString;
            }
            paramString = a(paramString, paramTypedMap, paramBoolean);
            return paramString;
          }
        }
        finally {}
        i1 += 1;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return null;
      }
    }
  }
  
  public com.estrongs.android.view.aw b(String paramString, boolean paramBoolean)
  {
    return b(paramString, null, paramBoolean);
  }
  
  public void b(int paramInt)
  {
    for (;;)
    {
      int i1;
      synchronized (x)
      {
        int i2 = f.h();
        i1 = 0;
        if (i1 < x.size())
        {
          com.estrongs.android.view.aw localaw = (com.estrongs.android.view.aw)x.get(i1);
          if (i1 == i2)
          {
            localaw.a(paramInt);
            com.estrongs.android.pop.view.utils.ac.a(this, localaw.c(), paramInt);
          }
        }
        else
        {
          return;
        }
      }
      i1 += 1;
    }
  }
  
  public void b(com.estrongs.android.ui.navigation.r paramr)
  {
    if (aH != null) {
      aH.b(paramr);
    }
  }
  
  public void b(com.estrongs.android.view.aw paramaw)
  {
    for (;;)
    {
      int i1;
      synchronized (x)
      {
        int i2 = x.size();
        i1 = 0;
        if (i1 < i2)
        {
          com.estrongs.android.view.aw localaw = (com.estrongs.android.view.aw)x.get(i1);
          if ((localaw != null) && (e == e)) {
            g(i1);
          }
        }
        else
        {
          return;
        }
      }
      i1 += 1;
    }
  }
  
  public void b(String paramString1, String paramString2)
  {
    paramString2 = com.estrongs.android.pop.utils.cv.a(this, paramString1, paramString2);
    if (paramString2 == null) {}
    do
    {
      do
      {
        return;
      } while ((com.estrongs.android.pop.utils.cv.a(b)) || (!com.estrongs.android.util.bd.b(a)));
      paramString2 = b(a);
    } while ((paramString2 == null) || (!(paramString2 instanceof WebViewWrapper)));
    ((WebViewWrapper)paramString2).a(com.estrongs.android.pop.ad.a(FexApplication.a()).aL(), paramString1);
  }
  
  public void b(String paramString, List<com.estrongs.fs.h> paramList, boolean paramBoolean)
  {
    String str = com.estrongs.android.pop.b.b();
    if (P == null)
    {
      int i1 = -1;
      eg localeg = new eg(this, com.estrongs.android.pop.ad.a(this).p());
      if (com.estrongs.android.pop.z.n) {
        i1 = -2;
      }
      P = new com.estrongs.android.widget.g(this, str, localeg, i1);
      P.a(new eh(this));
      P.b(true);
    }
    y.clear();
    y.addAll(paramList);
    p = paramBoolean;
    P.b(getString(2131427339), S);
    P.c(getString(2131427340), (DialogInterface.OnClickListener)null);
    P.b(str);
    P.a(paramString);
    P.j();
  }
  
  public void b(List<String> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {}
    for (;;)
    {
      return;
      int i1 = 0;
      while (i1 < x.size())
      {
        ((com.estrongs.android.view.aw)x.get(i1)).d(paramList);
        i1 += 1;
      }
    }
  }
  
  public com.estrongs.android.view.aw c(String paramString, TypedMap paramTypedMap)
  {
    com.estrongs.android.view.aw localaw = y();
    if (localaw != null) {
      if (a(localaw, paramString))
      {
        localaw.a(paramString, paramTypedMap);
        paramTypedMap = localaw;
      }
    }
    for (;;)
    {
      if ((!am.aG(paramString)) && (!am.aO(paramString)) && (!am.T(paramString)) && (!am.s(paramString)) && (!am.t(paramString)) && (!"#home_page#".equals(paramString))) {
        be.c().a(paramString, true);
      }
      return paramTypedMap;
      paramTypedMap = a(paramString, paramTypedMap);
      continue;
      int i1 = com.estrongs.android.ui.d.e.a();
      f.removeViewAt(i1);
      paramTypedMap = a(com.estrongs.android.ui.d.e.b(), paramString, paramTypedMap);
    }
  }
  
  protected void c(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ((ImageView)findViewById(2131362010)).setVisibility(8);
      return;
    }
    aI();
  }
  
  public com.estrongs.android.view.aw d(String paramString)
  {
    return b(paramString, null);
  }
  
  public void d(boolean paramBoolean)
  {
    runOnUiThread(new cc(this, paramBoolean));
  }
  
  public com.estrongs.android.view.aw e(String paramString)
  {
    return c(paramString, null);
  }
  
  public void e(int paramInt)
  {
    com.estrongs.android.ui.navigation.n localn = aH();
    if (localn != null) {
      localn.a(paramInt);
    }
  }
  
  public void e(boolean paramBoolean)
  {
    if (am.aG(z())) {
      com.estrongs.android.ui.view.ag.a(this, getString(2131427605), 1);
    }
    View localView;
    Object localObject;
    do
    {
      do
      {
        return;
      } while (q);
      localView = findViewById(2131361984);
      al = ((EditText)localView.findViewById(2131361988));
      if (B == null) {
        B = ((ProgressBar)localView.findViewById(2131361990));
      }
      if (aj == null)
      {
        aj = ((ImageView)localView.findViewById(2131361989));
        aj.setOnClickListener(new ct(this));
      }
      aj.setVisibility(4);
      localView.setClickable(true);
      localObject = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, -1.0F, 1, 0.0F);
      ((TranslateAnimation)localObject).setDuration(500L);
      ((TranslateAnimation)localObject).setInterpolator(new DecelerateInterpolator());
      ((TranslateAnimation)localObject).setAnimationListener(new cu(this, localView));
      localView.setVisibility(0);
      q = true;
      localView.setAnimation((Animation)localObject);
      ((TranslateAnimation)localObject).start();
      localObject = y();
    } while (localObject == null);
    FrameLayout localFrameLayout = (FrameLayout)localView.findViewById(2131361985);
    ImageView localImageView = (ImageView)localView.findViewById(2131361986);
    ((com.estrongs.android.view.aw)localObject).f(true);
    al.removeTextChangedListener(aR);
    al.setText(null);
    LinearLayout localLinearLayout = (LinearLayout)localView.findViewById(2131361992);
    if ((localObject instanceof com.estrongs.android.ui.c.a)) {
      localLinearLayout.setVisibility(0);
    }
    for (;;)
    {
      localLinearLayout.setOnClickListener(new cv(this, (com.estrongs.android.view.aw)localObject));
      al.addTextChangedListener(aR);
      al.setOnEditorActionListener(null);
      ((LinearLayout)localView.findViewById(2131361995)).setOnClickListener(new cw(this));
      al.setOnKeyListener(aT);
      if (N == null) {
        N = new cx(this, this, localView, localImageView, ((com.estrongs.android.view.aw)localObject).ab(), localImageView);
      }
      localImageView.setImageDrawable(N.c(((com.estrongs.android.view.aw)localObject).ab()));
      localFrameLayout.setOnClickListener(new cy(this, (com.estrongs.android.view.aw)localObject, paramBoolean));
      return;
      localLinearLayout.setVisibility(8);
    }
  }
  
  protected boolean e()
  {
    com.estrongs.android.view.aw localaw = y();
    if (localaw == null) {}
    while ((localaw.z()) && (!(localaw instanceof WebViewWrapper))) {
      return false;
    }
    return true;
  }
  
  public void f(int paramInt)
  {
    if (f != null) {
      f.a(false);
    }
    ag = y();
    if (ag != null) {
      ag.b_();
    }
    if ("edit_mode".equals(k.l().b())) {
      k.m();
    }
    if (f != null) {
      f.a(paramInt);
    }
    paramInt = com.estrongs.android.ui.d.e.a();
    n.a(n.d(), paramInt);
    Object localObject = com.estrongs.android.ui.d.e.c(paramInt);
    I.a(((com.estrongs.android.ui.d.d)localObject).b(), false);
    localObject = y();
    if (localObject != null) {
      ((com.estrongs.android.view.aw)localObject).l();
    }
  }
  
  public void f(boolean paramBoolean)
  {
    try
    {
      N.dismiss();
      Object localObject1;
      Object localObject2;
      if (q)
      {
        q = false;
        localObject1 = findViewById(2131361984);
        if (!paramBoolean) {
          break label169;
        }
        localObject2 = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, -1.0F);
        ((TranslateAnimation)localObject2).setDuration(500L);
        ((TranslateAnimation)localObject2).setInterpolator(new AccelerateInterpolator());
        ((TranslateAnimation)localObject2).setAnimationListener(new db(this, (View)localObject1));
        ((View)localObject1).setAnimation((Animation)localObject2);
        ((TranslateAnimation)localObject2).start();
      }
      for (;;)
      {
        ((View)localObject1).setVisibility(8);
        al.removeTextChangedListener(aR);
        al.setOnKeyListener(null);
        localObject1 = y();
        if (localObject1 != null)
        {
          ((com.estrongs.android.view.aw)localObject1).f(false);
          if ((f(((com.estrongs.android.view.aw)localObject1).c())) && (T != null) && (!ff.b(T)))
          {
            T.a();
            ((com.estrongs.android.view.aw)localObject1).b(false);
          }
        }
        return;
        label169:
        q = false;
        localObject2 = (EditText)((View)localObject1).findViewById(2131361988);
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(((EditText)localObject2).getWindowToken(), 0);
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  protected boolean f()
  {
    com.estrongs.android.view.aw localaw = y();
    if (localaw != null)
    {
      if ((localaw instanceof com.estrongs.android.pop.app.diskusage.h)) {}
      while (((localaw instanceof com.estrongs.android.ui.c.a)) || ((localaw instanceof com.estrongs.android.view.cq)) || (((!localaw.o()) || (!localaw.T())) && (!localaw.h().isEmpty()))) {
        return false;
      }
      return true;
    }
    return true;
  }
  
  public boolean f(String paramString)
  {
    return (am.aO(paramString)) || (am.T(paramString)) || (am.aG(paramString)) || (am.Y(paramString)) || (am.W(paramString)) || (am.M(paramString)) || (am.X(paramString)) || ((am.aX(paramString)) && (am.X(am.bz(paramString))));
  }
  
  public void finish()
  {
    if (!be) {
      a(false, null, null);
    }
    FexApplication.a().b(false);
    synchronized (x)
    {
      Iterator localIterator = x.iterator();
      while (localIterator.hasNext())
      {
        com.estrongs.android.view.aw localaw = (com.estrongs.android.view.aw)localIterator.next();
        if (localaw != null) {
          localaw.a_();
        }
      }
    }
    x.clear();
    y.clear();
    ai.clear();
    com.estrongs.fs.a.b.a().e();
    com.estrongs.android.pop.app.b.a.d = true;
    com.estrongs.fs.util.a.a.clear();
    if (com.estrongs.android.pop.utils.aa.e)
    {
      com.estrongs.android.pop.utils.aa.b();
      com.estrongs.android.pop.utils.aa.e = false;
    }
    com.estrongs.android.pop.utils.aa.a();
    an.d();
    com.estrongs.android.util.ay.a();
    FexApplication.a().f();
    try
    {
      if (ba != null) {
        unbindService(ba);
      }
      for (;;)
      {
        FexApplication.a().k();
        super.finish();
        return;
        FexApplication.a().a(null);
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  protected void g()
  {
    n();
  }
  
  public void g(int paramInt)
  {
    if ("edit_mode".equals(k.l().b())) {
      k.m();
    }
    com.estrongs.android.ui.d.e.b(paramInt);
    synchronized (x)
    {
      if ((x.size() > 1) && (x.size() > paramInt))
      {
        com.estrongs.android.view.aw localaw = (com.estrongs.android.view.aw)x.remove(paramInt);
        if (localaw != null) {
          localaw.a_();
        }
        f.removeViewAt(paramInt);
        aB();
        n.b(paramInt);
        I.a(z(), false);
        localaw = y();
        if (localaw != null) {
          localaw.l();
        }
      }
      aH().h();
      return;
    }
  }
  
  public void g(boolean paramBoolean)
  {
    if (Y())
    {
      for (;;)
      {
        com.estrongs.android.view.aw localaw;
        synchronized (x)
        {
          Iterator localIterator = x.iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localaw = (com.estrongs.android.view.aw)localIterator.next();
          if ((localaw == null) || (!am.ba(localaw.c()))) {
            continue;
          }
          if (localaw == y()) {
            localaw.b(paramBoolean);
          }
        }
        localaw.a(true, paramBoolean);
      }
      return;
    }
    runOnUiThread(new av(this, paramBoolean));
  }
  
  public boolean g(String paramString)
  {
    return (paramString != null) && (!"apk://".equalsIgnoreCase(paramString)) && (!"book://".equalsIgnoreCase(paramString)) && (!"pic://".equalsIgnoreCase(paramString)) && (!"music://".equalsIgnoreCase(paramString)) && (!"video://".equalsIgnoreCase(paramString)) && (!"#home_page#".equals(paramString)) && (!"remote://".equals(paramString)) && (!am.r(paramString)) && (!am.bP(paramString)) && (!am.s(paramString)) && (!am.bg(paramString)) && (!am.bI(paramString)) && (!am.Y(paramString)) && (!am.aO(paramString)) && (!am.aG(paramString)) && (!am.aQ(paramString)) && (!am.aX(paramString)) && (!am.t(paramString)) && (!am.bQ(paramString)) && (!am.bR(paramString)) && (!am.L(paramString)) && (!am.M(paramString));
  }
  
  public com.estrongs.android.view.aw h(int paramInt)
  {
    com.estrongs.android.view.aw localaw;
    synchronized (x)
    {
      if (paramInt >= x.size()) {
        return null;
      }
    }
    return null;
  }
  
  public void h()
  {
    int i1 = com.estrongs.android.ui.d.e.a();
    com.estrongs.android.view.aw localaw = y();
    if (localaw == null) {
      return;
    }
    a(localaw.c(), i1, localaw);
  }
  
  public void h(String paramString)
  {
    com.estrongs.android.pop.utils.cd.a(paramString);
  }
  
  public int i(String paramString)
  {
    int i2 = x.size();
    List localList = x;
    int i1 = 0;
    for (;;)
    {
      if (i1 < i2) {}
      try
      {
        if (!a((com.estrongs.android.view.aw)x.get(i1), paramString)) {
          break label62;
        }
        return i1;
      }
      finally {}
      return -1;
      label62:
      i1 += 1;
    }
  }
  
  public Bitmap i(int paramInt)
  {
    if ((com.estrongs.android.ui.d.a.e == 0) || (com.estrongs.android.ui.d.a.d == 0)) {
      com.estrongs.android.ui.d.a.a(this);
    }
    if ((com.estrongs.android.ui.d.a.e == 0) || (com.estrongs.android.ui.d.a.d == 0)) {}
    while (f == null) {
      return null;
    }
    return f.b(paramInt, u);
  }
  
  public void i()
  {
    e locale = new e(this);
    r localr = new r(this, locale);
    FexApplication.a().a(localr);
    localr.a(locale);
  }
  
  public boolean isDestroyed()
  {
    return aQ;
  }
  
  public void j()
  {
    File[] arrayOfFile = new File(com.estrongs.android.pop.a.d).listFiles();
    if (arrayOfFile != null) {
      com.estrongs.fs.util.j.a(arrayOfFile);
    }
  }
  
  public void j(String paramString)
  {
    if (Y())
    {
      for (;;)
      {
        com.estrongs.android.view.aw localaw;
        synchronized (x)
        {
          Iterator localIterator = x.iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localaw = (com.estrongs.android.view.aw)localIterator.next();
          if ((localaw == null) || (!am.e(paramString, localaw.c()))) {
            continue;
          }
          if (localaw == y()) {
            localaw.b(true);
          }
        }
        localaw.a(true, true);
      }
      return;
    }
    runOnUiThread(new at(this, paramString));
  }
  
  public void k()
  {
    com.estrongs.android.view.aw localaw = y();
    if ((localaw != null) && (localaw.F()) && (com.estrongs.android.util.bd.a(al.getText().toString()))) {
      u();
    }
  }
  
  public void k(String paramString)
  {
    if (Y())
    {
      synchronized (x)
      {
        Iterator localIterator = x.iterator();
        while (localIterator.hasNext())
        {
          com.estrongs.android.view.aw localaw = (com.estrongs.android.view.aw)localIterator.next();
          if ((localaw != null) && (am.e(paramString, localaw.c()))) {
            localaw.e();
          }
        }
      }
      return;
    }
    runOnUiThread(new au(this, paramString));
  }
  
  public void l()
  {
    if ((v) && (!c)) {
      if (D.getVisibility() == 8) {
        D.setVisibility(0);
      }
    }
    com.estrongs.android.ui.navigation.n localn;
    do
    {
      return;
      localn = aH();
    } while (localn == null);
    localn.b();
  }
  
  public void m()
  {
    if (f != null) {
      f.c(f.h());
    }
  }
  
  public void n()
  {
    com.estrongs.android.ui.navigation.n localn = aH();
    if (localn != null) {
      localn.c();
    }
  }
  
  public boolean o()
  {
    return (aH != null) && ((aH.e()) || (aH.f()));
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 268439562) {
      if (paramInt2 != 0) {
        com.estrongs.android.pop.app.b.a.a().i();
      }
    }
    label24:
    Object localObject2;
    do
    {
      do
      {
        Object localObject1;
        do
        {
          ;;
          break label24;
          continue;
          do
          {
            do
            {
              do
              {
                while ((paramInt2 != -1) && (paramInt1 != 16781344) && (paramInt2 != 1001)) {}
                localObject1 = null;
                if (paramIntent != null) {
                  localObject1 = paramIntent.getExtras();
                }
                switch (paramInt1)
                {
                default: 
                  return;
                case 1001: 
                  localObject1 = com.estrongs.android.ui.pcs.r.a().j();
                }
              } while (localObject1 == null);
              ((com.estrongs.android.ui.pcs.j)localObject1).a(paramInt1, paramIntent, paramInt2);
              return;
            } while ((am == null) || (Z == null));
            am.setBackgroundDrawable(Z.h());
            return;
            be = true;
            paramIntent = new Configuration(getResources().getConfiguration());
            paramInt1 = touchscreen;
            if (paramInt1 == 3) {}
            for (touchscreen = 1;; touchscreen = 3)
            {
              getResources().updateConfiguration(paramIntent, getResources().getDisplayMetrics());
              touchscreen = paramInt1;
              getResources().updateConfiguration(paramIntent, getResources().getDisplayMetrics());
              Z.l();
              com.estrongs.android.d.f.a(this).a();
              com.estrongs.android.ui.c.a.m();
              h.post(new dw(this));
              return;
            }
          } while (localObject1 == null);
          paramIntent = ((Bundle)localObject1).getString("path");
          if (((Bundle)localObject1).getBoolean("isDir", true))
          {
            b(paramIntent, true);
            return;
          }
          try
          {
            if (com.estrongs.android.util.bc.c(paramIntent))
            {
              localObject1 = new TypedMap();
              ((TypedMap)localObject1).put("show_hidelist_file", Boolean.valueOf(true));
              AppRunner.a(this, paramIntent, paramIntent, (TypedMap)localObject1);
              return;
            }
            AppRunner.a(this, paramIntent, paramIntent);
            return;
          }
          catch (Exception paramIntent) {}
          com.estrongs.android.ui.view.ag.a(this, 2131428363, 0);
          aP.a(true);
          return;
          localObject1 = x.iterator();
        } while (!((Iterator)localObject1).hasNext());
        localObject2 = (com.estrongs.android.view.aw)((Iterator)localObject1).next();
      } while (!(localObject2 instanceof WebViewWrapper));
      localObject2 = (WebViewWrapper)localObject2;
    } while (!((WebViewWrapper)localObject2).au());
    ((WebViewWrapper)localObject2).b(paramIntent);
    return;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    com.estrongs.android.view.aw localaw = y();
    if ((localaw != null) && (am.aX(z())) && (localaw.o())) {
      localaw.R();
    }
    if (q) {
      f(false);
    }
    if (N != null) {
      N = null;
    }
    aD();
    aE();
    if (orientation == 1) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      if (!v) {
        u = c;
      }
      as();
      h.post(new dx(this));
      Y = -2;
      paramConfiguration = z();
      if (paramConfiguration != null) {
        I.a(paramConfiguration, true, false);
      }
      if (R != null) {
        R.b(u);
      }
      if ((aN != null) && (aN.a()))
      {
        aN.d();
        aN = null;
      }
      return;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    int i3 = 0;
    super.onCreate(paramBundle);
    F = getWindowgetAttributessoftInputMode;
    Z = al.a(FexApplication.a());
    try
    {
      if (getResourcesgetConfigurationorientation != 1) {
        break label305;
      }
      bool = true;
      u = bool;
      c = u;
    }
    catch (Exception localException)
    {
      do
      {
        for (;;)
        {
          boolean bool;
          String[] arrayOfString;
          localException.printStackTrace();
        }
      } while (!ah.equals("#music_player#"));
      com.estrongs.android.ui.e.w.a(this);
      finish();
      return;
    }
    q = false;
    j = "normal_mode";
    bf = this;
    m = com.estrongs.android.pop.ad.a(this);
    FexApplication.a().b(false);
    aK = com.estrongs.android.util.a.a(this, true, "FileExplorer");
    ah = Uri.decode(getIntent().getDataString());
    if (ah != null)
    {
      if ((ah.startsWith("file:///")) || (ah.startsWith("FILE:///"))) {
        ah = ah.substring(7);
      }
    }
    else
    {
      if ((!"Market".equalsIgnoreCase("Market")) && (!"Market".equalsIgnoreCase("web"))) {
        break label353;
      }
      if ((e == null) || (e.length() <= 0)) {
        break label343;
      }
      o(e);
      label212:
      if (paramBundle == null) {
        break label790;
      }
      arrayOfString = paramBundle.getStringArray("winPaths");
      com.estrongs.fs.impl.usb.e.a(paramBundle.getBoolean("usbMountAble"));
    }
    for (;;)
    {
      int i2;
      int i1;
      if (arrayOfString != null)
      {
        i2 = arrayOfString.length;
        i1 = 0;
        label246:
        if (i1 < i2)
        {
          String str2 = arrayOfString[i1];
          String str1 = str2;
          if (str2 != null)
          {
            str1 = str2;
            if (com.estrongs.android.pop.z.n)
            {
              str1 = str2;
              if (str2.equals("/")) {
                if (arrayOfString.length <= 1) {}
              }
            }
          }
          for (;;)
          {
            i1 += 1;
            break label246;
            label305:
            bool = false;
            break;
            label343:
            o("Market");
            break label212;
            label353:
            if (("Market".equalsIgnoreCase("oem")) && (com.estrongs.android.pop.z.b != null))
            {
              o(com.estrongs.android.pop.z.b);
              break label212;
            }
            o("Market");
            break label212;
            str1 = "/sdcard";
            if ((com.estrongs.android.pop.utils.cc.a()) || ((!am.aB(str1)) && (!am.az(str1)))) {
              com.estrongs.android.ui.d.e.a(new com.estrongs.android.ui.d.d(str1));
            }
          }
        }
        i2 = paramBundle.getInt("currentWin", 0);
        i1 = i2;
        if (i2 >= com.estrongs.android.ui.d.e.c()) {
          i1 = 0;
        }
        com.estrongs.android.ui.d.e.a(i1);
        i1 = i3;
        while (i1 < com.estrongs.android.ui.d.e.c())
        {
          com.estrongs.android.ui.d.e.c(i1).a(true);
          i1 += 1;
        }
      }
      com.estrongs.android.ui.d.e.b(this);
      com.estrongs.android.ui.d.e.a(0);
      Object localObject = m;
      if ((com.estrongs.android.pop.utils.cc.a()) || (com.estrongs.android.pop.utils.cc.f()))
      {
        paramBundle = "#home_page#";
        label512:
        paramBundle = ((com.estrongs.android.pop.ad)localObject).k(paramBundle);
        if (!"#home#".equals(paramBundle)) {
          break label787;
        }
        paramBundle = m.j("Market");
      }
      label787:
      for (;;)
      {
        i1 = i3;
        if (paramBundle == null) {
          break;
        }
        i2 = 0;
        for (;;)
        {
          i1 = i3;
          if (i2 >= com.estrongs.android.ui.d.e.c()) {
            break;
          }
          if (paramBundle.equals(com.estrongs.android.ui.d.e.c(i2).b()))
          {
            com.estrongs.android.ui.d.e.a(i2);
            i1 = i3;
            break;
            paramBundle = "#home#";
            break label512;
          }
          i2 += 1;
        }
        try
        {
          Class.forName(com.estrongs.fs.impl.c.a.class.getName());
          v = com.estrongs.android.pop.utils.cl.a(this);
          w = com.estrongs.android.pop.utils.cl.c(this);
          if (v) {
            u = true;
          }
          ao();
          setContentView(2130903119);
          paramBundle = (ESRootView)findViewById(2131362209);
          aP = paramBundle;
          aa = ((FrameLayout)findViewById(2131362210));
          localObject = (ESGesturePanel)findViewById(2131362212);
          paramBundle.a((ESGesturePanel)localObject);
          E = ((ESGesturePanel)localObject);
          aq();
          aY = com.estrongs.android.pop.ad.a(this).v();
          aZ = com.estrongs.android.pop.ad.a(this).p();
          if (FexApplication.a().i())
          {
            paramBundle = VerifyPasswordDialog.a(this, VerifyPasswordDialog.DialogType.START);
            paramBundle.a(new ef(this));
            paramBundle.b();
          }
          paramBundle = new eq(this);
          FexApplication.a().a(paramBundle);
          i();
          return;
        }
        catch (ClassNotFoundException paramBundle)
        {
          for (;;)
          {
            paramBundle.printStackTrace();
          }
        }
      }
      label790:
      localObject = null;
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (!aQ) {
      am();
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 82) {
      try
      {
        com.estrongs.android.view.aw localaw1 = y();
        if ((localaw1 != null) && ((localaw1 instanceof WebViewWrapper))) {
          ((WebViewWrapper)localaw1).as();
        }
        if (O) {
          return true;
        }
        O = true;
        if ((i != null) && (i.a())) {
          return true;
        }
        if (aH() != null) {
          if (!o())
          {
            if ((i != null) && (i.e())) {
              return true;
            }
            l();
          }
          else
          {
            q();
          }
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    do
    {
      return super.onKeyDown(paramInt, paramKeyEvent);
      if (paramInt == 84)
      {
        localObject1 = z();
        if ((am.Q((String)localObject1)) || (am.aP((String)localObject1)) || (am.t((String)localObject1)))
        {
          com.estrongs.android.ui.view.ag.a(this, getString(2131427605), 1);
          return true;
        }
        x();
        return true;
      }
    } while (paramInt != 4);
    if (i.a()) {
      return true;
    }
    if (aP.a()) {
      return true;
    }
    if (o())
    {
      q();
      return true;
    }
    if ((am.aX(z())) && (y().o()))
    {
      y().R();
      if (!q) {
        return true;
      }
    }
    if (q)
    {
      u();
      return true;
    }
    if (((am.S(z())) || (am.U(z())) || (am.V(z())) || (am.W(z()))) && (y().o()))
    {
      y().R();
      return true;
    }
    if (i.d()) {
      return true;
    }
    am.bk(z());
    String str1 = am.bE(am.bF(z()));
    String str2 = am.bE(am.bF(m.j("Market")));
    com.estrongs.android.view.aw localaw2 = y();
    if (getIntent() == null) {}
    Object localObject2;
    for (Object localObject1 = null; (localObject1 != null) && ((((String)localObject1).equals("resource/folder")) || (((String)localObject1).equals("org.openintents.action.VIEW_DIRECTORY"))); localObject1 = getIntent().getType())
    {
      localObject1 = getIntent().getDataString();
      if (localObject1 == null) {
        break label789;
      }
      localObject2 = Uri.decode((String)localObject1);
      localObject1 = localObject2;
      if (localObject2 != null) {
        if (!((String)localObject2).startsWith("file:///"))
        {
          localObject1 = localObject2;
          if (!((String)localObject2).startsWith("FILE:///")) {}
        }
        else
        {
          localObject1 = ((String)localObject2).substring(7);
        }
      }
      localObject2 = localObject1;
      if (localObject1 != null)
      {
        localObject2 = localObject1;
        if (!((String)localObject1).endsWith("/")) {
          localObject2 = (String)localObject1 + "/";
        }
      }
      if ((localObject2 == null) || (str1 == null) || (!((String)localObject2).equals(str1)) || (localaw2 == null) || (!localaw2.O())) {
        break;
      }
      finish();
      return true;
    }
    label667:
    int i1;
    if ((localaw2 != null) && (str1 != null))
    {
      if (!localaw2.O())
      {
        if ((am.aX(z())) && (!am.X(am.bz(z()))))
        {
          y().a(0L);
          y().m("all");
        }
        localaw2.f();
        return true;
      }
      if (!str1.equals(str2)) {}
    }
    else
    {
      localObject1 = com.estrongs.android.ui.d.e.b();
      if (localaw2 != null) {
        break label737;
      }
      i1 = 0;
      label679:
      if ((!am.aW(str1)) || (!"externalstorage://".equals(am.aY(str1)))) {
        break label802;
      }
    }
    label737:
    label789:
    label797:
    label802:
    for (int i2 = 1;; i2 = 0)
    {
      if ((am.aS(str1)) || (i1 != 0) || (i2 != 0))
      {
        ay();
        return true;
        if (localaw2.f() == null) {
          break label667;
        }
        return true;
        if ((localObject1 == null) || (((com.estrongs.android.ui.d.d)localObject1).e())) {
          break label797;
        }
        i1 = 1;
        break label679;
      }
      if (!X)
      {
        X = true;
        paramKeyEvent.startTracking();
        break label808;
      }
      X = false;
      com.estrongs.android.ui.view.ag.b();
      finish();
      break label808;
      localObject2 = null;
      break;
      return true;
      i1 = 0;
      break label679;
    }
    label808:
    return true;
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 82)
    {
      O = false;
      return true;
    }
    if ((4 == paramInt) && (X) && (!isFinishing()))
    {
      com.estrongs.android.ui.view.ag.a(this, 2131427403, 1);
      h.postDelayed(new dh(this), 3500L);
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    String str = paramIntent.getStringExtra("archive_file_name");
    if (str != null) {
      if (com.estrongs.android.util.bc.o(str)) {
        com.estrongs.io.archive.sevenzip.f.a(new ay(this, str), com.estrongs.io.archive.sevenzip.f.a);
      }
    }
    do
    {
      do
      {
        return;
        d("cmpn://" + str);
        return;
        if ("com.estrongs.android.SHOW_DISK_USAGE".equals(paramIntent.getAction()))
        {
          str = com.estrongs.android.pop.b.b();
          paramIntent = str;
          if (!str.endsWith("/")) {
            paramIntent = str + "/";
          }
          d("du://" + paramIntent);
          return;
        }
        if ("show_app".equals(paramIntent.getStringExtra("action")))
        {
          d("app://user");
          return;
        }
        if ("from_update_notification".equals(paramIntent.getStringExtra("action")))
        {
          com.estrongs.android.pop.utils.c.c(Q().b(this));
          d("app://update");
          return;
        }
        if ("show_local_tab".equals(paramIntent.getStringExtra("action")))
        {
          d(com.estrongs.android.pop.ad.a(this).j("Market"));
          return;
        }
        if ("open_music_player".equals(paramIntent.getStringExtra("action")))
        {
          com.estrongs.android.ui.e.w.a(this);
          return;
        }
        paramIntent = paramIntent.getDataString();
      } while (paramIntent == null);
      str = Uri.decode(paramIntent);
    } while (str == null);
    if (!str.startsWith("file:///"))
    {
      paramIntent = str;
      if (!str.startsWith("FILE:///")) {}
    }
    else
    {
      paramIntent = str.substring(7);
    }
    if (o()) {
      q();
    }
    if (am.t(paramIntent))
    {
      b(paramIntent);
      return;
    }
    d(paramIntent);
  }
  
  protected void onPause()
  {
    aK.c();
    if (isFinishing()) {
      am();
    }
    com.estrongs.android.view.aw localaw = y();
    if (localaw != null) {
      localaw.b_();
    }
    super.onPause();
  }
  
  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
  }
  
  protected void onResume()
  {
    super.onResume();
    aK.b();
    boolean bool1 = com.estrongs.fs.impl.local.l.g();
    boolean bool2 = com.estrongs.android.pop.ad.a(this).Z();
    if ((bool1) && (!bool2))
    {
      aK.c("Root_Already", "Root_Already");
      com.estrongs.android.pop.ad.a(this).k(true);
    }
    com.estrongs.android.view.aw localaw = y();
    if (localaw != null) {
      localaw.l();
    }
    h.post(new bh(this));
    h.postDelayed(new bi(this), 1000L);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    try
    {
      int i2 = com.estrongs.android.ui.d.e.c();
      String[] arrayOfString = new String[i2];
      int i1 = 0;
      while (i1 < i2)
      {
        arrayOfString[i1] = com.estrongs.android.ui.d.e.c(i1).b();
        i1 += 1;
      }
      paramBundle.putStringArray("winPaths", arrayOfString);
      paramBundle.putInt("currentWin", com.estrongs.android.ui.d.e.a());
      paramBundle.putBoolean("usbMountAble", com.estrongs.fs.impl.usb.e.e());
      return;
    }
    catch (Exception paramBundle) {}
  }
  
  protected void onStart()
  {
    super.onStart();
  }
  
  protected void onStop()
  {
    com.estrongs.android.view.aw localaw = y();
    if ((localaw instanceof WebViewWrapper)) {
      ((WebViewWrapper)localaw).as();
    }
    super.onStop();
  }
  
  public void p()
  {
    a(null);
  }
  
  public void q()
  {
    if (aH != null) {
      aH.d();
    }
  }
  
  public void r()
  {
    com.estrongs.android.view.aw localaw = y();
    if ((localaw != null) && (!localaw.o()))
    {
      String str = localaw.c();
      if ((!com.estrongs.android.util.bd.k()) && (((am.V(str)) && (com.estrongs.android.pop.ac.a() >= 11)) || (am.S(str)) || (am.U(str)) || (am.T(str)) || (am.aO(str)))) {
        d(localaw);
      }
    }
    else
    {
      return;
    }
    if ((localaw instanceof com.estrongs.android.view.cd))
    {
      ((com.estrongs.android.view.cd)localaw).ap();
      return;
    }
    localaw.b(true);
  }
  
  public void s()
  {
    i.a("normal_mode", Boolean.valueOf(true));
    j = "normal_mode";
    com.estrongs.android.view.aw localaw = y();
    if (localaw != null) {
      localaw.a(false);
    }
    w();
  }
  
  public void setTabletSideBar(View paramView)
  {
    C = new com.estrongs.android.ui.navigation.s(this, paramView);
    aH().a(C.b());
    ai();
  }
  
  public void startActivity(Intent paramIntent)
  {
    try
    {
      super.startActivity(paramIntent);
      return;
    }
    catch (ActivityNotFoundException paramIntent)
    {
      paramIntent.printStackTrace();
    }
  }
  
  public Rect t()
  {
    int[] arrayOfInt;
    if (ac == null)
    {
      ac = new Rect();
      arrayOfInt = new int[2];
      if (!u) {
        break label81;
      }
      f.getLocationInWindow(arrayOfInt);
    }
    for (;;)
    {
      ac = new Rect(arrayOfInt[0], arrayOfInt[1], arrayOfInt[0] + f.getMeasuredWidth(), arrayOfInt[1] + f.getMeasuredHeight());
      return ac;
      label81:
      findViewById(2131362001).getLocationInWindow(arrayOfInt);
    }
  }
  
  public void u()
  {
    f(true);
  }
  
  public void v()
  {
    if (aI != null)
    {
      if (a)
      {
        AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.1F, 1.0F);
        localAlphaAnimation.setDuration(200L);
        localAlphaAnimation.setInterpolator(new AccelerateInterpolator());
        aI.setAnimation(localAlphaAnimation);
        localAlphaAnimation.start();
      }
      aI.setVisibility(0);
      if (!u) {
        findViewById(2131362462).setVisibility(4);
      }
    }
    if (aJ != null) {
      aJ.setVisibility(0);
    }
  }
  
  public void w()
  {
    if (!b) {}
    for (boolean bool = true;; bool = false)
    {
      i(bool);
      return;
    }
  }
  
  public void x()
  {
    String str = z();
    if (q)
    {
      u();
      return;
    }
    if ((am.bh(z())) || (am.aZ(z())))
    {
      m(str);
      return;
    }
    if (!f(str)) {}
    for (boolean bool = true;; bool = false)
    {
      e(bool);
      return;
    }
  }
  
  public com.estrongs.android.view.aw y()
  {
    int i1;
    com.estrongs.android.view.aw localaw;
    synchronized (x)
    {
      i1 = com.estrongs.android.ui.d.e.a();
      if (i1 >= x.size()) {
        return null;
      }
    }
    return null;
  }
  
  public String z()
  {
    if (y() == null) {
      return null;
    }
    return y().c();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.FileExplorerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */