package com.estrongs.android.pop.view;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;
import java.text.MessageFormat;

public class a
{
  public static String a = "Market";
  public static String b = "";
  private static int c = 0;
  private static String d = null;
  
  public static int a()
  {
    return c;
  }
  
  public static void a(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 8192);
      if (paramContext != null)
      {
        c = versionCode;
        d = versionName;
      }
      return;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
        paramContext = null;
      }
    }
  }
  
  public static boolean b()
  {
    if ((d()) || (b.equals("Amazon"))) {}
    for (;;)
    {
      return true;
      byte[] arrayOfByte = c();
      if ((arrayOfByte != null) && (arrayOfByte.length != 0)) {
        try
        {
          PackageInfo localPackageInfo = FexApplication.a().getPackageManager().getPackageInfo(FexApplication.a().getPackageName(), 64);
          if ((signatures != null) && (signatures.length != 0))
          {
            boolean bool = signatures[0].equals(new Signature(arrayOfByte));
            return bool;
          }
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
      }
    }
    return true;
  }
  
  public static boolean b(Context paramContext)
  {
    boolean bool2 = false;
    String str = ad.c(paramContext);
    boolean bool1 = bool2;
    if (str != null)
    {
      bool1 = bool2;
      if (!str.equals(c + ""))
      {
        bool1 = bool2;
        if (c != 0)
        {
          bool1 = true;
          ad.a(paramContext, c + "");
        }
      }
    }
    return bool1;
  }
  
  public static void c(Context paramContext)
  {
    View localView = k.a(paramContext).inflate(2130903102, null);
    ((TextView)localView.findViewById(2131624200)).setText(MessageFormat.format(paramContext.getString(2131230963), new Object[] { paramContext.getString(getApplicationInfolabelRes) }));
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131624323);
    ci localci = new ci(paramContext);
    localci.setCancelable(false);
    localci.setTitle(paramContext.getString(2131231714));
    localci.setContentView(localView);
    localci.setSingleButton(paramContext.getString(2131231270), new b(localCheckBox, paramContext));
    localci.show();
  }
  
  /* Error */
  public static byte[] c()
  {
    // Byte code:
    //   0: invokestatic 197	com/estrongs/android/nativetool/c:a	()Landroid/net/LocalSocket;
    //   3: astore 4
    //   5: aload 4
    //   7: ifnonnull +5 -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: aload 4
    //   14: invokevirtual 203	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   17: astore_0
    //   18: aload 4
    //   20: invokevirtual 207	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   23: astore_1
    //   24: aload_1
    //   25: sipush 10002
    //   28: invokestatic 212	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   31: aload_0
    //   32: invokestatic 215	com/estrongs/fs/impl/local/m:b	(Ljava/io/InputStream;)[B
    //   35: astore_2
    //   36: aload_2
    //   37: areturn
    //   38: astore_0
    //   39: aconst_null
    //   40: astore_1
    //   41: aconst_null
    //   42: astore_0
    //   43: aload_0
    //   44: ifnull +7 -> 51
    //   47: aload_0
    //   48: invokevirtual 220	java/io/InputStream:close	()V
    //   51: aload_1
    //   52: ifnull +7 -> 59
    //   55: aload_1
    //   56: invokevirtual 223	java/io/OutputStream:close	()V
    //   59: aload 4
    //   61: invokevirtual 224	android/net/LocalSocket:close	()V
    //   64: aconst_null
    //   65: areturn
    //   66: astore_0
    //   67: aconst_null
    //   68: areturn
    //   69: astore_0
    //   70: aconst_null
    //   71: astore_1
    //   72: aconst_null
    //   73: astore_2
    //   74: aload_2
    //   75: ifnull +7 -> 82
    //   78: aload_2
    //   79: invokevirtual 220	java/io/InputStream:close	()V
    //   82: aload_1
    //   83: ifnull +7 -> 90
    //   86: aload_1
    //   87: invokevirtual 223	java/io/OutputStream:close	()V
    //   90: aload 4
    //   92: invokevirtual 224	android/net/LocalSocket:close	()V
    //   95: aload_0
    //   96: athrow
    //   97: astore_0
    //   98: aconst_null
    //   99: areturn
    //   100: astore_1
    //   101: aload_0
    //   102: astore_2
    //   103: aconst_null
    //   104: astore_3
    //   105: aload_1
    //   106: astore_0
    //   107: aload_3
    //   108: astore_1
    //   109: goto -35 -> 74
    //   112: astore_3
    //   113: aload_0
    //   114: astore_2
    //   115: aload_3
    //   116: astore_0
    //   117: goto -43 -> 74
    //   120: astore_1
    //   121: aconst_null
    //   122: astore_1
    //   123: goto -80 -> 43
    //   126: astore_2
    //   127: goto -84 -> 43
    // Local variable table:
    //   start	length	slot	name	signature
    //   17	15	0	localInputStream	java.io.InputStream
    //   38	1	0	localIOException1	java.io.IOException
    //   42	6	0	localObject1	Object
    //   66	1	0	localIOException2	java.io.IOException
    //   69	27	0	localObject2	Object
    //   97	5	0	localIOException3	java.io.IOException
    //   106	11	0	localObject3	Object
    //   23	64	1	localOutputStream	java.io.OutputStream
    //   100	6	1	localObject4	Object
    //   108	1	1	localObject5	Object
    //   120	1	1	localIOException4	java.io.IOException
    //   122	1	1	localObject6	Object
    //   35	80	2	localObject7	Object
    //   126	1	2	localIOException5	java.io.IOException
    //   104	4	3	localObject8	Object
    //   112	4	3	localObject9	Object
    //   3	88	4	localLocalSocket	android.net.LocalSocket
    // Exception table:
    //   from	to	target	type
    //   12	18	38	java/io/IOException
    //   47	51	66	java/io/IOException
    //   55	59	66	java/io/IOException
    //   59	64	66	java/io/IOException
    //   12	18	69	finally
    //   78	82	97	java/io/IOException
    //   86	90	97	java/io/IOException
    //   90	95	97	java/io/IOException
    //   18	24	100	finally
    //   24	36	112	finally
    //   18	24	120	java/io/IOException
    //   24	36	126	java/io/IOException
  }
  
  public static String d(Context paramContext)
  {
    WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if (paramContext != null) {}
    for (paramContext = paramContext.getDeviceId();; paramContext = null)
    {
      if ((localWifiManager != null) && ((paramContext == null) || (paramContext.length() < 8))) {
        return localWifiManager.getConnectionInfo().getMacAddress();
      }
      return paramContext;
    }
  }
  
  public static boolean d()
  {
    return (Build.MANUFACTURER.equals("Amazon")) && ((ac.b().equals("Kindle Fire")) || (ac.b().startsWith("KF")));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */