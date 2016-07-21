package com.flurry.sdk;

import android.content.Context;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class jf
{
  private static final String a = jf.class.getSimpleName();
  private static jf b;
  private final Set<String> c = v();
  private final Map<jn, byte[]> d = new HashMap();
  private final kb<lg> e = new jf.1(this);
  private jf.a f = jf.a.a;
  private jp g;
  private String h;
  private byte[] i;
  
  private jf()
  {
    kc.a().a("com.flurry.android.sdk.FlurrySessionEvent", e);
    js.a().b(new jf.2(this));
  }
  
  public static jf a()
  {
    try
    {
      if (b == null) {
        b = new jf();
      }
      jf localjf = b;
      return localjf;
    }
    finally {}
  }
  
  private String a(DataInput paramDataInput)
  {
    if (1 != paramDataInput.readInt()) {
      return null;
    }
    return paramDataInput.readUTF();
  }
  
  private void a(String paramString, DataOutput paramDataOutput)
  {
    paramDataOutput.writeInt(1);
    paramDataOutput.writeUTF(paramString);
  }
  
  /* Error */
  private void a(String paramString, File paramFile)
  {
    // Byte code:
    //   0: new 116	java/io/DataOutputStream
    //   3: dup
    //   4: new 118	java/io/FileOutputStream
    //   7: dup
    //   8: aload_2
    //   9: invokespecial 121	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   12: invokespecial 124	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   15: astore_3
    //   16: aload_3
    //   17: astore_2
    //   18: aload_0
    //   19: aload_1
    //   20: aload_3
    //   21: invokespecial 126	com/flurry/sdk/jf:a	(Ljava/lang/String;Ljava/io/DataOutput;)V
    //   24: aload_3
    //   25: invokestatic 131	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   28: return
    //   29: astore 4
    //   31: aconst_null
    //   32: astore_1
    //   33: aload_1
    //   34: astore_2
    //   35: bipush 6
    //   37: getstatic 34	com/flurry/sdk/jf:a	Ljava/lang/String;
    //   40: ldc -123
    //   42: aload 4
    //   44: invokestatic 138	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   47: aload_1
    //   48: invokestatic 131	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   51: return
    //   52: astore_1
    //   53: aconst_null
    //   54: astore_2
    //   55: aload_2
    //   56: invokestatic 131	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   59: aload_1
    //   60: athrow
    //   61: astore_1
    //   62: goto -7 -> 55
    //   65: astore 4
    //   67: aload_3
    //   68: astore_1
    //   69: goto -36 -> 33
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	this	jf
    //   0	72	1	paramString	String
    //   0	72	2	paramFile	File
    //   15	53	3	localDataOutputStream	java.io.DataOutputStream
    //   29	14	4	localThrowable1	Throwable
    //   65	1	4	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   0	16	29	java/lang/Throwable
    //   0	16	52	finally
    //   18	24	61	finally
    //   35	47	61	finally
    //   18	24	65	java/lang/Throwable
  }
  
  private boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (c(paramString.toLowerCase(Locale.US))) {
      return false;
    }
    return true;
  }
  
  private String b(DataInput paramDataInput)
  {
    if (46586 != paramDataInput.readUnsignedShort()) {}
    while (2 != paramDataInput.readUnsignedShort()) {
      return null;
    }
    paramDataInput.readUTF();
    return paramDataInput.readUTF();
  }
  
  public static void b()
  {
    b = null;
  }
  
  private void b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    File localFile;
    do
    {
      return;
      localFile = js.a().c().getFileStreamPath(u());
    } while (!ls.a(localFile));
    a(paramString, localFile);
  }
  
  private boolean c(String paramString)
  {
    return c.contains(paramString);
  }
  
  private void i()
  {
    for (;;)
    {
      if (!jf.a.f.equals(f))
      {
        switch (jf.4.b[f.ordinal()])
        {
        }
        for (;;)
        {
          try
          {
            switch (jf.4.b[f.ordinal()])
            {
            case 2: 
              j();
            }
          }
          catch (Exception localException)
          {
            kg.a(4, a, "Exception during id fetch:" + f + ", " + localException);
          }
          break;
          f = jf.a.b;
          continue;
          f = jf.a.c;
          continue;
          f = jf.a.d;
          continue;
          f = jf.a.e;
          continue;
          f = jf.a.f;
        }
        k();
        continue;
        l();
        continue;
        x();
      }
      else
      {
        jg localjg = new jg();
        kc.a().a(localjg);
        return;
      }
    }
  }
  
  private void j()
  {
    
    if (!m()) {}
    do
    {
      return;
      g = n();
    } while (!c());
    x();
    jh localjh = new jh();
    kc.a().a(localjh);
  }
  
  private void k()
  {
    lt.b();
    h = o();
  }
  
  private void l()
  {
    if (js.a().c().checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
      return;
    }
    w();
  }
  
  private boolean m()
  {
    return lu.a(js.a().c());
  }
  
  private jp n()
  {
    return lu.b(js.a().c());
  }
  
  private String o()
  {
    String str = p();
    if (!TextUtils.isEmpty(str)) {
      return str;
    }
    return q();
  }
  
  private String p()
  {
    String str = Settings.Secure.getString(js.a().c().getContentResolver(), "android_id");
    if (!a(str)) {
      return null;
    }
    return "AND" + str;
  }
  
  private String q()
  {
    String str2 = s();
    String str1 = str2;
    if (TextUtils.isEmpty(str2))
    {
      str2 = t();
      str1 = str2;
      if (TextUtils.isEmpty(str2)) {
        str1 = r();
      }
      b(str1);
    }
    return str1;
  }
  
  private String r()
  {
    long l1 = Double.doubleToLongBits(Math.random());
    long l2 = System.nanoTime();
    long l3 = lt.i(lq.c(js.a().c()));
    return "ID" + Long.toString(l1 + (l2 + l3 * 37L) * 37L, 16);
  }
  
  /* Error */
  private String s()
  {
    // Byte code:
    //   0: invokestatic 77	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   3: invokevirtual 168	com/flurry/sdk/js:c	()Landroid/content/Context;
    //   6: aload_0
    //   7: invokespecial 171	com/flurry/sdk/jf:u	()Ljava/lang/String;
    //   10: invokevirtual 177	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull +10 -> 25
    //   18: aload_1
    //   19: invokevirtual 359	java/io/File:exists	()Z
    //   22: ifne +5 -> 27
    //   25: aconst_null
    //   26: areturn
    //   27: new 361	java/io/DataInputStream
    //   30: dup
    //   31: new 363	java/io/FileInputStream
    //   34: dup
    //   35: aload_1
    //   36: invokespecial 364	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   39: invokespecial 367	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   42: astore_2
    //   43: aload_2
    //   44: astore_1
    //   45: aload_0
    //   46: aload_2
    //   47: invokespecial 369	com/flurry/sdk/jf:a	(Ljava/io/DataInput;)Ljava/lang/String;
    //   50: astore_3
    //   51: aload_2
    //   52: invokestatic 131	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   55: aload_3
    //   56: areturn
    //   57: astore_3
    //   58: aconst_null
    //   59: astore_2
    //   60: aload_2
    //   61: astore_1
    //   62: bipush 6
    //   64: getstatic 34	com/flurry/sdk/jf:a	Ljava/lang/String;
    //   67: ldc_w 371
    //   70: aload_3
    //   71: invokestatic 138	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   74: aload_2
    //   75: invokestatic 131	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   78: aconst_null
    //   79: areturn
    //   80: astore_1
    //   81: aconst_null
    //   82: astore_3
    //   83: aload_1
    //   84: astore_2
    //   85: aload_3
    //   86: invokestatic 131	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   89: aload_2
    //   90: athrow
    //   91: astore_2
    //   92: aload_1
    //   93: astore_3
    //   94: goto -9 -> 85
    //   97: astore_3
    //   98: goto -38 -> 60
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	101	0	this	jf
    //   13	49	1	localObject1	Object
    //   80	13	1	localObject2	Object
    //   42	48	2	localObject3	Object
    //   91	1	2	localObject4	Object
    //   50	6	3	str	String
    //   57	14	3	localThrowable1	Throwable
    //   82	12	3	localObject5	Object
    //   97	1	3	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   27	43	57	java/lang/Throwable
    //   27	43	80	finally
    //   45	51	91	finally
    //   62	74	91	finally
    //   45	51	97	java/lang/Throwable
  }
  
  /* Error */
  private String t()
  {
    // Byte code:
    //   0: invokestatic 77	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   3: invokevirtual 168	com/flurry/sdk/js:c	()Landroid/content/Context;
    //   6: invokevirtual 375	android/content/Context:getFilesDir	()Ljava/io/File;
    //   9: astore_1
    //   10: aload_1
    //   11: ifnonnull +5 -> 16
    //   14: aconst_null
    //   15: areturn
    //   16: aload_1
    //   17: new 377	com/flurry/sdk/jf$3
    //   20: dup
    //   21: aload_0
    //   22: invokespecial 378	com/flurry/sdk/jf$3:<init>	(Lcom/flurry/sdk/jf;)V
    //   25: invokevirtual 382	java/io/File:list	(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    //   28: astore_1
    //   29: aload_1
    //   30: ifnull -16 -> 14
    //   33: aload_1
    //   34: arraylength
    //   35: ifeq -21 -> 14
    //   38: aload_1
    //   39: iconst_0
    //   40: aaload
    //   41: astore_1
    //   42: invokestatic 77	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   45: invokevirtual 168	com/flurry/sdk/js:c	()Landroid/content/Context;
    //   48: aload_1
    //   49: invokevirtual 177	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   52: astore_1
    //   53: aload_1
    //   54: ifnull -40 -> 14
    //   57: aload_1
    //   58: invokevirtual 359	java/io/File:exists	()Z
    //   61: ifeq -47 -> 14
    //   64: new 361	java/io/DataInputStream
    //   67: dup
    //   68: new 363	java/io/FileInputStream
    //   71: dup
    //   72: aload_1
    //   73: invokespecial 364	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   76: invokespecial 367	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   79: astore_2
    //   80: aload_2
    //   81: astore_1
    //   82: aload_0
    //   83: aload_2
    //   84: invokespecial 384	com/flurry/sdk/jf:b	(Ljava/io/DataInput;)Ljava/lang/String;
    //   87: astore_3
    //   88: aload_2
    //   89: invokestatic 131	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   92: aload_3
    //   93: areturn
    //   94: astore_3
    //   95: aconst_null
    //   96: astore_2
    //   97: aload_2
    //   98: astore_1
    //   99: bipush 6
    //   101: getstatic 34	com/flurry/sdk/jf:a	Ljava/lang/String;
    //   104: ldc_w 371
    //   107: aload_3
    //   108: invokestatic 138	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   111: aload_2
    //   112: invokestatic 131	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   115: aconst_null
    //   116: areturn
    //   117: astore_1
    //   118: aconst_null
    //   119: astore_3
    //   120: aload_1
    //   121: astore_2
    //   122: aload_3
    //   123: invokestatic 131	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   126: aload_2
    //   127: athrow
    //   128: astore_2
    //   129: aload_1
    //   130: astore_3
    //   131: goto -9 -> 122
    //   134: astore_3
    //   135: goto -38 -> 97
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	jf
    //   9	90	1	localObject1	Object
    //   117	13	1	localObject2	Object
    //   79	48	2	localObject3	Object
    //   128	1	2	localObject4	Object
    //   87	6	3	str	String
    //   94	14	3	localThrowable1	Throwable
    //   119	12	3	localObject5	Object
    //   134	1	3	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   64	80	94	java/lang/Throwable
    //   64	80	117	finally
    //   82	88	128	finally
    //   99	111	128	finally
    //   82	88	134	java/lang/Throwable
  }
  
  private String u()
  {
    return ".flurryb.";
  }
  
  private Set<String> v()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add("null");
    localHashSet.add("9774d56d682e549c");
    localHashSet.add("dead00beef");
    return Collections.unmodifiableSet(localHashSet);
  }
  
  private void w()
  {
    Object localObject = (TelephonyManager)js.a().c().getSystemService("phone");
    if (localObject == null) {}
    do
    {
      return;
      localObject = ((TelephonyManager)localObject).getDeviceId();
    } while ((localObject == null) || (((String)localObject).trim().length() <= 0));
    try
    {
      localObject = lt.f((String)localObject);
      if ((localObject != null) && (localObject.length == 20))
      {
        i = ((byte[])localObject);
        return;
      }
    }
    catch (Exception localException)
    {
      kg.a(6, a, "Exception in generateHashedImei()");
      return;
    }
    kg.a(6, a, "sha1 is not " + 20 + " bytes long: " + Arrays.toString(localException));
  }
  
  private void x()
  {
    Object localObject = d();
    if (localObject != null)
    {
      kg.a(3, a, "Fetched advertising id");
      d.put(jn.c, lt.e((String)localObject));
    }
    localObject = f();
    if (localObject != null)
    {
      kg.a(3, a, "Fetched device id");
      d.put(jn.a, lt.e((String)localObject));
    }
    localObject = g();
    if (localObject != null)
    {
      kg.a(3, a, "Fetched hashed IMEI");
      d.put(jn.b, localObject);
    }
  }
  
  public boolean c()
  {
    return jf.a.f.equals(f);
  }
  
  public String d()
  {
    if (g == null) {
      return null;
    }
    return g.a();
  }
  
  public boolean e()
  {
    if (g == null) {}
    while (!g.b()) {
      return true;
    }
    return false;
  }
  
  public String f()
  {
    return h;
  }
  
  public byte[] g()
  {
    return i;
  }
  
  public Map<jn, byte[]> h()
  {
    return Collections.unmodifiableMap(d);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */