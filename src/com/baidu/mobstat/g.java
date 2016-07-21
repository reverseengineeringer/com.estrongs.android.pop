package com.baidu.mobstat;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.os.SystemClock;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.PublicKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.UUID;
import javax.crypto.Cipher;
import org.json.JSONArray;
import org.json.JSONObject;

public final class g
{
  private static final String a;
  private static j e;
  private final Context b;
  private int c = 0;
  private PublicKey d;
  
  static
  {
    String str1 = new String(b.a(new byte[] { 77, 122, 65, 121, 77, 84, 73, 120, 77, 68, 73, 61 }));
    String str2 = new String(b.a(new byte[] { 90, 71, 108, 106, 100, 87, 82, 112, 89, 87, 73, 61 }));
    a = str1 + str2;
  }
  
  private g(Context paramContext)
  {
    b = paramContext.getApplicationContext();
    a();
  }
  
  public static String a(Context paramContext)
  {
    return c(paramContext).b();
  }
  
  /* Error */
  private static String a(File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 87	java/io/FileReader
    //   6: dup
    //   7: aload_0
    //   8: invokespecial 90	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   11: astore_2
    //   12: aload_2
    //   13: astore_0
    //   14: sipush 8192
    //   17: newarray <illegal type>
    //   19: astore_3
    //   20: aload_2
    //   21: astore_0
    //   22: new 92	java/io/CharArrayWriter
    //   25: dup
    //   26: invokespecial 93	java/io/CharArrayWriter:<init>	()V
    //   29: astore 5
    //   31: aload_2
    //   32: astore_0
    //   33: aload_2
    //   34: aload_3
    //   35: invokevirtual 97	java/io/FileReader:read	([C)I
    //   38: istore_1
    //   39: iload_1
    //   40: ifle +39 -> 79
    //   43: aload_2
    //   44: astore_0
    //   45: aload 5
    //   47: aload_3
    //   48: iconst_0
    //   49: iload_1
    //   50: invokevirtual 101	java/io/CharArrayWriter:write	([CII)V
    //   53: goto -22 -> 31
    //   56: astore_3
    //   57: aload_2
    //   58: astore_0
    //   59: aload_3
    //   60: invokestatic 104	com/baidu/mobstat/g:b	(Ljava/lang/Throwable;)V
    //   63: aload 4
    //   65: astore_0
    //   66: aload_2
    //   67: ifnull +10 -> 77
    //   70: aload_2
    //   71: invokevirtual 107	java/io/FileReader:close	()V
    //   74: aload 4
    //   76: astore_0
    //   77: aload_0
    //   78: areturn
    //   79: aload_2
    //   80: astore_0
    //   81: aload 5
    //   83: invokevirtual 108	java/io/CharArrayWriter:toString	()Ljava/lang/String;
    //   86: astore_3
    //   87: aload_3
    //   88: astore_0
    //   89: aload_2
    //   90: ifnull -13 -> 77
    //   93: aload_2
    //   94: invokevirtual 107	java/io/FileReader:close	()V
    //   97: aload_3
    //   98: areturn
    //   99: astore_0
    //   100: aload_0
    //   101: invokestatic 104	com/baidu/mobstat/g:b	(Ljava/lang/Throwable;)V
    //   104: aload_3
    //   105: areturn
    //   106: astore_0
    //   107: aload_0
    //   108: invokestatic 104	com/baidu/mobstat/g:b	(Ljava/lang/Throwable;)V
    //   111: aconst_null
    //   112: areturn
    //   113: astore_2
    //   114: aconst_null
    //   115: astore_0
    //   116: aload_0
    //   117: ifnull +7 -> 124
    //   120: aload_0
    //   121: invokevirtual 107	java/io/FileReader:close	()V
    //   124: aload_2
    //   125: athrow
    //   126: astore_0
    //   127: aload_0
    //   128: invokestatic 104	com/baidu/mobstat/g:b	(Ljava/lang/Throwable;)V
    //   131: goto -7 -> 124
    //   134: astore_2
    //   135: goto -19 -> 116
    //   138: astore_3
    //   139: aconst_null
    //   140: astore_2
    //   141: goto -84 -> 57
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	144	0	paramFile	File
    //   38	12	1	i	int
    //   11	83	2	localFileReader	java.io.FileReader
    //   113	12	2	localObject1	Object
    //   134	1	2	localObject2	Object
    //   140	1	2	localObject3	Object
    //   19	29	3	arrayOfChar	char[]
    //   56	4	3	localException1	Exception
    //   86	19	3	str	String
    //   138	1	3	localException2	Exception
    //   1	74	4	localObject4	Object
    //   29	53	5	localCharArrayWriter	java.io.CharArrayWriter
    // Exception table:
    //   from	to	target	type
    //   14	20	56	java/lang/Exception
    //   22	31	56	java/lang/Exception
    //   33	39	56	java/lang/Exception
    //   45	53	56	java/lang/Exception
    //   81	87	56	java/lang/Exception
    //   93	97	99	java/lang/Exception
    //   70	74	106	java/lang/Exception
    //   3	12	113	finally
    //   120	124	126	java/lang/Exception
    //   14	20	134	finally
    //   22	31	134	finally
    //   33	39	134	finally
    //   45	53	134	finally
    //   59	63	134	finally
    //   81	87	134	finally
    //   3	12	138	java/lang/Exception
  }
  
  private static String a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("Argument b ( byte array ) is null! ");
    }
    String str1 = "";
    int i = 0;
    if (i < paramArrayOfByte.length)
    {
      String str2 = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
      if (str2.length() == 1) {}
      for (str1 = str1 + "0" + str2;; str1 = str1 + str2)
      {
        i += 1;
        break;
      }
    }
    return str1.toLowerCase();
  }
  
  private List<i> a(Intent paramIntent, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    PackageManager localPackageManager = b.getPackageManager();
    paramIntent = localPackageManager.queryBroadcastReceivers(paramIntent, 0);
    if (paramIntent != null)
    {
      paramIntent = paramIntent.iterator();
      while (paramIntent.hasNext())
      {
        Object localObject3 = (ResolveInfo)paramIntent.next();
        if ((activityInfo != null) && (activityInfo.applicationInfo != null)) {
          for (;;)
          {
            try
            {
              Object localObject2 = getReceiverInfoComponentNameactivityInfo.packageName, activityInfo.name), 128).metaData;
              if (localObject2 == null) {
                break;
              }
              Object localObject1 = ((Bundle)localObject2).getString("galaxy_data");
              if (TextUtils.isEmpty((CharSequence)localObject1)) {
                break;
              }
              byte[] arrayOfByte = b.a(((String)localObject1).getBytes("utf-8"));
              Object localObject4 = new JSONObject(new String(arrayOfByte));
              localObject1 = new i(null);
              b = ((JSONObject)localObject4).getInt("priority");
              a = activityInfo.applicationInfo;
              if (b.getPackageName().equals(activityInfo.applicationInfo.packageName)) {
                d = true;
              }
              if (paramBoolean)
              {
                localObject2 = ((Bundle)localObject2).getString("galaxy_sf");
                if (!TextUtils.isEmpty((CharSequence)localObject2))
                {
                  localObject3 = localPackageManager.getPackageInfo(activityInfo.applicationInfo.packageName, 64);
                  localObject4 = ((JSONObject)localObject4).getJSONArray("sigs");
                  String[] arrayOfString = new String[((JSONArray)localObject4).length()];
                  i = 0;
                  if (i < arrayOfString.length)
                  {
                    arrayOfString[i] = ((JSONArray)localObject4).getString(i);
                    i += 1;
                    continue;
                  }
                  if (a(arrayOfString, a(signatures)))
                  {
                    localObject2 = a(b.a(((String)localObject2).getBytes()), d);
                    arrayOfByte = d.a(arrayOfByte);
                    if ((localObject2 == null) || (!Arrays.equals((byte[])localObject2, arrayOfByte))) {
                      break label402;
                    }
                    i = 1;
                    if (i != 0) {
                      c = true;
                    }
                  }
                }
              }
              localArrayList.add(localObject1);
            }
            catch (Exception localException) {}
            break;
            label402:
            int i = 0;
          }
        }
      }
    }
    Collections.sort(localArrayList, new h(this));
    return localArrayList;
  }
  
  /* Error */
  private void a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 310	java/io/ByteArrayInputStream
    //   5: dup
    //   6: invokestatic 314	com/baidu/mobstat/f:a	()[B
    //   9: invokespecial 315	java/io/ByteArrayInputStream:<init>	([B)V
    //   12: astore_1
    //   13: aload_0
    //   14: ldc_w 317
    //   17: invokestatic 323	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   20: aload_1
    //   21: invokevirtual 327	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   24: invokevirtual 333	java/security/cert/Certificate:getPublicKey	()Ljava/security/PublicKey;
    //   27: putfield 279	com/baidu/mobstat/g:d	Ljava/security/PublicKey;
    //   30: aload_1
    //   31: ifnull +7 -> 38
    //   34: aload_1
    //   35: invokevirtual 334	java/io/ByteArrayInputStream:close	()V
    //   38: return
    //   39: astore_1
    //   40: aload_1
    //   41: invokestatic 104	com/baidu/mobstat/g:b	(Ljava/lang/Throwable;)V
    //   44: return
    //   45: astore_1
    //   46: aconst_null
    //   47: astore_1
    //   48: aload_1
    //   49: ifnull -11 -> 38
    //   52: aload_1
    //   53: invokevirtual 334	java/io/ByteArrayInputStream:close	()V
    //   56: return
    //   57: astore_1
    //   58: aload_1
    //   59: invokestatic 104	com/baidu/mobstat/g:b	(Ljava/lang/Throwable;)V
    //   62: return
    //   63: astore_1
    //   64: aload_2
    //   65: ifnull +7 -> 72
    //   68: aload_2
    //   69: invokevirtual 334	java/io/ByteArrayInputStream:close	()V
    //   72: aload_1
    //   73: athrow
    //   74: astore_2
    //   75: aload_2
    //   76: invokestatic 104	com/baidu/mobstat/g:b	(Ljava/lang/Throwable;)V
    //   79: goto -7 -> 72
    //   82: astore_3
    //   83: aload_1
    //   84: astore_2
    //   85: aload_3
    //   86: astore_1
    //   87: goto -23 -> 64
    //   90: astore_2
    //   91: goto -43 -> 48
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	this	g
    //   12	23	1	localByteArrayInputStream	java.io.ByteArrayInputStream
    //   39	2	1	localException1	Exception
    //   45	1	1	localException2	Exception
    //   47	6	1	localObject1	Object
    //   57	2	1	localException3	Exception
    //   63	21	1	localObject2	Object
    //   86	1	1	localObject3	Object
    //   1	68	2	localObject4	Object
    //   74	2	2	localException4	Exception
    //   84	1	2	localObject5	Object
    //   90	1	2	localException5	Exception
    //   82	4	3	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   34	38	39	java/lang/Exception
    //   2	13	45	java/lang/Exception
    //   52	56	57	java/lang/Exception
    //   2	13	63	finally
    //   68	72	74	java/lang/Exception
    //   13	30	82	finally
    //   13	30	90	java/lang/Exception
  }
  
  private boolean a(String paramString)
  {
    localObject2 = null;
    Object localObject1 = null;
    try
    {
      FileOutputStream localFileOutputStream = b.openFileOutput("libcuid.so", 1);
      localObject1 = localFileOutputStream;
      localObject2 = localFileOutputStream;
      localFileOutputStream.write(paramString.getBytes());
      localObject1 = localFileOutputStream;
      localObject2 = localFileOutputStream;
      localFileOutputStream.flush();
      if (localFileOutputStream != null) {}
      try
      {
        localFileOutputStream.close();
        return true;
      }
      catch (Exception paramString)
      {
        b(paramString);
        return true;
      }
      try
      {
        ((FileOutputStream)localObject2).close();
        throw paramString;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          b(localException);
        }
      }
    }
    catch (Exception paramString)
    {
      localObject2 = localObject1;
      b(paramString);
      if (localObject1 != null) {}
      try
      {
        ((FileOutputStream)localObject1).close();
        return false;
      }
      catch (Exception paramString)
      {
        for (;;)
        {
          b(paramString);
        }
      }
    }
    finally
    {
      if (localObject2 == null) {}
    }
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    try
    {
      boolean bool = Settings.System.putString(b.getContentResolver(), paramString1, paramString2);
      return bool;
    }
    catch (Exception paramString1)
    {
      b(paramString1);
    }
    return false;
  }
  
  private boolean a(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    int j = 0;
    if ((paramArrayOfString1 == null) || (paramArrayOfString2 == null) || (paramArrayOfString1.length != paramArrayOfString2.length)) {
      return false;
    }
    HashSet localHashSet = new HashSet();
    int k = paramArrayOfString1.length;
    int i = 0;
    while (i < k)
    {
      localHashSet.add(paramArrayOfString1[i]);
      i += 1;
    }
    paramArrayOfString1 = new HashSet();
    k = paramArrayOfString2.length;
    i = j;
    while (i < k)
    {
      paramArrayOfString1.add(paramArrayOfString2[i]);
      i += 1;
    }
    return localHashSet.equals(paramArrayOfString1);
  }
  
  private static byte[] a(byte[] paramArrayOfByte, PublicKey paramPublicKey)
  {
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(2, paramPublicKey);
    return localCipher.doFinal(paramArrayOfByte);
  }
  
  private String[] a(Signature[] paramArrayOfSignature)
  {
    String[] arrayOfString = new String[paramArrayOfSignature.length];
    int i = 0;
    while (i < arrayOfString.length)
    {
      arrayOfString[i] = a(d.a(paramArrayOfSignature[i].toByteArray()));
      i += 1;
    }
    return arrayOfString;
  }
  
  private j b()
  {
    Object localObject4 = null;
    int j = 0;
    Object localObject1 = a(new Intent("com.baidu.intent.action.GALAXY").setPackage(b.getPackageName()), true);
    int i;
    boolean bool;
    if ((localObject1 == null) || (((List)localObject1).size() == 0))
    {
      i = 0;
      while (i < 3)
      {
        Log.w("DeviceId", "galaxy lib host missing meta-data,make sure you know the right way to integrate galaxy");
        i += 1;
      }
      bool = false;
    }
    label535:
    label957:
    label988:
    label1002:
    for (;;)
    {
      localObject1 = new File(b.getFilesDir(), "libcuid.so");
      if (((File)localObject1).exists()) {}
      for (localObject1 = j.a(f(a((File)localObject1)));; localObject1 = null)
      {
        Object localObject2 = localObject1;
        Object localObject5;
        if (localObject1 == null)
        {
          c |= 0x10;
          localObject5 = a(new Intent("com.baidu.intent.action.GALAXY"), bool);
          localObject2 = localObject1;
          if (localObject5 != null)
          {
            localObject2 = b.getFilesDir();
            if ("files".equals(((File)localObject2).getName())) {
              break label988;
            }
            Log.e("DeviceId", "fetal error:: app files dir name is unexpectedly :: " + ((File)localObject2).getAbsolutePath());
          }
        }
        for (Object localObject3 = ((File)localObject2).getName();; localObject3 = "files")
        {
          localObject5 = ((List)localObject5).iterator();
          do
          {
            localObject2 = localObject1;
            if (!((Iterator)localObject5).hasNext()) {
              break;
            }
            localObject2 = (i)((Iterator)localObject5).next();
          } while (d);
          localObject2 = new File(new File(a.dataDir, (String)localObject3), "libcuid.so");
          if (((File)localObject2).exists())
          {
            localObject2 = j.a(f(a((File)localObject2)));
            localObject1 = localObject2;
            if (localObject2 == null) {}
          }
          for (localObject1 = localObject2;; localObject1 = localObject2)
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = j.a(f(b("com.baidu.deviceid.v2")));
            }
            bool = c("android.permission.READ_EXTERNAL_STORAGE");
            if ((localObject2 == null) && (bool))
            {
              c |= 0x2;
              localObject2 = e();
            }
            for (;;)
            {
              localObject1 = localObject2;
              if (localObject2 == null)
              {
                c |= 0x8;
                localObject1 = d();
              }
              if ((localObject1 == null) && (bool))
              {
                c |= 0x1;
                localObject2 = h("");
                localObject1 = d((String)localObject2);
              }
              for (i = 1;; i = j)
              {
                if (localObject1 == null)
                {
                  c |= 0x4;
                  if (i == 0) {
                    localObject2 = h("");
                  }
                  localObject3 = new j(null);
                  localObject1 = b(b);
                  if (Build.VERSION.SDK_INT < 23)
                  {
                    localObject5 = UUID.randomUUID().toString();
                    localObject1 = (String)localObject2 + (String)localObject1 + (String)localObject5;
                    a = c.a(((String)localObject1).getBytes(), true);
                    b = ((String)localObject2);
                  }
                }
                for (;;)
                {
                  localObject2 = new File(b.getFilesDir(), "libcuid.so");
                  if ((c & 0x10) == 0)
                  {
                    localObject1 = localObject4;
                    if (((File)localObject2).exists()) {}
                  }
                  else
                  {
                    if (!TextUtils.isEmpty(null)) {
                      break label957;
                    }
                  }
                  for (localObject1 = e(((j)localObject3).a());; localObject1 = null)
                  {
                    a((String)localObject1);
                    bool = c();
                    localObject2 = localObject1;
                    if (bool) {
                      if ((c & 0x2) == 0)
                      {
                        localObject2 = localObject1;
                        if (!TextUtils.isEmpty(b("com.baidu.deviceid.v2"))) {}
                      }
                      else
                      {
                        localObject2 = localObject1;
                        if (TextUtils.isEmpty((CharSequence)localObject1)) {
                          localObject2 = e(((j)localObject3).a());
                        }
                        a("com.baidu.deviceid.v2", (String)localObject2);
                      }
                    }
                    if (c("android.permission.WRITE_EXTERNAL_STORAGE"))
                    {
                      localObject1 = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid2");
                      if (((c & 0x8) != 0) || (!((File)localObject1).exists()))
                      {
                        localObject1 = localObject2;
                        if (TextUtils.isEmpty((CharSequence)localObject2)) {
                          localObject1 = e(((j)localObject3).a());
                        }
                        g((String)localObject1);
                      }
                    }
                    if ((bool) && (((c & 0x1) != 0) || (TextUtils.isEmpty(b("com.baidu.deviceid")))))
                    {
                      a("com.baidu.deviceid", a);
                      a("bd_setting_i", b);
                    }
                    if ((bool) && (!TextUtils.isEmpty(b)))
                    {
                      localObject1 = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid");
                      if (((c & 0x2) != 0) || (!((File)localObject1).exists())) {
                        b(b, a);
                      }
                    }
                    return (j)localObject3;
                    localObject1 = (i)((List)localObject1).get(0);
                    bool = c;
                    if (c) {
                      break label1002;
                    }
                    i = 0;
                    while (i < 3)
                    {
                      Log.w("DeviceId", "galaxy config err, In the release version of the signature should be matched");
                      i += 1;
                    }
                    break;
                    localObject1 = "com.baidu" + (String)localObject1;
                    break label535;
                  }
                  localObject3 = localObject1;
                }
                localObject2 = null;
              }
            }
          }
        }
      }
    }
  }
  
  public static String b(Context paramContext)
  {
    String str = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    paramContext = str;
    if (TextUtils.isEmpty(str)) {
      paramContext = "";
    }
    return paramContext;
  }
  
  private String b(String paramString)
  {
    try
    {
      paramString = Settings.System.getString(b.getContentResolver(), paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      b(paramString);
    }
    return null;
  }
  
  private static void b(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString1);
    localStringBuilder.append("=");
    localStringBuilder.append(paramString2);
    paramString1 = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig");
    paramString2 = new File(paramString1, ".cuid");
    try
    {
      if ((paramString1.exists()) && (!paramString1.isDirectory()))
      {
        Random localRandom = new Random();
        File localFile1 = paramString1.getParentFile();
        String str = paramString1.getName();
        File localFile2;
        do
        {
          localFile2 = new File(localFile1, str + localRandom.nextInt() + ".tmp");
        } while (localFile2.exists());
        paramString1.renameTo(localFile2);
        localFile2.delete();
      }
      paramString1.mkdirs();
      paramString1 = new FileWriter(paramString2, false);
      paramString1.write(b.a(a.a(a, a, localStringBuilder.toString().getBytes()), "utf-8"));
      paramString1.flush();
      paramString1.close();
      return;
    }
    catch (IOException paramString1) {}catch (Exception paramString1) {}
  }
  
  private static void b(Throwable paramThrowable) {}
  
  private static j c(Context paramContext)
  {
    if (e == null) {}
    try
    {
      if (e == null)
      {
        SystemClock.uptimeMillis();
        e = new g(paramContext).b();
        SystemClock.uptimeMillis();
      }
      return e;
    }
    finally {}
  }
  
  private boolean c()
  {
    return c("android.permission.WRITE_SETTINGS");
  }
  
  private boolean c(String paramString)
  {
    return b.checkPermission(paramString, Process.myPid(), Process.myUid()) == 0;
  }
  
  private j d()
  {
    Object localObject3 = b("com.baidu.deviceid");
    Object localObject2 = b("bd_setting_i");
    Object localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2))
    {
      localObject2 = h("");
      localObject1 = localObject2;
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        a("bd_setting_i", (String)localObject2);
        localObject1 = localObject2;
      }
    }
    localObject2 = localObject3;
    if (TextUtils.isEmpty((CharSequence)localObject3))
    {
      localObject2 = b(b);
      localObject2 = b(c.a(("com.baidu" + (String)localObject1 + (String)localObject2).getBytes(), true));
    }
    if (!TextUtils.isEmpty((CharSequence)localObject2))
    {
      localObject3 = new j(null);
      a = ((String)localObject2);
      b = ((String)localObject1);
      return (j)localObject3;
    }
    return null;
  }
  
  /* Error */
  private j d(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: getstatic 472	android/os/Build$VERSION:SDK_INT	I
    //   5: bipush 23
    //   7: if_icmpge +18 -> 25
    //   10: iconst_1
    //   11: istore_2
    //   12: iload_2
    //   13: ifeq +17 -> 30
    //   16: aload_1
    //   17: invokestatic 208	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   20: ifeq +10 -> 30
    //   23: aconst_null
    //   24: areturn
    //   25: iconst_0
    //   26: istore_2
    //   27: goto -15 -> 12
    //   30: ldc 118
    //   32: astore 6
    //   34: new 413	java/io/File
    //   37: dup
    //   38: invokestatic 504	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   41: ldc_w 615
    //   44: invokespecial 420	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   47: astore 4
    //   49: aload 4
    //   51: invokevirtual 423	java/io/File:exists	()Z
    //   54: ifeq +98 -> 152
    //   57: new 617	java/io/BufferedReader
    //   60: dup
    //   61: new 87	java/io/FileReader
    //   64: dup
    //   65: aload 4
    //   67: invokespecial 90	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   70: invokespecial 620	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   73: astore 4
    //   75: new 47	java/lang/StringBuilder
    //   78: dup
    //   79: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   82: astore 5
    //   84: aload 4
    //   86: invokevirtual 623	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   89: astore 7
    //   91: aload 7
    //   93: ifnull +79 -> 172
    //   96: aload 5
    //   98: aload 7
    //   100: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: pop
    //   104: aload 5
    //   106: ldc_w 625
    //   109: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: pop
    //   113: goto -29 -> 84
    //   116: astore 4
    //   118: aload_1
    //   119: astore 5
    //   121: aload 6
    //   123: invokestatic 208	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   126: ifne +192 -> 318
    //   129: new 80	com/baidu/mobstat/j
    //   132: dup
    //   133: aconst_null
    //   134: invokespecial 465	com/baidu/mobstat/j:<init>	(Lcom/baidu/mobstat/h;)V
    //   137: astore_1
    //   138: aload_1
    //   139: aload 6
    //   141: putfield 485	com/baidu/mobstat/j:a	Ljava/lang/String;
    //   144: aload_1
    //   145: aload 5
    //   147: putfield 487	com/baidu/mobstat/j:b	Ljava/lang/String;
    //   150: aload_1
    //   151: areturn
    //   152: new 413	java/io/File
    //   155: dup
    //   156: invokestatic 504	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   159: ldc_w 515
    //   162: invokespecial 420	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   165: astore 4
    //   167: iconst_1
    //   168: istore_3
    //   169: goto -112 -> 57
    //   172: aload 4
    //   174: invokevirtual 626	java/io/BufferedReader:close	()V
    //   177: new 18	java/lang/String
    //   180: dup
    //   181: getstatic 59	com/baidu/mobstat/g:a	Ljava/lang/String;
    //   184: getstatic 59	com/baidu/mobstat/g:a	Ljava/lang/String;
    //   187: aload 5
    //   189: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   192: invokevirtual 277	java/lang/String:getBytes	()[B
    //   195: invokestatic 32	com/baidu/mobstat/b:a	([B)[B
    //   198: invokestatic 628	com/baidu/mobstat/a:b	(Ljava/lang/String;Ljava/lang/String;[B)[B
    //   201: invokespecial 36	java/lang/String:<init>	([B)V
    //   204: ldc_w 537
    //   207: invokevirtual 632	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   210: astore 5
    //   212: aload 5
    //   214: ifnull +146 -> 360
    //   217: aload 5
    //   219: arraylength
    //   220: iconst_2
    //   221: if_icmpne +139 -> 360
    //   224: iload_2
    //   225: ifeq +65 -> 290
    //   228: aload_1
    //   229: aload 5
    //   231: iconst_0
    //   232: aaload
    //   233: invokevirtual 242	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   236: ifeq +54 -> 290
    //   239: aload 5
    //   241: iconst_1
    //   242: aaload
    //   243: astore 5
    //   245: aload_1
    //   246: astore 4
    //   248: aload 5
    //   250: astore_1
    //   251: aload_1
    //   252: astore 6
    //   254: aload 4
    //   256: astore 5
    //   258: iload_3
    //   259: ifne -138 -> 121
    //   262: aload 4
    //   264: aload_1
    //   265: invokestatic 517	com/baidu/mobstat/g:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   268: aload_1
    //   269: astore 6
    //   271: aload 4
    //   273: astore 5
    //   275: goto -154 -> 121
    //   278: astore 5
    //   280: aload_1
    //   281: astore 6
    //   283: aload 4
    //   285: astore 5
    //   287: goto -166 -> 121
    //   290: iload_2
    //   291: ifne +69 -> 360
    //   294: aload_1
    //   295: astore 4
    //   297: aload_1
    //   298: invokestatic 208	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   301: ifeq +9 -> 310
    //   304: aload 5
    //   306: iconst_1
    //   307: aaload
    //   308: astore 4
    //   310: aload 5
    //   312: iconst_1
    //   313: aaload
    //   314: astore_1
    //   315: goto -64 -> 251
    //   318: aconst_null
    //   319: areturn
    //   320: astore 4
    //   322: aload_1
    //   323: astore 5
    //   325: goto -204 -> 121
    //   328: astore 5
    //   330: aload_1
    //   331: astore 6
    //   333: aload 4
    //   335: astore 5
    //   337: goto -216 -> 121
    //   340: astore 4
    //   342: aload_1
    //   343: astore 5
    //   345: goto -224 -> 121
    //   348: astore 5
    //   350: aload_1
    //   351: astore 6
    //   353: aload 4
    //   355: astore 5
    //   357: goto -236 -> 121
    //   360: aload_1
    //   361: astore 4
    //   363: aload 6
    //   365: astore_1
    //   366: goto -115 -> 251
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	369	0	this	g
    //   0	369	1	paramString	String
    //   11	280	2	i	int
    //   1	258	3	j	int
    //   47	38	4	localObject1	Object
    //   116	1	4	localFileNotFoundException1	java.io.FileNotFoundException
    //   165	144	4	localObject2	Object
    //   320	14	4	localException1	Exception
    //   340	14	4	localIOException1	IOException
    //   361	1	4	str1	String
    //   82	192	5	localObject3	Object
    //   278	1	5	localFileNotFoundException2	java.io.FileNotFoundException
    //   285	39	5	localObject4	Object
    //   328	1	5	localException2	Exception
    //   335	9	5	localObject5	Object
    //   348	1	5	localIOException2	IOException
    //   355	1	5	localIOException3	IOException
    //   32	332	6	str2	String
    //   89	10	7	str3	String
    // Exception table:
    //   from	to	target	type
    //   57	84	116	java/io/FileNotFoundException
    //   84	91	116	java/io/FileNotFoundException
    //   96	113	116	java/io/FileNotFoundException
    //   172	212	116	java/io/FileNotFoundException
    //   217	224	116	java/io/FileNotFoundException
    //   228	239	116	java/io/FileNotFoundException
    //   297	304	116	java/io/FileNotFoundException
    //   262	268	278	java/io/FileNotFoundException
    //   57	84	320	java/lang/Exception
    //   84	91	320	java/lang/Exception
    //   96	113	320	java/lang/Exception
    //   172	212	320	java/lang/Exception
    //   217	224	320	java/lang/Exception
    //   228	239	320	java/lang/Exception
    //   297	304	320	java/lang/Exception
    //   262	268	328	java/lang/Exception
    //   57	84	340	java/io/IOException
    //   84	91	340	java/io/IOException
    //   96	113	340	java/io/IOException
    //   172	212	340	java/io/IOException
    //   217	224	340	java/io/IOException
    //   228	239	340	java/io/IOException
    //   297	304	340	java/io/IOException
    //   262	268	348	java/io/IOException
  }
  
  private j e()
  {
    Object localObject = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid2");
    if (((File)localObject).exists())
    {
      localObject = a((File)localObject);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        try
        {
          localObject = j.a(new String(a.b(a, a, b.a(((String)localObject).getBytes()))));
          return (j)localObject;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }
    return null;
  }
  
  private static String e(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    try
    {
      paramString = b.a(a.a(a, a, paramString.getBytes()), "utf-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      b(paramString);
      return "";
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        b(paramString);
      }
    }
  }
  
  private static String f(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    try
    {
      paramString = new String(a.b(a, a, b.a(paramString.getBytes())));
      return paramString;
    }
    catch (Exception paramString)
    {
      b(paramString);
    }
    return "";
  }
  
  private static void g(String paramString)
  {
    Object localObject = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig");
    File localFile1 = new File((File)localObject, ".cuid2");
    try
    {
      if ((((File)localObject).exists()) && (!((File)localObject).isDirectory()))
      {
        Random localRandom = new Random();
        File localFile2 = ((File)localObject).getParentFile();
        String str = ((File)localObject).getName();
        File localFile3;
        do
        {
          localFile3 = new File(localFile2, str + localRandom.nextInt() + ".tmp");
        } while (localFile3.exists());
        ((File)localObject).renameTo(localFile3);
        localFile3.delete();
      }
      ((File)localObject).mkdirs();
      localObject = new FileWriter(localFile1, false);
      ((FileWriter)localObject).write(paramString);
      ((FileWriter)localObject).flush();
      ((FileWriter)localObject).close();
      return;
    }
    catch (Exception paramString) {}catch (IOException paramString) {}
  }
  
  private String h(String paramString)
  {
    try
    {
      localObject = (TelephonyManager)b.getSystemService("phone");
      if (localObject == null) {
        break label49;
      }
      localObject = ((TelephonyManager)localObject).getDeviceId();
    }
    catch (Exception localException)
    {
      label49:
      String str;
      for (;;)
      {
        Object localObject;
        Log.e("DeviceId", "Read IMEI failed", localException);
        str = null;
      }
      return str;
    }
    localObject = i((String)localObject);
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      return paramString;
    }
  }
  
  private static String i(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.contains(":")) {
        str = "";
      }
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */