package com.estrongs.android.pop.app.a;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.support.v7.widget.SwitchCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.ai;
import com.estrongs.android.pop.app.messagebox.n;
import com.estrongs.android.util.bk;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import org.json.JSONObject;

public class a
{
  static boolean a = false;
  public static String b = "card_guide";
  public static String c = com.estrongs.android.pop.a.b + "/" + ".dontedit_guide";
  private static l d;
  private static m e;
  private static r f;
  private static r g;
  private static ArrayList<k> h = null;
  
  public static void a(Activity paramActivity)
  {
    if ((!b()) && (c())) {
      if (f != null) {}
    }
    label18:
    do
    {
      do
      {
        File localFile;
        do
        {
          break label18;
          do
          {
            return;
          } while (ai.b(FexApplication.a()).a("newuser_guide_checked", 0) == 1);
          localFile = new File(c);
        } while (localFile.exists());
        try
        {
          localFile.createNewFile();
          ai.b(FexApplication.a()).b("newuser_guide_checked", 1);
          if (fd == 1)
          {
            a(paramActivity, fd);
            return;
          }
        }
        catch (IOException localIOException)
        {
          for (;;)
          {
            localIOException.printStackTrace();
          }
          if (fd == 2)
          {
            a(paramActivity, fd);
            a(true, "newuser_2");
            return;
          }
          if (fd == 3)
          {
            a(true, "newuser_3");
            return;
          }
          try
          {
            paramActivity = new JSONObject();
            paramActivity.put("event", "ignore");
            com.estrongs.android.j.c.a(FexApplication.a()).a("charge", "charge_new_user", paramActivity);
            return;
          }
          catch (Exception paramActivity)
          {
            paramActivity.printStackTrace();
            return;
          }
        }
      } while ((b()) || (c()) || (!ad.a(FexApplication.a()).bt()) || (g == null));
      ad.a(FexApplication.a()).b(false, false);
      if (gd == 1)
      {
        a(paramActivity, gd);
        return;
      }
      if (gd == 2)
      {
        a(paramActivity, gd);
        a(true, "opened_olduser_2");
        return;
      }
    } while (gd != 3);
    a(true, "opened_olduser_3");
  }
  
  public static void a(Activity paramActivity, int paramInt)
  {
    if (f == null) {
      return;
    }
    try
    {
      paramActivity = new AlertDialog.Builder(paramActivity).create();
      paramActivity.setCanceledOnTouchOutside(false);
      paramActivity.show();
      paramActivity.getWindow().setGravity(17);
      paramActivity.getWindow().setContentView(2130903140);
      paramActivity.getWindow().setBackgroundDrawable(new ColorDrawable(0));
      paramActivity.setOnKeyListener(new i());
      SwitchCompat localSwitchCompat = (SwitchCompat)paramActivity.getWindow().findViewById(2131624348);
      localSwitchCompat.setChecked(true);
      if (paramInt == 2) {
        localSwitchCompat.setVisibility(8);
      }
      TextView localTextView1 = (TextView)paramActivity.getWindow().findViewById(2131624309);
      TextView localTextView2 = (TextView)paramActivity.getWindow().findViewById(2131624055);
      TextView localTextView3 = (TextView)paramActivity.getWindow().findViewById(2131624455);
      localTextView1.setText(fa);
      localTextView2.setText(fb);
      localTextView3.setText(fc);
      paramActivity.getWindow().findViewById(2131624536).setOnClickListener(new j(paramActivity, paramInt, localSwitchCompat));
      return;
    }
    catch (Exception paramActivity)
    {
      paramActivity.printStackTrace();
    }
  }
  
  public static void a(Context paramContext)
  {
    if (a()) {
      return;
    }
    f();
    if (!TextUtils.isEmpty(n.d)) {
      com.dianxinos.library.notify.c.a(n.d, new b());
    }
    com.dianxinos.lockscreen.c.a(false);
    com.dianxinos.lockscreen.c.a(paramContext).a(paramContext.getString(2131231145));
    com.dianxinos.lockscreen.c.a(paramContext).a(new d());
    com.dianxinos.lockscreen.c.a(paramContext).a(new e(paramContext));
    com.dianxinos.lockscreen.c.a(paramContext).a(new f());
    com.dianxinos.lockscreen.c.a(paramContext).a(new g());
    ad.a(FexApplication.a()).b(e(), true);
    b(b());
  }
  
  public static void a(View paramView, String paramString, View.OnClickListener paramOnClickListener)
  {
    if (e == null) {
      return;
    }
    try
    {
      TextView localTextView1 = (TextView)paramView.findViewById(2131624309);
      TextView localTextView2 = (TextView)paramView.findViewById(2131624394);
      TextView localTextView3 = (TextView)paramView.findViewById(2131624492);
      localTextView1.setText(ea);
      localTextView2.setText(eb);
      localTextView3.setText(ec);
      paramView.setTag(paramString);
      paramView.setOnClickListener(new h(paramView, localTextView3, paramOnClickListener));
      try
      {
        paramView = new JSONObject();
        paramView.put("event", "charge_card_guide");
        paramView.put("positon", paramString);
        com.estrongs.android.j.c.a(FexApplication.a()).a("charge", "charge_card_guide", paramView);
        return;
      }
      catch (Exception paramView)
      {
        paramView.printStackTrace();
        return;
      }
      return;
    }
    catch (Exception paramView) {}
  }
  
  public static void a(k paramk)
  {
    try
    {
      if (h == null) {
        h = new ArrayList();
      }
      h.add(paramk);
      return;
    }
    finally {}
  }
  
  public static void a(boolean paramBoolean)
  {
    ad.a(FexApplication.a()).D(paramBoolean);
  }
  
  /* Error */
  public static void a(boolean paramBoolean, String paramString)
  {
    // Byte code:
    //   0: invokestatic 240	com/estrongs/android/pop/app/a/a:a	()Z
    //   3: ifeq +4 -> 7
    //   6: return
    //   7: iload_0
    //   8: invokestatic 304	com/estrongs/android/pop/app/a/a:b	(Z)V
    //   11: iload_0
    //   12: invokestatic 340	com/estrongs/android/pop/app/a/a:a	(Z)V
    //   15: iload_0
    //   16: ifeq +102 -> 118
    //   19: ldc_w 342
    //   22: astore_2
    //   23: new 114	org/json/JSONObject
    //   26: dup
    //   27: invokespecial 115	org/json/JSONObject:<init>	()V
    //   30: astore_3
    //   31: aload_3
    //   32: ldc 117
    //   34: aload_2
    //   35: invokevirtual 123	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   38: pop
    //   39: aload_3
    //   40: ldc_w 328
    //   43: aload_1
    //   44: invokevirtual 123	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   47: pop
    //   48: invokestatic 70	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   51: invokestatic 128	com/estrongs/android/j/c:a	(Landroid/content/Context;)Lcom/estrongs/android/j/c;
    //   54: ldc -126
    //   56: aload_2
    //   57: aload_3
    //   58: invokevirtual 135	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    //   61: ldc_w 262
    //   64: monitorenter
    //   65: getstatic 51	com/estrongs/android/pop/app/a/a:h	Ljava/util/ArrayList;
    //   68: ifnull +57 -> 125
    //   71: getstatic 51	com/estrongs/android/pop/app/a/a:h	Ljava/util/ArrayList;
    //   74: invokevirtual 346	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   77: astore_1
    //   78: aload_1
    //   79: invokeinterface 351 1 0
    //   84: ifeq +41 -> 125
    //   87: aload_1
    //   88: invokeinterface 355 1 0
    //   93: checkcast 357	com/estrongs/android/pop/app/a/k
    //   96: iload_0
    //   97: invokeinterface 358 2 0
    //   102: goto -24 -> 78
    //   105: astore_1
    //   106: ldc_w 262
    //   109: monitorexit
    //   110: aload_1
    //   111: athrow
    //   112: astore_1
    //   113: aload_1
    //   114: invokevirtual 136	java/lang/Exception:printStackTrace	()V
    //   117: return
    //   118: ldc_w 360
    //   121: astore_2
    //   122: goto -99 -> 23
    //   125: ldc_w 262
    //   128: monitorexit
    //   129: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	130	0	paramBoolean	boolean
    //   0	130	1	paramString	String
    //   22	100	2	str	String
    //   30	28	3	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   65	78	105	finally
    //   78	102	105	finally
    //   106	110	105	finally
    //   125	129	105	finally
    //   7	15	112	java/lang/Exception
    //   23	65	112	java/lang/Exception
    //   110	112	112	java/lang/Exception
  }
  
  public static boolean a()
  {
    return bk.p();
  }
  
  public static boolean a(String paramString)
  {
    if ((!a) || (a()) || (b()) || (ad.a(FexApplication.a()).bl())) {}
    while ((!b.equals(paramString)) || (d == null)) {
      return false;
    }
    return da;
  }
  
  public static void b(k paramk)
  {
    try
    {
      if (h != null) {
        h.remove(paramk);
      }
      return;
    }
    finally {}
  }
  
  private static void b(boolean paramBoolean)
  {
    com.dianxinos.lockscreen.c.a(FexApplication.a()).b(paramBoolean);
  }
  
  public static boolean b()
  {
    boolean bool1;
    if (a()) {
      bool1 = false;
    }
    boolean bool2;
    do
    {
      return bool1;
      bool2 = ad.a(FexApplication.a()).bs();
      bool1 = bool2;
    } while (!bool2);
    return e();
  }
  
  public static boolean c()
  {
    return ai.b(FexApplication.a()).b() > 0L;
  }
  
  /* Error */
  private static boolean c(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: iconst_0
    //   5: ireturn
    //   6: new 114	org/json/JSONObject
    //   9: dup
    //   10: aload_0
    //   11: invokespecial 394	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   14: astore_0
    //   15: aload_0
    //   16: ldc_w 396
    //   19: invokevirtual 400	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   22: iconst_1
    //   23: if_icmpne +275 -> 298
    //   26: iconst_1
    //   27: istore_1
    //   28: iload_1
    //   29: putstatic 23	com/estrongs/android/pop/app/a/a:a	Z
    //   32: aload_0
    //   33: ldc_w 402
    //   36: invokevirtual 406	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   39: astore_2
    //   40: new 378	com/estrongs/android/pop/app/a/l
    //   43: dup
    //   44: invokespecial 407	com/estrongs/android/pop/app/a/l:<init>	()V
    //   47: putstatic 376	com/estrongs/android/pop/app/a/a:d	Lcom/estrongs/android/pop/app/a/l;
    //   50: getstatic 376	com/estrongs/android/pop/app/a/a:d	Lcom/estrongs/android/pop/app/a/l;
    //   53: astore_3
    //   54: aload_2
    //   55: ldc 25
    //   57: invokevirtual 400	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   60: iconst_1
    //   61: if_icmpne +242 -> 303
    //   64: iconst_1
    //   65: istore_1
    //   66: aload_3
    //   67: iload_1
    //   68: putfield 379	com/estrongs/android/pop/app/a/l:a	Z
    //   71: aload_0
    //   72: ldc_w 409
    //   75: invokevirtual 406	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   78: astore_2
    //   79: new 312	com/estrongs/android/pop/app/a/m
    //   82: dup
    //   83: invokespecial 410	com/estrongs/android/pop/app/a/m:<init>	()V
    //   86: putstatic 307	com/estrongs/android/pop/app/a/a:e	Lcom/estrongs/android/pop/app/a/m;
    //   89: getstatic 307	com/estrongs/android/pop/app/a/a:e	Lcom/estrongs/android/pop/app/a/m;
    //   92: aload_2
    //   93: ldc_w 412
    //   96: invokevirtual 415	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   99: putfield 313	com/estrongs/android/pop/app/a/m:a	Ljava/lang/String;
    //   102: getstatic 307	com/estrongs/android/pop/app/a/a:e	Lcom/estrongs/android/pop/app/a/m;
    //   105: aload_2
    //   106: ldc_w 417
    //   109: invokevirtual 415	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   112: putfield 314	com/estrongs/android/pop/app/a/m:b	Ljava/lang/String;
    //   115: getstatic 307	com/estrongs/android/pop/app/a/a:e	Lcom/estrongs/android/pop/app/a/m;
    //   118: aload_2
    //   119: ldc_w 419
    //   122: invokevirtual 415	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   125: putfield 315	com/estrongs/android/pop/app/a/m:c	Ljava/lang/String;
    //   128: getstatic 307	com/estrongs/android/pop/app/a/a:e	Lcom/estrongs/android/pop/app/a/m;
    //   131: aload_2
    //   132: ldc_w 421
    //   135: invokevirtual 415	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   138: putfield 422	com/estrongs/android/pop/app/a/m:d	Ljava/lang/String;
    //   141: getstatic 307	com/estrongs/android/pop/app/a/a:e	Lcom/estrongs/android/pop/app/a/m;
    //   144: aload_2
    //   145: ldc_w 424
    //   148: invokevirtual 415	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   151: putfield 426	com/estrongs/android/pop/app/a/m:e	Ljava/lang/String;
    //   154: aload_0
    //   155: ldc_w 428
    //   158: invokevirtual 406	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   161: astore_2
    //   162: new 96	com/estrongs/android/pop/app/a/r
    //   165: dup
    //   166: iconst_2
    //   167: invokespecial 429	com/estrongs/android/pop/app/a/r:<init>	(I)V
    //   170: putstatic 65	com/estrongs/android/pop/app/a/a:f	Lcom/estrongs/android/pop/app/a/r;
    //   173: getstatic 65	com/estrongs/android/pop/app/a/a:f	Lcom/estrongs/android/pop/app/a/r;
    //   176: aload_2
    //   177: ldc_w 431
    //   180: invokevirtual 415	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   183: putfield 220	com/estrongs/android/pop/app/a/r:a	Ljava/lang/String;
    //   186: getstatic 65	com/estrongs/android/pop/app/a/a:f	Lcom/estrongs/android/pop/app/a/r;
    //   189: aload_2
    //   190: ldc_w 433
    //   193: invokevirtual 415	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   196: putfield 225	com/estrongs/android/pop/app/a/r:b	Ljava/lang/String;
    //   199: getstatic 65	com/estrongs/android/pop/app/a/a:f	Lcom/estrongs/android/pop/app/a/r;
    //   202: aload_2
    //   203: ldc_w 435
    //   206: invokevirtual 415	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   209: putfield 226	com/estrongs/android/pop/app/a/r:c	Ljava/lang/String;
    //   212: getstatic 65	com/estrongs/android/pop/app/a/a:f	Lcom/estrongs/android/pop/app/a/r;
    //   215: aload_2
    //   216: ldc_w 437
    //   219: invokevirtual 400	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   222: putfield 99	com/estrongs/android/pop/app/a/r:d	I
    //   225: aload_0
    //   226: ldc_w 439
    //   229: invokevirtual 406	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   232: astore_0
    //   233: new 96	com/estrongs/android/pop/app/a/r
    //   236: dup
    //   237: iconst_1
    //   238: invokespecial 429	com/estrongs/android/pop/app/a/r:<init>	(I)V
    //   241: putstatic 146	com/estrongs/android/pop/app/a/a:g	Lcom/estrongs/android/pop/app/a/r;
    //   244: getstatic 146	com/estrongs/android/pop/app/a/a:g	Lcom/estrongs/android/pop/app/a/r;
    //   247: aload_0
    //   248: ldc_w 431
    //   251: invokevirtual 415	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   254: putfield 220	com/estrongs/android/pop/app/a/r:a	Ljava/lang/String;
    //   257: getstatic 146	com/estrongs/android/pop/app/a/a:g	Lcom/estrongs/android/pop/app/a/r;
    //   260: aload_0
    //   261: ldc_w 433
    //   264: invokevirtual 415	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   267: putfield 225	com/estrongs/android/pop/app/a/r:b	Ljava/lang/String;
    //   270: getstatic 146	com/estrongs/android/pop/app/a/a:g	Lcom/estrongs/android/pop/app/a/r;
    //   273: aload_0
    //   274: ldc_w 435
    //   277: invokevirtual 415	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   280: putfield 226	com/estrongs/android/pop/app/a/r:c	Ljava/lang/String;
    //   283: getstatic 146	com/estrongs/android/pop/app/a/a:g	Lcom/estrongs/android/pop/app/a/r;
    //   286: aload_0
    //   287: ldc_w 437
    //   290: invokevirtual 400	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   293: putfield 99	com/estrongs/android/pop/app/a/r:d	I
    //   296: iconst_1
    //   297: ireturn
    //   298: iconst_0
    //   299: istore_1
    //   300: goto -272 -> 28
    //   303: iconst_0
    //   304: istore_1
    //   305: goto -239 -> 66
    //   308: astore_2
    //   309: aload_2
    //   310: invokevirtual 440	org/json/JSONException:printStackTrace	()V
    //   313: aconst_null
    //   314: putstatic 376	com/estrongs/android/pop/app/a/a:d	Lcom/estrongs/android/pop/app/a/l;
    //   317: goto -246 -> 71
    //   320: astore_0
    //   321: aload_0
    //   322: invokevirtual 440	org/json/JSONException:printStackTrace	()V
    //   325: iconst_0
    //   326: putstatic 23	com/estrongs/android/pop/app/a/a:a	Z
    //   329: aconst_null
    //   330: putstatic 376	com/estrongs/android/pop/app/a/a:d	Lcom/estrongs/android/pop/app/a/l;
    //   333: aconst_null
    //   334: putstatic 307	com/estrongs/android/pop/app/a/a:e	Lcom/estrongs/android/pop/app/a/m;
    //   337: aconst_null
    //   338: putstatic 65	com/estrongs/android/pop/app/a/a:f	Lcom/estrongs/android/pop/app/a/r;
    //   341: aconst_null
    //   342: putstatic 146	com/estrongs/android/pop/app/a/a:g	Lcom/estrongs/android/pop/app/a/r;
    //   345: iconst_0
    //   346: ireturn
    //   347: astore_2
    //   348: aload_2
    //   349: invokevirtual 440	org/json/JSONException:printStackTrace	()V
    //   352: aconst_null
    //   353: putstatic 307	com/estrongs/android/pop/app/a/a:e	Lcom/estrongs/android/pop/app/a/m;
    //   356: goto -202 -> 154
    //   359: astore_2
    //   360: aload_2
    //   361: invokevirtual 440	org/json/JSONException:printStackTrace	()V
    //   364: aconst_null
    //   365: putstatic 65	com/estrongs/android/pop/app/a/a:f	Lcom/estrongs/android/pop/app/a/r;
    //   368: goto -143 -> 225
    //   371: astore_0
    //   372: aload_0
    //   373: invokevirtual 440	org/json/JSONException:printStackTrace	()V
    //   376: aconst_null
    //   377: putstatic 146	com/estrongs/android/pop/app/a/a:g	Lcom/estrongs/android/pop/app/a/r;
    //   380: goto -84 -> 296
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	383	0	paramString	String
    //   27	278	1	bool	boolean
    //   39	177	2	localJSONObject	JSONObject
    //   308	2	2	localJSONException1	org.json.JSONException
    //   347	2	2	localJSONException2	org.json.JSONException
    //   359	2	2	localJSONException3	org.json.JSONException
    //   53	14	3	locall	l
    // Exception table:
    //   from	to	target	type
    //   32	64	308	org/json/JSONException
    //   66	71	308	org/json/JSONException
    //   6	26	320	org/json/JSONException
    //   28	32	320	org/json/JSONException
    //   309	317	320	org/json/JSONException
    //   348	356	320	org/json/JSONException
    //   360	368	320	org/json/JSONException
    //   372	380	320	org/json/JSONException
    //   71	154	347	org/json/JSONException
    //   154	225	359	org/json/JSONException
    //   225	296	371	org/json/JSONException
  }
  
  private static boolean e()
  {
    if (a()) {
      return false;
    }
    return com.dianxinos.lockscreen.c.a(FexApplication.a()).c();
  }
  
  private static void f()
  {
    try
    {
      if (!TextUtils.isEmpty(n.d))
      {
        String str = com.dianxinos.library.notify.c.b(n.d);
        if (!TextUtils.isEmpty(str)) {
          c(str);
        }
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */