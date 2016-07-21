package com.estrongs.android.pop.view;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.NotificationManager;
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
import android.graphics.Rect;
import android.net.LocalSocket;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v7.view.ActionMode;
import android.text.Html;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.WindowManager.BadTokenException;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.webkit.WebIconDatabase;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView.OnEditorActionListener;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.SaveDataService;
import com.estrongs.android.pop.esclasses.ESAbsToolbarActivity;
import com.estrongs.android.pop.spfs.SPFileObject;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.android.ui.dialog.ProgressDialog.ProgressStyle;
import com.estrongs.android.ui.dialog.VerifyPasswordDialog;
import com.estrongs.android.ui.dialog.ld;
import com.estrongs.android.ui.drag.DragActionZone;
import com.estrongs.android.ui.drag.DragLayer;
import com.estrongs.android.ui.e.ik;
import com.estrongs.android.ui.e.jz;
import com.estrongs.android.ui.guesture.ESGestureCtrl;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.ui.notification.ChromeCastPlayerNotificationHelper;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.WebViewWrapper;
import com.estrongs.android.view.bx;
import com.estrongs.android.view.dv;
import com.estrongs.android.view.eu;
import com.estrongs.android.view.fp;
import com.estrongs.android.widget.ThumbContentViewSwitcher;
import com.estrongs.fs.util.j;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class FileExplorerActivity
  extends ESAbsToolbarActivity
  implements jz
{
  public static boolean C;
  public static GregorianCalendar D;
  private static final String R = FileExplorerActivity.class.getSimpleName();
  private static FileExplorerActivity aT = null;
  private static Object aU = new Object();
  private static LocalSocket ba = null;
  public static boolean v = false;
  public ESGesturePanel A = null;
  public int B = 0;
  protected dv E = new c(this);
  public com.estrongs.android.view.cq<com.estrongs.fs.h> F = new ae(this);
  com.estrongs.android.view.dw G = new aq(this);
  public com.estrongs.fs.i H = new bc(this);
  protected com.estrongs.android.view.cp I = new bu(this);
  protected com.estrongs.android.view.dx J = new ci(this);
  public com.estrongs.android.widget.f K;
  com.estrongs.android.widget.av L = new ca(this);
  public com.estrongs.android.widget.aj M;
  DialogInterface.OnClickListener N = new cc(this);
  eg O;
  SparseArray<Object> P = new SparseArray();
  Handler Q = new cq(this);
  private boolean S = false;
  private com.estrongs.android.ui.theme.at T;
  private Rect U;
  private com.estrongs.android.view.cr V;
  private String W = null;
  private List<com.estrongs.android.util.q<com.estrongs.android.view.cr, String>> X = new LinkedList();
  private DragLayer Y;
  private DragLayer Z;
  private boolean aA = false;
  private TextView.OnEditorActionListener aB;
  private int aC = 2000;
  private Runnable aD = null;
  private boolean aE = false;
  private ProgressDialog aF;
  private boolean aG;
  private boolean aH = true;
  private ServiceConnection aI;
  private List<com.estrongs.android.ui.c.b.h> aJ = null;
  private boolean aK = false;
  private com.estrongs.android.ui.controller.a aL;
  private com.estrongs.android.ui.d.i aM;
  private com.estrongs.android.pop.app.analysis.view.b aN;
  private com.estrongs.android.ui.topclassify.e aO;
  private long aP;
  private FrameLayout aQ;
  private boolean aR = false;
  private boolean aS = false;
  private BroadcastReceiver aV;
  private BroadcastReceiver aW = null;
  private BroadcastReceiver aX;
  private BroadcastReceiver aY;
  private com.estrongs.android.pop.utils.c aZ;
  private com.estrongs.android.ui.drag.d aa;
  private DragActionZone ab;
  private com.estrongs.android.ui.drag.c ac;
  private TranslateAnimation ad;
  private TranslateAnimation ae;
  private DragActionZone af;
  private com.estrongs.android.ui.drag.c ag;
  private TranslateAnimation ah;
  private TranslateAnimation ai;
  private DragActionZone aj;
  private com.estrongs.android.ui.drag.c ak;
  private TranslateAnimation al;
  private TranslateAnimation am;
  private DragActionZone an;
  private com.estrongs.android.ui.drag.c ao;
  private TranslateAnimation ap;
  private TranslateAnimation aq;
  private DragLayer ar;
  private com.estrongs.android.ui.drag.p as;
  private com.estrongs.android.ui.navigation.m at = null;
  private com.estrongs.android.j.c au = null;
  private com.estrongs.android.ui.pcs.u av;
  private String aw;
  private com.estrongs.android.ui.view.bw ax = null;
  private HashMap<String, Runnable> ay;
  private ESGestureCtrl az;
  private ei bb = new ei(this);
  private boolean bc = true;
  private int bd;
  public int e = 0;
  public FrameLayout f;
  public View g;
  public ThumbContentViewSwitcher h;
  public Handler i;
  public com.estrongs.android.g.a j = null;
  public com.estrongs.android.pop.ad k;
  public com.estrongs.android.pop.ai l;
  public com.estrongs.android.view.af m;
  public boolean n = false;
  public boolean o = false;
  public boolean p = false;
  public String q;
  public com.estrongs.fs.h r;
  public boolean t = true;
  public boolean u = false;
  public List<com.estrongs.android.view.cr> w = new ArrayList();
  public final List<com.estrongs.fs.h> x = new ArrayList();
  public com.estrongs.android.ui.navigation.r y = null;
  public View z = null;
  
  static
  {
    C = false;
    D = null;
    D = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
    D.set(1980, 8, 30, 0, 0, 0);
  }
  
  public static FileExplorerActivity W()
  {
    return aT;
  }
  
  public static FileExplorerActivity X()
  {
    return aT;
  }
  
  private com.estrongs.android.view.cr a(Activity paramActivity, com.estrongs.fs.util.a.a parama, com.estrongs.android.view.dw paramdw, String paramString)
  {
    if ((com.estrongs.android.util.ap.aY(paramString)) || (com.estrongs.android.util.ap.aQ(paramString)) || (com.estrongs.android.util.ap.X(paramString))) {
      paramActivity = a(parama, paramString);
    }
    for (;;)
    {
      paramActivity.g(com.estrongs.android.pop.ad.a(this).j());
      B = paramString;
      b(paramActivity, paramString);
      aL.a(paramActivity, paramString);
      return paramActivity;
      if ("#home_page#".equals(paramString))
      {
        paramActivity = new bf(this, this, parama, paramdw);
        paramActivity.i(T.i());
        paramActivity.a(E);
        a(paramActivity);
      }
      else if ("download://".equals(paramString))
      {
        paramActivity = new com.estrongs.android.ui.b.u(this, parama, paramdw);
        paramActivity.a(I);
        paramActivity.a(F);
        a(paramActivity);
      }
      else if (com.estrongs.android.util.ap.ba(paramString))
      {
        parama = new com.estrongs.android.view.g(this, parama, paramdw);
        parama.a(I);
        parama.a(F);
        parama.a(com.estrongs.android.pop.view.utils.ac.b(paramActivity, paramString));
        parama.i(T.i());
        parama.a(E);
        a(parama);
        paramActivity = parama;
      }
      else if (com.estrongs.android.util.ap.u(paramString))
      {
        paramActivity = new com.estrongs.android.pop.app.diskusage.h(this, parama, paramdw);
        paramActivity.a(I);
        paramActivity.a(F);
        paramActivity.a(E);
        a(paramActivity);
      }
      else if (com.estrongs.android.util.ap.bu(paramString))
      {
        parama = new com.estrongs.android.view.a(this, parama, paramdw);
        parama.a(I);
        parama.a(F);
        parama.a(E);
        parama.a(J);
        parama.a(com.estrongs.android.pop.view.utils.ac.b(paramActivity, paramString));
        a(parama);
        paramActivity = parama;
      }
      else if ("remote://".equals(paramString))
      {
        paramActivity = new fp(this, parama, paramdw);
        a(paramActivity);
      }
      else if ((paramString.startsWith("http")) || (paramString.startsWith("https")))
      {
        paramActivity = new WebViewWrapper(this, paramdw);
        paramActivity.a(E);
        a(paramActivity);
      }
      else if ((com.estrongs.android.util.ap.bl(paramString)) || (com.estrongs.android.util.ap.aJ(paramString)))
      {
        parama = new bh(this, paramActivity, parama, paramdw);
        parama.a(E);
        parama.a(I);
        parama.a(J);
        parama.a(F);
        parama.a(com.estrongs.android.pop.view.utils.ac.b(paramActivity, paramString));
        parama.b(H);
        parama.a(aa);
        parama.i(T.i());
        a(parama);
        paramActivity = parama;
      }
      else if ((com.estrongs.android.util.ap.ai(paramString)) || (com.estrongs.android.util.ap.ag(paramString)))
      {
        parama = new com.estrongs.android.view.b(this, parama, paramdw);
        parama.a(E);
        parama.a(I);
        parama.a(J);
        parama.a(F);
        parama.a(com.estrongs.android.pop.view.utils.ac.b(paramActivity, paramString));
        parama.b(H);
        parama.a(aa);
        parama.i(T.i());
        a(parama);
        paramActivity = parama;
      }
      else if (com.estrongs.android.util.ap.cj(paramString))
      {
        parama = new eu(paramActivity, parama, paramdw);
        parama.a(com.estrongs.android.pop.view.utils.ac.b(paramActivity, paramString));
        parama.a(I);
        parama.a(F);
        a(parama);
        paramActivity = parama;
      }
      else if ("clean://".equals(paramString))
      {
        paramActivity = new com.estrongs.android.view.w(this, parama, paramdw);
        paramActivity.i(T.i());
        paramActivity.a(E);
      }
      else if ("log://".equals(paramString))
      {
        paramActivity = new com.estrongs.android.view.er(this, parama, paramdw);
        paramActivity.i(T.i());
        paramActivity.a(F);
        paramActivity.a(E);
      }
      else if (com.estrongs.android.util.ap.V(paramString))
      {
        parama = new com.estrongs.android.view.music.a(this, parama, paramdw);
        parama.a(I);
        parama.a(F);
        parama.a(E);
        parama.a(J);
        parama.a(com.estrongs.android.pop.view.utils.ac.b(paramActivity, paramString));
        a(parama);
        paramActivity = parama;
      }
      else if (com.estrongs.android.util.ap.bx(paramString))
      {
        parama = new com.estrongs.android.view.dy(this, parama, paramdw);
        parama.a(I);
        parama.a(F);
        parama.a(E);
        parama.a(J);
        parama.a(com.estrongs.android.pop.view.utils.ac.b(paramActivity, paramString));
        a(parama);
        paramActivity = parama;
      }
      else if (com.estrongs.android.util.ap.ad(paramString))
      {
        parama = new bx(this, parama, paramdw);
        parama.a(I);
        parama.a(F);
        parama.a(E);
        parama.a(J);
        parama.a(com.estrongs.android.pop.view.utils.ac.b(paramActivity, paramString));
        a(parama);
        paramActivity = parama;
      }
      else if (com.estrongs.android.util.ap.ab(paramString))
      {
        parama = new com.estrongs.android.view.ak(this, parama, paramdw);
        parama.a(I);
        parama.a(F);
        parama.a(E);
        parama.a(J);
        parama.a(com.estrongs.android.pop.view.utils.ac.b(paramActivity, paramString));
        a(parama);
        paramActivity = parama;
      }
      else
      {
        parama = new bm(this, paramActivity, parama, paramdw);
        parama.a(E);
        parama.a(I);
        parama.a(J);
        parama.a(F);
        parama.a(com.estrongs.android.pop.view.utils.ac.b(paramActivity, paramString));
        parama.b(H);
        parama.a(aa);
        parama.i(T.i());
        a(parama);
        paramActivity = parama;
      }
    }
  }
  
  /* Error */
  private com.estrongs.android.view.cr a(com.estrongs.android.ui.d.h arg1)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 604	com/estrongs/android/ui/d/h:a	()Ljava/lang/String;
    //   4: astore 4
    //   6: aload_1
    //   7: ifnull +16 -> 23
    //   10: aload_1
    //   11: invokevirtual 607	com/estrongs/android/ui/d/h:c	()I
    //   14: iconst_m1
    //   15: if_icmpeq +8 -> 23
    //   18: aload 4
    //   20: ifnonnull +5 -> 25
    //   23: aconst_null
    //   24: areturn
    //   25: aload 4
    //   27: astore_3
    //   28: aload 4
    //   30: invokestatic 610	com/estrongs/android/util/ap:bg	(Ljava/lang/String;)Z
    //   33: ifeq +9 -> 42
    //   36: aload 4
    //   38: invokestatic 614	com/estrongs/android/util/ap:bn	(Ljava/lang/String;)Ljava/lang/String;
    //   41: astore_3
    //   42: aload_3
    //   43: invokestatic 524	com/estrongs/android/util/ap:ai	(Ljava/lang/String;)Z
    //   46: ifeq +92 -> 138
    //   49: aload_0
    //   50: getfield 616	com/estrongs/android/pop/view/FileExplorerActivity:k	Lcom/estrongs/android/pop/ad;
    //   53: aload_3
    //   54: invokevirtual 619	com/estrongs/android/pop/ad:A	(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;
    //   57: astore 4
    //   59: aload_0
    //   60: aload_0
    //   61: aload 4
    //   63: aload_0
    //   64: getfield 294	com/estrongs/android/pop/view/FileExplorerActivity:G	Lcom/estrongs/android/view/dw;
    //   67: aload_3
    //   68: invokespecial 621	com/estrongs/android/pop/view/FileExplorerActivity:a	(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;Ljava/lang/String;)Lcom/estrongs/android/view/cr;
    //   71: astore 4
    //   73: aload_0
    //   74: getfield 623	com/estrongs/android/pop/view/FileExplorerActivity:h	Lcom/estrongs/android/widget/ThumbContentViewSwitcher;
    //   77: aload 4
    //   79: invokevirtual 626	com/estrongs/android/view/cr:aE	()Landroid/view/View;
    //   82: invokevirtual 632	com/estrongs/android/widget/ThumbContentViewSwitcher:addView	(Landroid/view/View;)V
    //   85: aload_0
    //   86: invokevirtual 635	com/estrongs/android/pop/view/FileExplorerActivity:au	()Lcom/estrongs/android/ui/d/i;
    //   89: aload_1
    //   90: invokevirtual 640	com/estrongs/android/ui/d/i:b	(Lcom/estrongs/android/ui/d/h;)I
    //   93: istore_2
    //   94: aload_0
    //   95: getfield 245	com/estrongs/android/pop/view/FileExplorerActivity:w	Ljava/util/List;
    //   98: astore_1
    //   99: aload_1
    //   100: monitorenter
    //   101: aload_0
    //   102: getfield 245	com/estrongs/android/pop/view/FileExplorerActivity:w	Ljava/util/List;
    //   105: iload_2
    //   106: aload 4
    //   108: invokeinterface 646 3 0
    //   113: aload_1
    //   114: monitorexit
    //   115: aload_0
    //   116: getfield 228	com/estrongs/android/pop/view/FileExplorerActivity:X	Ljava/util/List;
    //   119: new 648	com/estrongs/android/util/q
    //   122: dup
    //   123: aload 4
    //   125: aload_3
    //   126: invokespecial 651	com/estrongs/android/util/q:<init>	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   129: invokeinterface 653 2 0
    //   134: pop
    //   135: aload 4
    //   137: areturn
    //   138: aload_0
    //   139: getfield 616	com/estrongs/android/pop/view/FileExplorerActivity:k	Lcom/estrongs/android/pop/ad;
    //   142: aload_3
    //   143: invokevirtual 655	com/estrongs/android/pop/ad:z	(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;
    //   146: astore 4
    //   148: goto -89 -> 59
    //   151: astore_1
    //   152: aload_1
    //   153: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   156: aconst_null
    //   157: areturn
    //   158: astore_3
    //   159: aload_1
    //   160: monitorexit
    //   161: aconst_null
    //   162: areturn
    //   163: astore_3
    //   164: aload_1
    //   165: monitorexit
    //   166: aload_3
    //   167: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	168	0	this	FileExplorerActivity
    //   93	13	2	i1	int
    //   27	116	3	localObject1	Object
    //   158	1	3	localException	Exception
    //   163	4	3	localObject2	Object
    //   4	143	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   59	85	151	java/lang/Exception
    //   101	113	158	java/lang/Exception
    //   101	113	163	finally
    //   113	115	163	finally
    //   159	161	163	finally
    //   164	166	163	finally
  }
  
  private com.estrongs.android.view.cr a(com.estrongs.android.ui.d.h paramh, String paramString, TypedMap paramTypedMap)
  {
    return a(paramh, paramString, paramTypedMap, false);
  }
  
  /* Error */
  private com.estrongs.android.view.cr a(com.estrongs.android.ui.d.h paramh, String paramString, TypedMap paramTypedMap, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 524	com/estrongs/android/util/ap:ai	(Ljava/lang/String;)Z
    //   4: ifeq +152 -> 156
    //   7: aload_0
    //   8: getfield 616	com/estrongs/android/pop/view/FileExplorerActivity:k	Lcom/estrongs/android/pop/ad;
    //   11: aload_2
    //   12: invokevirtual 619	com/estrongs/android/pop/ad:A	(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;
    //   15: astore 6
    //   17: aload_0
    //   18: aload_0
    //   19: aload 6
    //   21: aload_0
    //   22: getfield 294	com/estrongs/android/pop/view/FileExplorerActivity:G	Lcom/estrongs/android/view/dw;
    //   25: aload_2
    //   26: invokespecial 621	com/estrongs/android/pop/view/FileExplorerActivity:a	(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;Ljava/lang/String;)Lcom/estrongs/android/view/cr;
    //   29: astore 6
    //   31: iload 4
    //   33: ifeq +12 -> 45
    //   36: aload_2
    //   37: aload 6
    //   39: invokevirtual 665	java/lang/Object:hashCode	()I
    //   42: invokestatic 670	com/estrongs/android/pop/utils/ad:a	(Ljava/lang/String;I)V
    //   45: aload 6
    //   47: aload_2
    //   48: aload_3
    //   49: invokevirtual 673	com/estrongs/android/view/cr:a	(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    //   52: aload_1
    //   53: ifnull +8 -> 61
    //   56: aload_1
    //   57: aload_2
    //   58: invokevirtual 676	com/estrongs/android/ui/d/h:a	(Ljava/lang/String;)V
    //   61: aload_0
    //   62: invokevirtual 635	com/estrongs/android/pop/view/FileExplorerActivity:au	()Lcom/estrongs/android/ui/d/i;
    //   65: aload_1
    //   66: invokevirtual 640	com/estrongs/android/ui/d/i:b	(Lcom/estrongs/android/ui/d/h;)I
    //   69: istore 5
    //   71: aload_0
    //   72: getfield 245	com/estrongs/android/pop/view/FileExplorerActivity:w	Ljava/util/List;
    //   75: astore_1
    //   76: aload_1
    //   77: monitorenter
    //   78: iload 5
    //   80: iflt +96 -> 176
    //   83: aload_0
    //   84: getfield 245	com/estrongs/android/pop/view/FileExplorerActivity:w	Ljava/util/List;
    //   87: invokeinterface 679 1 0
    //   92: iload 5
    //   94: if_icmple +82 -> 176
    //   97: aload_0
    //   98: getfield 245	com/estrongs/android/pop/view/FileExplorerActivity:w	Ljava/util/List;
    //   101: iload 5
    //   103: invokeinterface 683 2 0
    //   108: pop
    //   109: aload_0
    //   110: getfield 245	com/estrongs/android/pop/view/FileExplorerActivity:w	Ljava/util/List;
    //   113: iload 5
    //   115: aload 6
    //   117: invokeinterface 646 3 0
    //   122: aload_1
    //   123: monitorexit
    //   124: aload_0
    //   125: getfield 365	com/estrongs/android/pop/view/FileExplorerActivity:aL	Lcom/estrongs/android/ui/controller/a;
    //   128: iload 5
    //   130: invokevirtual 685	com/estrongs/android/ui/controller/a:c	(I)V
    //   133: aload_0
    //   134: getfield 623	com/estrongs/android/pop/view/FileExplorerActivity:h	Lcom/estrongs/android/widget/ThumbContentViewSwitcher;
    //   137: aload 6
    //   139: invokevirtual 626	com/estrongs/android/view/cr:aE	()Landroid/view/View;
    //   142: iload 5
    //   144: invokevirtual 688	com/estrongs/android/widget/ThumbContentViewSwitcher:addView	(Landroid/view/View;I)V
    //   147: aload_0
    //   148: iload 5
    //   150: invokevirtual 690	com/estrongs/android/pop/view/FileExplorerActivity:f	(I)V
    //   153: aload 6
    //   155: areturn
    //   156: aload_0
    //   157: getfield 616	com/estrongs/android/pop/view/FileExplorerActivity:k	Lcom/estrongs/android/pop/ad;
    //   160: aload_2
    //   161: invokevirtual 655	com/estrongs/android/pop/ad:z	(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;
    //   164: astore 6
    //   166: goto -149 -> 17
    //   169: astore_1
    //   170: aload_1
    //   171: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   174: aconst_null
    //   175: areturn
    //   176: iconst_0
    //   177: istore 5
    //   179: goto -70 -> 109
    //   182: astore_2
    //   183: aload_1
    //   184: monitorexit
    //   185: aload_2
    //   186: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	187	0	this	FileExplorerActivity
    //   0	187	1	paramh	com.estrongs.android.ui.d.h
    //   0	187	2	paramString	String
    //   0	187	3	paramTypedMap	TypedMap
    //   0	187	4	paramBoolean	boolean
    //   69	109	5	i1	int
    //   15	150	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   17	31	169	java/lang/Exception
    //   83	109	182	finally
    //   109	124	182	finally
    //   183	185	182	finally
  }
  
  private com.estrongs.android.view.eb a(com.estrongs.fs.util.a.a parama, String paramString)
  {
    parama = new bp(this, this, parama, G);
    parama.a(E);
    parama.a(new bq(this));
    parama.a(new br(this));
    parama.a(11);
    parama.a(F);
    a(parama);
    return parama;
  }
  
  private void a(com.estrongs.android.util.q<com.estrongs.android.view.cr, String> paramq, boolean paramBoolean)
  {
    com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)a;
    paramq = (String)b;
    if ((localcr != null) && (paramq != null))
    {
      localcr.a(null);
      localcr.j(paramq);
      localcr.a(E);
    }
  }
  
  private void a(Thread paramThread)
  {
    aI();
    com.estrongs.android.pop.utils.ad.d();
    Object localObject;
    if (com.estrongs.android.pop.utils.cl.a())
    {
      av = com.estrongs.android.ui.pcs.u.a();
      localObject = k.af();
      if (localObject != null)
      {
        if (!"pcs_temp_mode".equals(k.ae())) {
          break label120;
        }
        av.a(2);
      }
    }
    int i2;
    for (;;)
    {
      av.a((String)localObject);
      T();
      i2 = -1;
      if (au().c() != 0) {
        break label569;
      }
      aJ();
      i1 = 0;
      while (i1 < au().c())
      {
        au().c(i1).a(true);
        i1 += 1;
      }
      label120:
      av.a(1);
    }
    int i1 = -1;
    for (;;)
    {
      i2 = i1;
      if (i1 < 0) {
        if (au().a() <= 0) {
          break label1091;
        }
      }
      label560:
      label569:
      label976:
      label1079:
      label1085:
      label1091:
      for (i2 = au().a();; i2 = 0)
      {
        if ((i2 >= 0) && (i2 < au().c()))
        {
          h.setCurrentScreen(i2);
          aL.f(i2);
          localObject = au().c(i2);
          if (localObject != null) {
            E.a(((com.estrongs.android.ui.d.h)localObject).a(), true);
          }
        }
        if (com.estrongs.android.util.ap.bk(P())) {
          com.estrongs.android.pop.app.f.a.a().c();
        }
        localObject = O();
        if ((localObject != null) && ((localObject instanceof com.estrongs.android.pop.app.diskusage.h))) {
          ((com.estrongs.android.view.cr)localObject).l();
        }
        aZ();
        if (!com.estrongs.android.pop.ad.a(this).Y())
        {
          com.estrongs.android.pop.ad.a(this).Z();
          com.estrongs.android.pop.ad.a(this).i(true);
        }
        aF();
        aE();
        localObject = getIntent().getStringExtra("archive_file_name");
        if (localObject != null) {
          if (bg.o((String)localObject))
          {
            com.estrongs.io.archive.sevenzip.f.a(new v(this, (String)localObject), com.estrongs.io.archive.sevenzip.f.a);
            if ((!com.estrongs.android.pop.z.ai) && (!cu.d(this)))
            {
              if ((!t) && (!u)) {
                break label976;
              }
              if (k.ao())
              {
                localObject = O();
                if ((localObject == null) || (!(localObject instanceof com.estrongs.android.ui.c.e))) {
                  break label1085;
                }
              }
            }
          }
        }
        for (boolean bool = false;; bool = true)
        {
          ax = new com.estrongs.android.ui.view.bw(this, t, u, bool);
          ax.c();
          k.m(false);
          for (;;)
          {
            if (com.estrongs.android.pop.z.w) {
              if (com.estrongs.android.pop.ad.a(this).aq())
              {
                localObject = com.estrongs.android.pop.esclasses.k.a(this).inflate(2130903452, null);
                CheckBox localCheckBox = (CheckBox)((View)localObject).findViewById(2131625593);
                com.estrongs.android.ui.dialog.ci localci = new com.estrongs.android.ui.dialog.ci(this);
                localci.setCancelable(false);
                localci.setTitle(getString(2131231718));
                localci.setContentView((View)localObject);
                localci.setConfirmButton(getString(2131230896), new x(this, localCheckBox, paramThread));
                localci.setCancelButton(getString(2131230851), new y(this));
                localci.show();
                b(getIntent());
                return;
                i1 = i2;
                if (W != null)
                {
                  i1 = 0;
                  while (i1 < au().c())
                  {
                    localObject = au().c(i1);
                    int i3 = i2;
                    if (localObject != null)
                    {
                      i3 = i2;
                      if (i2 < 0)
                      {
                        i3 = i2;
                        if (com.estrongs.android.util.ap.I(W) == com.estrongs.android.util.ap.I(((com.estrongs.android.ui.d.h)localObject).a()))
                        {
                          ((com.estrongs.android.ui.d.h)localObject).a(W);
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
                    if (au().c() < 12)
                    {
                      i2 = au().a(W);
                      localObject = au().c(i2);
                      i1 = i2;
                      if (localObject != null)
                      {
                        aL.a((com.estrongs.android.ui.d.h)localObject);
                        i1 = i2;
                      }
                    }
                  }
                }
                i2 = 0;
                while (i2 < au().c())
                {
                  localObject = au().c(i2);
                  if (localObject != null) {
                    a((com.estrongs.android.ui.d.h)localObject);
                  }
                  i2 += 1;
                }
                f("archive://" + (String)localObject);
                break;
                if ("com.estrongs.android.SHOW_DISK_USAGE".equals(getIntent().getAction()))
                {
                  try
                  {
                    com.estrongs.android.pop.app.analysis.a.a().a(false);
                  }
                  catch (Exception localException)
                  {
                    localException.printStackTrace();
                  }
                  break;
                }
                if ("show_app".equals(getIntent().getStringExtra("action")))
                {
                  f("app://user");
                  break;
                }
                if ("from_update_notification".equals(getIntent().getStringExtra("action")))
                {
                  com.estrongs.android.pop.utils.c.c(ag().b(this));
                  f("app://update");
                  break;
                }
                if (c(getIntent())) {
                  break;
                }
                if ("show_file_log".equals(getIntent().getStringExtra("action")))
                {
                  com.estrongs.android.pop.app.a.n.a(this);
                  f("log://");
                  break;
                }
                if (!"show_local_tab".equals(getIntent().getAction())) {
                  break;
                }
                f(com.estrongs.android.pop.ad.a(this).j(a.a));
                break;
                if ((!k.ap()) || (!k.ao())) {
                  continue;
                }
                com.estrongs.android.view.cr localcr = O();
                if ((localcr == null) || (!(localcr instanceof com.estrongs.android.ui.c.e))) {
                  break label1079;
                }
              }
            }
          }
          for (bool = false;; bool = true)
          {
            ax = new com.estrongs.android.ui.view.bw(this, t, u, bool);
            ax.c();
            k.n(false);
            break;
            FexApplication.a().a(true);
            paramThread.start();
            break label560;
            paramThread.start();
            break label560;
          }
        }
      }
    }
  }
  
  public static boolean a(com.estrongs.android.view.cr paramcr, String paramString)
  {
    boolean bool2 = false;
    boolean bool3 = true;
    boolean bool1;
    if ((paramcr == null) || (paramcr.c() == null)) {
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
          if (!paramcr.c().startsWith("/")) {
            break;
          }
          bool1 = bool3;
        } while (com.estrongs.android.util.ap.aJ(paramString));
        bool1 = bool3;
      } while (paramcr.c().equals(paramString));
      if ("#home_page#".equals(paramString)) {
        return paramcr instanceof com.estrongs.android.ui.c.e;
      }
      i1 = com.estrongs.android.util.ap.I(paramString);
      int i2 = com.estrongs.android.util.ap.I(paramcr.c());
      if ((i1 != i2) && ((!com.estrongs.android.util.ap.a(i2)) || (!com.estrongs.android.util.ap.a(i1))) && ((!com.estrongs.android.util.ap.b(i2)) || (!com.estrongs.android.util.ap.b(i1))) && ((!com.estrongs.android.util.ap.c(i2)) || (!com.estrongs.android.util.ap.c(i1)))) {
        break;
      }
      if (i1 == 28) {
        return paramString.equals(com.estrongs.android.util.ap.cb(paramcr.c()));
      }
      bool1 = bool3;
    } while (i1 != 23);
    if ((!com.estrongs.android.util.ap.aL(paramString)) || (!com.estrongs.android.util.ap.aL(paramcr.c())))
    {
      bool1 = bool2;
      if (com.estrongs.android.util.ap.aJ(paramString))
      {
        bool1 = bool2;
        if (!com.estrongs.android.util.ap.aJ(paramcr.c())) {}
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
      if (!bk.a(localInputStream, paramString, paramInt2)) {
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
        boolean bool = O().g(paramString1);
        if (!bool) {
          break;
        }
        com.estrongs.android.ui.view.ak.a(this, getText(2131231900), 0);
        return false;
      }
      catch (Exception paramString1)
      {
        com.estrongs.android.ui.view.ak.a(this, getText(2131231901) + ":" + paramString1.getMessage(), 0);
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
    if (!com.estrongs.android.util.r.a(paramBoolean, paramString1, paramString2)) {
      return false;
    }
    new bw(this, locald, paramString1, paramBoolean, paramString2).start();
    c(getString(2131231877, new Object[] { paramString2 }));
    return true;
  }
  
  private void aB()
  {
    com.estrongs.android.view.cr localcr = O();
    String str;
    if (localcr == null) {
      str = "";
    }
    for (;;)
    {
      ArrayList localArrayList = com.estrongs.android.pop.app.f.f.a(str);
      if ((localArrayList != null) && (!localArrayList.isEmpty())) {
        try
        {
          bool = FexApplication.a().l().b(localArrayList);
          d(bool);
          return;
          str = localcr.c();
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localException.printStackTrace();
            boolean bool = false;
          }
        }
      }
    }
    if ("bt://".equalsIgnoreCase(localException))
    {
      d(com.estrongs.fs.impl.e.a.a());
      return;
    }
    int i1;
    if ((com.estrongs.fs.d.a(this).l(localException) > 0) || (com.estrongs.android.util.ap.bi(localException)) || (com.estrongs.android.util.ap.v(localException)))
    {
      i1 = 1;
      if ((i1 == 0) || (localcr == null) || (!localcr.p())) {
        break label153;
      }
      d(true);
    }
    for (;;)
    {
      aL.p();
      return;
      i1 = 0;
      break;
      label153:
      d(false);
    }
  }
  
  private void aC()
  {
    int i1 = l.o();
    int i2 = com.estrongs.android.i.a.a("rating_dailog_time", 0);
    if (i2 > i1)
    {
      l.r();
      l.a(i2);
      l.a(false);
    }
  }
  
  private void aD()
  {
    if ((!ChromeCastPlayerNotificationHelper.a().i()) && (com.estrongs.android.pop.app.ag.g().c())) {
      com.estrongs.android.pop.app.ag.g().q();
    }
  }
  
  private void aE()
  {
    com.estrongs.a.l.a().a(new aa(this));
  }
  
  private void aF()
  {
    aB = new ac(this);
  }
  
  private void aG()
  {
    i.post(new ad(this));
  }
  
  private void aH()
  {
    if (!aE) {
      return;
    }
    new Thread(new aj(this)).start();
  }
  
  private void aI()
  {
    com.estrongs.android.h.f.a(new com.estrongs.android.h.d(this));
  }
  
  private com.estrongs.android.view.cr aJ()
  {
    if (W == null) {
      ??? = com.estrongs.android.util.ap.bV(com.estrongs.android.util.ap.bW(k.j(a.a)));
    }
    for (;;)
    {
      Object localObject2 = ???;
      if (bk.a((CharSequence)???)) {
        localObject2 = com.estrongs.android.pop.b.b();
      }
      com.estrongs.android.ui.d.h localh = new com.estrongs.android.ui.d.h((String)localObject2);
      au().a(localh);
      aL.a(localh);
      aL.f(au().a());
      synchronized (w)
      {
        w.add(null);
        return a(localh, (String)localObject2, null);
        ??? = W;
      }
    }
  }
  
  private void aK()
  {
    if (aA) {
      return;
    }
    long l1 = System.currentTimeMillis();
    long l2 = aP;
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put(getClass().getSimpleName(), "" + (l1 - l2));
      com.estrongs.android.j.c.a(this).b("activity_persist_time", localJSONObject);
      aD();
      aA = true;
      if ((com.estrongs.android.pop.app.f.a.a) && (com.estrongs.android.pop.ad.a(this).B())) {
        com.estrongs.android.pop.app.f.a.a().d();
      }
    }
    catch (JSONException localIOException)
    {
      try
      {
        com.estrongs.a.b.d.a();
        aM();
        com.estrongs.android.h.a.e.c();
        com.estrongs.android.ui.theme.at.r();
        aW();
        com.estrongs.android.view.y.f();
        com.estrongs.android.pop.app.f.a.a().j();
        com.estrongs.android.pop.app.f.a.a().g();
        VerifyPasswordDialog.a();
        com.estrongs.android.pop.view.utils.n.b().a();
        com.estrongs.android.ui.g.a.c();
        com.estrongs.fs.d.b();
        com.estrongs.android.recommand.c.d();
        com.estrongs.android.ui.pcs.u.a().k();
        new al(this, com.estrongs.android.pop.ad.a(this).x()).start();
        ba();
        com.estrongs.android.view.cr.at();
        if ((com.estrongs.android.pop.ad.a(this).aq()) && (com.estrongs.android.pop.z.w)) {
          FexApplication.a().a(false);
        }
      }
      catch (IOException localIOException)
      {
        try
        {
          for (;;)
          {
            WebIconDatabase.getInstance().removeAllIcons();
            WebIconDatabase.getInstance().close();
            if ((!aS) && (!com.estrongs.android.pop.z.ap)) {
              AppFolderInfoManager.d().c();
            }
            com.estrongs.fs.impl.o.b.a();
            com.estrongs.android.pop.ai.a();
            aL();
            com.estrongs.android.pop.app.analysis.a.a().e();
            com.estrongs.android.pop.app.analysis.z.a().d();
            com.estrongs.android.pop.app.messagebox.z.a(FexApplication.a()).c();
            com.estrongs.android.pop.app.unlock.s.a().b();
            return;
            localJSONException = localJSONException;
            localJSONException.printStackTrace();
          }
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
  }
  
  private void aL()
  {
    if (com.estrongs.android.pop.app.ad.a.a().d()) {
      startService(new Intent(this, SaveDataService.class));
    }
  }
  
  private void aM()
  {
    com.estrongs.android.ftp.a locala = com.estrongs.android.ftp.a.e();
    if ((com.estrongs.android.pop.ad.a(this).S()) && (locala != null) && (locala.i())) {
      com.estrongs.android.ftp.k.a(this);
    }
  }
  
  private void aN()
  {
    i = new an(this);
  }
  
  private void aO()
  {
    int i2 = -1;
    Object localObject;
    if (h == null)
    {
      h = new ao(this, this);
      localObject = new ap(this);
      h.setOnScreenSwitchListener((com.estrongs.android.widget.bd)localObject);
      h.setGridViewWrappers(w);
    }
    for (;;)
    {
      h.setDragController(aa);
      Y.removeAllViews();
      Y.addView(h, new FrameLayout.LayoutParams(-1, -1));
      aa.a(h);
      if (!c) {
        break;
      }
      h.a(ae().j(), ae().k());
      return;
      h.i();
    }
    if (u)
    {
      boolean bool = com.estrongs.android.pop.esclasses.i.b();
      localObject = h;
      int i1;
      if (bool)
      {
        i1 = ae().j();
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
        i2 = ae().k();
      }
    }
    h.a(-1, -1);
  }
  
  private void aP()
  {
    com.estrongs.android.view.cr localcr = O();
    if ((localcr != null) && ((localcr instanceof com.estrongs.android.view.er))) {
      com.estrongs.android.j.c.a(this).a("log", "edit");
    }
  }
  
  private void aQ()
  {
    f.removeAllViewsInLayout();
    aL.a();
    if (com.estrongs.android.ui.pcs.am.a(this))
    {
      localObject1 = new as(this);
      com.estrongs.android.ui.pcs.u.a().a((com.estrongs.android.ui.pcs.q)localObject1);
    }
    Object localObject1 = O();
    if ((localObject1 != null) && (((com.estrongs.android.view.cr)localObject1).o() != null) && (((com.estrongs.android.view.cr)localObject1).N())) {
      F.a(((com.estrongs.android.view.cr)localObject1).o());
    }
    aL.e();
    if (au().c() == 0) {}
    label322:
    label327:
    for (int i1 = -1;; i1 = -1)
    {
      int i2 = i1;
      if (i1 < 0) {
        if (au().a() <= 0) {
          break label322;
        }
      }
      for (i2 = au().a();; i2 = 0)
      {
        if ((i2 >= 0) && (i2 < au().c()))
        {
          localObject1 = au().c(i2);
          if (localObject1 == null) {}
        }
        for (Object localObject2 = ((com.estrongs.android.ui.d.h)localObject1).a();; localObject2 = null)
        {
          localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = com.estrongs.android.util.ap.bV(com.estrongs.android.util.ap.bW(k.j(a.a)));
          }
          localObject2 = localObject1;
          if (bk.a((CharSequence)localObject1)) {
            localObject2 = com.estrongs.android.pop.b.b();
          }
          try
          {
            E.a((String)localObject2, true);
            if (!d()) {
              bb();
            }
            if (A.getVisibility() != 0) {
              A.setVisibility(0);
            }
            return;
            if (W == null) {
              break label327;
            }
            i1 = 0;
            for (;;)
            {
              if (i1 >= au().c()) {
                break label327;
              }
              localObject1 = au().c(i1);
              if ((localObject1 != null) && (com.estrongs.android.util.ap.I(W) == com.estrongs.android.util.ap.I(((com.estrongs.android.ui.d.h)localObject1).a())))
              {
                ((com.estrongs.android.ui.d.h)localObject1).a(W);
                au().a(i1);
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
  
  private void aR()
  {
    Y = ((DragLayer)g.findViewById(2131624519));
    if (aa == null) {
      aa = new com.estrongs.android.ui.drag.d(this);
    }
    Y.setDragController(aa);
    synchronized (w)
    {
      Iterator localIterator = w.iterator();
      while (localIterator.hasNext())
      {
        com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)localIterator.next();
        if (localcr != null) {
          localcr.a(localcr.P());
        }
      }
    }
    aO();
    aL.b();
    b(a);
    g.setBackgroundColor(0);
  }
  
  private void aS()
  {
    aQ();
    aR();
  }
  
  private void aT()
  {
    if ((aa != null) || (ac == null)) {
      ac = new at(this);
    }
    if (ag == null) {
      ag = new au(this);
    }
    if (ak == null) {
      ak = new av(this);
    }
    if (ao == null) {
      ao = new aw(this);
    }
    if (ad == null)
    {
      ad = new TranslateAnimation(1, -1.0F, 1, 0.0F, 1, -1.0F, 1, 0.0F);
      ad.setDuration(150L);
      ae = new TranslateAnimation(1, 0.0F, 1, -1.0F, 1, 0.0F, 1, -1.0F);
      ae.setDuration(150L);
    }
    if (ah == null)
    {
      ah = new TranslateAnimation(1, 1.0F, 1, 0.0F, 1, -1.0F, 1, 0.0F);
      ah.setDuration(150L);
      ai = new TranslateAnimation(1, 0.0F, 1, 1.0F, 1, 0.0F, 1, -1.0F);
      ai.setDuration(150L);
    }
    if (al == null)
    {
      al = new TranslateAnimation(1, -1.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
      al.setDuration(150L);
      am = new TranslateAnimation(1, 0.0F, 1, -1.0F, 1, 0.0F, 1, 1.0F);
      am.setDuration(150L);
    }
    if (ap == null)
    {
      ap = new TranslateAnimation(1, 1.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
      ap.setDuration(150L);
      aq = new TranslateAnimation(1, 0.0F, 1, 1.0F, 1, 0.0F, 1, 1.0F);
      aq.setDuration(150L);
      aq.setAnimationListener(new ax(this));
    }
  }
  
  private void aU()
  {
    if (Z == null)
    {
      Z = ((DragLayer)com.estrongs.android.pop.esclasses.k.a(this).inflate(2130903203, null));
      f.addView(Z);
      ab = ((DragActionZone)Z.findViewById(2131624746));
      ab.setPosition(0);
      ab.setOnDropListener(ac);
      af = ((DragActionZone)Z.findViewById(2131624748));
      af.setPosition(1);
      af.setOnDropListener(ag);
      aj = ((DragActionZone)Z.findViewById(2131624749));
      aj.setPosition(2);
      aj.setOnDropListener(ak);
      an = ((DragActionZone)Z.findViewById(2131624750));
      an.setPosition(3);
      an.setOnDropListener(ao);
    }
  }
  
  private void aV()
  {
    if ((Y != null) && (h != null)) {
      Y.removeView(h);
    }
    aL.f();
  }
  
  private void aW()
  {
    aL.g();
    com.estrongs.android.view.y.d();
    com.estrongs.android.ui.f.g.d();
    com.estrongs.android.ui.f.i.d();
    U = null;
    if (aa != null)
    {
      aa.a();
      aa.c();
    }
    Z = null;
    ar = null;
    if (at != null) {
      at.h();
    }
    at = null;
    if (aF != null)
    {
      if (aF.isShowing()) {
        aF.dismiss();
      }
      aF = null;
    }
  }
  
  private void aX() {}
  
  private void aY()
  {
    if (au == null) {}
    label134:
    label145:
    for (;;)
    {
      return;
      String str = T.d();
      if (getPackageName().equals(str)) {
        if (l.d() > 1)
        {
          if (!T.o()) {
            break label134;
          }
          au.c("using_layout_single");
        }
      }
      for (;;)
      {
        if (!k.am()) {
          break label145;
        }
        au.b("gesture_enabled", "gesture_enabled");
        return;
        if ("com.estrongs.android.pop.theme.ics".equals(str))
        {
          au.b("using_theme_holo", "using_theme_holo");
          break;
        }
        if (!"com.estrongs.android.pop.classic.material".equals(str)) {
          break;
        }
        au.b("using_theme_classic", "using_theme_classic");
        break;
        au.c("using_layout_double");
      }
    }
  }
  
  @TargetApi(12)
  private void aZ()
  {
    aV = new cr(this);
    aW = new cv(this);
    aX = new cy(this);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.PACKAGE_ADDED");
    localIntentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
    localIntentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
    localIntentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
    localIntentFilter.addDataScheme("package");
    registerReceiver(aW, localIntentFilter);
    localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
    localIntentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
    localIntentFilter.addAction("android.intent.action.MEDIA_REMOVED");
    localIntentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
    localIntentFilter.addDataScheme("file");
    registerReceiver(aV, localIntentFilter);
    localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
    localIntentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
    localIntentFilter.addAction("android.hardware.usb.action.USB_ACCESSORY_ATTACHED");
    localIntentFilter.addAction("android.hardware.usb.action.USB_ACCESSORY_DETACHED");
    registerReceiver(aX, localIntentFilter);
  }
  
  public static LocalSocket aj()
  {
    for (;;)
    {
      Object localObject2;
      synchronized (aU)
      {
        if (ba == null)
        {
          ba = com.estrongs.android.nativetool.c.a();
          localObject2 = ba;
          return (LocalSocket)localObject2;
        }
      }
      try
      {
        localObject2 = ba.getOutputStream();
        InputStream localInputStream = ba.getInputStream();
        com.estrongs.fs.impl.local.m.a((OutputStream)localObject2, 80);
        com.estrongs.fs.impl.local.m.c(localInputStream);
        if (ba != null) {
          continue;
        }
        ba = com.estrongs.android.nativetool.c.a();
        continue;
        localObject3 = finally;
        throw ((Throwable)localObject3);
      }
      catch (Exception localException)
      {
        for (;;)
        {
          ba = null;
        }
      }
    }
  }
  
  private void b(Intent paramIntent)
  {
    if (paramIntent.getBooleanExtra("compress", false))
    {
      if ((FexApplication.a().toString().equals(paramIntent.getStringExtra("application"))) && (paramIntent.getIntExtra("notification_id", -1) != -1)) {
        ((NotificationManager)getSystemService("notification")).cancel(paramIntent.getIntExtra("notification_id", -1));
      }
      f("archive://");
    }
  }
  
  private void b(com.estrongs.android.view.cr paramcr, String paramString)
  {
    if (com.estrongs.android.util.ap.V(paramString)) {
      paramcr.o("music");
    }
    do
    {
      return;
      if (com.estrongs.android.util.ap.Z(paramString))
      {
        paramcr.o("video");
        return;
      }
      if ((com.estrongs.android.util.ap.X(paramString)) || (com.estrongs.android.util.ap.aY(paramString)))
      {
        paramcr.o("image");
        return;
      }
      if (com.estrongs.android.util.ap.ai(paramString))
      {
        paramcr.o("apk");
        return;
      }
      if (com.estrongs.android.util.ap.ae(paramString))
      {
        paramcr.o("document");
        return;
      }
    } while (!com.estrongs.android.util.ap.ad(paramString));
    paramcr.o("encrypt");
  }
  
  private void ba()
  {
    try
    {
      if (aW != null) {
        unregisterReceiver(aW);
      }
      if (aV != null) {
        unregisterReceiver(aV);
      }
      if (aX != null) {
        unregisterReceiver(aX);
      }
      if (aY != null) {
        unregisterReceiver(aY);
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  private void bb()
  {
    ImageView localImageView = (ImageView)findViewById(2131624522);
    localImageView.setOnClickListener(new da(this));
    localImageView.setVisibility(0);
  }
  
  private void bc()
  {
    ay = new HashMap();
    ay.put("back", new db(this));
    ay.put("close_current", new dc(this));
    ay.put("refresh", new dd(this));
    ay.put("#home_page#", new de(this));
    ay.put("#home#", new df(this));
    ay.put("open_lib_pic", new dg(this));
    ay.put("open_lib_music", new dh(this));
    ay.put("open_lib_video", new dj(this));
    ay.put("open_lib_text", new dk(this));
    ay.put("show_navi", new dl(this));
    ay.put("exit", new dm(this));
    ay.put("open_settings", new dn(this));
    ay.put("mynetwork://", new do(this));
    ay.put("smb://", new dp(this));
    ay.put("net://", new dq(this));
    ay.put("pcs://", new dr(this));
    ay.put("ftp://", new ds(this));
    ay.put("bt://", new dw(this));
    ay.put("app://user", new dx(this));
    ay.put("download://", new dy(this));
    ay.put("task_manager", new dz(this));
    ay.put("du://", new ea(this));
    ay.put("remote://", new eb(this));
    ay.put("net_manager", new ec(this));
    ay.put("clipboard", new ed(this));
    ay.put("hide_list", new ee(this));
    ay.put("root_explorer", new ef(this));
    ay.put("recycle://", new f(this));
  }
  
  private com.estrongs.android.view.cr c(String paramString, TypedMap paramTypedMap, boolean paramBoolean)
  {
    Object localObject;
    if (paramString == null) {
      localObject = new com.estrongs.android.ui.d.h("New");
    }
    for (;;)
    {
      int i1 = au().a() + 1;
      synchronized (w)
      {
        if (i1 > w.size()) {
          paramTypedMap = null;
        }
        do
        {
          return paramTypedMap;
          localObject = new com.estrongs.android.ui.d.h(paramString);
          break;
          if (w.size() == 0) {
            i1 = 0;
          }
          au().a((com.estrongs.android.ui.d.h)localObject, i1);
          aL.a((com.estrongs.android.ui.d.h)localObject, i1);
          w.add(i1, null);
          if (paramString == null) {
            break label184;
          }
          V = O();
          if (V != null) {
            V.j_();
          }
          localObject = a((com.estrongs.android.ui.d.h)localObject, paramString, paramTypedMap, paramBoolean);
          paramTypedMap = (TypedMap)localObject;
        } while (!com.estrongs.android.util.ap.bk(paramString));
        com.estrongs.android.pop.app.f.a.a().c();
        return (com.estrongs.android.view.cr)localObject;
      }
    }
    label184:
    return null;
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    aL.g(paramInt1);
    e = paramInt1;
  }
  
  private void c(com.estrongs.android.view.cr paramcr)
  {
    String str = paramcr.c();
    if (((com.estrongs.android.util.ap.L(str)) || (com.estrongs.android.util.ap.K(str)) || (com.estrongs.android.util.ap.r(str)) || (com.estrongs.android.util.ap.p(str)) || (com.estrongs.android.util.ap.J(str))) && ((com.estrongs.android.util.ap.br(com.estrongs.android.util.ap.bB(str))) || (paramcr.af() == 1)) && (k.g(str))) {
      k.a(str, k.h(str));
    }
  }
  
  private void c(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, aL.q());
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
        a(str, 2131099656, i1);
        str = paramString + "/es_sugarsync.jar";
        if (!paramBoolean) {
          break label406;
        }
        i1 = -1;
        label70:
        a(str, 2131099663, i1);
        str = paramString + "/es_boxnet.jar";
        if (!paramBoolean) {
          break label419;
        }
        i1 = -1;
        label109:
        a(str, 2131099655, i1);
        str = paramString + "/es_kuaipan.jar";
        if (!paramBoolean) {
          break label432;
        }
        i1 = -1;
        label148:
        a(str, 2131099658, i1);
        str = paramString + "/es_vdisk.jar";
        if (!paramBoolean) {
          break label445;
        }
        i1 = -1;
        label187:
        a(str, 2131099664, i1);
        str = paramString + "/es_skydrv.jar";
        if (!paramBoolean) {
          break label458;
        }
        i1 = -1;
        label226:
        a(str, 2131099662, i1);
        str = paramString + "/es_gdrive.jar";
        if (!paramBoolean) {
          break label471;
        }
        i1 = -1;
        label265:
        a(str, 2131099657, i1);
        str = paramString + "/es_s3.jar";
        if (!paramBoolean) {
          break label484;
        }
        i1 = -1;
        label304:
        a(str, 2131099661, i1);
        str = paramString + "/es_megacloud.jar";
        if (!paramBoolean) {
          break label497;
        }
        i1 = -1;
        label343:
        a(str, 2131099660, i1);
        paramString = paramString + "/es_mediafire.jar";
        if (!paramBoolean) {
          break label510;
        }
      }
      label406:
      label419:
      label432:
      label445:
      label458:
      label471:
      label484:
      label497:
      label510:
      for (int i1 = i2;; i1 = bk.a(aT, 2131099659))
      {
        a(paramString, 2131099659, i1);
        return;
        i1 = bk.a(aT, 2131099656);
        break;
        i1 = bk.a(aT, 2131099663);
        break label70;
        i1 = bk.a(aT, 2131099655);
        break label109;
        i1 = bk.a(aT, 2131099658);
        break label148;
        i1 = bk.a(aT, 2131099664);
        break label187;
        i1 = bk.a(aT, 2131099662);
        break label226;
        i1 = bk.a(aT, 2131099657);
        break label265;
        i1 = bk.a(aT, 2131099661);
        break label304;
        i1 = bk.a(aT, 2131099660);
        break label343;
      }
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private boolean c(Intent paramIntent)
  {
    if (com.estrongs.android.pop.app.analysis.p.c.equals(paramIntent.getAction()))
    {
      String str = paramIntent.getStringExtra(com.estrongs.android.pop.app.analysis.p.a);
      paramIntent = paramIntent.getStringExtra(com.estrongs.android.pop.app.analysis.p.b);
      com.estrongs.android.pop.app.analysis.p.a().b(this, paramIntent);
      f.postDelayed(new w(this, str, paramIntent), 100L);
      return true;
    }
    return false;
  }
  
  private void d(com.estrongs.android.view.cr paramcr)
  {
    Object localObject = com.estrongs.android.pop.esclasses.k.a(this).inflate(2130903188, null);
    View localView1 = ((View)localObject).findViewById(2131624654);
    View localView2 = ((View)localObject).findViewById(2131624655);
    localObject = new com.estrongs.android.ui.dialog.cv(this).a(2131230880).a((View)localObject).c();
    localView1.setOnClickListener(new az(this, paramcr, (com.estrongs.android.ui.dialog.ci)localObject));
    localView2.setOnClickListener(new ba(this, paramcr, (com.estrongs.android.ui.dialog.ci)localObject));
  }
  
  public static void g(boolean paramBoolean)
  {
    if (aT == null) {
      return;
    }
    List localList = aTw;
    com.estrongs.android.ui.c.e locale = null;
    for (;;)
    {
      int i1;
      try
      {
        int i2 = aTw.size();
        i1 = 0;
        if (i1 < i2)
        {
          com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)aTw.get(i1);
          if ((locale == null) && ((localcr instanceof com.estrongs.android.ui.c.e))) {
            locale = (com.estrongs.android.ui.c.e)localcr;
          }
        }
        else
        {
          if (locale != null) {
            locale.i(paramBoolean);
          }
          return;
        }
      }
      finally {}
      i1 += 1;
    }
  }
  
  private int q(String paramString)
  {
    int i1 = e;
    return ik.a(paramString);
  }
  
  private void r(String paramString)
  {
    com.estrongs.android.view.cr localcr = O();
    if (localcr == null) {
      return;
    }
    boolean bool2 = h(localcr.c());
    boolean bool1 = bool2;
    if (com.estrongs.android.util.ap.bi(localcr.c())) {
      bool1 = bool2 | h(com.estrongs.android.util.ap.bQ(localcr.c()));
    }
    if (bool1)
    {
      paramString = com.estrongs.android.pop.app.f.q.b(paramString);
      if (O == null) {
        O = new eg(this);
      }
      localcr.a(O);
      O.a((String)paramString.get("keyword"));
      O.a(bk.a((String)paramString.get("minSize"), -1L), bk.a((String)paramString.get("maxSize"), -1L));
      O.b(bk.a((String)paramString.get("minDate"), -1L), bk.a((String)paramString.get("maxDate"), -1L));
      localcr.b(false);
      return;
    }
    String str;
    TypedMap localTypedMap;
    for (;;)
    {
      try
      {
        if (localcr.ar() == 0L)
        {
          l1 = System.currentTimeMillis();
          localcr.d(l1);
          str = "search://" + l1 + "/" + com.estrongs.fs.a.a.d(com.estrongs.android.pop.app.f.q.a("searchPath", paramString)).replace("/", "#");
          localTypedMap = new TypedMap();
          localTypedMap.put("pattern", paramString);
          localTypedMap.put("refresh", "true");
          if ((!(localcr instanceof com.estrongs.android.ui.c.e)) && (!(localcr instanceof com.estrongs.android.view.er))) {
            break label363;
          }
          localcr = c(str, localTypedMap);
          if (localcr == null) {
            break;
          }
          localcr.o(com.estrongs.android.pop.app.f.q.a("category", paramString));
          return;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return;
      }
      long l1 = localcr.ar();
    }
    label363:
    localcr.a(str, localTypedMap);
  }
  
  public void A()
  {
    com.estrongs.android.view.cr localcr = O();
    if ((localcr != null) && (!localcr.p()))
    {
      String str = localcr.c();
      if ((bk.k()) || (((!com.estrongs.android.util.ap.ae(str)) || (com.estrongs.android.pop.ac.a() < 11)) && (!com.estrongs.android.util.ap.V(str)) && (!com.estrongs.android.util.ap.Z(str)) && (!com.estrongs.android.util.ap.X(str)) && (!com.estrongs.android.util.ap.aY(str)))) {
        break label83;
      }
      d(localcr);
    }
    for (;;)
    {
      aL.y();
      return;
      label83:
      if ((localcr instanceof com.estrongs.android.view.eb)) {
        ((com.estrongs.android.view.eb)localcr).z();
      } else {
        localcr.b(true);
      }
    }
  }
  
  public void B()
  {
    l();
    q = "normal_mode";
    com.estrongs.android.view.cr localcr = O();
    if (localcr != null) {
      localcr.a(false);
    }
    M();
  }
  
  public void C()
  {
    e(true);
  }
  
  public void D()
  {
    com.estrongs.android.view.cr localcr = O();
    if (localcr != null) {
      localcr.c(-1);
    }
  }
  
  public void E()
  {
    com.estrongs.android.view.cr localcr = O();
    if (localcr != null) {
      localcr.c(-2);
    }
  }
  
  public void F()
  {
    com.estrongs.android.view.cr localcr = O();
    if (localcr != null) {
      localcr.c(-4);
    }
  }
  
  public void K()
  {
    com.estrongs.android.view.cr localcr = O();
    if (localcr != null) {
      ld.a(this, localcr);
    }
    B();
  }
  
  public void L()
  {
    aL.l();
  }
  
  public void M()
  {
    aL.m();
  }
  
  public void N()
  {
    aL.n();
  }
  
  public com.estrongs.android.view.cr O()
  {
    int i1;
    com.estrongs.android.view.cr localcr;
    synchronized (w)
    {
      i1 = au().a();
      if (i1 >= w.size()) {
        return null;
      }
    }
    return null;
  }
  
  public String P()
  {
    if (O() == null) {
      return null;
    }
    return O().c();
  }
  
  public com.estrongs.fs.h Q()
  {
    if (O() == null) {
      return null;
    }
    return O().b();
  }
  
  public boolean R()
  {
    for (;;)
    {
      try
      {
        List localList = w;
        int i1 = 0;
        try
        {
          if (i1 < w.size())
          {
            com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)w.get(i1);
            if ((localcr != null) && ((com.estrongs.android.util.ap.ai(localcr.c())) || (com.estrongs.android.util.ap.ag(localcr.c()))))
            {
              boolean bool = y;
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
  
  public boolean S()
  {
    for (;;)
    {
      try
      {
        List localList = w;
        int i1 = 0;
        try
        {
          if (i1 < w.size())
          {
            com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)w.get(i1);
            if ((localcr != null) && ((com.estrongs.android.util.ap.ai(localcr.c())) || (com.estrongs.android.util.ap.ag(localcr.c()))))
            {
              boolean bool = z;
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
  
  public void T()
  {
    aL.x();
  }
  
  public void U()
  {
    x.clear();
  }
  
  public boolean V()
  {
    return i(P());
  }
  
  /* Error */
  public void Y()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: getfield 1203	com/estrongs/android/pop/view/FileExplorerActivity:i	Landroid/os/Handler;
    //   6: new 2247	com/estrongs/android/pop/view/cf
    //   9: dup
    //   10: aload_0
    //   11: invokespecial 2248	com/estrongs/android/pop/view/cf:<init>	(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    //   14: invokevirtual 1212	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   17: pop
    //   18: invokestatic 2251	com/estrongs/android/g/a:b	()Z
    //   21: ifne +3 -> 24
    //   24: aload_0
    //   25: invokestatic 387	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   28: invokevirtual 2252	com/estrongs/android/pop/ad:k	()Z
    //   31: ifeq +70 -> 101
    //   34: aload_0
    //   35: iconst_1
    //   36: invokestatic 2255	com/estrongs/fs/impl/local/m:a	(Landroid/content/Context;Z)Z
    //   39: ifeq +62 -> 101
    //   42: invokestatic 2258	com/estrongs/fs/impl/local/m:l	()[Ljava/lang/String;
    //   45: invokestatic 2261	com/estrongs/fs/impl/local/m:a	([Ljava/lang/String;)Ljava/lang/String;
    //   48: astore 6
    //   50: aload_0
    //   51: invokestatic 387	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   54: invokevirtual 2263	com/estrongs/android/pop/ad:au	()Ljava/lang/String;
    //   57: astore 7
    //   59: aload 7
    //   61: invokevirtual 1071	java/lang/String:length	()I
    //   64: ifle +37 -> 101
    //   67: aload 6
    //   69: aload 7
    //   71: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   74: ifne +27 -> 101
    //   77: aload 7
    //   79: invokestatic 2266	com/estrongs/fs/impl/local/m:k	(Ljava/lang/String;)[Ljava/lang/String;
    //   82: astore 6
    //   84: aload 6
    //   86: ifnull +15 -> 101
    //   89: aload 6
    //   91: arraylength
    //   92: ifle +9 -> 101
    //   95: aload 6
    //   97: invokestatic 2269	com/estrongs/fs/impl/local/m:b	([Ljava/lang/String;)Z
    //   100: pop
    //   101: getstatic 2270	com/estrongs/android/pop/z:y	Z
    //   104: ifne +94 -> 198
    //   107: aload_0
    //   108: invokestatic 387	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   111: invokevirtual 2272	com/estrongs/android/pop/ad:s	()Z
    //   114: istore_3
    //   115: iload_3
    //   116: istore_2
    //   117: iload_3
    //   118: ifeq +36 -> 154
    //   121: iload_3
    //   122: istore_2
    //   123: getstatic 187	com/estrongs/android/pop/view/FileExplorerActivity:D	Ljava/util/GregorianCalendar;
    //   126: ifnull +28 -> 154
    //   129: iload_3
    //   130: istore_2
    //   131: new 189	java/util/GregorianCalendar
    //   134: dup
    //   135: ldc -65
    //   137: invokestatic 197	java/util/TimeZone:getTimeZone	(Ljava/lang/String;)Ljava/util/TimeZone;
    //   140: invokespecial 201	java/util/GregorianCalendar:<init>	(Ljava/util/TimeZone;)V
    //   143: getstatic 187	com/estrongs/android/pop/view/FileExplorerActivity:D	Ljava/util/GregorianCalendar;
    //   146: invokevirtual 2275	java/util/GregorianCalendar:before	(Ljava/lang/Object;)Z
    //   149: ifeq +5 -> 154
    //   152: iconst_0
    //   153: istore_2
    //   154: iload_2
    //   155: ifeq +43 -> 198
    //   158: aload_0
    //   159: invokestatic 387	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   162: invokevirtual 2277	com/estrongs/android/pop/ad:D	()J
    //   165: lstore 4
    //   167: new 2279	java/util/Date
    //   170: dup
    //   171: invokespecial 2280	java/util/Date:<init>	()V
    //   174: invokevirtual 2283	java/util/Date:getTime	()J
    //   177: lload 4
    //   179: lsub
    //   180: ldc2_w 2284
    //   183: lcmp
    //   184: ifle +14 -> 198
    //   187: aload_0
    //   188: bipush 11
    //   190: aconst_null
    //   191: sipush 3000
    //   194: iconst_0
    //   195: invokevirtual 2288	com/estrongs/android/pop/view/FileExplorerActivity:a	(ILjava/lang/Object;II)V
    //   198: invokestatic 752	com/estrongs/android/pop/utils/cl:a	()Z
    //   201: ifeq +39 -> 240
    //   204: aload_0
    //   205: invokestatic 387	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   208: invokevirtual 2290	com/estrongs/android/pop/ad:aL	()J
    //   211: invokestatic 2293	com/estrongs/android/util/j:a	()I
    //   214: i2l
    //   215: lcmp
    //   216: ifeq +24 -> 240
    //   219: invokestatic 2296	com/estrongs/android/util/an:b	()Z
    //   222: ifeq +18 -> 240
    //   225: aload_0
    //   226: invokestatic 387	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   229: invokevirtual 2298	com/estrongs/android/pop/ad:aK	()V
    //   232: aload_0
    //   233: invokevirtual 978	com/estrongs/android/pop/view/FileExplorerActivity:ag	()Lcom/estrongs/android/pop/utils/c;
    //   236: aload_0
    //   237: invokevirtual 2299	com/estrongs/android/pop/utils/c:a	(Landroid/content/Context;)V
    //   240: aload_0
    //   241: invokestatic 2301	com/estrongs/android/pop/view/a:b	(Landroid/content/Context;)Z
    //   244: ifeq +157 -> 401
    //   247: invokestatic 2302	com/estrongs/fs/impl/local/m:n	()V
    //   250: aload_0
    //   251: invokestatic 2305	com/estrongs/android/util/g:a	()Ljava/lang/String;
    //   254: iconst_1
    //   255: invokespecial 2307	com/estrongs/android/pop/view/FileExplorerActivity:c	(Ljava/lang/String;Z)V
    //   258: invokestatic 2313	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   261: ifnonnull +6 -> 267
    //   264: invokestatic 2316	android/os/Looper:prepare	()V
    //   267: aload_0
    //   268: invokevirtual 2320	com/estrongs/android/pop/view/FileExplorerActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   271: ldc_w 2322
    //   274: invokestatic 2327	android/provider/Settings$System:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   277: ldc_w 2329
    //   280: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   283: ifeq +134 -> 417
    //   286: iconst_1
    //   287: putstatic 185	com/estrongs/android/pop/view/FileExplorerActivity:C	Z
    //   290: invokestatic 2332	com/estrongs/android/util/e:c	()V
    //   293: aload_0
    //   294: aconst_null
    //   295: invokestatic 2335	com/estrongs/a/b/d:a	(Landroid/app/Activity;Ljava/lang/String;)Lcom/estrongs/a/b/d;
    //   298: pop
    //   299: new 1017	java/lang/Thread
    //   302: dup
    //   303: new 2337	com/estrongs/android/pop/view/cg
    //   306: dup
    //   307: aload_0
    //   308: invokespecial 2338	com/estrongs/android/pop/view/cg:<init>	(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    //   311: ldc_w 2340
    //   314: invokespecial 2343	java/lang/Thread:<init>	(Ljava/lang/Runnable;Ljava/lang/String;)V
    //   317: invokevirtual 1020	java/lang/Thread:start	()V
    //   320: aload_0
    //   321: getfield 1154	com/estrongs/android/pop/view/FileExplorerActivity:l	Lcom/estrongs/android/pop/ai;
    //   324: invokevirtual 2344	com/estrongs/android/pop/ai:f	()V
    //   327: invokestatic 2296	com/estrongs/android/util/an:b	()Z
    //   330: ifeq +134 -> 464
    //   333: invokestatic 752	com/estrongs/android/pop/utils/cl:a	()Z
    //   336: ifeq +128 -> 464
    //   339: invokestatic 1315	com/estrongs/android/pop/view/utils/n:b	()Lcom/estrongs/android/pop/view/utils/n;
    //   342: aload_0
    //   343: invokevirtual 2347	com/estrongs/android/pop/view/utils/n:a	(Landroid/content/Context;)J
    //   346: ldc2_w 2348
    //   349: lcmp
    //   350: ifle +114 -> 464
    //   353: invokestatic 1315	com/estrongs/android/pop/view/utils/n:b	()Lcom/estrongs/android/pop/view/utils/n;
    //   356: iconst_1
    //   357: invokevirtual 2350	com/estrongs/android/pop/view/utils/n:a	(Z)V
    //   360: iload_1
    //   361: ifeq +10 -> 371
    //   364: invokestatic 1315	com/estrongs/android/pop/view/utils/n:b	()Lcom/estrongs/android/pop/view/utils/n;
    //   367: invokevirtual 2353	com/estrongs/android/pop/view/utils/n:d	()[Lcom/estrongs/android/pop/view/utils/v;
    //   370: pop
    //   371: invokestatic 2358	com/estrongs/android/util/bm:c	()Lcom/estrongs/android/util/bm;
    //   374: invokevirtual 2359	com/estrongs/android/util/bm:a	()Z
    //   377: ifne +9 -> 386
    //   380: invokestatic 2358	com/estrongs/android/util/bm:c	()Lcom/estrongs/android/util/bm;
    //   383: invokevirtual 2360	com/estrongs/android/util/bm:b	()V
    //   386: aload_0
    //   387: invokespecial 2362	com/estrongs/android/pop/view/FileExplorerActivity:aY	()V
    //   390: aload_0
    //   391: invokespecial 2364	com/estrongs/android/pop/view/FileExplorerActivity:aX	()V
    //   394: invokestatic 2365	com/estrongs/android/recommand/c:c	()V
    //   397: invokestatic 2366	com/estrongs/android/pop/app/analysis/z:c	()V
    //   400: return
    //   401: aload_0
    //   402: invokestatic 2305	com/estrongs/android/util/g:a	()Ljava/lang/String;
    //   405: iconst_0
    //   406: invokespecial 2307	com/estrongs/android/pop/view/FileExplorerActivity:c	(Ljava/lang/String;Z)V
    //   409: goto -151 -> 258
    //   412: astore 6
    //   414: goto -156 -> 258
    //   417: iconst_0
    //   418: putstatic 185	com/estrongs/android/pop/view/FileExplorerActivity:C	Z
    //   421: goto -131 -> 290
    //   424: astore 6
    //   426: goto -136 -> 290
    //   429: astore 6
    //   431: aload 6
    //   433: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   436: goto -137 -> 299
    //   439: astore 6
    //   441: aload 6
    //   443: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   446: goto -52 -> 394
    //   449: astore 6
    //   451: goto -350 -> 101
    //   454: astore 6
    //   456: goto -70 -> 386
    //   459: astore 6
    //   461: goto -263 -> 198
    //   464: iconst_1
    //   465: istore_1
    //   466: goto -106 -> 360
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	469	0	this	FileExplorerActivity
    //   1	465	1	i1	int
    //   116	39	2	bool1	boolean
    //   114	16	3	bool2	boolean
    //   165	13	4	l1	long
    //   48	48	6	localObject	Object
    //   412	1	6	localException1	Exception
    //   424	1	6	localException2	Exception
    //   429	3	6	localException3	Exception
    //   439	3	6	localException4	Exception
    //   449	1	6	localException5	Exception
    //   454	1	6	localException6	Exception
    //   459	1	6	localException7	Exception
    //   57	21	7	str	String
    // Exception table:
    //   from	to	target	type
    //   240	258	412	java/lang/Exception
    //   401	409	412	java/lang/Exception
    //   267	290	424	java/lang/Exception
    //   417	421	424	java/lang/Exception
    //   293	299	429	java/lang/Exception
    //   386	394	439	java/lang/Exception
    //   95	101	449	java/lang/Exception
    //   371	386	454	java/lang/Exception
    //   107	115	459	java/lang/Exception
    //   123	129	459	java/lang/Exception
    //   131	152	459	java/lang/Exception
    //   158	198	459	java/lang/Exception
  }
  
  public boolean Z()
  {
    return com.estrongs.android.pop.app.f.a.a().b();
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
    return aL.h();
  }
  
  public com.estrongs.android.view.cr a(String paramString, TypedMap paramTypedMap)
  {
    if (com.estrongs.android.util.ap.aL(paramString)) {
      return b(paramString, paramTypedMap);
    }
    return a(paramString, paramTypedMap, false);
  }
  
  public com.estrongs.android.view.cr a(String paramString, TypedMap paramTypedMap, boolean paramBoolean)
  {
    if (au().c() >= 12)
    {
      com.estrongs.android.ui.view.ak.a(this, 2131232454, 0);
      paramString = null;
    }
    do
    {
      do
      {
        return paramString;
        c(paramString, paramTypedMap, paramBoolean);
        paramTypedMap = O();
        paramString = paramTypedMap;
      } while (paramTypedMap == null);
      paramString = paramTypedMap;
    } while (!(paramTypedMap instanceof com.estrongs.android.pop.app.diskusage.h));
    paramTypedMap.l();
    return paramTypedMap;
  }
  
  public void a(int paramInt)
  {
    com.estrongs.android.ui.view.ak.a(this, getText(paramInt), 0);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    f(paramInt2);
    aL.t();
    au().b(paramInt1);
    synchronized (w)
    {
      if ((w.size() > 1) && (w.size() > paramInt1))
      {
        com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)w.remove(paramInt1);
        if (localcr != null) {
          localcr.i_();
        }
        h.removeViewAt(paramInt1);
        aL.e(paramInt1);
      }
      return;
    }
  }
  
  /* Error */
  public void a(int paramInt1, Object paramObject, int paramInt2, int paramInt3)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 331	com/estrongs/android/pop/view/FileExplorerActivity:Q	Landroid/os/Handler;
    //   6: iload_1
    //   7: aload_2
    //   8: invokestatic 2458	android/os/Message:obtain	(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    //   11: astore_2
    //   12: aload_2
    //   13: iload 4
    //   15: putfield 2461	android/os/Message:arg1	I
    //   18: iload_3
    //   19: ifne +15 -> 34
    //   22: aload_0
    //   23: getfield 331	com/estrongs/android/pop/view/FileExplorerActivity:Q	Landroid/os/Handler;
    //   26: aload_2
    //   27: invokevirtual 2465	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   30: pop
    //   31: aload_0
    //   32: monitorexit
    //   33: return
    //   34: aload_0
    //   35: getfield 331	com/estrongs/android/pop/view/FileExplorerActivity:Q	Landroid/os/Handler;
    //   38: aload_2
    //   39: iload_3
    //   40: i2l
    //   41: invokevirtual 2469	android/os/Handler:sendMessageDelayed	(Landroid/os/Message;J)Z
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
    if (K == null)
    {
      K = new com.estrongs.android.widget.f(this, paramString2, new bz(this), paramInt2);
      K.a(false);
      K.c(getString(2131231265), (DialogInterface.OnClickListener)null);
    }
    for (;;)
    {
      K.a(paramInt2);
      K.a(paramString1);
      K.b(getString(2131231270), paramOnClickListener);
      K.j();
      return;
      if (aH != com.estrongs.android.pop.ad.a(this).q())
      {
        aH = com.estrongs.android.pop.ad.a(this).q();
        K.b(true);
        K.b(paramString2);
      }
      else
      {
        K.b(true);
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
      com.estrongs.android.ui.view.ak.a(aT, getString(2131231536) + "\n" + getString(2131231537), 0);
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
                com.estrongs.android.ui.view.ak.a(this, getString(2131232373), 0);
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
        g(paramGesture);
        return;
        if (!paramGesture.startsWith("open_window")) {
          break;
        }
        paramGesture = paramGesture.substring("open_window".length());
        paramGesture = (Runnable)ay.get(paramGesture);
      } while (paramGesture == null);
      i.post(paramGesture);
      return;
      paramGesture = (Runnable)ay.get(paramGesture);
    } while (paramGesture == null);
    i.post(paramGesture);
  }
  
  public void a(View paramView, boolean paramBoolean)
  {
    if (paramBoolean) {}
    Object localObject;
    for (int i1 = 2;; i1 = 0)
    {
      localObject = y();
      if (localObject != null) {
        break;
      }
      return;
    }
    if (paramBoolean)
    {
      paramView = com.estrongs.android.ui.f.i.a(paramView, getString(2131231655), i1, (Rect)localObject, false);
      localObject = new ay(this, paramView);
      if (!paramBoolean) {
        break label97;
      }
      ((com.estrongs.android.ui.f.i)paramView).a((eh)localObject);
    }
    for (;;)
    {
      try
      {
        paramView.c();
        return;
      }
      catch (WindowManager.BadTokenException paramView)
      {
        paramView.printStackTrace();
        return;
      }
      paramView = com.estrongs.android.ui.f.g.a(paramView, getString(2131231655), i1, (Rect)localObject, false);
      break;
      label97:
      ((com.estrongs.android.ui.f.g)paramView).a((eh)localObject);
    }
  }
  
  public void a(com.estrongs.android.ui.c.b.h paramh)
  {
    if (aJ == null) {
      aJ = new CopyOnWriteArrayList();
    }
    aJ.add(paramh);
  }
  
  public void a(com.estrongs.android.ui.navigation.q paramq)
  {
    if ((at != null) && (at.i())) {
      at.a(paramq);
    }
    while (paramq == null) {
      return;
    }
    try
    {
      paramq.a(null);
      return;
    }
    catch (Exception paramq) {}
  }
  
  public void a(com.estrongs.android.util.z<com.estrongs.android.view.cr> paramz)
  {
    int i2 = au().a();
    List localList = w;
    int i1 = 0;
    for (;;)
    {
      try
      {
        if (i1 < w.size())
        {
          com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)w.get(i1);
          if ((localcr == null) || ((paramz != null) && (!paramz.a(localcr)))) {
            break label100;
          }
          if (i2 == i1) {
            localcr.b(true);
          } else {
            localcr.i(true);
          }
        }
      }
      finally {}
      return;
      label100:
      i1 += 1;
    }
  }
  
  public void a(com.estrongs.android.view.cr paramcr, com.estrongs.android.ui.d.h paramh, String paramString, String[] paramArrayOfString)
  {
    Object localObject4 = null;
    if (com.estrongs.android.util.ap.v(paramString))
    {
      if (paramString.startsWith("http://win-title/"))
      {
        paramArrayOfString[0] = paramString.substring("http://win-title/".length());
        paramArrayOfString[1] = null;
        return;
      }
      if ((paramcr != null) && ((paramcr instanceof WebViewWrapper)))
      {
        paramcr = ((WebViewWrapper)paramcr).B();
        if (bk.b(paramcr))
        {
          paramArrayOfString[0] = paramcr;
          paramArrayOfString[1] = null;
          return;
        }
      }
      paramArrayOfString[0] = getString(2131232182);
      paramArrayOfString[1] = null;
      return;
    }
    if ((paramString != null) && (paramh != null)) {
      paramh.a(paramString);
    }
    Object localObject2 = (String)getText(2131231943);
    Object localObject3;
    Object localObject1;
    if (((t) || (T.o())) && (paramh != null))
    {
      localObject3 = paramh.a(this);
      if (!com.estrongs.android.util.ap.aY(paramString))
      {
        localObject1 = localObject3;
        if (!com.estrongs.android.util.ap.aQ(paramString)) {}
      }
      else
      {
        localObject1 = localObject3;
        if (!com.estrongs.android.util.ap.aX(paramString))
        {
          localObject1 = localObject3;
          if (!com.estrongs.android.util.ap.aP(paramString))
          {
            localObject1 = localObject3;
            if (paramcr != null)
            {
              if (paramcr.b() == null) {
                break label502;
              }
              localObject1 = paramcr.b().getName();
            }
          }
        }
      }
      if ((com.estrongs.android.util.ap.bo(paramString)) || (com.estrongs.android.util.ap.bd(paramString))) {
        break label1181;
      }
      if (paramString.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/files"))
      {
        localObject3 = com.estrongs.android.util.ap.bB(paramString.replace("PCS_DRIVE_Js1a7M5e_9yAcTvFX/files", "PCS_DRIVE_Js1a7M5e_9yAcTvFX"));
        label252:
        if (!com.estrongs.android.util.ap.bp((String)localObject3)) {
          break label520;
        }
        paramh = "/";
        paramcr = (com.estrongs.android.view.cr)localObject1;
      }
    }
    for (;;)
    {
      label267:
      localObject1 = com.estrongs.android.util.ap.aM(com.estrongs.android.util.ap.cd(paramString));
      if ((localObject1 == null) && (localObject3 != null)) {
        localObject1 = com.estrongs.android.util.ap.aM(com.estrongs.android.util.ap.cd((String)localObject3));
      }
      for (int i1 = 1;; i1 = 0)
      {
        if (localObject1 != null) {
          if (((String)localObject1).equals("/files")) {
            localObject1 = (String)getText(2131231132);
          }
        }
        for (;;)
        {
          label327:
          if ((paramcr != null) && ((paramcr.equals(localObject2)) || ("PCS_DRIVE_Js1a7M5e_9yAcTvFX".equals(paramcr)))) {
            localObject3 = paramh;
          }
          for (;;)
          {
            label353:
            paramcr = (com.estrongs.android.view.cr)localObject2;
            if (com.estrongs.android.util.ap.bE(paramString))
            {
              paramcr = (com.estrongs.android.view.cr)localObject2;
              if (aG) {
                paramcr = (String)localObject2 + "  " + com.estrongs.fs.impl.local.m.i();
              }
            }
            if (paramString.contains("m.baidu.com/app")) {
              paramcr = getString(2131232250);
            }
            for (paramh = (com.estrongs.android.ui.d.h)localObject4;; paramh = (com.estrongs.android.ui.d.h)localObject3)
            {
              localObject1 = paramh;
              localObject2 = paramcr;
              if ("pcs".equals(com.estrongs.android.util.ap.ax(paramString)))
              {
                localObject1 = com.estrongs.android.util.ap.a(paramString, 4);
                if ((!"/files".equals(localObject1)) && (!"/files/".equals(localObject1))) {
                  break label1065;
                }
                localObject2 = com.estrongs.android.pop.ad.a(this).h(paramString);
                localObject1 = getString(2131231648);
              }
              for (;;)
              {
                paramArrayOfString[0] = localObject2;
                paramArrayOfString[1] = localObject1;
                return;
                label502:
                localObject1 = com.estrongs.android.util.ap.d(paramString);
                break;
                localObject3 = com.estrongs.android.util.ap.bB(paramString);
                break label252;
                label520:
                if ("#home_page#".equals(localObject3))
                {
                  paramcr = (com.estrongs.android.view.cr)localObject1;
                  paramh = null;
                  break label267;
                }
                if ((com.estrongs.android.util.ap.bm((String)localObject3)) || (com.estrongs.android.util.ap.ci((String)localObject3)))
                {
                  paramh = paramh.a(this, (String)localObject3);
                  paramcr = (com.estrongs.android.view.cr)localObject1;
                  break label267;
                }
                if (com.estrongs.android.util.ap.bt((String)localObject3))
                {
                  paramh = getString(2131230995);
                  paramcr = (com.estrongs.android.view.cr)localObject1;
                  break label267;
                }
                if (com.estrongs.android.util.ap.aX((String)localObject3))
                {
                  paramh = paramh.a(this, (String)localObject3);
                  paramcr = (com.estrongs.android.view.cr)localObject1;
                  break label267;
                }
                if (com.estrongs.android.util.ap.cp(paramString))
                {
                  paramh = com.estrongs.android.util.ap.d((String)localObject3);
                  if (com.estrongs.android.util.ap.d(paramString).equals("es_recycle_content"))
                  {
                    paramcr = getString(2131232258);
                    paramh = null;
                    break label267;
                  }
                  paramcr = paramh;
                  if (!paramh.equals("es_recycle_content")) {
                    break label1173;
                  }
                  paramh = getString(2131232258);
                  paramcr = (com.estrongs.android.view.cr)localObject1;
                  break label267;
                }
                paramh = com.estrongs.android.util.ap.d((String)localObject3);
                paramcr = paramh;
                if (!com.estrongs.android.util.ap.ba((String)localObject3)) {
                  break label1173;
                }
                i1 = paramh.indexOf('*');
                paramcr = paramh;
                if (i1 <= 0) {
                  break label1173;
                }
                paramh = paramh.substring(i1 + 1);
                paramcr = (com.estrongs.android.view.cr)localObject1;
                break label267;
                if (((String)localObject1).equals("/pictures"))
                {
                  localObject1 = (String)getText(2131231138);
                  break label327;
                }
                if (((String)localObject1).equals("/music"))
                {
                  localObject1 = (String)getText(2131231136);
                  break label327;
                }
                if (((String)localObject1).equals("/videos"))
                {
                  localObject1 = (String)getText(2131231135);
                  break label327;
                }
                if (((String)localObject1).equals("/apps"))
                {
                  localObject1 = (String)getText(2131231129);
                  break label327;
                }
                if (((String)localObject1).equals("/documents"))
                {
                  localObject1 = (String)getText(2131231130);
                  break label327;
                }
                if (!((String)localObject1).equals("/others")) {
                  break label1161;
                }
                localObject1 = (String)getText(2131231993);
                break label327;
                if ((paramh != null) && ((paramh.equals(localObject2)) || ("PCS_DRIVE_Js1a7M5e_9yAcTvFX".equals(paramh))))
                {
                  if ((localObject1 == null) || (com.estrongs.android.util.ap.aM(com.estrongs.android.util.ap.cd(paramString)) == null)) {
                    break label1151;
                  }
                  localObject3 = localObject2;
                  localObject2 = localObject1;
                  break label353;
                }
                if (com.estrongs.android.util.ap.cj(paramString))
                {
                  localObject2 = getString(2131231789);
                  localObject3 = null;
                  break label353;
                }
                if (com.estrongs.android.util.ap.x(paramString))
                {
                  localObject2 = getString(2131231505);
                  localObject3 = null;
                  break label353;
                }
                localObject2 = paramcr;
                localObject3 = paramh;
                if (localObject1 == null) {
                  break label353;
                }
                if (i1 != 0)
                {
                  localObject2 = paramcr;
                  localObject3 = localObject1;
                  break label353;
                }
                localObject2 = localObject1;
                localObject3 = paramh;
                break label353;
                if ((com.estrongs.android.util.ap.bm(paramString)) && (!com.estrongs.android.util.ap.br(paramString)))
                {
                  localObject2 = com.estrongs.android.util.ap.cc(paramString);
                  localObject3 = null;
                  break label353;
                }
                if (paramString.startsWith("search:"))
                {
                  localObject2 = "Search Result";
                  localObject3 = null;
                  break label353;
                }
                localObject2 = paramString;
                localObject3 = null;
                break label353;
                label1065:
                localObject3 = com.estrongs.android.util.ap.bB((String)localObject1);
                if (!"/files".equals(localObject3))
                {
                  localObject1 = paramh;
                  localObject2 = paramcr;
                  if (!"/files/".equals(localObject3)) {}
                }
                else
                {
                  paramString = com.estrongs.android.util.ap.bB(paramString);
                  paramh = paramString;
                  if (paramString.endsWith("/")) {
                    paramh = paramString.substring(0, paramString.length() - 1);
                  }
                  localObject1 = com.estrongs.android.pop.ad.a(this).h(paramh);
                  localObject2 = paramcr;
                }
              }
            }
            label1151:
            localObject3 = localObject2;
            localObject2 = paramcr;
          }
          label1161:
          localObject1 = null;
        }
      }
      label1173:
      paramh = paramcr;
      paramcr = (com.estrongs.android.view.cr)localObject1;
      continue;
      label1181:
      localObject3 = null;
      paramcr = (com.estrongs.android.view.cr)localObject1;
      paramh = null;
    }
  }
  
  public void a(com.estrongs.fs.h paramh)
  {
    a(paramh, false);
  }
  
  public void a(com.estrongs.fs.h paramh, boolean paramBoolean)
  {
    if (!i(paramh.getPath())) {
      d(2131231914);
    }
    for (;;)
    {
      return;
      com.estrongs.android.view.cr localcr = O();
      if ((localcr != null) && (localcr.N())) {}
      for (int i1 = 1; (i1 != 0) || (x.size() != 0); i1 = 0)
      {
        if (!n) {
          com.estrongs.android.view.y.a(this).b(m);
        }
        com.estrongs.android.pop.utils.ao.a(this, x, paramh, n, paramBoolean);
        return;
      }
    }
  }
  
  public void a(String paramString)
  {
    aL.b(paramString);
  }
  
  public void a(String paramString, int paramInt, com.estrongs.android.view.cr paramcr)
  {
    int i1 = q(paramString);
    if ((paramcr instanceof WebViewWrapper)) {
      i1 = 22;
    }
    if ((i1 == 4) || (i1 == 2) || (i1 == 1) || (i1 == 3) || (i1 == 28)) {
      if ((paramcr != null) && (paramcr.h().isEmpty()))
      {
        c(ik.a(i1), paramInt);
        if (!o) {
          break label108;
        }
        a(paramString);
      }
    }
    label108:
    do
    {
      return;
      c(i1, paramInt);
      break;
      c(i1, paramInt);
      break;
      aL.c(paramString);
    } while ((paramcr == null) || (!paramcr.N()) || (paramcr.o() == null));
    F.a(paramcr.o());
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
    } while ((!com.estrongs.android.util.ap.bl(paramString2)) || (-1 == bg.b(paramString2)));
    com.estrongs.android.scanner.l.a().a(paramString2);
    com.estrongs.android.util.bm.c().a(paramString2, false);
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    Object localObject = O();
    if (localObject != null)
    {
      if (h(((com.estrongs.android.view.cr)localObject).c()))
      {
        if (O == null) {
          O = new eg(this);
        }
        ((com.estrongs.android.view.cr)localObject).a(O);
        O.a(paramString3);
        ((com.estrongs.android.view.cr)localObject).b(false);
      }
    }
    else {
      return;
    }
    localObject = paramString1;
    if (com.estrongs.android.util.ap.bi(paramString1)) {
      localObject = com.estrongs.android.util.ap.bQ(paramString1);
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
    r(paramString1.toString());
  }
  
  public void a(String paramString, List<com.estrongs.fs.h> paramList, boolean paramBoolean)
  {
    if (M == null)
    {
      M = new com.estrongs.android.widget.aj(this, L, true);
      M.setOnDismissListener(new cb(this));
    }
    for (;;)
    {
      x.clear();
      x.addAll(paramList);
      n = paramBoolean;
      M.setTitle(paramString);
      M.show();
      return;
      M.a(true);
    }
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    paramString = getString(2131230867);
    if (paramBoolean) {}
    for (int i1 = 2131231133;; i1 = 2131231131)
    {
      paramString = new com.estrongs.android.ui.dialog.er(this, paramString, getString(i1));
      paramString.a(new bb(this, paramBoolean));
      paramString.show();
      return;
    }
  }
  
  public void a(List<com.estrongs.fs.h> paramList, int paramInt)
  {
    aL.a(paramList, paramInt);
  }
  
  public void a(boolean paramBoolean, Handler paramHandler, Runnable paramRunnable)
  {
    if ((com.estrongs.android.pop.ad.a(this).r()) || (paramBoolean))
    {
      com.estrongs.android.h.a.e.e();
      new Thread(new am(this, paramHandler, paramRunnable)).start();
    }
  }
  
  public boolean a(View paramView)
  {
    int i2 = h.getChildCount();
    label66:
    for (paramView = paramView.getParent();; paramView = paramView.getParent())
    {
      int i1;
      if (paramView != null) {
        i1 = 0;
      }
      for (;;)
      {
        if ((i1 >= i2) || (paramView.equals(h.getChildAt(i1))))
        {
          if (i1 >= i2) {
            break label66;
          }
          if (h.getCurrentChildIndex() != i1) {
            break;
          }
          return false;
        }
        i1 += 1;
      }
      return true;
    }
  }
  
  public boolean a(ArrayList<com.estrongs.android.pop.app.f.f> paramArrayList)
  {
    if (!com.estrongs.android.util.an.b())
    {
      paramArrayList = new com.estrongs.android.ui.dialog.ci(this);
      paramArrayList.setTitle(2131231815);
      paramArrayList.setConfirmButton(getResources().getString(2131231270), new ch(this));
      paramArrayList.setCancelButton(getResources().getString(2131231265), new cj(this));
      paramArrayList.setMessage(getString(2131231626));
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
        runOnUiThread(new ck(this));
        if (aF != null) {
          continue;
        }
        aF = ProgressDialog.a(this, getString(2131232182), getString(2131232190), true, true);
        aF.setCancelButton(getString(2131231265), new cl(this, localb));
        aF.setConfirmButton(getString(2131230857), new cm(this));
        aF.a(ProgressDialog.ProgressStyle.horizontal);
      }
      catch (Resources.NotFoundException paramArrayList)
      {
        com.estrongs.android.pop.app.service.b localb;
        paramArrayList.printStackTrace();
        break label266;
        aF.show();
        continue;
      }
      runOnUiThread(new cn(this));
      new co(this, localb).start();
      break label266;
      localb.a(paramArrayList);
    }
    label266:
    return true;
  }
  
  public boolean a(List<com.estrongs.fs.h> paramList)
  {
    return com.estrongs.android.pop.utils.ao.a(this, paramList, O());
  }
  
  public void aa()
  {
    com.estrongs.android.view.cr localcr = O();
    if (localcr != null)
    {
      localcr.f(false);
      if ((h(localcr.c())) && (O != null) && (!eg.a(O)))
      {
        O.a();
        localcr.b(false);
      }
    }
  }
  
  public void ab()
  {
    aL.o();
  }
  
  public void ac()
  {
    int i2 = au().a();
    List localList = w;
    int i1 = 0;
    for (;;)
    {
      try
      {
        if (i1 < w.size())
        {
          com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)w.get(i1);
          if ((localcr == null) || ((!com.estrongs.android.util.ap.ai(localcr.c())) && (!com.estrongs.android.util.ap.bu(localcr.c())))) {
            break label105;
          }
          if (i2 == i1) {
            localcr.b(true);
          } else {
            localcr.i(true);
          }
        }
      }
      finally {}
      return;
      label105:
      i1 += 1;
    }
  }
  
  public com.estrongs.android.ui.navigation.m ad()
  {
    return at;
  }
  
  public com.estrongs.android.ui.navigation.m ae()
  {
    if (at == null)
    {
      at = new com.estrongs.android.ui.navigation.m(this, findViewById(2131624510), i, aL.c());
      aH();
    }
    return at;
  }
  
  public boolean af()
  {
    return aA;
  }
  
  public com.estrongs.android.pop.utils.c ag()
  {
    if (aZ == null) {
      aZ = new com.estrongs.android.pop.utils.c(this);
    }
    return aZ;
  }
  
  public void ah()
  {
    aS = true;
    finish();
    startActivity(new Intent(this, FileExplorerActivity.class));
  }
  
  public void ai()
  {
    i.postDelayed(new cz(this), 200L);
  }
  
  public void ak()
  {
    if (aE) {
      return;
    }
    i.post(new g(this));
    aE = true;
  }
  
  public void al()
  {
    for (;;)
    {
      try
      {
        int i1;
        synchronized (w)
        {
          if (com.estrongs.android.util.ap.cg(P()))
          {
            a(new n(this));
            return;
          }
          List localList2 = w;
          i1 = 0;
          if (i1 >= localList2.size()) {
            continue;
          }
          com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)localList2.get(i1);
          if ((localcr != null) && (com.estrongs.android.util.ap.cg(localcr.c()))) {
            localcr.a(true, true);
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
  
  public void am()
  {
    runOnUiThread(new o(this));
  }
  
  public void an()
  {
    a(new p(this));
  }
  
  public boolean ao()
  {
    return Looper.getMainLooper().getThread() == Thread.currentThread();
  }
  
  public boolean ap()
  {
    com.estrongs.android.view.cr localcr = O();
    if (localcr != null) {
      try
      {
        if ((!(localcr instanceof com.estrongs.android.ui.c.e)) && (!(localcr instanceof fp)))
        {
          int i1 = localcr.d();
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
  
  public void aq()
  {
    try
    {
      boolean bool = com.estrongs.android.pop.esclasses.i.b();
      View localView;
      label22:
      ScaleAnimation localScaleAnimation1;
      if (bool)
      {
        localView = findViewById(2131624803);
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
        localScaleAnimation1.setAnimationListener(new t(this, localView, localScaleAnimation2));
        localView.startAnimation(localScaleAnimation1);
        return;
        localView = findViewById(2131624804);
        break;
        f1 = 1.0F;
        break label22;
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public ei ar()
  {
    return bb;
  }
  
  public View as()
  {
    return aL.d();
  }
  
  public com.estrongs.android.j.c at()
  {
    return au;
  }
  
  public com.estrongs.android.ui.d.i au()
  {
    try
    {
      if (aM == null) {
        aM = new com.estrongs.android.ui.d.i();
      }
      com.estrongs.android.ui.d.i locali = aM;
      return locali;
    }
    finally {}
  }
  
  public void av()
  {
    com.estrongs.android.pop.ai localai = com.estrongs.android.pop.ai.b(this);
    if (!localai.x())
    {
      View localView = LayoutInflater.from(this).inflate(2130903100, null);
      Object localObject = new android.support.design.widget.v(-1, -2);
      c = 80;
      az.addView(localView, (ViewGroup.LayoutParams)localObject);
      localObject = AnimationUtils.loadAnimation(this, 2130968602);
      ((Animation)localObject).setDuration(500L);
      localView.startAnimation((Animation)localObject);
      localai.b(true);
      i.postDelayed(new u(this, localView), 5000L);
    }
  }
  
  public com.estrongs.android.ui.topclassify.e aw()
  {
    return aO;
  }
  
  public FrameLayout ax()
  {
    return aQ;
  }
  
  public void ay() {}
  
  public boolean az()
  {
    return bc;
  }
  
  protected View b()
  {
    return aL.i();
  }
  
  public com.estrongs.android.view.cr b(String paramString, TypedMap paramTypedMap)
  {
    return b(paramString, false);
  }
  
  public com.estrongs.android.view.cr b(String paramString, TypedMap paramTypedMap, boolean paramBoolean)
  {
    if (paramString != null) {}
    for (;;)
    {
      Object localObject;
      int i1;
      try
      {
        if (paramString.equals("recycle://"))
        {
          localObject = com.estrongs.android.pop.ad.a(this);
          if (!((com.estrongs.android.pop.ad)localObject).aE())
          {
            new com.estrongs.android.ui.dialog.cv(this).a(2131232258).b(2131231417).c(2131231265, null).b(2131231270, new be(this, (com.estrongs.android.pop.ad)localObject)).c();
            return null;
          }
        }
        int i2 = -1;
        localObject = w;
        i1 = 0;
        try
        {
          if (i1 < w.size())
          {
            if (!a((com.estrongs.android.view.cr)w.get(i1), paramString)) {
              break label243;
            }
            i2 = i1;
            break label246;
          }
          if (i2 >= 0)
          {
            f(i2);
            if (paramBoolean) {
              com.estrongs.android.pop.utils.ad.a(paramString, ((com.estrongs.android.view.cr)w.get(i2)).hashCode());
            }
            if (com.estrongs.android.util.ap.I(paramString) != 28) {
              ((com.estrongs.android.view.cr)w.get(i2)).j(paramString);
            }
            paramString = (com.estrongs.android.view.cr)w.get(i2);
            return paramString;
          }
        }
        finally {}
        paramString = a(paramString, paramTypedMap, paramBoolean);
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        return null;
      }
      return paramString;
      label243:
      label246:
      i1 += 1;
    }
  }
  
  public com.estrongs.android.view.cr b(String paramString, boolean paramBoolean)
  {
    return b(paramString, null, paramBoolean);
  }
  
  public void b(int paramInt)
  {
    for (;;)
    {
      int i1;
      synchronized (w)
      {
        int i2 = h.getCurrentScreen();
        i1 = 0;
        if (i1 < w.size())
        {
          com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)w.get(i1);
          if (i1 == i2)
          {
            localcr.a(paramInt);
            com.estrongs.android.pop.view.utils.ac.a(this, localcr.c(), paramInt);
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
  
  public void b(com.estrongs.android.ui.navigation.q paramq)
  {
    if (at != null) {
      at.b(paramq);
    }
  }
  
  public void b(com.estrongs.android.view.cr paramcr)
  {
    for (;;)
    {
      int i1;
      synchronized (w)
      {
        int i2 = w.size();
        i1 = 0;
        if (i1 < i2)
        {
          com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)w.get(i1);
          if ((localcr != null) && (f == f)) {
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
  
  public void b(String paramString)
  {
    if (paramString == null) {}
    Object localObject1;
    for (;;)
    {
      return;
      for (;;)
      {
        try
        {
          localObject1 = com.estrongs.fs.impl.usb.e.b(paramString);
          if (!com.estrongs.a.a.isAllTaskFinished()) {
            break label342;
          }
          if (localObject1 == null) {
            break label210;
          }
          localObject2 = ((com.estrongs.fs.impl.usb.g)localObject1).k();
          ((com.estrongs.fs.impl.usb.g)localObject1).e();
          Object localObject3 = ad();
          if (localObject3 != null) {
            ((com.estrongs.android.ui.navigation.m)localObject3).b(paramString);
          }
          localObject3 = w;
          int i1 = 0;
          if (i1 < ((List)localObject3).size())
          {
            com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)((List)localObject3).get(i1);
            if ((localcr != null) && (localcr.c() != null) && (localcr.c().startsWith(paramString))) {
              b(localcr);
            }
          }
          else
          {
            ((com.estrongs.fs.impl.usb.g)localObject1).f();
            if (aJ == null) {
              break;
            }
            paramString = new ArrayList();
            paramString.add(((com.estrongs.fs.impl.usb.g)localObject1).j());
            localObject1 = aJ.iterator();
            if (!((Iterator)localObject1).hasNext()) {
              break;
            }
            ((com.estrongs.android.ui.c.b.h)((Iterator)localObject1).next()).b(paramString);
            continue;
          }
          i1 += 1;
        }
        catch (Exception paramString)
        {
          paramString.printStackTrace();
          return;
        }
      }
      com.estrongs.android.ui.view.ak.a(this, getString(2131232528, new Object[] { localObject2 }), 1);
      return;
      label210:
      if (com.estrongs.android.util.ap.bL(paramString))
      {
        paramString = new Intent("android.settings.INTERNAL_STORAGE_SETTINGS");
        paramString.setFlags(268435456);
        startActivity(paramString);
        return;
      }
      localObject2 = ad();
      if (localObject2 != null)
      {
        ((com.estrongs.android.ui.navigation.m)localObject2).b(paramString);
        com.estrongs.android.ui.view.ak.a(this, getString(2131232528, new Object[] { "" }), 1);
      }
      if (aJ != null)
      {
        paramString = new ArrayList();
        paramString.add(((com.estrongs.fs.impl.usb.g)localObject1).j());
        localObject1 = aJ.iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((com.estrongs.android.ui.c.b.h)((Iterator)localObject1).next()).b(paramString);
        }
      }
    }
    label342:
    Object localObject2 = getString(2131232526) + "<font size='8px' color='grey'><br /><br />" + getString(2131232527) + "</font>";
    paramString = new com.estrongs.android.ui.dialog.cv(this).a(2131231714).b(Html.fromHtml((String)localObject2)).b(2131232525, new ai(this, (com.estrongs.fs.impl.usb.g)localObject1, paramString)).c(2131231265, new ah(this));
    paramString.b(false);
    paramString.c();
  }
  
  public void b(String paramString1, String paramString2)
  {
    paramString2 = com.estrongs.android.pop.utils.de.a(this, paramString1, paramString2);
    if (paramString2 == null) {}
    for (;;)
    {
      return;
      try
      {
        com.estrongs.android.j.c.a(this).a("Search_Wan");
        com.estrongs.android.j.c.a(this).c("Search_Wan_UV");
        if ((com.estrongs.android.pop.utils.de.a(b)) || (!bk.b(a))) {
          continue;
        }
        paramString2 = d(a);
        if ((paramString2 == null) || (!(paramString2 instanceof WebViewWrapper))) {
          continue;
        }
        ((WebViewWrapper)paramString2).a(com.estrongs.android.pop.ad.a(FexApplication.a()).aM(), paramString1);
        return;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
  }
  
  public void b(String paramString, List<com.estrongs.fs.h> paramList, boolean paramBoolean)
  {
    String str = com.estrongs.android.pop.b.b();
    if (K == null)
    {
      int i1 = -1;
      cd localcd = new cd(this, com.estrongs.android.pop.ad.a(this).q());
      if (com.estrongs.android.pop.z.n) {
        i1 = -2;
      }
      K = new com.estrongs.android.widget.f(this, str, localcd, i1);
      K.a(new ce(this));
      K.b(true);
    }
    x.clear();
    x.addAll(paramList);
    n = paramBoolean;
    K.b(getString(2131231270), N);
    K.c(getString(2131231265), (DialogInterface.OnClickListener)null);
    K.b(str);
    K.a(paramString);
    K.j();
  }
  
  public void b(List<String> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {}
    for (;;)
    {
      return;
      int i1 = 0;
      while (i1 < w.size())
      {
        ((com.estrongs.android.view.cr)w.get(i1)).d(paramList);
        i1 += 1;
      }
    }
  }
  
  public com.estrongs.android.view.cr c(String paramString, TypedMap paramTypedMap)
  {
    com.estrongs.android.view.cr localcr = O();
    if (localcr != null) {
      if (a(localcr, paramString))
      {
        localcr.a(paramString, paramTypedMap);
        paramTypedMap = localcr;
      }
    }
    for (;;)
    {
      if ((!com.estrongs.android.util.ap.aQ(paramString)) && (!com.estrongs.android.util.ap.aY(paramString)) && (!com.estrongs.android.util.ap.X(paramString)) && (!com.estrongs.android.util.ap.u(paramString)) && (!com.estrongs.android.util.ap.v(paramString)) && (!"#home_page#".equals(paramString))) {
        com.estrongs.android.util.bm.c().a(paramString, true);
      }
      return paramTypedMap;
      paramTypedMap = a(paramString, paramTypedMap);
      continue;
      int i1 = au().a();
      h.removeViewAt(i1);
      paramTypedMap = a(au().b(), paramString, paramTypedMap);
    }
  }
  
  protected void c(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ((ImageView)findViewById(2131624522)).setVisibility(8);
      return;
    }
    bb();
  }
  
  public com.estrongs.android.view.cr d(String paramString)
  {
    if (("#home_page#".equals(paramString)) || ("mynetwork://".equalsIgnoreCase(paramString)) || ("clean://".equals(paramString))) {
      return f(paramString);
    }
    return a(paramString, null);
  }
  
  public void d(boolean paramBoolean)
  {
    aL.a(paramBoolean);
  }
  
  public void e(int paramInt)
  {
    com.estrongs.android.ui.navigation.m localm = ae();
    if (localm != null) {
      localm.b(paramInt);
    }
  }
  
  public void e(String paramString)
  {
    com.estrongs.android.view.cr localcr = O();
    if ((localcr != null) && (!h(localcr.c()))) {
      if (!(localcr instanceof com.estrongs.android.ui.c.e)) {
        break label57;
      }
    }
    label57:
    for (String str = "externalstorage://";; str = localcr.c())
    {
      if ((localcr instanceof com.estrongs.android.view.er)) {
        str = "log://";
      }
      a(str, localcr.aq(), paramString);
      C();
      return;
    }
  }
  
  public void e(boolean paramBoolean)
  {
    aL.b(paramBoolean);
  }
  
  protected boolean e()
  {
    com.estrongs.android.view.cr localcr = O();
    if (localcr == null) {}
    while ((localcr.N()) && (!(localcr instanceof WebViewWrapper))) {
      return false;
    }
    return true;
  }
  
  public com.estrongs.android.view.cr f(String paramString)
  {
    return b(paramString, null);
  }
  
  public void f(int paramInt)
  {
    if (h != null) {
      h.setPageLocked(false);
    }
    V = O();
    if (V != null) {
      V.j_();
    }
    aL.t();
    if (h != null) {
      h.setCurrentScreen(paramInt);
    }
    paramInt = au().a();
    aL.d(paramInt);
    Object localObject = au().c(paramInt);
    E.a(((com.estrongs.android.ui.d.h)localObject).a(), false);
    localObject = O();
    if (localObject != null) {
      ((com.estrongs.android.view.cr)localObject).l();
    }
    if (p) {
      B();
    }
  }
  
  public void f(boolean paramBoolean)
  {
    if (ao())
    {
      for (;;)
      {
        com.estrongs.android.view.cr localcr;
        synchronized (w)
        {
          Iterator localIterator = w.iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localcr = (com.estrongs.android.view.cr)localIterator.next();
          if ((localcr == null) || ((!com.estrongs.android.util.ap.bl(localcr.c())) && (!com.estrongs.android.util.ap.bu(localcr.c())))) {
            continue;
          }
          if (localcr == O()) {
            localcr.b(paramBoolean);
          }
        }
        localcr.a(true, paramBoolean);
      }
      return;
    }
    runOnUiThread(new s(this, paramBoolean));
  }
  
  protected boolean f()
  {
    com.estrongs.android.view.cr localcr = O();
    if (localcr != null)
    {
      if ((localcr instanceof com.estrongs.android.pop.app.diskusage.h)) {}
      while (((localcr instanceof com.estrongs.android.ui.c.e)) || ((localcr instanceof eu)) || (((!localcr.p()) || (!localcr.aj())) && (!localcr.h().isEmpty()))) {
        return false;
      }
      return true;
    }
    return true;
  }
  
  public void finish()
  {
    if (!aS) {
      a(false, null, null);
    }
    FexApplication.a().b(false);
    synchronized (w)
    {
      Iterator localIterator = w.iterator();
      while (localIterator.hasNext())
      {
        com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)localIterator.next();
        if (localcr != null) {
          localcr.i_();
        }
      }
    }
    w.clear();
    x.clear();
    X.clear();
    com.estrongs.fs.a.b.a().e();
    com.estrongs.android.pop.app.f.a.d = true;
    com.estrongs.fs.util.a.a.clear();
    if (com.estrongs.android.pop.utils.ad.e)
    {
      com.estrongs.android.pop.utils.ad.b();
      com.estrongs.android.pop.utils.ad.e = false;
    }
    com.estrongs.android.pop.utils.ad.a();
    com.estrongs.android.pop.app.c.l.d();
    com.estrongs.android.util.bc.a();
    FexApplication.a().f();
    try
    {
      if (aI != null) {
        unbindService(aI);
      }
      for (;;)
      {
        FexApplication.a().k();
        com.estrongs.android.pop.ad.a(this).a();
        at = null;
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
  
  public com.estrongs.android.view.cr g(String paramString)
  {
    return c(paramString, null);
  }
  
  protected void g()
  {
    u();
  }
  
  public void g(int paramInt)
  {
    aL.t();
    au().b(paramInt);
    synchronized (w)
    {
      if ((w.size() > 1) && (w.size() > paramInt))
      {
        com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)w.remove(paramInt);
        if (localcr != null) {
          localcr.i_();
        }
        h.removeViewAt(paramInt);
        aL.e(paramInt);
        E.a(P(), false);
        localcr = O();
        if (localcr != null) {
          localcr.l();
        }
      }
      return;
    }
  }
  
  public com.estrongs.android.view.cr h(int paramInt)
  {
    com.estrongs.android.view.cr localcr;
    synchronized (w)
    {
      if (paramInt >= w.size()) {
        return null;
      }
    }
    return null;
  }
  
  public void h()
  {
    int i1 = au().a();
    com.estrongs.android.view.cr localcr = O();
    if (localcr == null) {
      return;
    }
    a(localcr.c(), i1, localcr);
  }
  
  public boolean h(String paramString)
  {
    return (com.estrongs.android.util.ap.aY(paramString)) || (com.estrongs.android.util.ap.X(paramString)) || (com.estrongs.android.util.ap.aQ(paramString)) || (com.estrongs.android.util.ap.bu(paramString)) || (com.estrongs.android.util.ap.ai(paramString)) || (com.estrongs.android.util.ap.ag(paramString)) || (com.estrongs.android.util.ap.O(paramString)) || ((com.estrongs.android.util.ap.ah(paramString)) && (!com.estrongs.android.util.ap.bw(paramString))) || ((com.estrongs.android.util.ap.bi(paramString)) && (com.estrongs.android.util.ap.ah(com.estrongs.android.util.ap.bQ(paramString))));
  }
  
  public Bitmap i(int paramInt)
  {
    if ((com.estrongs.android.ui.d.g.e == 0) || (com.estrongs.android.ui.d.g.d == 0)) {
      com.estrongs.android.ui.d.g.a(this);
    }
    if ((com.estrongs.android.ui.d.g.e == 0) || (com.estrongs.android.ui.d.g.d == 0)) {}
    while (h == null) {
      return null;
    }
    return h.b(paramInt, t);
  }
  
  public void i()
  {
    aL.u();
    o = false;
  }
  
  public boolean i(String paramString)
  {
    return (paramString != null) && (!"apk://".equalsIgnoreCase(paramString)) && (!"book://".equalsIgnoreCase(paramString)) && (!"pic://".equalsIgnoreCase(paramString)) && (!"music://".equalsIgnoreCase(paramString)) && (!"video://".equalsIgnoreCase(paramString)) && (!"#home_page#".equals(paramString)) && (!"remote://".equals(paramString)) && (!com.estrongs.android.util.ap.t(paramString)) && (!com.estrongs.android.util.ap.cg(paramString)) && (!com.estrongs.android.util.ap.u(paramString)) && (!com.estrongs.android.util.ap.br(paramString)) && (!com.estrongs.android.util.ap.bZ(paramString)) && (!com.estrongs.android.util.ap.ai(paramString)) && (!com.estrongs.android.util.ap.aY(paramString)) && (!com.estrongs.android.util.ap.aQ(paramString)) && (!com.estrongs.android.util.ap.ba(paramString)) && (!com.estrongs.android.util.ap.bi(paramString)) && (!com.estrongs.android.util.ap.v(paramString)) && (!com.estrongs.android.util.ap.ci(paramString)) && (!com.estrongs.android.util.ap.cj(paramString)) && (!com.estrongs.android.util.ap.N(paramString)) && (!com.estrongs.android.util.ap.O(paramString)) && (!com.estrongs.android.util.ap.bv(paramString)) && (!com.estrongs.android.util.ap.bw(paramString)) && (!com.estrongs.android.util.ap.bx(paramString)) && (!com.estrongs.android.util.ap.ad(paramString)) && (!com.estrongs.android.util.ap.ae(paramString)) && (!com.estrongs.android.util.ap.V(paramString)) && (!com.estrongs.android.util.ap.X(paramString)) && (!com.estrongs.android.util.ap.Z(paramString)) && (!com.estrongs.android.util.ap.ab(paramString));
  }
  
  public boolean isDestroyed()
  {
    return aA;
  }
  
  public boolean j()
  {
    return o;
  }
  
  public boolean j(String paramString)
  {
    if (Q() == null) {
      return false;
    }
    Intent localIntent = new Intent();
    String str = Q().getAbsolutePath();
    Object localObject = str;
    if (com.estrongs.android.util.ap.bi(str)) {
      localObject = com.estrongs.android.util.ap.bQ(str);
    }
    localIntent.putExtra("CURRENT_WORKING_PATH", (String)localObject);
    localObject = (EditText)findViewById(2131624501);
    if ((localObject != null) && (((EditText)localObject).getText().toString().length() > 0)) {
      localIntent.putExtra("keyword", ((EditText)localObject).getText().toString());
    }
    new com.estrongs.android.pop.app.f.y(this, localIntent).a(new cp(this, paramString)).a();
    return true;
  }
  
  public void k()
  {
    dt localdt = new dt(this);
    e locale = new e(this, localdt);
    FexApplication.a().a(locale);
    locale.a(localdt);
  }
  
  public void k(String paramString)
  {
    aw = paramString;
    com.estrongs.android.view.cr localcr = O();
    if (localcr == null) {}
    do
    {
      return;
      localcr.o(paramString);
    } while ((localcr instanceof com.estrongs.android.ui.c.e));
    c(Q().getAbsolutePath(), paramString);
  }
  
  public void l()
  {
    p = false;
    aL.t();
  }
  
  public void l(String paramString)
  {
    if ((h(P())) && (O != null) && (paramString.equals(eg.b(O)))) {}
    while ((Q() == null) || (O() == null) || ((O() instanceof com.estrongs.android.ui.c.e)) || ((O() instanceof com.estrongs.android.view.er))) {
      return;
    }
    try
    {
      c(Q().getAbsolutePath(), O().aq());
      return;
    }
    catch (Exception paramString) {}
  }
  
  public void m()
  {
    File[] arrayOfFile = new File(com.estrongs.android.pop.a.f).listFiles();
    if (arrayOfFile != null) {
      j.a(arrayOfFile);
    }
  }
  
  public void m(String paramString)
  {
    com.estrongs.android.pop.utils.cm.a(paramString);
  }
  
  public int n(String paramString)
  {
    int i2 = w.size();
    List localList = w;
    int i1 = 0;
    for (;;)
    {
      if (i1 < i2) {}
      try
      {
        if (!a((com.estrongs.android.view.cr)w.get(i1), paramString)) {
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
  
  public void o()
  {
    com.estrongs.android.view.cr localcr = O();
    if ((localcr != null) && (localcr.W()) && (bk.a(aL.q()))) {
      C();
    }
  }
  
  public void o(String paramString)
  {
    if (ao())
    {
      for (;;)
      {
        com.estrongs.android.view.cr localcr;
        synchronized (w)
        {
          Iterator localIterator = w.iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localcr = (com.estrongs.android.view.cr)localIterator.next();
          if ((localcr == null) || (!com.estrongs.android.util.ap.e(paramString, localcr.c()))) {
            continue;
          }
          if (localcr == O()) {
            localcr.b(true);
          }
        }
        localcr.a(true, true);
      }
      return;
    }
    runOnUiThread(new q(this, paramString));
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 4106) {
      if (paramInt2 != 0) {
        com.estrongs.android.pop.app.f.a.a().i();
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
                while ((paramInt2 != -1) && (paramInt1 != 4134) && (paramInt2 != 1001)) {}
                localObject1 = null;
                if (paramIntent != null) {
                  localObject1 = paramIntent.getExtras();
                }
                switch (paramInt1)
                {
                default: 
                  return;
                case 1001: 
                  localObject1 = com.estrongs.android.ui.pcs.u.a().j();
                }
              } while (localObject1 == null);
              ((com.estrongs.android.ui.pcs.l)localObject1).a(paramInt1, paramIntent, paramInt2);
              return;
            } while ((Y == null) || (T == null));
            Y.setBackgroundDrawable(T.h());
            return;
            aS = true;
            com.estrongs.android.h.a.e.c();
            paramIntent = new Configuration(getResources().getConfiguration());
            paramInt1 = touchscreen;
            if (paramInt1 == 3) {}
            for (touchscreen = 1;; touchscreen = 3)
            {
              getResources().updateConfiguration(paramIntent, getResources().getDisplayMetrics());
              touchscreen = paramInt1;
              getResources().updateConfiguration(paramIntent, getResources().getDisplayMetrics());
              T.q();
              com.estrongs.android.h.f.a(this).a();
              i.post(new bs(this));
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
            if (bg.c(paramIntent))
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
          com.estrongs.android.ui.view.ak.a(this, 2131231542, 0);
          az.setMovingStart(true);
          return;
          localObject1 = w.iterator();
        } while (!((Iterator)localObject1).hasNext());
        localObject2 = (com.estrongs.android.view.cr)((Iterator)localObject1).next();
      } while (!(localObject2 instanceof WebViewWrapper));
      localObject2 = (WebViewWrapper)localObject2;
    } while (!((WebViewWrapper)localObject2).C());
    ((WebViewWrapper)localObject2).b(paramIntent);
    return;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    Object localObject = O();
    if (localObject != null)
    {
      if ((com.estrongs.android.util.ap.bi(P())) && (((com.estrongs.android.view.cr)localObject).p())) {
        ((com.estrongs.android.view.cr)localObject).ah();
      }
      if (aa.f()) {
        aa.a();
      }
    }
    aL.a(paramConfiguration);
    ab();
    aV();
    aW();
    if (orientation == 1) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      if (!u) {
        t = c;
      }
      aS();
      i.post(new bt(this));
      e = -2;
      localObject = P();
      if (localObject != null) {
        E.a((String)localObject, true, false);
      }
      if (M != null) {
        M.b(t);
      }
      if ((ax != null) && (ax.a()))
      {
        ax.d();
        ax = null;
      }
      localObject = O();
      if (localObject != null) {
        ((com.estrongs.android.view.cr)localObject).a(paramConfiguration);
      }
      aN.a(c);
      return;
    }
  }
  
  /* Error */
  public void onCreate(Bundle paramBundle)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: aload_0
    //   4: aload_1
    //   5: invokespecial 3458	com/estrongs/android/pop/esclasses/ESAbsToolbarActivity:onCreate	(Landroid/os/Bundle;)V
    //   8: invokestatic 1381	com/estrongs/android/pop/app/unlock/s:a	()Lcom/estrongs/android/pop/app/unlock/s;
    //   11: aload_0
    //   12: invokevirtual 3459	com/estrongs/android/pop/app/unlock/s:a	(Landroid/content/Context;)V
    //   15: aload_0
    //   16: invokestatic 387	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   19: invokevirtual 3461	com/estrongs/android/pop/ad:bp	()Z
    //   22: putstatic 3462	com/estrongs/android/pop/FexApplication:a	Z
    //   25: getstatic 3462	com/estrongs/android/pop/FexApplication:a	Z
    //   28: ifeq +676 -> 704
    //   31: ldc_w 3254
    //   34: invokestatic 3465	com/estrongs/android/util/ap:bP	(Ljava/lang/String;)Ljava/lang/String;
    //   37: invokestatic 3470	com/estrongs/fs/impl/f/b:a	()Lcom/estrongs/fs/impl/f/b;
    //   40: invokestatic 3473	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/fs/u;)V
    //   43: ldc_w 3252
    //   46: invokestatic 3465	com/estrongs/android/util/ap:bP	(Ljava/lang/String;)Ljava/lang/String;
    //   49: invokestatic 3478	com/estrongs/fs/impl/a/c:a	()Lcom/estrongs/fs/impl/a/c;
    //   52: invokestatic 3473	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/fs/u;)V
    //   55: ldc_w 3480
    //   58: invokestatic 3465	com/estrongs/android/util/ap:bP	(Ljava/lang/String;)Ljava/lang/String;
    //   61: invokestatic 3485	com/estrongs/fs/impl/h/b:a	()Lcom/estrongs/fs/impl/h/b;
    //   64: invokestatic 3473	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/fs/u;)V
    //   67: ldc_w 946
    //   70: invokestatic 3465	com/estrongs/android/util/ap:bP	(Ljava/lang/String;)Ljava/lang/String;
    //   73: invokestatic 3490	com/estrongs/fs/impl/d/b:a	()Lcom/estrongs/fs/impl/d/b;
    //   76: invokestatic 3473	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/fs/u;)V
    //   79: aload_0
    //   80: invokestatic 3493	com/estrongs/android/c/a/a:a	(Landroid/content/Context;)V
    //   83: aload_0
    //   84: invokestatic 1254	java/lang/System:currentTimeMillis	()J
    //   87: putfield 1256	com/estrongs/android/pop/view/FileExplorerActivity:aP	J
    //   90: aload_0
    //   91: invokevirtual 1047	com/estrongs/android/pop/view/FileExplorerActivity:getResources	()Landroid/content/res/Resources;
    //   94: invokevirtual 3366	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   97: getfield 3497	android/content/res/Configuration:locale	Ljava/util/Locale;
    //   100: invokevirtual 3502	java/util/Locale:getLanguage	()Ljava/lang/String;
    //   103: pop
    //   104: invokestatic 1014	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   107: invokevirtual 3503	com/estrongs/android/pop/FexApplication:o	()V
    //   110: aload_0
    //   111: new 3505	com/estrongs/android/ui/topclassify/e
    //   114: dup
    //   115: aload_0
    //   116: invokespecial 3506	com/estrongs/android/ui/topclassify/e:<init>	(Landroid/content/Context;)V
    //   119: putfield 3028	com/estrongs/android/pop/view/FileExplorerActivity:aO	Lcom/estrongs/android/ui/topclassify/e;
    //   122: aload_0
    //   123: aload_0
    //   124: invokevirtual 3510	com/estrongs/android/pop/view/FileExplorerActivity:getWindow	()Landroid/view/Window;
    //   127: invokevirtual 3516	android/view/Window:getAttributes	()Landroid/view/WindowManager$LayoutParams;
    //   130: getfield 3521	android/view/WindowManager$LayoutParams:softInputMode	I
    //   133: putfield 261	com/estrongs/android/pop/view/FileExplorerActivity:B	I
    //   136: aload_0
    //   137: invokestatic 1014	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   140: invokestatic 3524	com/estrongs/android/ui/theme/at:a	(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;
    //   143: putfield 420	com/estrongs/android/pop/view/FileExplorerActivity:T	Lcom/estrongs/android/ui/theme/at;
    //   146: aload_0
    //   147: invokevirtual 1047	com/estrongs/android/pop/view/FileExplorerActivity:getResources	()Landroid/content/res/Resources;
    //   150: invokevirtual 3366	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   153: getfield 3435	android/content/res/Configuration:orientation	I
    //   156: iconst_1
    //   157: if_icmpne +659 -> 816
    //   160: iconst_1
    //   161: istore 5
    //   163: aload_0
    //   164: iload 5
    //   166: putfield 238	com/estrongs/android/pop/view/FileExplorerActivity:t	Z
    //   169: aload_0
    //   170: aload_0
    //   171: getfield 238	com/estrongs/android/pop/view/FileExplorerActivity:t	Z
    //   174: putfield 1454	com/estrongs/android/pop/view/FileExplorerActivity:c	Z
    //   177: aload_0
    //   178: aload_0
    //   179: invokestatic 3525	com/estrongs/android/pop/utils/cu:a	(Landroid/content/Context;)Z
    //   182: putfield 240	com/estrongs/android/pop/view/FileExplorerActivity:u	Z
    //   185: aload_0
    //   186: invokestatic 3527	com/estrongs/android/pop/utils/cu:c	(Landroid/content/Context;)Z
    //   189: putstatic 183	com/estrongs/android/pop/view/FileExplorerActivity:v	Z
    //   192: aload_0
    //   193: getfield 240	com/estrongs/android/pop/view/FileExplorerActivity:u	Z
    //   196: ifeq +8 -> 204
    //   199: aload_0
    //   200: iconst_1
    //   201: putfield 238	com/estrongs/android/pop/view/FileExplorerActivity:t	Z
    //   204: aload_0
    //   205: ldc_w 2212
    //   208: putfield 2214	com/estrongs/android/pop/view/FileExplorerActivity:q	Ljava/lang/String;
    //   211: aload_0
    //   212: putstatic 207	com/estrongs/android/pop/view/FileExplorerActivity:aT	Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   215: aload_0
    //   216: aload_0
    //   217: invokestatic 387	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   220: putfield 616	com/estrongs/android/pop/view/FileExplorerActivity:k	Lcom/estrongs/android/pop/ad;
    //   223: aload_0
    //   224: aload_0
    //   225: invokestatic 2995	com/estrongs/android/pop/ai:b	(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;
    //   228: putfield 1154	com/estrongs/android/pop/view/FileExplorerActivity:l	Lcom/estrongs/android/pop/ai;
    //   231: aload_0
    //   232: getfield 420	com/estrongs/android/pop/view/FileExplorerActivity:T	Lcom/estrongs/android/ui/theme/at;
    //   235: invokevirtual 1666	com/estrongs/android/ui/theme/at:o	()Z
    //   238: ifeq +594 -> 832
    //   241: aload_0
    //   242: getfield 240	com/estrongs/android/pop/view/FileExplorerActivity:u	Z
    //   245: ifne +587 -> 832
    //   248: aload_0
    //   249: new 3529	com/estrongs/android/ui/controller/h
    //   252: dup
    //   253: aload_0
    //   254: invokespecial 3530	com/estrongs/android/ui/controller/h:<init>	(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    //   257: putfield 365	com/estrongs/android/pop/view/FileExplorerActivity:aL	Lcom/estrongs/android/ui/controller/a;
    //   260: invokestatic 1014	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   263: iconst_0
    //   264: invokevirtual 3190	com/estrongs/android/pop/FexApplication:b	(Z)V
    //   267: aload_0
    //   268: aload_0
    //   269: invokestatic 1275	com/estrongs/android/j/c:a	(Landroid/content/Context;)Lcom/estrongs/android/j/c;
    //   272: putfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   275: aload_0
    //   276: aload_0
    //   277: invokevirtual 821	com/estrongs/android/pop/view/FileExplorerActivity:getIntent	()Landroid/content/Intent;
    //   280: invokevirtual 3533	android/content/Intent:getDataString	()Ljava/lang/String;
    //   283: invokestatic 3536	android/net/Uri:decode	(Ljava/lang/String;)Ljava/lang/String;
    //   286: putfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   289: ldc_w 958
    //   292: aload_0
    //   293: invokevirtual 821	com/estrongs/android/pop/view/FileExplorerActivity:getIntent	()Landroid/content/Intent;
    //   296: invokevirtual 961	android/content/Intent:getAction	()Ljava/lang/String;
    //   299: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   302: istore 5
    //   304: ldc_w 969
    //   307: aload_0
    //   308: invokevirtual 821	com/estrongs/android/pop/view/FileExplorerActivity:getIntent	()Landroid/content/Intent;
    //   311: ldc_w 971
    //   314: invokevirtual 828	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   317: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   320: istore 6
    //   322: iload 6
    //   324: ifne +8 -> 332
    //   327: iload 5
    //   329: ifeq +31 -> 360
    //   332: aload_0
    //   333: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   336: ldc_w 3538
    //   339: invokevirtual 3540	com/estrongs/android/j/c:d	(Ljava/lang/String;)V
    //   342: iload 6
    //   344: ifeq +503 -> 847
    //   347: aload_0
    //   348: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   351: ldc_w 3538
    //   354: ldc_w 3542
    //   357: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   360: aload_0
    //   361: getfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   364: ifnull +247 -> 611
    //   367: aload_0
    //   368: getfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   371: invokestatic 505	com/estrongs/android/util/ap:bl	(Ljava/lang/String;)Z
    //   374: istore 5
    //   376: aload_0
    //   377: getfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   380: invokestatic 3545	com/estrongs/android/util/ap:bC	(Ljava/lang/String;)Z
    //   383: istore 6
    //   385: aload_0
    //   386: getfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   389: invokestatic 3547	com/estrongs/android/util/ap:aG	(Ljava/lang/String;)Z
    //   392: istore 7
    //   394: aload_0
    //   395: getfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   398: invokestatic 1987	com/estrongs/android/util/ap:L	(Ljava/lang/String;)Z
    //   401: istore 8
    //   403: aload_0
    //   404: getfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   407: invokestatic 1991	com/estrongs/android/util/ap:r	(Ljava/lang/String;)Z
    //   410: istore 9
    //   412: aload_0
    //   413: getfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   416: invokestatic 1989	com/estrongs/android/util/ap:K	(Ljava/lang/String;)Z
    //   419: istore 10
    //   421: aload_0
    //   422: getfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   425: invokestatic 1993	com/estrongs/android/util/ap:p	(Ljava/lang/String;)Z
    //   428: istore 11
    //   430: aload_0
    //   431: getfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   434: invokestatic 3549	com/estrongs/android/util/ap:M	(Ljava/lang/String;)Z
    //   437: istore 12
    //   439: aload_0
    //   440: getfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   443: invokestatic 1995	com/estrongs/android/util/ap:J	(Ljava/lang/String;)Z
    //   446: istore 13
    //   448: iload 8
    //   450: ifne +28 -> 478
    //   453: iload 9
    //   455: ifne +23 -> 478
    //   458: iload 10
    //   460: ifne +18 -> 478
    //   463: iload 11
    //   465: ifne +13 -> 478
    //   468: iload 12
    //   470: ifne +8 -> 478
    //   473: iload 13
    //   475: ifeq +398 -> 873
    //   478: iconst_1
    //   479: istore_2
    //   480: ldc_w 3551
    //   483: aload_0
    //   484: invokevirtual 821	com/estrongs/android/pop/view/FileExplorerActivity:getIntent	()Landroid/content/Intent;
    //   487: invokevirtual 961	android/content/Intent:getAction	()Ljava/lang/String;
    //   490: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   493: istore 8
    //   495: ldc_w 3553
    //   498: aload_0
    //   499: invokevirtual 821	com/estrongs/android/pop/view/FileExplorerActivity:getIntent	()Landroid/content/Intent;
    //   502: invokevirtual 961	android/content/Intent:getAction	()Ljava/lang/String;
    //   505: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   508: istore 9
    //   510: aload_0
    //   511: invokevirtual 821	com/estrongs/android/pop/view/FileExplorerActivity:getIntent	()Landroid/content/Intent;
    //   514: invokevirtual 3556	android/content/Intent:getType	()Ljava/lang/String;
    //   517: astore 14
    //   519: iload 5
    //   521: ifne +12 -> 533
    //   524: iload 7
    //   526: ifne +7 -> 533
    //   529: iload_2
    //   530: ifeq +13 -> 543
    //   533: aload_0
    //   534: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   537: ldc_w 3538
    //   540: invokevirtual 3540	com/estrongs/android/j/c:d	(Ljava/lang/String;)V
    //   543: iload 5
    //   545: ifeq +343 -> 888
    //   548: ldc_w 3558
    //   551: aload 14
    //   553: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   556: ifeq +332 -> 888
    //   559: aload_0
    //   560: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   563: ldc_w 3538
    //   566: ldc_w 3560
    //   569: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   572: aload_0
    //   573: getfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   576: ldc_w 3562
    //   579: invokevirtual 494	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   582: ifne +16 -> 598
    //   585: aload_0
    //   586: getfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   589: ldc_w 3564
    //   592: invokevirtual 494	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   595: ifeq +397 -> 992
    //   598: aload_0
    //   599: aload_0
    //   600: getfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   603: bipush 7
    //   605: invokevirtual 2516	java/lang/String:substring	(I)Ljava/lang/String;
    //   608: putfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   611: aload_1
    //   612: ifnull +1511 -> 2123
    //   615: aload_1
    //   616: ldc_w 3566
    //   619: invokevirtual 3569	android/os/Bundle:getStringArray	(Ljava/lang/String;)[Ljava/lang/String;
    //   622: astore 14
    //   624: aload_1
    //   625: ldc_w 3571
    //   628: invokevirtual 3573	android/os/Bundle:getBoolean	(Ljava/lang/String;)Z
    //   631: invokestatic 3574	com/estrongs/fs/impl/usb/e:a	(Z)V
    //   634: aload 14
    //   636: ifnull +489 -> 1125
    //   639: aload 14
    //   641: arraylength
    //   642: istore_3
    //   643: iconst_0
    //   644: istore_2
    //   645: iload_2
    //   646: iload_3
    //   647: if_icmpge +413 -> 1060
    //   650: aload 14
    //   652: iload_2
    //   653: aaload
    //   654: astore 16
    //   656: aload 16
    //   658: astore 15
    //   660: aload 16
    //   662: ifnull +357 -> 1019
    //   665: aload 16
    //   667: astore 15
    //   669: getstatic 3154	com/estrongs/android/pop/z:n	Z
    //   672: ifeq +347 -> 1019
    //   675: aload 16
    //   677: astore 15
    //   679: aload 16
    //   681: ldc_w 1030
    //   684: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   687: ifeq +332 -> 1019
    //   690: aload 14
    //   692: arraylength
    //   693: iconst_1
    //   694: if_icmple +320 -> 1014
    //   697: iload_2
    //   698: iconst_1
    //   699: iadd
    //   700: istore_2
    //   701: goto -56 -> 645
    //   704: invokestatic 3575	com/estrongs/android/util/bk:f	()Z
    //   707: ifeq +58 -> 765
    //   710: ldc_w 3254
    //   713: invokestatic 3465	com/estrongs/android/util/ap:bP	(Ljava/lang/String;)Ljava/lang/String;
    //   716: invokestatic 3580	com/estrongs/fs/impl/f/d:b	()Lcom/estrongs/fs/impl/f/d;
    //   719: invokestatic 3473	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/fs/u;)V
    //   722: ldc_w 3252
    //   725: invokestatic 3465	com/estrongs/android/util/ap:bP	(Ljava/lang/String;)Ljava/lang/String;
    //   728: new 3582	com/estrongs/fs/impl/a/e
    //   731: dup
    //   732: invokespecial 3583	com/estrongs/fs/impl/a/e:<init>	()V
    //   735: invokestatic 3473	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/fs/u;)V
    //   738: ldc_w 946
    //   741: invokestatic 3465	com/estrongs/android/util/ap:bP	(Ljava/lang/String;)Ljava/lang/String;
    //   744: invokestatic 3588	com/estrongs/fs/impl/d/d:b	()Lcom/estrongs/fs/impl/d/d;
    //   747: invokestatic 3473	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/fs/u;)V
    //   750: ldc_w 3480
    //   753: invokestatic 3465	com/estrongs/android/util/ap:bP	(Ljava/lang/String;)Ljava/lang/String;
    //   756: invokestatic 3593	com/estrongs/fs/impl/h/d:b	()Lcom/estrongs/fs/impl/h/d;
    //   759: invokestatic 3473	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/fs/u;)V
    //   762: goto -683 -> 79
    //   765: ldc_w 3254
    //   768: invokestatic 3465	com/estrongs/android/util/ap:bP	(Ljava/lang/String;)Ljava/lang/String;
    //   771: invokestatic 3598	com/estrongs/fs/impl/f/c:a	()Lcom/estrongs/fs/impl/f/c;
    //   774: invokestatic 3473	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/fs/u;)V
    //   777: ldc_w 3252
    //   780: invokestatic 3465	com/estrongs/android/util/ap:bP	(Ljava/lang/String;)Ljava/lang/String;
    //   783: invokestatic 3603	com/estrongs/fs/impl/a/d:a	()Lcom/estrongs/fs/impl/a/d;
    //   786: invokestatic 3473	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/fs/u;)V
    //   789: ldc_w 946
    //   792: invokestatic 3465	com/estrongs/android/util/ap:bP	(Ljava/lang/String;)Ljava/lang/String;
    //   795: invokestatic 3608	com/estrongs/fs/impl/d/c:a	()Lcom/estrongs/fs/impl/d/c;
    //   798: invokestatic 3473	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/fs/u;)V
    //   801: ldc_w 3480
    //   804: invokestatic 3465	com/estrongs/android/util/ap:bP	(Ljava/lang/String;)Ljava/lang/String;
    //   807: invokestatic 3613	com/estrongs/fs/impl/h/c:a	()Lcom/estrongs/fs/impl/h/c;
    //   810: invokestatic 3473	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/fs/u;)V
    //   813: goto -734 -> 79
    //   816: iconst_0
    //   817: istore 5
    //   819: goto -656 -> 163
    //   822: astore 14
    //   824: aload 14
    //   826: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   829: goto -652 -> 177
    //   832: aload_0
    //   833: new 3615	com/estrongs/android/ui/controller/aj
    //   836: dup
    //   837: aload_0
    //   838: invokespecial 3616	com/estrongs/android/ui/controller/aj:<init>	(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    //   841: putfield 365	com/estrongs/android/pop/view/FileExplorerActivity:aL	Lcom/estrongs/android/ui/controller/a;
    //   844: goto -584 -> 260
    //   847: aload_0
    //   848: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   851: ldc_w 3538
    //   854: ldc_w 3618
    //   857: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   860: goto -500 -> 360
    //   863: astore 14
    //   865: aload 14
    //   867: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   870: goto -510 -> 360
    //   873: iconst_0
    //   874: istore_2
    //   875: goto -395 -> 480
    //   878: astore 15
    //   880: aload 15
    //   882: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   885: goto -342 -> 543
    //   888: iload 6
    //   890: ifeq +19 -> 909
    //   893: aload_0
    //   894: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   897: ldc_w 3538
    //   900: ldc_w 3620
    //   903: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   906: goto -334 -> 572
    //   909: iload 7
    //   911: ifeq +19 -> 930
    //   914: aload_0
    //   915: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   918: ldc_w 3538
    //   921: ldc_w 3622
    //   924: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   927: goto -355 -> 572
    //   930: iload_2
    //   931: ifeq +19 -> 950
    //   934: aload_0
    //   935: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   938: ldc_w 3538
    //   941: ldc_w 3624
    //   944: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   947: goto -375 -> 572
    //   950: iload 8
    //   952: ifeq +19 -> 971
    //   955: aload_0
    //   956: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   959: ldc_w 3538
    //   962: ldc_w 3551
    //   965: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   968: goto -396 -> 572
    //   971: iload 9
    //   973: ifeq -401 -> 572
    //   976: aload_0
    //   977: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   980: ldc_w 3538
    //   983: ldc_w 3553
    //   986: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   989: goto -417 -> 572
    //   992: aload_0
    //   993: getfield 223	com/estrongs/android/pop/view/FileExplorerActivity:W	Ljava/lang/String;
    //   996: ldc_w 3626
    //   999: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1002: ifeq -391 -> 611
    //   1005: aload_0
    //   1006: invokestatic 3629	com/estrongs/android/ui/e/m:a	(Landroid/content/Context;)V
    //   1009: aload_0
    //   1010: invokevirtual 2924	com/estrongs/android/pop/view/FileExplorerActivity:finish	()V
    //   1013: return
    //   1014: ldc_w 3631
    //   1017: astore 15
    //   1019: invokestatic 752	com/estrongs/android/pop/utils/cl:a	()Z
    //   1022: ifne +19 -> 1041
    //   1025: aload 15
    //   1027: invokestatic 1042	com/estrongs/android/util/ap:aL	(Ljava/lang/String;)Z
    //   1030: ifne -333 -> 697
    //   1033: aload 15
    //   1035: invokestatic 507	com/estrongs/android/util/ap:aJ	(Ljava/lang/String;)Z
    //   1038: ifne -341 -> 697
    //   1041: aload_0
    //   1042: invokevirtual 635	com/estrongs/android/pop/view/FileExplorerActivity:au	()Lcom/estrongs/android/ui/d/i;
    //   1045: new 602	com/estrongs/android/ui/d/h
    //   1048: dup
    //   1049: aload 15
    //   1051: invokespecial 1241	com/estrongs/android/ui/d/h:<init>	(Ljava/lang/String;)V
    //   1054: invokevirtual 1242	com/estrongs/android/ui/d/i:a	(Lcom/estrongs/android/ui/d/h;)V
    //   1057: goto -360 -> 697
    //   1060: aload_1
    //   1061: ldc_w 3633
    //   1064: iconst_0
    //   1065: invokevirtual 3636	android/os/Bundle:getInt	(Ljava/lang/String;I)I
    //   1068: istore_3
    //   1069: iload_3
    //   1070: istore_2
    //   1071: iload_3
    //   1072: aload_0
    //   1073: invokevirtual 635	com/estrongs/android/pop/view/FileExplorerActivity:au	()Lcom/estrongs/android/ui/d/i;
    //   1076: invokevirtual 770	com/estrongs/android/ui/d/i:c	()I
    //   1079: if_icmplt +5 -> 1084
    //   1082: iconst_0
    //   1083: istore_2
    //   1084: aload_0
    //   1085: invokevirtual 635	com/estrongs/android/pop/view/FileExplorerActivity:au	()Lcom/estrongs/android/ui/d/i;
    //   1088: iload_2
    //   1089: invokevirtual 1517	com/estrongs/android/ui/d/i:a	(I)V
    //   1092: iload 4
    //   1094: istore_2
    //   1095: iload_2
    //   1096: aload_0
    //   1097: invokevirtual 635	com/estrongs/android/pop/view/FileExplorerActivity:au	()Lcom/estrongs/android/ui/d/i;
    //   1100: invokevirtual 770	com/estrongs/android/ui/d/i:c	()I
    //   1103: if_icmpge +765 -> 1868
    //   1106: aload_0
    //   1107: invokevirtual 635	com/estrongs/android/pop/view/FileExplorerActivity:au	()Lcom/estrongs/android/ui/d/i;
    //   1110: iload_2
    //   1111: invokevirtual 776	com/estrongs/android/ui/d/i:c	(I)Lcom/estrongs/android/ui/d/h;
    //   1114: iconst_1
    //   1115: invokevirtual 778	com/estrongs/android/ui/d/h:a	(Z)V
    //   1118: iload_2
    //   1119: iconst_1
    //   1120: iadd
    //   1121: istore_2
    //   1122: goto -27 -> 1095
    //   1125: aload_0
    //   1126: invokevirtual 635	com/estrongs/android/pop/view/FileExplorerActivity:au	()Lcom/estrongs/android/ui/d/i;
    //   1129: aload_0
    //   1130: invokevirtual 3638	com/estrongs/android/ui/d/i:b	(Landroid/content/Context;)V
    //   1133: aload_0
    //   1134: invokevirtual 635	com/estrongs/android/pop/view/FileExplorerActivity:au	()Lcom/estrongs/android/ui/d/i;
    //   1137: iconst_0
    //   1138: invokevirtual 1517	com/estrongs/android/ui/d/i:a	(I)V
    //   1141: aload_0
    //   1142: getfield 616	com/estrongs/android/pop/view/FileExplorerActivity:k	Lcom/estrongs/android/pop/ad;
    //   1145: aconst_null
    //   1146: invokevirtual 3640	com/estrongs/android/pop/ad:k	(Ljava/lang/String;)Ljava/lang/String;
    //   1149: astore 14
    //   1151: ldc_w 1000
    //   1154: aload_0
    //   1155: invokevirtual 821	com/estrongs/android/pop/view/FileExplorerActivity:getIntent	()Landroid/content/Intent;
    //   1158: ldc_w 971
    //   1161: invokevirtual 828	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   1164: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1167: istore 5
    //   1169: ldc_w 3642
    //   1172: aload_0
    //   1173: invokevirtual 821	com/estrongs/android/pop/view/FileExplorerActivity:getIntent	()Landroid/content/Intent;
    //   1176: invokevirtual 961	android/content/Intent:getAction	()Ljava/lang/String;
    //   1179: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1182: istore 6
    //   1184: ldc_w 3644
    //   1187: aload_0
    //   1188: invokevirtual 821	com/estrongs/android/pop/view/FileExplorerActivity:getIntent	()Landroid/content/Intent;
    //   1191: invokevirtual 961	android/content/Intent:getAction	()Ljava/lang/String;
    //   1194: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1197: istore 7
    //   1199: iload 5
    //   1201: ifne +8 -> 1209
    //   1204: iload 6
    //   1206: ifeq +13 -> 1219
    //   1209: aload_0
    //   1210: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1213: ldc_w 3646
    //   1216: invokevirtual 3540	com/estrongs/android/j/c:d	(Ljava/lang/String;)V
    //   1219: aload 14
    //   1221: astore_1
    //   1222: aload 14
    //   1224: ifnonnull +63 -> 1287
    //   1227: ldc_w 3648
    //   1230: iconst_1
    //   1231: invokestatic 1165	com/estrongs/android/i/a:a	(Ljava/lang/String;I)I
    //   1234: iconst_1
    //   1235: if_icmpne +335 -> 1570
    //   1238: ldc_w 407
    //   1241: astore 14
    //   1243: iload 5
    //   1245: ifeq +243 -> 1488
    //   1248: aload 14
    //   1250: astore_1
    //   1251: aload_0
    //   1252: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1255: ifnull +19 -> 1274
    //   1258: aload_0
    //   1259: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1262: ldc_w 3646
    //   1265: ldc_w 3650
    //   1268: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   1271: aload 14
    //   1273: astore_1
    //   1274: aload_0
    //   1275: iconst_1
    //   1276: putfield 277	com/estrongs/android/pop/view/FileExplorerActivity:aR	Z
    //   1279: aload_0
    //   1280: getfield 616	com/estrongs/android/pop/view/FileExplorerActivity:k	Lcom/estrongs/android/pop/ad;
    //   1283: aload_1
    //   1284: invokevirtual 3652	com/estrongs/android/pop/ad:l	(Ljava/lang/String;)V
    //   1287: aload_1
    //   1288: astore 14
    //   1290: ldc_w 1863
    //   1293: aload_1
    //   1294: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1297: ifeq +69 -> 1366
    //   1300: aload_0
    //   1301: getfield 616	com/estrongs/android/pop/view/FileExplorerActivity:k	Lcom/estrongs/android/pop/ad;
    //   1304: getstatic 1003	com/estrongs/android/pop/view/a:a	Ljava/lang/String;
    //   1307: invokevirtual 1005	com/estrongs/android/pop/ad:j	(Ljava/lang/String;)Ljava/lang/String;
    //   1310: astore_1
    //   1311: aload_1
    //   1312: astore 14
    //   1314: aload_0
    //   1315: getfield 277	com/estrongs/android/pop/view/FileExplorerActivity:aR	Z
    //   1318: ifne +48 -> 1366
    //   1321: ldc_w 1000
    //   1324: aload_0
    //   1325: invokevirtual 821	com/estrongs/android/pop/view/FileExplorerActivity:getIntent	()Landroid/content/Intent;
    //   1328: ldc_w 971
    //   1331: invokevirtual 828	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   1334: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1337: ifeq +354 -> 1691
    //   1340: aload_1
    //   1341: astore 14
    //   1343: aload_0
    //   1344: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1347: ifnull +19 -> 1366
    //   1350: aload_0
    //   1351: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1354: ldc_w 3646
    //   1357: ldc_w 3654
    //   1360: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   1363: aload_1
    //   1364: astore 14
    //   1366: ldc_w 407
    //   1369: aload 14
    //   1371: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1374: ifeq +49 -> 1423
    //   1377: aload_0
    //   1378: getfield 277	com/estrongs/android/pop/view/FileExplorerActivity:aR	Z
    //   1381: ifne +42 -> 1423
    //   1384: ldc_w 1000
    //   1387: aload_0
    //   1388: invokevirtual 821	com/estrongs/android/pop/view/FileExplorerActivity:getIntent	()Landroid/content/Intent;
    //   1391: ldc_w 971
    //   1394: invokevirtual 828	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   1397: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1400: ifeq +386 -> 1786
    //   1403: aload_0
    //   1404: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1407: ifnull +16 -> 1423
    //   1410: aload_0
    //   1411: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1414: ldc_w 3646
    //   1417: ldc_w 3650
    //   1420: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   1423: iload 4
    //   1425: istore_2
    //   1426: aload 14
    //   1428: ifnull -333 -> 1095
    //   1431: iconst_0
    //   1432: istore_3
    //   1433: iload 4
    //   1435: istore_2
    //   1436: iload_3
    //   1437: aload_0
    //   1438: invokevirtual 635	com/estrongs/android/pop/view/FileExplorerActivity:au	()Lcom/estrongs/android/ui/d/i;
    //   1441: invokevirtual 770	com/estrongs/android/ui/d/i:c	()I
    //   1444: if_icmpge -349 -> 1095
    //   1447: aload 14
    //   1449: aload_0
    //   1450: invokevirtual 635	com/estrongs/android/pop/view/FileExplorerActivity:au	()Lcom/estrongs/android/ui/d/i;
    //   1453: iload_3
    //   1454: invokevirtual 776	com/estrongs/android/ui/d/i:c	(I)Lcom/estrongs/android/ui/d/h;
    //   1457: invokevirtual 604	com/estrongs/android/ui/d/h:a	()Ljava/lang/String;
    //   1460: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1463: ifeq +398 -> 1861
    //   1466: aload_0
    //   1467: invokevirtual 635	com/estrongs/android/pop/view/FileExplorerActivity:au	()Lcom/estrongs/android/ui/d/i;
    //   1470: iload_3
    //   1471: invokevirtual 1517	com/estrongs/android/ui/d/i:a	(I)V
    //   1474: iload 4
    //   1476: istore_2
    //   1477: goto -382 -> 1095
    //   1480: astore_1
    //   1481: aload_1
    //   1482: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   1485: goto -266 -> 1219
    //   1488: iload 6
    //   1490: ifeq +43 -> 1533
    //   1493: aload 14
    //   1495: astore_1
    //   1496: aload_0
    //   1497: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1500: ifnull -226 -> 1274
    //   1503: aload_0
    //   1504: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1507: ldc_w 3646
    //   1510: ldc_w 3656
    //   1513: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   1516: aload 14
    //   1518: astore_1
    //   1519: goto -245 -> 1274
    //   1522: astore_1
    //   1523: aload_1
    //   1524: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   1527: aload 14
    //   1529: astore_1
    //   1530: goto -256 -> 1274
    //   1533: aload 14
    //   1535: astore_1
    //   1536: iload 7
    //   1538: ifeq -264 -> 1274
    //   1541: aload 14
    //   1543: astore_1
    //   1544: aload_0
    //   1545: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1548: ifnull -274 -> 1274
    //   1551: aload_0
    //   1552: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1555: ldc_w 3646
    //   1558: ldc_w 3658
    //   1561: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   1564: aload 14
    //   1566: astore_1
    //   1567: goto -293 -> 1274
    //   1570: ldc_w 1863
    //   1573: astore 14
    //   1575: iload 5
    //   1577: ifeq +43 -> 1620
    //   1580: aload 14
    //   1582: astore_1
    //   1583: aload_0
    //   1584: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1587: ifnull -313 -> 1274
    //   1590: aload_0
    //   1591: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1594: ldc_w 3646
    //   1597: ldc_w 3654
    //   1600: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   1603: aload 14
    //   1605: astore_1
    //   1606: goto -332 -> 1274
    //   1609: astore_1
    //   1610: aload_1
    //   1611: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   1614: aload 14
    //   1616: astore_1
    //   1617: goto -343 -> 1274
    //   1620: iload 6
    //   1622: ifeq +32 -> 1654
    //   1625: aload 14
    //   1627: astore_1
    //   1628: aload_0
    //   1629: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1632: ifnull -358 -> 1274
    //   1635: aload_0
    //   1636: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1639: ldc_w 3646
    //   1642: ldc_w 3660
    //   1645: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   1648: aload 14
    //   1650: astore_1
    //   1651: goto -377 -> 1274
    //   1654: aload 14
    //   1656: astore_1
    //   1657: iload 7
    //   1659: ifeq -385 -> 1274
    //   1662: aload 14
    //   1664: astore_1
    //   1665: aload_0
    //   1666: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1669: ifnull -395 -> 1274
    //   1672: aload_0
    //   1673: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1676: ldc_w 3646
    //   1679: ldc_w 3662
    //   1682: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   1685: aload 14
    //   1687: astore_1
    //   1688: goto -414 -> 1274
    //   1691: ldc_w 3642
    //   1694: aload_0
    //   1695: invokevirtual 821	com/estrongs/android/pop/view/FileExplorerActivity:getIntent	()Landroid/content/Intent;
    //   1698: invokevirtual 961	android/content/Intent:getAction	()Ljava/lang/String;
    //   1701: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1704: ifeq +45 -> 1749
    //   1707: aload_1
    //   1708: astore 14
    //   1710: aload_0
    //   1711: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1714: ifnull -348 -> 1366
    //   1717: aload_0
    //   1718: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1721: ldc_w 3646
    //   1724: ldc_w 3660
    //   1727: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   1730: aload_1
    //   1731: astore 14
    //   1733: goto -367 -> 1366
    //   1736: astore 14
    //   1738: aload 14
    //   1740: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   1743: aload_1
    //   1744: astore 14
    //   1746: goto -380 -> 1366
    //   1749: aload_1
    //   1750: astore 14
    //   1752: iload 7
    //   1754: ifeq -388 -> 1366
    //   1757: aload_1
    //   1758: astore 14
    //   1760: aload_0
    //   1761: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1764: ifnull -398 -> 1366
    //   1767: aload_0
    //   1768: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1771: ldc_w 3646
    //   1774: ldc_w 3662
    //   1777: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   1780: aload_1
    //   1781: astore 14
    //   1783: goto -417 -> 1366
    //   1786: ldc_w 3642
    //   1789: aload_0
    //   1790: invokevirtual 821	com/estrongs/android/pop/view/FileExplorerActivity:getIntent	()Landroid/content/Intent;
    //   1793: invokevirtual 961	android/content/Intent:getAction	()Ljava/lang/String;
    //   1796: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1799: ifeq +34 -> 1833
    //   1802: aload_0
    //   1803: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1806: ifnull -383 -> 1423
    //   1809: aload_0
    //   1810: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1813: ldc_w 3646
    //   1816: ldc_w 3656
    //   1819: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   1822: goto -399 -> 1423
    //   1825: astore_1
    //   1826: aload_1
    //   1827: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   1830: goto -407 -> 1423
    //   1833: iload 7
    //   1835: ifeq -412 -> 1423
    //   1838: aload_0
    //   1839: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1842: ifnull -419 -> 1423
    //   1845: aload_0
    //   1846: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   1849: ldc_w 3646
    //   1852: ldc_w 3658
    //   1855: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   1858: goto -435 -> 1423
    //   1861: iload_3
    //   1862: iconst_1
    //   1863: iadd
    //   1864: istore_3
    //   1865: goto -432 -> 1433
    //   1868: ldc_w 1140
    //   1871: invokevirtual 3663	java/lang/Class:getName	()Ljava/lang/String;
    //   1874: invokestatic 3667	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   1877: pop
    //   1878: aload_0
    //   1879: invokespecial 3669	com/estrongs/android/pop/view/FileExplorerActivity:aN	()V
    //   1882: aload_0
    //   1883: ldc_w 3670
    //   1886: invokevirtual 3672	com/estrongs/android/pop/view/FileExplorerActivity:setContentView	(I)V
    //   1889: aload_0
    //   1890: ldc_w 3673
    //   1893: invokevirtual 1825	com/estrongs/android/pop/view/FileExplorerActivity:findViewById	(I)Landroid/view/View;
    //   1896: checkcast 3675	com/estrongs/android/pop/view/ESRootView
    //   1899: astore_1
    //   1900: aload_0
    //   1901: aload_1
    //   1902: putfield 357	com/estrongs/android/pop/view/FileExplorerActivity:az	Lcom/estrongs/android/ui/guesture/ESGestureCtrl;
    //   1905: aload_0
    //   1906: aload_0
    //   1907: ldc_w 3676
    //   1910: invokevirtual 1825	com/estrongs/android/pop/view/FileExplorerActivity:findViewById	(I)Landroid/view/View;
    //   1913: checkcast 1481	android/widget/FrameLayout
    //   1916: putfield 1479	com/estrongs/android/pop/view/FileExplorerActivity:f	Landroid/widget/FrameLayout;
    //   1919: aload_0
    //   1920: aload_0
    //   1921: ldc_w 3677
    //   1924: invokevirtual 1825	com/estrongs/android/pop/view/FileExplorerActivity:findViewById	(I)Landroid/view/View;
    //   1927: checkcast 1481	android/widget/FrameLayout
    //   1930: putfield 3031	com/estrongs/android/pop/view/FileExplorerActivity:aQ	Landroid/widget/FrameLayout;
    //   1933: aload_0
    //   1934: getfield 3031	com/estrongs/android/pop/view/FileExplorerActivity:aQ	Landroid/widget/FrameLayout;
    //   1937: iconst_1
    //   1938: invokevirtual 3680	android/widget/FrameLayout:setFocusable	(Z)V
    //   1941: aload_0
    //   1942: ldc_w 3681
    //   1945: invokevirtual 1825	com/estrongs/android/pop/view/FileExplorerActivity:findViewById	(I)Landroid/view/View;
    //   1948: checkcast 1510	com/estrongs/android/ui/guesture/ESGesturePanel
    //   1951: astore 14
    //   1953: aload_1
    //   1954: aload 14
    //   1956: invokevirtual 3685	com/estrongs/android/pop/view/ESRootView:setGesturePanel	(Lcom/estrongs/android/ui/guesture/ESGesturePanel;)V
    //   1959: aload_0
    //   1960: aload 14
    //   1962: putfield 259	com/estrongs/android/pop/view/FileExplorerActivity:A	Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    //   1965: aload_0
    //   1966: invokespecial 1548	com/estrongs/android/pop/view/FileExplorerActivity:aQ	()V
    //   1969: aload_0
    //   1970: aload_0
    //   1971: invokestatic 387	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   1974: invokevirtual 3687	com/estrongs/android/pop/ad:w	()Z
    //   1977: putfield 2098	com/estrongs/android/pop/view/FileExplorerActivity:aG	Z
    //   1980: aload_0
    //   1981: aload_0
    //   1982: invokestatic 387	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   1985: invokevirtual 2496	com/estrongs/android/pop/ad:q	()Z
    //   1988: putfield 271	com/estrongs/android/pop/view/FileExplorerActivity:aH	Z
    //   1991: invokestatic 1014	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   1994: invokevirtual 3688	com/estrongs/android/pop/FexApplication:i	()Z
    //   1997: ifeq +27 -> 2024
    //   2000: aload_0
    //   2001: getstatic 3694	com/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType:START	Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;
    //   2004: invokestatic 3697	com/estrongs/android/ui/dialog/VerifyPasswordDialog:a	(Landroid/content/Context;Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;)Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;
    //   2007: astore_1
    //   2008: aload_1
    //   2009: new 3699	com/estrongs/android/pop/view/cx
    //   2012: dup
    //   2013: aload_0
    //   2014: invokespecial 3700	com/estrongs/android/pop/view/cx:<init>	(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    //   2017: invokevirtual 3701	com/estrongs/android/ui/dialog/VerifyPasswordDialog:a	(Landroid/content/DialogInterface$OnDismissListener;)V
    //   2020: aload_1
    //   2021: invokevirtual 3702	com/estrongs/android/ui/dialog/VerifyPasswordDialog:b	()V
    //   2024: new 3704	com/estrongs/android/pop/view/di
    //   2027: dup
    //   2028: aload_0
    //   2029: invokespecial 3705	com/estrongs/android/pop/view/di:<init>	(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    //   2032: astore_1
    //   2033: invokestatic 1014	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   2036: aload_1
    //   2037: invokevirtual 3708	com/estrongs/android/pop/FexApplication:a	(Lcom/estrongs/android/ui/preference/q;)V
    //   2040: aload_0
    //   2041: invokevirtual 3709	com/estrongs/android/pop/view/FileExplorerActivity:k	()V
    //   2044: aload_0
    //   2045: getfield 1154	com/estrongs/android/pop/view/FileExplorerActivity:l	Lcom/estrongs/android/pop/ai;
    //   2048: invokevirtual 3710	com/estrongs/android/pop/ai:e	()V
    //   2051: aload_0
    //   2052: getfield 1154	com/estrongs/android/pop/view/FileExplorerActivity:l	Lcom/estrongs/android/pop/ai;
    //   2055: invokevirtual 3711	com/estrongs/android/pop/ai:p	()V
    //   2058: aload_0
    //   2059: invokestatic 3714	com/estrongs/android/pop/utils/an:a	(Landroid/app/Activity;)V
    //   2062: aload_0
    //   2063: invokespecial 3716	com/estrongs/android/pop/view/FileExplorerActivity:aC	()V
    //   2066: aload_0
    //   2067: new 3451	com/estrongs/android/pop/app/analysis/view/b
    //   2070: dup
    //   2071: aload_0
    //   2072: aload_0
    //   2073: getfield 1479	com/estrongs/android/pop/view/FileExplorerActivity:f	Landroid/widget/FrameLayout;
    //   2076: invokevirtual 3719	android/widget/FrameLayout:getRootView	()Landroid/view/View;
    //   2079: aload_0
    //   2080: getfield 1454	com/estrongs/android/pop/view/FileExplorerActivity:c	Z
    //   2083: invokespecial 3722	com/estrongs/android/pop/app/analysis/view/b:<init>	(Landroid/content/Context;Landroid/view/View;Z)V
    //   2086: putfield 3449	com/estrongs/android/pop/view/FileExplorerActivity:aN	Lcom/estrongs/android/pop/app/analysis/view/b;
    //   2089: invokestatic 966	com/estrongs/android/pop/app/analysis/a:a	()Lcom/estrongs/android/pop/app/analysis/a;
    //   2092: aload_0
    //   2093: aload_0
    //   2094: getfield 3449	com/estrongs/android/pop/view/FileExplorerActivity:aN	Lcom/estrongs/android/pop/app/analysis/view/b;
    //   2097: invokevirtual 3725	com/estrongs/android/pop/app/analysis/a:a	(Landroid/content/Context;Lcom/estrongs/android/pop/app/analysis/view/b;)V
    //   2100: invokestatic 3730	com/estrongs/android/b/a/f:a	()Lcom/estrongs/android/b/a/f;
    //   2103: invokevirtual 3731	com/estrongs/android/b/a/f:b	()V
    //   2106: return
    //   2107: astore_1
    //   2108: aload_1
    //   2109: invokevirtual 3732	java/lang/ClassNotFoundException:printStackTrace	()V
    //   2112: goto -234 -> 1878
    //   2115: astore_1
    //   2116: aload_1
    //   2117: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   2120: goto -54 -> 2066
    //   2123: aconst_null
    //   2124: astore 14
    //   2126: goto -1492 -> 634
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	2129	0	this	FileExplorerActivity
    //   0	2129	1	paramBundle	Bundle
    //   479	998	2	i1	int
    //   642	1223	3	i2	int
    //   1	1474	4	i3	int
    //   161	1415	5	bool1	boolean
    //   320	1301	6	bool2	boolean
    //   392	1442	7	bool3	boolean
    //   401	550	8	bool4	boolean
    //   410	562	9	bool5	boolean
    //   419	40	10	bool6	boolean
    //   428	36	11	bool7	boolean
    //   437	32	12	bool8	boolean
    //   446	28	13	bool9	boolean
    //   517	174	14	localObject1	Object
    //   822	3	14	localException1	Exception
    //   863	3	14	localException2	Exception
    //   1149	583	14	localObject2	Object
    //   1736	3	14	localException3	Exception
    //   1744	381	14	localObject3	Object
    //   658	20	15	localObject4	Object
    //   878	3	15	localException4	Exception
    //   1017	33	15	str	String
    //   654	26	16	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   146	160	822	java/lang/Exception
    //   163	177	822	java/lang/Exception
    //   332	342	863	java/lang/Exception
    //   347	360	863	java/lang/Exception
    //   847	860	863	java/lang/Exception
    //   533	543	878	java/lang/Exception
    //   1209	1219	1480	java/lang/Exception
    //   1251	1271	1522	java/lang/Exception
    //   1496	1516	1522	java/lang/Exception
    //   1544	1564	1522	java/lang/Exception
    //   1583	1603	1609	java/lang/Exception
    //   1628	1648	1609	java/lang/Exception
    //   1665	1685	1609	java/lang/Exception
    //   1321	1340	1736	java/lang/Exception
    //   1343	1363	1736	java/lang/Exception
    //   1691	1707	1736	java/lang/Exception
    //   1710	1730	1736	java/lang/Exception
    //   1760	1780	1736	java/lang/Exception
    //   1384	1423	1825	java/lang/Exception
    //   1786	1822	1825	java/lang/Exception
    //   1838	1858	1825	java/lang/Exception
    //   1868	1878	2107	java/lang/ClassNotFoundException
    //   2062	2066	2115	java/lang/Exception
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (aL.a(paramMenu)) {
      return true;
    }
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (!aA) {
      aK();
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    Object localObject2 = null;
    int i3 = 0;
    if (paramInt == 82) {}
    int i1;
    try
    {
      localObject1 = O();
      if ((localObject1 == null) || (!(localObject1 instanceof WebViewWrapper))) {
        break label786;
      }
      ((WebViewWrapper)localObject1).A();
    }
    catch (Exception localException)
    {
      Object localObject1;
      String str1;
      String str2;
      com.estrongs.android.view.cr localcr;
      label684:
      localException.printStackTrace();
    }
    if (paramInt == 84)
    {
      localObject1 = P();
      if ((com.estrongs.android.util.ap.S((String)localObject1)) || (com.estrongs.android.util.ap.aZ((String)localObject1)) || (com.estrongs.android.util.ap.v((String)localObject1)))
      {
        com.estrongs.android.ui.view.ak.a(this, getString(2131231109), 1);
        return true;
      }
      N();
      return true;
    }
    if (paramInt == 4)
    {
      if (az.e()) {
        return true;
      }
      if (v())
      {
        x();
        return true;
      }
      if ((com.estrongs.android.util.ap.bi(P())) && (O().p()))
      {
        O().ah();
        if (!aL.r()) {
          return true;
        }
      }
      if (aL.r())
      {
        C();
        return true;
      }
      if (((com.estrongs.android.util.ap.V(P())) || (com.estrongs.android.util.ap.Z(P())) || (com.estrongs.android.util.ap.ae(P())) || (com.estrongs.android.util.ap.ag(P()))) && (O().p()))
      {
        O().ah();
        return true;
      }
      if (aL.w()) {
        return true;
      }
      com.estrongs.android.util.ap.bB(P());
      str1 = com.estrongs.android.util.ap.bV(com.estrongs.android.util.ap.bW(P()));
      str2 = com.estrongs.android.util.ap.bV(com.estrongs.android.util.ap.bW(k.j(a.a)));
      localcr = O();
      if (getIntent() == null) {
        localObject1 = null;
      }
      while ((localObject1 != null) && ((((String)localObject1).equals("resource/folder")) || (((String)localObject1).equals("org.openintents.action.VIEW_DIRECTORY"))))
      {
        String str3 = getIntent().getDataString();
        localObject1 = localObject2;
        if (str3 != null) {
          localObject1 = Uri.decode(str3);
        }
        localObject2 = localObject1;
        if (localObject1 != null) {
          if (!((String)localObject1).startsWith("file:///"))
          {
            localObject2 = localObject1;
            if (!((String)localObject1).startsWith("FILE:///")) {}
          }
          else
          {
            localObject2 = ((String)localObject1).substring(7);
          }
        }
        localObject1 = localObject2;
        if (localObject2 != null)
        {
          localObject1 = localObject2;
          if (!((String)localObject2).endsWith("/")) {
            localObject1 = (String)localObject2 + "/";
          }
        }
        if ((localObject1 != null) && (str1 != null) && (((String)localObject1).equals(str1)) && (localcr != null) && (localcr.ae())) {
          if (j())
          {
            i();
            return true;
            localObject1 = getIntent().getType();
          }
          else
          {
            finish();
            return true;
          }
        }
      }
      if ((localcr != null) && (str1 != null))
      {
        if (!localcr.ae())
        {
          if ((com.estrongs.android.util.ap.bi(P())) && (!com.estrongs.android.util.ap.ah(com.estrongs.android.util.ap.bQ(P()))))
          {
            O().d(0L);
            O().o("all");
          }
          localcr.f();
          return true;
        }
        if (!str1.equals(str2)) {}
      }
      else
      {
        localObject1 = au().b();
        if (localcr != null) {
          break label684;
        }
        i1 = 0;
      }
    }
    for (;;)
    {
      int i2 = i3;
      if (com.estrongs.android.util.ap.bh(str1))
      {
        i2 = i3;
        if ("externalstorage://".equals(com.estrongs.android.util.ap.bj(str1))) {
          i2 = 1;
        }
      }
      if ((com.estrongs.android.util.ap.bd(str1)) && (!az()))
      {
        a(au().a(), bd);
        return true;
        if (localcr.f() == null) {
          break;
        }
        return true;
        if ((localObject1 == null) || (((com.estrongs.android.ui.d.h)localObject1).e())) {
          break label788;
        }
        i1 = 1;
        continue;
      }
      if ((com.estrongs.android.util.ap.bd(str1)) || (i1 != 0) || (i2 != 0))
      {
        z();
        return true;
      }
      if (j())
      {
        i();
        return true;
      }
      if (!S)
      {
        S = true;
        paramKeyEvent.startTracking();
        break label793;
      }
      S = false;
      com.estrongs.android.ui.view.ak.b();
      finish();
      break label793;
      return super.onKeyDown(paramInt, paramKeyEvent);
      label786:
      return true;
      label788:
      i1 = 0;
    }
    label793:
    return true;
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (82 == paramInt)
    {
      if (aL.v()) {
        return true;
      }
    }
    else if ((4 == paramInt) && (S) && (!isFinishing()))
    {
      com.estrongs.android.ui.view.ak.a(this, 2131231717, 1);
      i.postDelayed(new bd(this), 3500L);
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  /* Error */
  public void onNewIntent(Intent paramIntent)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: aload_1
    //   4: invokespecial 3805	com/estrongs/android/pop/esclasses/ESAbsToolbarActivity:onNewIntent	(Landroid/content/Intent;)V
    //   7: aload_1
    //   8: ldc_w 823
    //   11: invokevirtual 828	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   14: astore 12
    //   16: ldc_w 1000
    //   19: aload_1
    //   20: ldc_w 971
    //   23: invokevirtual 828	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   26: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   29: istore_3
    //   30: ldc_w 3642
    //   33: aload_1
    //   34: invokevirtual 961	android/content/Intent:getAction	()Ljava/lang/String;
    //   37: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   40: istore 4
    //   42: ldc_w 3644
    //   45: aload_1
    //   46: invokevirtual 961	android/content/Intent:getAction	()Ljava/lang/String;
    //   49: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   52: istore 5
    //   54: iload_3
    //   55: ifne +8 -> 63
    //   58: iload 4
    //   60: ifeq +20 -> 80
    //   63: aload_0
    //   64: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   67: ifnull +13 -> 80
    //   70: aload_0
    //   71: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   74: ldc_w 3646
    //   77: invokevirtual 3540	com/estrongs/android/j/c:d	(Ljava/lang/String;)V
    //   80: aload_0
    //   81: getfield 616	com/estrongs/android/pop/view/FileExplorerActivity:k	Lcom/estrongs/android/pop/ad;
    //   84: aconst_null
    //   85: invokevirtual 3640	com/estrongs/android/pop/ad:k	(Ljava/lang/String;)Ljava/lang/String;
    //   88: astore 13
    //   90: ldc_w 407
    //   93: aload 13
    //   95: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   98: ifeq +376 -> 474
    //   101: iload_3
    //   102: ifeq +306 -> 408
    //   105: aload_0
    //   106: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   109: ifnull +16 -> 125
    //   112: aload_0
    //   113: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   116: ldc_w 3646
    //   119: ldc_w 3650
    //   122: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   125: ldc_w 958
    //   128: aload_1
    //   129: invokevirtual 961	android/content/Intent:getAction	()Ljava/lang/String;
    //   132: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   135: istore_3
    //   136: ldc_w 969
    //   139: aload_1
    //   140: ldc_w 971
    //   143: invokevirtual 828	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   146: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   149: istore 4
    //   151: iload 4
    //   153: ifne +7 -> 160
    //   156: iload_3
    //   157: ifeq +31 -> 188
    //   160: aload_0
    //   161: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   164: ldc_w 3538
    //   167: invokevirtual 3540	com/estrongs/android/j/c:d	(Ljava/lang/String;)V
    //   170: iload 4
    //   172: ifeq +406 -> 578
    //   175: aload_0
    //   176: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   179: ldc_w 3538
    //   182: ldc_w 3542
    //   185: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   188: aload_1
    //   189: invokevirtual 3533	android/content/Intent:getDataString	()Ljava/lang/String;
    //   192: invokestatic 3536	android/net/Uri:decode	(Ljava/lang/String;)Ljava/lang/String;
    //   195: astore 13
    //   197: aload 13
    //   199: ifnull +178 -> 377
    //   202: aload 13
    //   204: invokestatic 505	com/estrongs/android/util/ap:bl	(Ljava/lang/String;)Z
    //   207: istore_3
    //   208: aload 13
    //   210: invokestatic 3545	com/estrongs/android/util/ap:bC	(Ljava/lang/String;)Z
    //   213: istore 4
    //   215: aload 13
    //   217: invokestatic 3547	com/estrongs/android/util/ap:aG	(Ljava/lang/String;)Z
    //   220: istore 5
    //   222: aload 13
    //   224: invokestatic 1987	com/estrongs/android/util/ap:L	(Ljava/lang/String;)Z
    //   227: istore 6
    //   229: aload 13
    //   231: invokestatic 1991	com/estrongs/android/util/ap:r	(Ljava/lang/String;)Z
    //   234: istore 7
    //   236: aload 13
    //   238: invokestatic 1989	com/estrongs/android/util/ap:K	(Ljava/lang/String;)Z
    //   241: istore 8
    //   243: aload 13
    //   245: invokestatic 1993	com/estrongs/android/util/ap:p	(Ljava/lang/String;)Z
    //   248: istore 9
    //   250: aload 13
    //   252: invokestatic 3549	com/estrongs/android/util/ap:M	(Ljava/lang/String;)Z
    //   255: istore 10
    //   257: aload 13
    //   259: invokestatic 1995	com/estrongs/android/util/ap:J	(Ljava/lang/String;)Z
    //   262: istore 11
    //   264: iload 6
    //   266: ifne +28 -> 294
    //   269: iload 7
    //   271: ifne +23 -> 294
    //   274: iload 8
    //   276: ifne +18 -> 294
    //   279: iload 9
    //   281: ifne +13 -> 294
    //   284: iload 10
    //   286: ifne +8 -> 294
    //   289: iload 11
    //   291: ifeq +5 -> 296
    //   294: iconst_1
    //   295: istore_2
    //   296: ldc_w 3551
    //   299: aload_1
    //   300: invokevirtual 961	android/content/Intent:getAction	()Ljava/lang/String;
    //   303: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   306: istore 6
    //   308: ldc_w 3553
    //   311: aload_1
    //   312: invokevirtual 961	android/content/Intent:getAction	()Ljava/lang/String;
    //   315: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   318: istore 7
    //   320: aload_1
    //   321: invokevirtual 3556	android/content/Intent:getType	()Ljava/lang/String;
    //   324: astore 13
    //   326: iload_3
    //   327: ifne +12 -> 339
    //   330: iload 5
    //   332: ifne +7 -> 339
    //   335: iload_2
    //   336: ifeq +13 -> 349
    //   339: aload_0
    //   340: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   343: ldc_w 3538
    //   346: invokevirtual 3540	com/estrongs/android/j/c:d	(Ljava/lang/String;)V
    //   349: iload_3
    //   350: ifeq +264 -> 614
    //   353: ldc_w 3558
    //   356: aload 13
    //   358: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   361: ifeq +253 -> 614
    //   364: aload_0
    //   365: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   368: ldc_w 3538
    //   371: ldc_w 3560
    //   374: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   377: aload 12
    //   379: ifnull +366 -> 745
    //   382: aload 12
    //   384: invokestatic 832	com/estrongs/android/util/bg:o	(Ljava/lang/String;)Z
    //   387: ifeq +331 -> 718
    //   390: new 3807	com/estrongs/android/pop/view/z
    //   393: dup
    //   394: aload_0
    //   395: aload 12
    //   397: invokespecial 3808	com/estrongs/android/pop/view/z:<init>	(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V
    //   400: getstatic 840	com/estrongs/io/archive/sevenzip/f:a	Ljava/lang/String;
    //   403: invokestatic 843	com/estrongs/io/archive/sevenzip/f:a	(Ljava/lang/Runnable;Ljava/lang/String;)Z
    //   406: pop
    //   407: return
    //   408: iload 4
    //   410: ifeq +36 -> 446
    //   413: aload_0
    //   414: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   417: ifnull -292 -> 125
    //   420: aload_0
    //   421: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   424: ldc_w 3646
    //   427: ldc_w 3656
    //   430: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   433: goto -308 -> 125
    //   436: astore 13
    //   438: aload 13
    //   440: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   443: goto -318 -> 125
    //   446: iload 5
    //   448: ifeq -323 -> 125
    //   451: aload_0
    //   452: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   455: ifnull -330 -> 125
    //   458: aload_0
    //   459: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   462: ldc_w 3646
    //   465: ldc_w 3658
    //   468: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   471: goto -346 -> 125
    //   474: ldc_w 1863
    //   477: aload 13
    //   479: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   482: ifeq -357 -> 125
    //   485: iload_3
    //   486: ifeq +36 -> 522
    //   489: aload_0
    //   490: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   493: ifnull -368 -> 125
    //   496: aload_0
    //   497: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   500: ldc_w 3646
    //   503: ldc_w 3654
    //   506: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   509: goto -384 -> 125
    //   512: astore 13
    //   514: aload 13
    //   516: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   519: goto -394 -> 125
    //   522: iload 4
    //   524: ifeq +26 -> 550
    //   527: aload_0
    //   528: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   531: ifnull -406 -> 125
    //   534: aload_0
    //   535: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   538: ldc_w 3646
    //   541: ldc_w 3660
    //   544: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   547: goto -422 -> 125
    //   550: iload 5
    //   552: ifeq -427 -> 125
    //   555: aload_0
    //   556: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   559: ifnull -434 -> 125
    //   562: aload_0
    //   563: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   566: ldc_w 3646
    //   569: ldc_w 3662
    //   572: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   575: goto -450 -> 125
    //   578: aload_0
    //   579: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   582: ldc_w 3538
    //   585: ldc_w 3618
    //   588: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   591: goto -403 -> 188
    //   594: astore 13
    //   596: aload 13
    //   598: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   601: goto -413 -> 188
    //   604: astore 14
    //   606: aload 14
    //   608: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   611: goto -262 -> 349
    //   614: iload 4
    //   616: ifeq +19 -> 635
    //   619: aload_0
    //   620: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   623: ldc_w 3538
    //   626: ldc_w 3620
    //   629: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   632: goto -255 -> 377
    //   635: iload 5
    //   637: ifeq +19 -> 656
    //   640: aload_0
    //   641: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   644: ldc_w 3538
    //   647: ldc_w 3622
    //   650: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   653: goto -276 -> 377
    //   656: iload_2
    //   657: ifeq +19 -> 676
    //   660: aload_0
    //   661: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   664: ldc_w 3538
    //   667: ldc_w 3624
    //   670: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   673: goto -296 -> 377
    //   676: iload 6
    //   678: ifeq +19 -> 697
    //   681: aload_0
    //   682: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   685: ldc_w 3538
    //   688: ldc_w 3551
    //   691: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   694: goto -317 -> 377
    //   697: iload 7
    //   699: ifeq -322 -> 377
    //   702: aload_0
    //   703: getfield 255	com/estrongs/android/pop/view/FileExplorerActivity:au	Lcom/estrongs/android/j/c;
    //   706: ldc_w 3538
    //   709: ldc_w 3553
    //   712: invokevirtual 1477	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   715: goto -338 -> 377
    //   718: aload_0
    //   719: new 943	java/lang/StringBuilder
    //   722: dup
    //   723: invokespecial 944	java/lang/StringBuilder:<init>	()V
    //   726: ldc_w 946
    //   729: invokevirtual 950	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   732: aload 12
    //   734: invokevirtual 950	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   737: invokevirtual 953	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   740: invokevirtual 956	com/estrongs/android/pop/view/FileExplorerActivity:f	(Ljava/lang/String;)Lcom/estrongs/android/view/cr;
    //   743: pop
    //   744: return
    //   745: ldc_w 958
    //   748: aload_1
    //   749: invokevirtual 961	android/content/Intent:getAction	()Ljava/lang/String;
    //   752: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   755: ifeq +17 -> 772
    //   758: invokestatic 966	com/estrongs/android/pop/app/analysis/a:a	()Lcom/estrongs/android/pop/app/analysis/a;
    //   761: iconst_0
    //   762: invokevirtual 967	com/estrongs/android/pop/app/analysis/a:a	(Z)V
    //   765: return
    //   766: astore_1
    //   767: aload_1
    //   768: invokevirtual 658	java/lang/Exception:printStackTrace	()V
    //   771: return
    //   772: ldc_w 969
    //   775: aload_1
    //   776: ldc_w 971
    //   779: invokevirtual 828	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   782: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   785: ifeq +12 -> 797
    //   788: aload_0
    //   789: ldc_w 973
    //   792: invokevirtual 956	com/estrongs/android/pop/view/FileExplorerActivity:f	(Ljava/lang/String;)Lcom/estrongs/android/view/cr;
    //   795: pop
    //   796: return
    //   797: ldc_w 975
    //   800: aload_1
    //   801: ldc_w 971
    //   804: invokevirtual 828	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   807: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   810: ifeq +23 -> 833
    //   813: aload_0
    //   814: invokevirtual 978	com/estrongs/android/pop/view/FileExplorerActivity:ag	()Lcom/estrongs/android/pop/utils/c;
    //   817: aload_0
    //   818: invokevirtual 983	com/estrongs/android/pop/utils/c:b	(Landroid/content/Context;)Ljava/util/List;
    //   821: invokestatic 986	com/estrongs/android/pop/utils/c:c	(Ljava/util/List;)V
    //   824: aload_0
    //   825: ldc_w 988
    //   828: invokevirtual 956	com/estrongs/android/pop/view/FileExplorerActivity:f	(Ljava/lang/String;)Lcom/estrongs/android/view/cr;
    //   831: pop
    //   832: return
    //   833: ldc_w 1000
    //   836: aload_1
    //   837: ldc_w 971
    //   840: invokevirtual 828	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   843: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   846: ifeq +19 -> 865
    //   849: aload_0
    //   850: aload_0
    //   851: invokestatic 387	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   854: getstatic 1003	com/estrongs/android/pop/view/a:a	Ljava/lang/String;
    //   857: invokevirtual 1005	com/estrongs/android/pop/ad:j	(Ljava/lang/String;)Ljava/lang/String;
    //   860: invokevirtual 956	com/estrongs/android/pop/view/FileExplorerActivity:f	(Ljava/lang/String;)Lcom/estrongs/android/view/cr;
    //   863: pop
    //   864: return
    //   865: ldc_w 3810
    //   868: aload_1
    //   869: ldc_w 971
    //   872: invokevirtual 828	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   875: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   878: ifeq +8 -> 886
    //   881: aload_0
    //   882: invokestatic 3629	com/estrongs/android/ui/e/m:a	(Landroid/content/Context;)V
    //   885: return
    //   886: aload_0
    //   887: aload_1
    //   888: invokespecial 991	com/estrongs/android/pop/view/FileExplorerActivity:c	(Landroid/content/Intent;)Z
    //   891: ifne -484 -> 407
    //   894: ldc_w 993
    //   897: aload_1
    //   898: ldc_w 971
    //   901: invokevirtual 828	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   904: invokevirtual 413	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   907: ifeq +16 -> 923
    //   910: aload_0
    //   911: invokestatic 998	com/estrongs/android/pop/app/a/n:a	(Landroid/app/Activity;)V
    //   914: aload_0
    //   915: ldc_w 550
    //   918: invokevirtual 956	com/estrongs/android/pop/view/FileExplorerActivity:f	(Ljava/lang/String;)Lcom/estrongs/android/view/cr;
    //   921: pop
    //   922: return
    //   923: aload_1
    //   924: invokevirtual 3533	android/content/Intent:getDataString	()Ljava/lang/String;
    //   927: astore_1
    //   928: aload_1
    //   929: ifnull -522 -> 407
    //   932: aload_1
    //   933: invokestatic 3536	android/net/Uri:decode	(Ljava/lang/String;)Ljava/lang/String;
    //   936: astore 12
    //   938: aload 12
    //   940: ifnull -533 -> 407
    //   943: aload 12
    //   945: ldc_w 3562
    //   948: invokevirtual 494	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   951: ifne +17 -> 968
    //   954: aload 12
    //   956: astore_1
    //   957: aload 12
    //   959: ldc_w 3564
    //   962: invokevirtual 494	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   965: ifeq +11 -> 976
    //   968: aload 12
    //   970: bipush 7
    //   972: invokevirtual 2516	java/lang/String:substring	(I)Ljava/lang/String;
    //   975: astore_1
    //   976: aload_0
    //   977: invokevirtual 3757	com/estrongs/android/pop/view/FileExplorerActivity:v	()Z
    //   980: ifeq +7 -> 987
    //   983: aload_0
    //   984: invokevirtual 3758	com/estrongs/android/pop/view/FileExplorerActivity:x	()V
    //   987: aload_1
    //   988: invokestatic 1148	com/estrongs/android/util/ap:v	(Ljava/lang/String;)Z
    //   991: ifeq +10 -> 1001
    //   994: aload_0
    //   995: aload_1
    //   996: invokevirtual 3147	com/estrongs/android/pop/view/FileExplorerActivity:d	(Ljava/lang/String;)Lcom/estrongs/android/view/cr;
    //   999: pop
    //   1000: return
    //   1001: aload_0
    //   1002: aload_1
    //   1003: invokevirtual 956	com/estrongs/android/pop/view/FileExplorerActivity:f	(Ljava/lang/String;)Lcom/estrongs/android/view/cr;
    //   1006: pop
    //   1007: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1008	0	this	FileExplorerActivity
    //   0	1008	1	paramIntent	Intent
    //   1	656	2	i1	int
    //   29	457	3	bool1	boolean
    //   40	575	4	bool2	boolean
    //   52	584	5	bool3	boolean
    //   227	450	6	bool4	boolean
    //   234	464	7	bool5	boolean
    //   241	34	8	bool6	boolean
    //   248	32	9	bool7	boolean
    //   255	30	10	bool8	boolean
    //   262	28	11	bool9	boolean
    //   14	955	12	str1	String
    //   88	269	13	str2	String
    //   436	42	13	localException1	Exception
    //   512	3	13	localException2	Exception
    //   594	3	13	localException3	Exception
    //   604	3	14	localException4	Exception
    // Exception table:
    //   from	to	target	type
    //   105	125	436	java/lang/Exception
    //   413	433	436	java/lang/Exception
    //   451	471	436	java/lang/Exception
    //   489	509	512	java/lang/Exception
    //   527	547	512	java/lang/Exception
    //   555	575	512	java/lang/Exception
    //   160	170	594	java/lang/Exception
    //   175	188	594	java/lang/Exception
    //   578	591	594	java/lang/Exception
    //   339	349	604	java/lang/Exception
    //   758	765	766	java/lang/Exception
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (aL.a(paramMenuItem)) {
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    if (isFinishing()) {
      aK();
    }
    com.estrongs.android.view.cr localcr = O();
    if (localcr != null) {
      localcr.j_();
    }
    super.onPause();
  }
  
  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    try
    {
      boolean bool = aL.b(paramMenu);
      if (bool) {
        return true;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return super.onPrepareOptionsMenu(paramMenu);
  }
  
  protected void onResume()
  {
    super.onResume();
    boolean bool1 = com.estrongs.fs.impl.local.m.g();
    boolean bool2 = com.estrongs.android.pop.ad.a(this).aa();
    if ((bool1) && (!bool2))
    {
      au.a("Root_Already");
      com.estrongs.android.pop.ad.a(this).j(true);
    }
    com.estrongs.android.view.cr localcr = O();
    if (localcr != null) {
      localcr.l();
    }
    i.post(new af(this));
    i.postDelayed(new ag(this), 1000L);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    try
    {
      int i2 = au().c();
      String[] arrayOfString = new String[i2];
      int i1 = 0;
      while (i1 < i2)
      {
        arrayOfString[i1] = au().c(i1).a();
        i1 += 1;
      }
      paramBundle.putStringArray("winPaths", arrayOfString);
      paramBundle.putInt("currentWin", au().a());
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
    com.estrongs.android.view.cr localcr = O();
    if ((localcr instanceof WebViewWrapper)) {
      ((WebViewWrapper)localcr).A();
    }
    super.onStop();
  }
  
  public void onSupportActionModeFinished(ActionMode paramActionMode)
  {
    super.onSupportActionModeFinished(paramActionMode);
    if (at != null) {
      at.a(0);
    }
    p = false;
  }
  
  public void onSupportActionModeStarted(ActionMode paramActionMode)
  {
    super.onSupportActionModeStarted(paramActionMode);
    if (at != null) {
      at.a(1);
    }
    p = true;
  }
  
  public void p()
  {
    p = true;
    aL.c(a);
    aP();
  }
  
  public void p(String paramString)
  {
    if (ao())
    {
      synchronized (w)
      {
        Iterator localIterator = w.iterator();
        while (localIterator.hasNext())
        {
          com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)localIterator.next();
          if ((localcr != null) && (com.estrongs.android.util.ap.e(paramString, localcr.c()))) {
            localcr.e();
          }
        }
      }
      return;
    }
    runOnUiThread(new r(this, paramString));
  }
  
  public void q()
  {
    if ((u) && (!c)) {
      if (z.getVisibility() == 8) {
        z.setVisibility(0);
      }
    }
    com.estrongs.android.ui.navigation.m localm;
    do
    {
      return;
      localm = ae();
    } while (localm == null);
    localm.b();
  }
  
  public void r()
  {
    com.estrongs.android.view.cr localcr = O();
    if (localcr != null) {
      localcr.j();
    }
  }
  
  public void s()
  {
    if ((u) && (!c))
    {
      if (z.getVisibility() == 8)
      {
        z.setVisibility(0);
        if (!(O() instanceof com.estrongs.android.ui.c.e)) {
          break label67;
        }
        ((com.estrongs.android.ui.c.e)O()).l_();
      }
      for (;;)
      {
        return;
        z.setVisibility(8);
        break;
        label67:
        Iterator localIterator = w.iterator();
        while (localIterator.hasNext())
        {
          com.estrongs.android.view.cr localcr = (com.estrongs.android.view.cr)localIterator.next();
          if ((localcr instanceof com.estrongs.android.ui.c.e)) {
            ((com.estrongs.android.ui.c.e)localcr).l_();
          }
        }
      }
    }
    if (v())
    {
      x();
      return;
    }
    q();
  }
  
  public void setTabletSideBar(View paramView)
  {
    y = new com.estrongs.android.ui.navigation.r(this, paramView);
    ae().a(y.b());
    aH();
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
  
  public void t()
  {
    if (h != null) {
      h.b(h.getCurrentScreen());
    }
  }
  
  public void u()
  {
    com.estrongs.android.ui.navigation.m localm = ae();
    if (localm != null) {
      localm.c();
    }
  }
  
  public boolean v()
  {
    return (at != null) && ((at.f()) || (at.g()));
  }
  
  public void w()
  {
    a(null);
  }
  
  public void x()
  {
    if (at != null) {
      at.e();
    }
  }
  
  public Rect y()
  {
    int[] arrayOfInt;
    if (U == null)
    {
      U = new Rect();
      arrayOfInt = new int[2];
      if (h == null) {
        break label102;
      }
      if (!t) {
        break label88;
      }
      h.getLocationInWindow(arrayOfInt);
    }
    for (;;)
    {
      U = new Rect(arrayOfInt[0], arrayOfInt[1], arrayOfInt[0] + h.getMeasuredWidth(), arrayOfInt[1] + h.getMeasuredHeight());
      return U;
      label88:
      findViewById(2131624514).getLocationInWindow(arrayOfInt);
    }
    label102:
    return null;
  }
  
  public void z()
  {
    Message localMessage = new Message();
    if (au().c() <= 1) {
      what = 211;
    }
    for (;;)
    {
      if (i != null) {
        i.sendMessage(localMessage);
      }
      if (h.e()) {
        h.setPageLocked(false);
      }
      return;
      what = 2;
      arg1 = au().a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.FileExplorerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */