package com.estrongs.android.ui.g;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import com.estrongs.android.util.am;
import com.estrongs.android.util.y;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import org.json.simple.JSONObject;

public class c
{
  private int a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private Bitmap h;
  private int i = 100;
  private int j;
  private boolean k = false;
  private boolean l = false;
  private y m;
  private String n;
  private boolean o = false;
  private f p;
  
  public static c a(JSONObject paramJSONObject)
  {
    c localc = new c();
    a = Integer.parseInt(paramJSONObject.get("id").toString());
    b = ((String)paramJSONObject.get("app_name"));
    c = ((String)paramJSONObject.get("package_name"));
    g = ((String)paramJSONObject.get("download_url"));
    f = ((String)paramJSONObject.get("description"));
    e = ((String)paramJSONObject.get("summary"));
    d = ((String)paramJSONObject.get("icon"));
    i = Integer.parseInt(paramJSONObject.get("notify_gate").toString());
    j = Integer.parseInt(paramJSONObject.get("weight").toString());
    return localc;
  }
  
  /* Error */
  public static java.util.List<c> b(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: new 107	java/io/File
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 110	java/io/File:<init>	(Ljava/lang/String;)V
    //   10: astore_0
    //   11: aload_0
    //   12: invokevirtual 114	java/io/File:exists	()Z
    //   15: ifne +5 -> 20
    //   18: aconst_null
    //   19: areturn
    //   20: aload_0
    //   21: invokevirtual 118	java/io/File:length	()J
    //   24: invokestatic 124	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   27: invokevirtual 128	java/lang/Long:intValue	()I
    //   30: istore_2
    //   31: iload_2
    //   32: newarray <illegal type>
    //   34: astore_3
    //   35: new 130	java/io/RandomAccessFile
    //   38: dup
    //   39: aload_0
    //   40: ldc -124
    //   42: invokespecial 135	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   45: astore_0
    //   46: aload_0
    //   47: aload_3
    //   48: iconst_0
    //   49: iload_2
    //   50: invokevirtual 139	java/io/RandomAccessFile:read	([BII)I
    //   53: pop
    //   54: aload_0
    //   55: invokevirtual 142	java/io/RandomAccessFile:close	()V
    //   58: new 144	java/io/ByteArrayOutputStream
    //   61: dup
    //   62: invokespecial 145	java/io/ByteArrayOutputStream:<init>	()V
    //   65: astore_0
    //   66: new 147	java/io/ByteArrayInputStream
    //   69: dup
    //   70: aload_3
    //   71: invokespecial 150	java/io/ByteArrayInputStream:<init>	([B)V
    //   74: astore_3
    //   75: sipush 1024
    //   78: newarray <illegal type>
    //   80: astore 4
    //   82: aload_3
    //   83: aload 4
    //   85: iconst_0
    //   86: sipush 1024
    //   89: invokevirtual 151	java/io/ByteArrayInputStream:read	([BII)I
    //   92: istore_2
    //   93: iload_2
    //   94: ifle +23 -> 117
    //   97: aload_0
    //   98: aload 4
    //   100: iconst_0
    //   101: iload_2
    //   102: invokevirtual 155	java/io/ByteArrayOutputStream:write	([BII)V
    //   105: goto -23 -> 82
    //   108: astore_3
    //   109: aconst_null
    //   110: astore_0
    //   111: aload_3
    //   112: invokevirtual 158	java/io/FileNotFoundException:printStackTrace	()V
    //   115: aload_0
    //   116: areturn
    //   117: new 65	java/lang/String
    //   120: dup
    //   121: aload_0
    //   122: invokevirtual 162	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   125: invokespecial 163	java/lang/String:<init>	([B)V
    //   128: astore_3
    //   129: aload_0
    //   130: invokevirtual 164	java/io/ByteArrayOutputStream:close	()V
    //   133: new 166	org/json/simple/parser/JSONParser
    //   136: dup
    //   137: invokespecial 167	org/json/simple/parser/JSONParser:<init>	()V
    //   140: aload_3
    //   141: invokevirtual 171	org/json/simple/parser/JSONParser:parse	(Ljava/lang/String;)Ljava/lang/Object;
    //   144: checkcast 173	org/json/simple/JSONArray
    //   147: astore_3
    //   148: aload_3
    //   149: instanceof 173
    //   152: ifeq +88 -> 240
    //   155: new 175	java/util/ArrayList
    //   158: dup
    //   159: invokespecial 176	java/util/ArrayList:<init>	()V
    //   162: astore_0
    //   163: iload_1
    //   164: aload_3
    //   165: invokevirtual 179	org/json/simple/JSONArray:size	()I
    //   168: if_icmpge +69 -> 237
    //   171: aload_3
    //   172: iload_1
    //   173: invokevirtual 182	org/json/simple/JSONArray:get	(I)Ljava/lang/Object;
    //   176: checkcast 45	org/json/simple/JSONObject
    //   179: invokestatic 184	com/estrongs/android/ui/g/c:a	(Lorg/json/simple/JSONObject;)Lcom/estrongs/android/ui/g/c;
    //   182: astore 4
    //   184: aload 4
    //   186: ifnull +12 -> 198
    //   189: aload_0
    //   190: aload 4
    //   192: invokeinterface 190 2 0
    //   197: pop
    //   198: iload_1
    //   199: iconst_1
    //   200: iadd
    //   201: istore_1
    //   202: goto -39 -> 163
    //   205: astore_3
    //   206: aconst_null
    //   207: astore_0
    //   208: aload_3
    //   209: invokevirtual 191	java/io/IOException:printStackTrace	()V
    //   212: goto -97 -> 115
    //   215: astore_3
    //   216: aconst_null
    //   217: astore_0
    //   218: aload_3
    //   219: invokevirtual 192	org/json/simple/parser/ParseException:printStackTrace	()V
    //   222: goto -107 -> 115
    //   225: astore_3
    //   226: goto -8 -> 218
    //   229: astore_3
    //   230: goto -22 -> 208
    //   233: astore_3
    //   234: goto -123 -> 111
    //   237: goto -122 -> 115
    //   240: aconst_null
    //   241: astore_0
    //   242: goto -127 -> 115
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	245	0	paramString	String
    //   1	201	1	i1	int
    //   30	72	2	i2	int
    //   34	49	3	localObject1	Object
    //   108	4	3	localFileNotFoundException1	java.io.FileNotFoundException
    //   128	44	3	localObject2	Object
    //   205	4	3	localIOException1	IOException
    //   215	4	3	localParseException1	org.json.simple.parser.ParseException
    //   225	1	3	localParseException2	org.json.simple.parser.ParseException
    //   229	1	3	localIOException2	IOException
    //   233	1	3	localFileNotFoundException2	java.io.FileNotFoundException
    //   80	111	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   11	18	108	java/io/FileNotFoundException
    //   20	82	108	java/io/FileNotFoundException
    //   82	93	108	java/io/FileNotFoundException
    //   97	105	108	java/io/FileNotFoundException
    //   117	163	108	java/io/FileNotFoundException
    //   11	18	205	java/io/IOException
    //   20	82	205	java/io/IOException
    //   82	93	205	java/io/IOException
    //   97	105	205	java/io/IOException
    //   117	163	205	java/io/IOException
    //   11	18	215	org/json/simple/parser/ParseException
    //   20	82	215	org/json/simple/parser/ParseException
    //   82	93	215	org/json/simple/parser/ParseException
    //   97	105	215	org/json/simple/parser/ParseException
    //   117	163	215	org/json/simple/parser/ParseException
    //   163	184	225	org/json/simple/parser/ParseException
    //   189	198	225	org/json/simple/parser/ParseException
    //   163	184	229	java/io/IOException
    //   189	198	229	java/io/IOException
    //   163	184	233	java/io/FileNotFoundException
    //   189	198	233	java/io/FileNotFoundException
  }
  
  private String j(Context paramContext)
  {
    String str = c;
    return am.b(paramContext) + str;
  }
  
  public Bitmap a(Context paramContext)
  {
    if (h != null) {
      return h;
    }
    paramContext = j(paramContext) + "/icon";
    if (new File(paramContext).exists()) {
      h = BitmapFactory.decodeFile(paramContext);
    }
    return h;
  }
  
  public String a()
  {
    return b;
  }
  
  public void a(Context paramContext, Handler paramHandler)
  {
    if (l) {
      return;
    }
    String str = c + ".apk";
    str = j(paramContext) + "/" + str;
    m = new y(g);
    m.a(str);
    paramContext = new e(this, paramHandler, paramContext);
    m.a(paramContext);
    m.c();
    l = true;
  }
  
  public void a(String paramString)
  {
    g = paramString;
  }
  
  public String b()
  {
    return c;
  }
  
  public boolean b(Context paramContext)
  {
    return new File(j(paramContext) + "/icon").exists();
  }
  
  public String c()
  {
    return e;
  }
  
  public void c(Context paramContext)
  {
    if (k) {}
    do
    {
      return;
      paramContext = j(paramContext) + "/icon";
    } while (new File(paramContext).exists());
    y localy = new y(d);
    localy.a(paramContext);
    localy.a(new d(this));
    localy.c();
    k = true;
  }
  
  public String d()
  {
    return f;
  }
  
  public boolean d(Context paramContext)
  {
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext = paramContext.getPackageInfo(c, 1);
      if (paramContext != null) {
        return true;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  public int e()
  {
    return i;
  }
  
  public void e(Context paramContext)
  {
    Object localObject = c + ".apk";
    localObject = new File(j(paramContext) + "/" + (String)localObject);
    if (!((File)localObject).exists()) {}
    do
    {
      return;
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.addFlags(268435456);
      localIntent.setDataAndType(Uri.fromFile((File)localObject), "application/vnd.android.package-archive");
      paramContext.startActivity(localIntent);
      localObject = new IntentFilter("android.intent.action.PACKAGE_ADDED");
      ((IntentFilter)localObject).addDataScheme("package");
    } while (p != null);
    p = new f(this, paramContext);
    paramContext.registerReceiver(p, (IntentFilter)localObject);
  }
  
  public int f()
  {
    return j;
  }
  
  public boolean f(Context paramContext)
  {
    return new File(j(paramContext) + "/" + ".skip").exists();
  }
  
  public void g(Context paramContext)
  {
    paramContext = new File(j(paramContext) + "/" + ".skip");
    try
    {
      paramContext.createNewFile();
      return;
    }
    catch (IOException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public boolean g()
  {
    return c.startsWith("action_");
  }
  
  public void h()
  {
    if (m != null)
    {
      m.a(null);
      m.b();
      l = false;
    }
  }
  
  public void h(Context paramContext)
  {
    paramContext = new File(j(paramContext) + "/" + ".lastTime");
    try
    {
      if (!paramContext.exists()) {
        paramContext.createNewFile();
      }
      paramContext = new FileWriter(paramContext);
      BufferedWriter localBufferedWriter = new BufferedWriter(paramContext);
      long l1 = 86400000L;
      if (g()) {
        l1 = 86400000L * 3L;
      }
      localBufferedWriter.write("" + (l1 + System.currentTimeMillis()));
      localBufferedWriter.flush();
      localBufferedWriter.close();
      paramContext.close();
      return;
    }
    catch (IOException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public void i()
  {
    if (h != null)
    {
      h.recycle();
      h = null;
    }
    if (p != null)
    {
      p.a();
      p = null;
    }
  }
  
  public boolean i(Context paramContext)
  {
    paramContext = new File(j(paramContext) + "/" + ".lastTime");
    if (!paramContext.exists()) {}
    for (;;)
    {
      return false;
      try
      {
        long l1 = Long.parseLong(new BufferedReader(new FileReader(paramContext)).readLine());
        long l2 = System.currentTimeMillis();
        if (l2 < l1) {
          return true;
        }
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.g.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */