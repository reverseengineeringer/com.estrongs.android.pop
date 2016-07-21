package com.estrongs.android.ui.theme;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.util.aa;
import com.estrongs.android.util.ap;
import com.estrongs.android.widget.ProgressTextView;
import java.io.File;
import org.json.simple.JSONObject;

public class al
{
  public static String b;
  private boolean a = false;
  public String c;
  public String d;
  public String e;
  public String f;
  public String g;
  public int h;
  private boolean i = false;
  private boolean j = false;
  private ProgressTextView k;
  private int l;
  private int m;
  private Bitmap n;
  private String o;
  private String p = "new";
  private int q;
  private int r;
  private int s;
  private boolean t = false;
  private boolean u = true;
  private String v = "new";
  private boolean w = false;
  private long x = 0L;
  
  public static al a(JSONObject paramJSONObject)
  {
    al localal = new al();
    d = ((String)paramJSONObject.get("title"));
    c = ((String)paramJSONObject.get("package"));
    f = ((String)paramJSONObject.get("url"));
    e = ((String)paramJSONObject.get("icon"));
    g = ((String)paramJSONObject.get("pic"));
    h = Integer.parseInt((String)paramJSONObject.get("vcode"));
    return localal;
  }
  
  private BitmapDrawable b(Context paramContext, int paramInt)
  {
    Object localObject = at.a(paramContext);
    BitmapDrawable localBitmapDrawable = (BitmapDrawable)((at)localObject).a(paramInt);
    localObject = g.a(((at)localObject).n(), localBitmapDrawable);
    return new BitmapDrawable(paramContext.getResources(), (Bitmap)localObject);
  }
  
  /* Error */
  public static java.util.List<al> b(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: new 144	java/io/File
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 147	java/io/File:<init>	(Ljava/lang/String;)V
    //   10: astore_0
    //   11: aload_0
    //   12: invokevirtual 151	java/io/File:exists	()Z
    //   15: ifne +9 -> 24
    //   18: aconst_null
    //   19: putstatic 153	com/estrongs/android/ui/theme/al:b	Ljava/lang/String;
    //   22: aconst_null
    //   23: areturn
    //   24: aload_0
    //   25: invokevirtual 157	java/io/File:length	()J
    //   28: invokestatic 163	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   31: invokevirtual 167	java/lang/Long:intValue	()I
    //   34: istore_2
    //   35: iload_2
    //   36: newarray <illegal type>
    //   38: astore_3
    //   39: new 169	java/io/RandomAccessFile
    //   42: dup
    //   43: aload_0
    //   44: ldc -86
    //   46: invokespecial 173	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   49: astore_0
    //   50: aload_0
    //   51: aload_3
    //   52: iconst_0
    //   53: iload_2
    //   54: invokevirtual 177	java/io/RandomAccessFile:read	([BII)I
    //   57: pop
    //   58: aload_0
    //   59: invokevirtual 180	java/io/RandomAccessFile:close	()V
    //   62: new 182	java/io/ByteArrayOutputStream
    //   65: dup
    //   66: invokespecial 183	java/io/ByteArrayOutputStream:<init>	()V
    //   69: astore_0
    //   70: new 185	java/util/zip/InflaterInputStream
    //   73: dup
    //   74: new 187	java/io/ByteArrayInputStream
    //   77: dup
    //   78: aload_3
    //   79: invokespecial 190	java/io/ByteArrayInputStream:<init>	([B)V
    //   82: invokespecial 193	java/util/zip/InflaterInputStream:<init>	(Ljava/io/InputStream;)V
    //   85: astore_3
    //   86: sipush 1024
    //   89: newarray <illegal type>
    //   91: astore 4
    //   93: aload_3
    //   94: aload 4
    //   96: iconst_0
    //   97: sipush 1024
    //   100: invokevirtual 194	java/util/zip/InflaterInputStream:read	([BII)I
    //   103: istore_2
    //   104: iload_2
    //   105: ifle +27 -> 132
    //   108: aload_0
    //   109: aload 4
    //   111: iconst_0
    //   112: iload_2
    //   113: invokevirtual 198	java/io/ByteArrayOutputStream:write	([BII)V
    //   116: goto -23 -> 93
    //   119: astore_3
    //   120: aconst_null
    //   121: astore_0
    //   122: aload_3
    //   123: invokevirtual 201	java/io/FileNotFoundException:printStackTrace	()V
    //   126: aconst_null
    //   127: putstatic 153	com/estrongs/android/ui/theme/al:b	Ljava/lang/String;
    //   130: aload_0
    //   131: areturn
    //   132: aload_3
    //   133: invokevirtual 202	java/util/zip/InflaterInputStream:close	()V
    //   136: new 71	java/lang/String
    //   139: dup
    //   140: aload_0
    //   141: invokevirtual 206	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   144: invokespecial 207	java/lang/String:<init>	([B)V
    //   147: astore_3
    //   148: aload_0
    //   149: invokevirtual 208	java/io/ByteArrayOutputStream:close	()V
    //   152: new 210	org/json/simple/parser/JSONParser
    //   155: dup
    //   156: invokespecial 211	org/json/simple/parser/JSONParser:<init>	()V
    //   159: aload_3
    //   160: invokevirtual 215	org/json/simple/parser/JSONParser:parse	(Ljava/lang/String;)Ljava/lang/Object;
    //   163: astore_0
    //   164: aload_0
    //   165: checkcast 65	org/json/simple/JSONObject
    //   168: ldc -39
    //   170: invokevirtual 69	org/json/simple/JSONObject:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   173: checkcast 71	java/lang/String
    //   176: putstatic 153	com/estrongs/android/ui/theme/al:b	Ljava/lang/String;
    //   179: aload_0
    //   180: checkcast 65	org/json/simple/JSONObject
    //   183: ldc -37
    //   185: invokevirtual 69	org/json/simple/JSONObject:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   188: astore_0
    //   189: aload_0
    //   190: instanceof 221
    //   193: ifeq +101 -> 294
    //   196: aload_0
    //   197: checkcast 221	org/json/simple/JSONArray
    //   200: astore_3
    //   201: new 223	java/util/ArrayList
    //   204: dup
    //   205: invokespecial 224	java/util/ArrayList:<init>	()V
    //   208: astore_0
    //   209: iload_1
    //   210: aload_3
    //   211: invokevirtual 227	org/json/simple/JSONArray:size	()I
    //   214: if_icmpge +77 -> 291
    //   217: aload_3
    //   218: iload_1
    //   219: invokevirtual 230	org/json/simple/JSONArray:get	(I)Ljava/lang/Object;
    //   222: checkcast 65	org/json/simple/JSONObject
    //   225: invokestatic 232	com/estrongs/android/ui/theme/al:a	(Lorg/json/simple/JSONObject;)Lcom/estrongs/android/ui/theme/al;
    //   228: astore 4
    //   230: aload 4
    //   232: ifnull +12 -> 244
    //   235: aload_0
    //   236: aload 4
    //   238: invokeinterface 238 2 0
    //   243: pop
    //   244: iload_1
    //   245: iconst_1
    //   246: iadd
    //   247: istore_1
    //   248: goto -39 -> 209
    //   251: astore_3
    //   252: aconst_null
    //   253: astore_0
    //   254: aload_3
    //   255: invokevirtual 239	java/io/IOException:printStackTrace	()V
    //   258: aconst_null
    //   259: putstatic 153	com/estrongs/android/ui/theme/al:b	Ljava/lang/String;
    //   262: goto -132 -> 130
    //   265: astore_3
    //   266: aconst_null
    //   267: astore_0
    //   268: aload_3
    //   269: invokevirtual 240	org/json/simple/parser/ParseException:printStackTrace	()V
    //   272: aconst_null
    //   273: putstatic 153	com/estrongs/android/ui/theme/al:b	Ljava/lang/String;
    //   276: goto -146 -> 130
    //   279: astore_3
    //   280: goto -12 -> 268
    //   283: astore_3
    //   284: goto -30 -> 254
    //   287: astore_3
    //   288: goto -166 -> 122
    //   291: goto -161 -> 130
    //   294: aconst_null
    //   295: astore_0
    //   296: goto -166 -> 130
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	299	0	paramString	String
    //   1	247	1	i1	int
    //   34	79	2	i2	int
    //   38	56	3	localObject1	Object
    //   119	14	3	localFileNotFoundException1	java.io.FileNotFoundException
    //   147	71	3	localObject2	Object
    //   251	4	3	localIOException1	java.io.IOException
    //   265	4	3	localParseException1	org.json.simple.parser.ParseException
    //   279	1	3	localParseException2	org.json.simple.parser.ParseException
    //   283	1	3	localIOException2	java.io.IOException
    //   287	1	3	localFileNotFoundException2	java.io.FileNotFoundException
    //   91	146	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   11	22	119	java/io/FileNotFoundException
    //   24	93	119	java/io/FileNotFoundException
    //   93	104	119	java/io/FileNotFoundException
    //   108	116	119	java/io/FileNotFoundException
    //   132	209	119	java/io/FileNotFoundException
    //   11	22	251	java/io/IOException
    //   24	93	251	java/io/IOException
    //   93	104	251	java/io/IOException
    //   108	116	251	java/io/IOException
    //   132	209	251	java/io/IOException
    //   11	22	265	org/json/simple/parser/ParseException
    //   24	93	265	org/json/simple/parser/ParseException
    //   93	104	265	org/json/simple/parser/ParseException
    //   108	116	265	org/json/simple/parser/ParseException
    //   132	209	265	org/json/simple/parser/ParseException
    //   209	230	279	org/json/simple/parser/ParseException
    //   235	244	279	org/json/simple/parser/ParseException
    //   209	230	283	java/io/IOException
    //   235	244	283	java/io/IOException
    //   209	230	287	java/io/FileNotFoundException
    //   235	244	287	java/io/FileNotFoundException
  }
  
  private void g(Context paramContext)
  {
    File localFile = new File(d() + c + h + ".apk");
    if (!localFile.exists()) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(localFile), "application/vnd.android.package-archive");
    paramContext.startActivity(localIntent);
  }
  
  private void h(Context paramContext)
  {
    b(paramContext, 2130838239);
    b(paramContext, 2130838168);
    b(paramContext, 2130838443);
    b(paramContext, 2130837855);
    b(paramContext, 2130837927);
    b(paramContext, 2130838249);
    b(paramContext, 2130838497);
    b(paramContext, 2130838242);
  }
  
  public Context a(Context paramContext)
  {
    try
    {
      Context localContext = paramContext.createPackageContext(c, 2);
      return localContext;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return paramContext;
  }
  
  public BitmapDrawable a(Context paramContext, int paramInt)
  {
    return b(paramContext, paramInt);
  }
  
  public void a(Context paramContext, Handler paramHandler)
  {
    Object localObject = new File(d() + c + h + ".apk");
    if (((File)localObject).exists())
    {
      if (paramHandler != null)
      {
        localObject = new Message();
        what = 12;
        obj = c;
        paramHandler.sendMessage((Message)localObject);
      }
      g(paramContext);
    }
    while (j) {
      return;
    }
    aa localaa;
    if (FexApplication.a().m())
    {
      try
      {
        Intent localIntent = new Intent("android.intent.action.VIEW");
        localIntent.setData(Uri.parse("market://search?q=pname:" + c));
        if (!(paramContext instanceof FileExplorerActivity)) {
          break label217;
        }
        ((FileExplorerActivity)paramContext).a(localIntent);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException) {}
    }
    else
    {
      localaa = new aa(f);
      localaa.a(((File)localObject).getPath());
      localaa.a(new an(this, paramHandler, paramContext));
      localaa.c();
      j = true;
      return;
    }
    label217:
    paramContext.startActivity(localaa);
  }
  
  public void a(Handler paramHandler)
  {
    if (a) {
      return;
    }
    aa localaa = new aa(e);
    localaa.a(d() + "image_thumb");
    localaa.a(new am(this, paramHandler));
    localaa.c();
    a = true;
  }
  
  public void a(ProgressTextView paramProgressTextView)
  {
    k = paramProgressTextView;
  }
  
  public boolean a()
  {
    return u;
  }
  
  public boolean a(int paramInt)
  {
    l = paramInt;
    n = null;
    File localFile = new File(d() + "background_h.dat");
    if (localFile.exists()) {
      localFile.delete();
    }
    localFile = new File(d() + "background_v.dat");
    if (localFile.exists()) {
      localFile.delete();
    }
    return g();
  }
  
  public boolean a(Context paramContext, String paramString, boolean paramBoolean)
  {
    o = paramString;
    if (paramBoolean) {
      h(paramContext);
    }
    return g();
  }
  
  public boolean a(String paramString)
  {
    if (paramString != null)
    {
      p = paramString;
      return g();
    }
    return false;
  }
  
  public Drawable b(Context paramContext, Handler paramHandler)
  {
    Drawable localDrawable = null;
    int i1;
    if (b(paramContext))
    {
      paramContext = a(paramContext);
      i1 = paramContext.getResources().getIdentifier("thumbnails", "drawable", c);
    }
    try
    {
      paramContext = paramContext.getResources().getDrawable(i1);
      if (paramContext != null) {}
      do
      {
        return paramContext;
        localDrawable = Drawable.createFromPath(d() + "image_thumb");
        paramContext = localDrawable;
      } while (localDrawable != null);
      a(paramHandler);
      return localDrawable;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext = localDrawable;
      }
    }
  }
  
  public boolean b()
  {
    return t;
  }
  
  public boolean b(int paramInt)
  {
    m = paramInt;
    return g();
  }
  
  public boolean b(Context paramContext)
  {
    if (paramContext.getPackageName().equals(c)) {}
    do
    {
      return true;
      if (c == null) {
        return false;
      }
    } while (at.a(paramContext).d(c) != null);
    return false;
  }
  
  public String c(Context paramContext)
  {
    return "new";
  }
  
  public boolean c()
  {
    return w;
  }
  
  public boolean c(int paramInt)
  {
    q = paramInt;
    return g();
  }
  
  public String d()
  {
    String str = ap.i() + c + "/";
    File localFile = new File(str);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    return str;
  }
  
  public void d(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.DELETE", Uri.fromParts("package", c, null));
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }
  
  public boolean d(int paramInt)
  {
    r = paramInt;
    return g();
  }
  
  public void e(Context paramContext)
  {
    try
    {
      o = null;
      l = Integer.MIN_VALUE;
      m = Integer.MIN_VALUE;
      n = null;
      p = null;
      q = Integer.MIN_VALUE;
      r = Integer.MIN_VALUE;
      s = Integer.MIN_VALUE;
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public boolean e()
  {
    return j;
  }
  
  public boolean e(int paramInt)
  {
    s = paramInt;
    return g();
  }
  
  public void f()
  {
    File localFile = new File(d() + c + h + ".apk");
    if (localFile.exists()) {
      localFile.delete();
    }
  }
  
  public boolean f(Context paramContext)
  {
    boolean bool2 = true;
    boolean bool1 = false;
    for (;;)
    {
      try
      {
        File localFile = new File(d() + "configuration.dat");
        if (localFile.exists())
        {
          localFile.delete();
          bool1 = true;
        }
        localFile = new File(d() + "background_h.dat");
        if (localFile.exists())
        {
          localFile.delete();
          bool1 = true;
        }
        localFile = new File(d() + "background_v.dat");
        if (localFile.exists())
        {
          localFile.delete();
          bool1 = bool2;
          e(paramContext);
          return bool1;
        }
      }
      finally {}
    }
  }
  
  /* Error */
  public boolean g()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 144	java/io/File
    //   5: dup
    //   6: new 244	java/lang/StringBuilder
    //   9: dup
    //   10: invokespecial 245	java/lang/StringBuilder:<init>	()V
    //   13: aload_0
    //   14: invokevirtual 248	com/estrongs/android/ui/theme/al:d	()Ljava/lang/String;
    //   17: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: ldc_w 460
    //   23: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: invokevirtual 260	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: invokespecial 147	java/io/File:<init>	(Ljava/lang/String;)V
    //   32: astore 7
    //   34: aconst_null
    //   35: astore 4
    //   37: aconst_null
    //   38: astore 5
    //   40: aload 4
    //   42: astore_3
    //   43: aload 7
    //   45: invokevirtual 465	java/io/File:createNewFile	()Z
    //   48: pop
    //   49: aload 4
    //   51: astore_3
    //   52: new 65	org/json/simple/JSONObject
    //   55: dup
    //   56: invokespecial 466	org/json/simple/JSONObject:<init>	()V
    //   59: astore 6
    //   61: aload 4
    //   63: astore_3
    //   64: aload_0
    //   65: getfield 372	com/estrongs/android/ui/theme/al:l	I
    //   68: ldc_w 456
    //   71: if_icmpeq +22 -> 93
    //   74: aload 4
    //   76: astore_3
    //   77: aload 6
    //   79: ldc_w 468
    //   82: aload_0
    //   83: getfield 372	com/estrongs/android/ui/theme/al:l	I
    //   86: invokestatic 471	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   89: invokevirtual 475	org/json/simple/JSONObject:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   92: pop
    //   93: aload 4
    //   95: astore_3
    //   96: aload_0
    //   97: getfield 420	com/estrongs/android/ui/theme/al:m	I
    //   100: ldc_w 456
    //   103: if_icmpeq +22 -> 125
    //   106: aload 4
    //   108: astore_3
    //   109: aload 6
    //   111: ldc_w 477
    //   114: aload_0
    //   115: getfield 420	com/estrongs/android/ui/theme/al:m	I
    //   118: invokestatic 471	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   121: invokevirtual 475	org/json/simple/JSONObject:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   124: pop
    //   125: aload 4
    //   127: astore_3
    //   128: aload_0
    //   129: getfield 386	com/estrongs/android/ui/theme/al:o	Ljava/lang/String;
    //   132: ifnull +19 -> 151
    //   135: aload 4
    //   137: astore_3
    //   138: aload 6
    //   140: ldc_w 479
    //   143: aload_0
    //   144: getfield 386	com/estrongs/android/ui/theme/al:o	Ljava/lang/String;
    //   147: invokevirtual 475	org/json/simple/JSONObject:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   150: pop
    //   151: aload 4
    //   153: astore_3
    //   154: aload_0
    //   155: getfield 42	com/estrongs/android/ui/theme/al:p	Ljava/lang/String;
    //   158: ifnull +19 -> 177
    //   161: aload 4
    //   163: astore_3
    //   164: aload 6
    //   166: ldc_w 481
    //   169: aload_0
    //   170: getfield 42	com/estrongs/android/ui/theme/al:p	Ljava/lang/String;
    //   173: invokevirtual 475	org/json/simple/JSONObject:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   176: pop
    //   177: aload 4
    //   179: astore_3
    //   180: aload_0
    //   181: getfield 432	com/estrongs/android/ui/theme/al:q	I
    //   184: ldc_w 456
    //   187: if_icmpeq +22 -> 209
    //   190: aload 4
    //   192: astore_3
    //   193: aload 6
    //   195: ldc_w 483
    //   198: aload_0
    //   199: getfield 432	com/estrongs/android/ui/theme/al:q	I
    //   202: invokestatic 471	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   205: invokevirtual 475	org/json/simple/JSONObject:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   208: pop
    //   209: aload 4
    //   211: astore_3
    //   212: aload_0
    //   213: getfield 455	com/estrongs/android/ui/theme/al:r	I
    //   216: ldc_w 456
    //   219: if_icmpeq +22 -> 241
    //   222: aload 4
    //   224: astore_3
    //   225: aload 6
    //   227: ldc_w 485
    //   230: aload_0
    //   231: getfield 455	com/estrongs/android/ui/theme/al:r	I
    //   234: invokestatic 471	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   237: invokevirtual 475	org/json/simple/JSONObject:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   240: pop
    //   241: aload 4
    //   243: astore_3
    //   244: aload_0
    //   245: getfield 458	com/estrongs/android/ui/theme/al:s	I
    //   248: ldc_w 456
    //   251: if_icmpeq +22 -> 273
    //   254: aload 4
    //   256: astore_3
    //   257: aload 6
    //   259: ldc_w 487
    //   262: aload_0
    //   263: getfield 458	com/estrongs/android/ui/theme/al:s	I
    //   266: invokestatic 471	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   269: invokevirtual 475	org/json/simple/JSONObject:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   272: pop
    //   273: aload 4
    //   275: astore_3
    //   276: new 489	java/io/FileWriter
    //   279: dup
    //   280: aload 7
    //   282: invokespecial 492	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   285: astore 4
    //   287: aload 4
    //   289: aload 6
    //   291: invokevirtual 493	org/json/simple/JSONObject:toString	()Ljava/lang/String;
    //   294: invokevirtual 495	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   297: aload 4
    //   299: invokevirtual 498	java/io/FileWriter:flush	()V
    //   302: aload 6
    //   304: invokevirtual 501	org/json/simple/JSONObject:clear	()V
    //   307: iconst_1
    //   308: istore_2
    //   309: iload_2
    //   310: istore_1
    //   311: aload 4
    //   313: ifnull +10 -> 323
    //   316: aload 4
    //   318: invokevirtual 502	java/io/FileWriter:close	()V
    //   321: iload_2
    //   322: istore_1
    //   323: aload_0
    //   324: monitorexit
    //   325: iload_1
    //   326: ireturn
    //   327: astore_3
    //   328: aload_3
    //   329: invokevirtual 239	java/io/IOException:printStackTrace	()V
    //   332: iload_2
    //   333: istore_1
    //   334: goto -11 -> 323
    //   337: astore_3
    //   338: aload_0
    //   339: monitorexit
    //   340: aload_3
    //   341: athrow
    //   342: astore_3
    //   343: aload 5
    //   345: astore 4
    //   347: aload_3
    //   348: astore 5
    //   350: aload 4
    //   352: astore_3
    //   353: aload 5
    //   355: invokevirtual 239	java/io/IOException:printStackTrace	()V
    //   358: iconst_0
    //   359: istore_2
    //   360: iload_2
    //   361: istore_1
    //   362: aload 4
    //   364: ifnull -41 -> 323
    //   367: aload 4
    //   369: invokevirtual 502	java/io/FileWriter:close	()V
    //   372: iload_2
    //   373: istore_1
    //   374: goto -51 -> 323
    //   377: astore_3
    //   378: aload_3
    //   379: invokevirtual 239	java/io/IOException:printStackTrace	()V
    //   382: iload_2
    //   383: istore_1
    //   384: goto -61 -> 323
    //   387: astore 5
    //   389: aload_3
    //   390: astore 4
    //   392: aload 5
    //   394: astore_3
    //   395: aload 4
    //   397: ifnull +8 -> 405
    //   400: aload 4
    //   402: invokevirtual 502	java/io/FileWriter:close	()V
    //   405: aload_3
    //   406: athrow
    //   407: astore 4
    //   409: aload 4
    //   411: invokevirtual 239	java/io/IOException:printStackTrace	()V
    //   414: goto -9 -> 405
    //   417: astore_3
    //   418: goto -23 -> 395
    //   421: astore 5
    //   423: goto -73 -> 350
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	426	0	this	al
    //   310	74	1	bool1	boolean
    //   308	75	2	bool2	boolean
    //   42	234	3	localObject1	Object
    //   327	2	3	localIOException1	java.io.IOException
    //   337	4	3	localObject2	Object
    //   342	6	3	localIOException2	java.io.IOException
    //   352	1	3	localObject3	Object
    //   377	13	3	localIOException3	java.io.IOException
    //   394	12	3	localObject4	Object
    //   417	1	3	localObject5	Object
    //   35	366	4	localObject6	Object
    //   407	3	4	localIOException4	java.io.IOException
    //   38	316	5	localObject7	Object
    //   387	6	5	localObject8	Object
    //   421	1	5	localIOException5	java.io.IOException
    //   59	244	6	localJSONObject	JSONObject
    //   32	249	7	localFile	File
    // Exception table:
    //   from	to	target	type
    //   316	321	327	java/io/IOException
    //   2	34	337	finally
    //   316	321	337	finally
    //   328	332	337	finally
    //   367	372	337	finally
    //   378	382	337	finally
    //   400	405	337	finally
    //   405	407	337	finally
    //   409	414	337	finally
    //   43	49	342	java/io/IOException
    //   52	61	342	java/io/IOException
    //   64	74	342	java/io/IOException
    //   77	93	342	java/io/IOException
    //   96	106	342	java/io/IOException
    //   109	125	342	java/io/IOException
    //   128	135	342	java/io/IOException
    //   138	151	342	java/io/IOException
    //   154	161	342	java/io/IOException
    //   164	177	342	java/io/IOException
    //   180	190	342	java/io/IOException
    //   193	209	342	java/io/IOException
    //   212	222	342	java/io/IOException
    //   225	241	342	java/io/IOException
    //   244	254	342	java/io/IOException
    //   257	273	342	java/io/IOException
    //   276	287	342	java/io/IOException
    //   367	372	377	java/io/IOException
    //   43	49	387	finally
    //   52	61	387	finally
    //   64	74	387	finally
    //   77	93	387	finally
    //   96	106	387	finally
    //   109	125	387	finally
    //   128	135	387	finally
    //   138	151	387	finally
    //   154	161	387	finally
    //   164	177	387	finally
    //   180	190	387	finally
    //   193	209	387	finally
    //   212	222	387	finally
    //   225	241	387	finally
    //   244	254	387	finally
    //   257	273	387	finally
    //   276	287	387	finally
    //   353	358	387	finally
    //   400	405	407	java/io/IOException
    //   287	307	417	finally
    //   287	307	421	java/io/IOException
  }
  
  public String h()
  {
    return o;
  }
  
  public int i()
  {
    return m;
  }
  
  public int j()
  {
    return l;
  }
  
  public int k()
  {
    return q;
  }
  
  public int l()
  {
    return r;
  }
  
  public int m()
  {
    return s;
  }
  
  public void n()
  {
    if (n != null)
    {
      if (!n.isRecycled()) {}
      n = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */