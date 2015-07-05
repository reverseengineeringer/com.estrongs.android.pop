package com.estrongs.android.ui.theme;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.util.am;
import com.estrongs.android.util.y;
import com.estrongs.android.widget.ProgressTextView;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import org.json.simple.JSONObject;

public class ai
{
  public static String a;
  public String b;
  public String c;
  public String d;
  public String e;
  public String f;
  public int g;
  private boolean h = false;
  private boolean i = false;
  private boolean j = false;
  private ProgressTextView k;
  private int l;
  private int m;
  private BitmapDrawable n;
  private String o;
  private long p = 0L;
  
  public static ai a(JSONObject paramJSONObject)
  {
    ai localai = new ai();
    c = ((String)paramJSONObject.get("title"));
    b = ((String)paramJSONObject.get("package"));
    e = ((String)paramJSONObject.get("url"));
    d = ((String)paramJSONObject.get("icon"));
    f = ((String)paramJSONObject.get("pic"));
    g = Integer.parseInt((String)paramJSONObject.get("vcode"));
    localai.e();
    return localai;
  }
  
  /* Error */
  public static java.util.List<ai> a(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: new 93	java/io/File
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 96	java/io/File:<init>	(Ljava/lang/String;)V
    //   10: astore_0
    //   11: aload_0
    //   12: invokevirtual 100	java/io/File:exists	()Z
    //   15: ifne +9 -> 24
    //   18: aconst_null
    //   19: putstatic 102	com/estrongs/android/ui/theme/ai:a	Ljava/lang/String;
    //   22: aconst_null
    //   23: areturn
    //   24: aload_0
    //   25: invokevirtual 106	java/io/File:length	()J
    //   28: invokestatic 112	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   31: invokevirtual 116	java/lang/Long:intValue	()I
    //   34: istore_2
    //   35: iload_2
    //   36: newarray <illegal type>
    //   38: astore_3
    //   39: new 118	java/io/RandomAccessFile
    //   42: dup
    //   43: aload_0
    //   44: ldc 120
    //   46: invokespecial 123	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   49: astore_0
    //   50: aload_0
    //   51: aload_3
    //   52: iconst_0
    //   53: iload_2
    //   54: invokevirtual 127	java/io/RandomAccessFile:read	([BII)I
    //   57: pop
    //   58: aload_0
    //   59: invokevirtual 130	java/io/RandomAccessFile:close	()V
    //   62: new 132	java/io/ByteArrayOutputStream
    //   65: dup
    //   66: invokespecial 133	java/io/ByteArrayOutputStream:<init>	()V
    //   69: astore_0
    //   70: new 135	java/util/zip/InflaterInputStream
    //   73: dup
    //   74: new 137	java/io/ByteArrayInputStream
    //   77: dup
    //   78: aload_3
    //   79: invokespecial 140	java/io/ByteArrayInputStream:<init>	([B)V
    //   82: invokespecial 143	java/util/zip/InflaterInputStream:<init>	(Ljava/io/InputStream;)V
    //   85: astore_3
    //   86: sipush 1024
    //   89: newarray <illegal type>
    //   91: astore 4
    //   93: aload_3
    //   94: aload 4
    //   96: iconst_0
    //   97: sipush 1024
    //   100: invokevirtual 144	java/util/zip/InflaterInputStream:read	([BII)I
    //   103: istore_2
    //   104: iload_2
    //   105: ifle +27 -> 132
    //   108: aload_0
    //   109: aload 4
    //   111: iconst_0
    //   112: iload_2
    //   113: invokevirtual 148	java/io/ByteArrayOutputStream:write	([BII)V
    //   116: goto -23 -> 93
    //   119: astore_3
    //   120: aconst_null
    //   121: astore_0
    //   122: aload_3
    //   123: invokevirtual 151	java/io/FileNotFoundException:printStackTrace	()V
    //   126: aconst_null
    //   127: putstatic 102	com/estrongs/android/ui/theme/ai:a	Ljava/lang/String;
    //   130: aload_0
    //   131: areturn
    //   132: aload_3
    //   133: invokevirtual 152	java/util/zip/InflaterInputStream:close	()V
    //   136: new 51	java/lang/String
    //   139: dup
    //   140: aload_0
    //   141: invokevirtual 156	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   144: invokespecial 157	java/lang/String:<init>	([B)V
    //   147: astore_3
    //   148: aload_0
    //   149: invokevirtual 158	java/io/ByteArrayOutputStream:close	()V
    //   152: new 160	org/json/simple/parser/JSONParser
    //   155: dup
    //   156: invokespecial 161	org/json/simple/parser/JSONParser:<init>	()V
    //   159: aload_3
    //   160: invokevirtual 165	org/json/simple/parser/JSONParser:parse	(Ljava/lang/String;)Ljava/lang/Object;
    //   163: astore_0
    //   164: aload_0
    //   165: checkcast 45	org/json/simple/JSONObject
    //   168: ldc -89
    //   170: invokevirtual 49	org/json/simple/JSONObject:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   173: checkcast 51	java/lang/String
    //   176: putstatic 102	com/estrongs/android/ui/theme/ai:a	Ljava/lang/String;
    //   179: aload_0
    //   180: checkcast 45	org/json/simple/JSONObject
    //   183: ldc -87
    //   185: invokevirtual 49	org/json/simple/JSONObject:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   188: astore_0
    //   189: aload_0
    //   190: instanceof 171
    //   193: ifeq +101 -> 294
    //   196: aload_0
    //   197: checkcast 171	org/json/simple/JSONArray
    //   200: astore_3
    //   201: new 173	java/util/ArrayList
    //   204: dup
    //   205: invokespecial 174	java/util/ArrayList:<init>	()V
    //   208: astore_0
    //   209: iload_1
    //   210: aload_3
    //   211: invokevirtual 177	org/json/simple/JSONArray:size	()I
    //   214: if_icmpge +77 -> 291
    //   217: aload_3
    //   218: iload_1
    //   219: invokevirtual 180	org/json/simple/JSONArray:get	(I)Ljava/lang/Object;
    //   222: checkcast 45	org/json/simple/JSONObject
    //   225: invokestatic 182	com/estrongs/android/ui/theme/ai:a	(Lorg/json/simple/JSONObject;)Lcom/estrongs/android/ui/theme/ai;
    //   228: astore 4
    //   230: aload 4
    //   232: ifnull +12 -> 244
    //   235: aload_0
    //   236: aload 4
    //   238: invokeinterface 188 2 0
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
    //   255: invokevirtual 189	java/io/IOException:printStackTrace	()V
    //   258: aconst_null
    //   259: putstatic 102	com/estrongs/android/ui/theme/ai:a	Ljava/lang/String;
    //   262: goto -132 -> 130
    //   265: astore_3
    //   266: aconst_null
    //   267: astore_0
    //   268: aload_3
    //   269: invokevirtual 190	org/json/simple/parser/ParseException:printStackTrace	()V
    //   272: aconst_null
    //   273: putstatic 102	com/estrongs/android/ui/theme/ai:a	Ljava/lang/String;
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
    //   251	4	3	localIOException1	IOException
    //   265	4	3	localParseException1	org.json.simple.parser.ParseException
    //   279	1	3	localParseException2	org.json.simple.parser.ParseException
    //   283	1	3	localIOException2	IOException
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
  
  private BitmapDrawable b(Context paramContext, int paramInt)
  {
    Object localObject = al.a(paramContext);
    BitmapDrawable localBitmapDrawable = (BitmapDrawable)((al)localObject).a(paramInt);
    localObject = a.a((BitmapDrawable)((al)localObject).k(), localBitmapDrawable);
    return new BitmapDrawable(paramContext.getResources(), (Bitmap)localObject);
  }
  
  private void d(Context paramContext)
  {
    File localFile = new File(a() + b + g + ".apk");
    if (!localFile.exists()) {
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(localFile), "application/vnd.android.package-archive");
    paramContext.startActivity(localIntent);
  }
  
  private void e(Context paramContext)
  {
    b(paramContext, 2130837918);
    b(paramContext, 2130837868);
    b(paramContext, 2130838067);
    b(paramContext, 2130837614);
    b(paramContext, 2130837667);
    b(paramContext, 2130837928);
    b(paramContext, 2130838130);
    b(paramContext, 2130837921);
  }
  
  private String l()
  {
    if (agetResourcesgetConfigurationorientation == 2) {
      return "background_h.dat";
    }
    return "background_v.dat";
  }
  
  public Context a(Context paramContext)
  {
    try
    {
      Context localContext = paramContext.createPackageContext(b, 2);
      return localContext;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return paramContext;
  }
  
  public BitmapDrawable a(Context paramContext, int paramInt)
  {
    return b(paramContext, paramInt);
  }
  
  public Drawable a(Context paramContext, Handler paramHandler)
  {
    Drawable localDrawable = null;
    int i1;
    if (b(paramContext))
    {
      paramContext = a(paramContext);
      i1 = paramContext.getResources().getIdentifier("thumbnails", "drawable", b);
    }
    try
    {
      paramContext = paramContext.getResources().getDrawable(i1);
      if (paramContext != null) {}
      do
      {
        return paramContext;
        localDrawable = Drawable.createFromPath(a() + "image_thumb");
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
  
  public String a()
  {
    String str = am.i() + b + "/";
    File localFile = new File(str);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    return str;
  }
  
  public void a(int paramInt)
  {
    l = paramInt;
    n = null;
    File localFile = new File(a() + l());
    if (localFile.exists()) {
      localFile.delete();
    }
    d();
  }
  
  public void a(Context paramContext, String paramString, boolean paramBoolean)
  {
    o = paramString;
    d();
    if (paramBoolean) {
      e(paramContext);
    }
  }
  
  public void a(Handler paramHandler)
  {
    if (h) {
      return;
    }
    y localy = new y(d);
    localy.a(a() + "image_thumb");
    localy.a(new aj(this, paramHandler));
    localy.c();
    h = true;
  }
  
  public void a(ProgressTextView paramProgressTextView)
  {
    k = paramProgressTextView;
  }
  
  public void b(int paramInt)
  {
    m = paramInt;
    d();
  }
  
  public void b(Context paramContext, Handler paramHandler)
  {
    Object localObject = new File(a() + b + g + ".apk");
    if (((File)localObject).exists())
    {
      if (paramHandler != null)
      {
        localObject = new Message();
        what = 12;
        obj = b;
        paramHandler.sendMessage((Message)localObject);
      }
      d(paramContext);
    }
    while (j) {
      return;
    }
    y localy;
    if (FexApplication.a().m())
    {
      try
      {
        Intent localIntent = new Intent("android.intent.action.VIEW");
        localIntent.setData(Uri.parse("market://search?q=pname:" + b));
        if (!(paramContext instanceof FileExplorerActivity)) {
          break label215;
        }
        ((FileExplorerActivity)paramContext).a(localIntent);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException) {}
    }
    else
    {
      localy = new y(e);
      localy.a(((File)localObject).getPath());
      localy.a(new ak(this, paramHandler, paramContext));
      localy.c();
      j = true;
      return;
    }
    label215:
    paramContext.startActivity(localy);
  }
  
  public boolean b()
  {
    return j;
  }
  
  public boolean b(Context paramContext)
  {
    if (paramContext.getPackageName().equals(b)) {}
    do
    {
      return true;
      if (b == null) {
        return false;
      }
    } while (al.a(paramContext).d(b) != null);
    return false;
  }
  
  public void c()
  {
    File localFile = new File(a() + b + g + ".apk");
    if (localFile.exists()) {
      localFile.delete();
    }
  }
  
  public void c(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.DELETE", Uri.fromParts("package", b, null));
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }
  
  public void d()
  {
    try
    {
      Object localObject2 = new File(a() + "configuration.dat");
      try
      {
        ((File)localObject2).createNewFile();
        JSONObject localJSONObject = new JSONObject();
        if (l != Integer.MIN_VALUE) {
          localJSONObject.put("background_color", Integer.valueOf(l));
        }
        if (m != Integer.MIN_VALUE) {
          localJSONObject.put("text_color", Integer.valueOf(m));
        }
        if (o != null) {
          localJSONObject.put("folder_style_name", o);
        }
        localObject2 = new FileWriter((File)localObject2);
        ((FileWriter)localObject2).write(localJSONObject.toString());
        ((FileWriter)localObject2).flush();
        ((FileWriter)localObject2).close();
        localJSONObject.clear();
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          localIOException.printStackTrace();
        }
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  public void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aconst_null
    //   4: putfield 361	com/estrongs/android/ui/theme/ai:o	Ljava/lang/String;
    //   7: aload_0
    //   8: ldc_w 451
    //   11: putfield 349	com/estrongs/android/ui/theme/ai:l	I
    //   14: aload_0
    //   15: ldc_w 451
    //   18: putfield 381	com/estrongs/android/ui/theme/ai:m	I
    //   21: aload_0
    //   22: aconst_null
    //   23: putfield 351	com/estrongs/android/ui/theme/ai:n	Landroid/graphics/drawable/BitmapDrawable;
    //   26: new 93	java/io/File
    //   29: dup
    //   30: new 227	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 228	java/lang/StringBuilder:<init>	()V
    //   37: aload_0
    //   38: invokevirtual 231	com/estrongs/android/ui/theme/ai:a	()Ljava/lang/String;
    //   41: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: ldc_w 446
    //   47: invokevirtual 235	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: invokevirtual 243	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   53: invokespecial 96	java/io/File:<init>	(Ljava/lang/String;)V
    //   56: astore_3
    //   57: aload_3
    //   58: invokevirtual 100	java/io/File:exists	()Z
    //   61: istore_2
    //   62: iload_2
    //   63: ifeq +37 -> 100
    //   66: new 160	org/json/simple/parser/JSONParser
    //   69: dup
    //   70: invokespecial 161	org/json/simple/parser/JSONParser:<init>	()V
    //   73: astore 4
    //   75: new 481	java/io/FileReader
    //   78: dup
    //   79: aload_3
    //   80: invokespecial 482	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   83: astore_3
    //   84: aload 4
    //   86: aload_3
    //   87: invokevirtual 485	org/json/simple/parser/JSONParser:parse	(Ljava/io/Reader;)Ljava/lang/Object;
    //   90: checkcast 45	org/json/simple/JSONObject
    //   93: astore 4
    //   95: aload 4
    //   97: ifnonnull +6 -> 103
    //   100: aload_0
    //   101: monitorexit
    //   102: return
    //   103: aload 4
    //   105: ldc_w 453
    //   108: invokevirtual 488	org/json/simple/JSONObject:containsKey	(Ljava/lang/Object;)Z
    //   111: ifeq +30 -> 141
    //   114: aload 4
    //   116: ldc_w 453
    //   119: invokevirtual 49	org/json/simple/JSONObject:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   122: invokevirtual 489	java/lang/Object:toString	()Ljava/lang/String;
    //   125: invokestatic 77	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   128: istore_1
    //   129: iload_1
    //   130: ldc_w 451
    //   133: if_icmpeq +8 -> 141
    //   136: aload_0
    //   137: iload_1
    //   138: putfield 349	com/estrongs/android/ui/theme/ai:l	I
    //   141: aload 4
    //   143: ldc_w 462
    //   146: invokevirtual 488	org/json/simple/JSONObject:containsKey	(Ljava/lang/Object;)Z
    //   149: ifeq +30 -> 179
    //   152: aload 4
    //   154: ldc_w 462
    //   157: invokevirtual 49	org/json/simple/JSONObject:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   160: invokevirtual 489	java/lang/Object:toString	()Ljava/lang/String;
    //   163: invokestatic 77	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   166: istore_1
    //   167: iload_1
    //   168: ldc_w 451
    //   171: if_icmpeq +8 -> 179
    //   174: aload_0
    //   175: iload_1
    //   176: putfield 381	com/estrongs/android/ui/theme/ai:m	I
    //   179: aload 4
    //   181: ldc_w 464
    //   184: invokevirtual 488	org/json/simple/JSONObject:containsKey	(Ljava/lang/Object;)Z
    //   187: ifeq +27 -> 214
    //   190: aload 4
    //   192: ldc_w 464
    //   195: invokevirtual 49	org/json/simple/JSONObject:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   198: astore 5
    //   200: aload 5
    //   202: ifnull +12 -> 214
    //   205: aload_0
    //   206: aload 5
    //   208: invokevirtual 489	java/lang/Object:toString	()Ljava/lang/String;
    //   211: putfield 361	com/estrongs/android/ui/theme/ai:o	Ljava/lang/String;
    //   214: aload 4
    //   216: invokevirtual 479	org/json/simple/JSONObject:clear	()V
    //   219: aload_3
    //   220: invokevirtual 490	java/io/FileReader:close	()V
    //   223: goto -123 -> 100
    //   226: astore_3
    //   227: aload_3
    //   228: invokevirtual 151	java/io/FileNotFoundException:printStackTrace	()V
    //   231: goto -131 -> 100
    //   234: astore_3
    //   235: aload_0
    //   236: monitorexit
    //   237: aload_3
    //   238: athrow
    //   239: astore_3
    //   240: aload_3
    //   241: invokevirtual 189	java/io/IOException:printStackTrace	()V
    //   244: goto -144 -> 100
    //   247: astore_3
    //   248: aload_3
    //   249: invokevirtual 190	org/json/simple/parser/ParseException:printStackTrace	()V
    //   252: goto -152 -> 100
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	255	0	this	ai
    //   128	48	1	i1	int
    //   61	2	2	bool	boolean
    //   56	164	3	localObject1	Object
    //   226	2	3	localFileNotFoundException	java.io.FileNotFoundException
    //   234	4	3	localObject2	Object
    //   239	2	3	localIOException	IOException
    //   247	2	3	localParseException	org.json.simple.parser.ParseException
    //   73	142	4	localObject3	Object
    //   198	9	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   66	95	226	java/io/FileNotFoundException
    //   103	129	226	java/io/FileNotFoundException
    //   136	141	226	java/io/FileNotFoundException
    //   141	167	226	java/io/FileNotFoundException
    //   174	179	226	java/io/FileNotFoundException
    //   179	200	226	java/io/FileNotFoundException
    //   205	214	226	java/io/FileNotFoundException
    //   214	223	226	java/io/FileNotFoundException
    //   2	62	234	finally
    //   66	95	234	finally
    //   103	129	234	finally
    //   136	141	234	finally
    //   141	167	234	finally
    //   174	179	234	finally
    //   179	200	234	finally
    //   205	214	234	finally
    //   214	223	234	finally
    //   227	231	234	finally
    //   240	244	234	finally
    //   248	252	234	finally
    //   66	95	239	java/io/IOException
    //   103	129	239	java/io/IOException
    //   136	141	239	java/io/IOException
    //   141	167	239	java/io/IOException
    //   174	179	239	java/io/IOException
    //   179	200	239	java/io/IOException
    //   205	214	239	java/io/IOException
    //   214	223	239	java/io/IOException
    //   66	95	247	org/json/simple/parser/ParseException
    //   103	129	247	org/json/simple/parser/ParseException
    //   136	141	247	org/json/simple/parser/ParseException
    //   141	167	247	org/json/simple/parser/ParseException
    //   174	179	247	org/json/simple/parser/ParseException
    //   179	200	247	org/json/simple/parser/ParseException
    //   205	214	247	org/json/simple/parser/ParseException
    //   214	223	247	org/json/simple/parser/ParseException
  }
  
  public boolean f()
  {
    boolean bool2 = true;
    boolean bool1 = false;
    for (;;)
    {
      try
      {
        File localFile = new File(a() + "configuration.dat");
        if (localFile.exists())
        {
          localFile.delete();
          bool1 = true;
        }
        localFile = new File(a() + l());
        if (localFile.exists())
        {
          localFile.delete();
          bool1 = bool2;
          e();
          return bool1;
        }
      }
      finally {}
    }
  }
  
  public String g()
  {
    return o;
  }
  
  public Drawable h()
  {
    Object localObject = new File(a() + l());
    if ((!((File)localObject).exists()) || (((n != null) && (p == ((File)localObject).lastModified())) || (n != null))) {}
    try
    {
      n.getBitmap().recycle();
      n = null;
      try
      {
        n = ((BitmapDrawable)Drawable.createFromPath(((File)localObject).getAbsolutePath()));
        p = ((File)localObject).lastModified();
        if (n != null)
        {
          n.setTileModeXY(Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
          localObject = n;
        }
        ColorDrawable localColorDrawable;
        do
        {
          return (Drawable)localObject;
          if (l == Integer.MIN_VALUE) {
            break;
          }
          localColorDrawable = new ColorDrawable(l);
          localObject = localColorDrawable;
        } while (localColorDrawable != null);
        return null;
      }
      catch (Throwable localThrowable)
      {
        for (;;) {}
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public int i()
  {
    return m;
  }
  
  public int j()
  {
    return l;
  }
  
  public void k()
  {
    if (n != null)
    {
      Bitmap localBitmap = n.getBitmap();
      if ((localBitmap != null) && (!localBitmap.isRecycled())) {}
      n = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */