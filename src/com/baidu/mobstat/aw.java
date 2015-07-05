package com.baidu.mobstat;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.baidu.mobstat.util.a;
import com.baidu.mobstat.util.c;
import com.baidu.mobstat.util.d;
import com.baidu.mobstat.util.e;
import com.baidu.mobstat.util.f;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;

final class aw
{
  private static String a = "";
  
  public static int a(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    try
    {
      paramContext = l(paramContext);
      return widthPixels;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        e.a("createAdReqURL", paramContext);
        paramContext = localDisplayMetrics;
      }
    }
  }
  
  /* Error */
  static String a()
  {
    // Byte code:
    //   0: new 41	java/lang/StringBuffer
    //   3: dup
    //   4: invokespecial 42	java/lang/StringBuffer:<init>	()V
    //   7: astore_3
    //   8: bipush 20
    //   10: newarray <illegal type>
    //   12: astore 4
    //   14: new 44	java/io/InputStreamReader
    //   17: dup
    //   18: new 46	java/io/FileInputStream
    //   21: dup
    //   22: ldc 48
    //   24: invokespecial 51	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   27: invokespecial 54	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   30: astore_2
    //   31: aload_2
    //   32: aload 4
    //   34: invokevirtual 60	java/io/Reader:read	([C)I
    //   37: istore_1
    //   38: iload_1
    //   39: iconst_m1
    //   40: if_icmpeq +77 -> 117
    //   43: iload_1
    //   44: aload 4
    //   46: arraylength
    //   47: if_icmpne +38 -> 85
    //   50: aload 4
    //   52: aload 4
    //   54: arraylength
    //   55: iconst_1
    //   56: isub
    //   57: caload
    //   58: bipush 13
    //   60: if_icmpeq +25 -> 85
    //   63: getstatic 66	java/lang/System:out	Ljava/io/PrintStream;
    //   66: aload 4
    //   68: invokevirtual 72	java/io/PrintStream:print	([C)V
    //   71: goto -40 -> 31
    //   74: astore_3
    //   75: aload_2
    //   76: ifnull +7 -> 83
    //   79: aload_2
    //   80: invokevirtual 75	java/io/Reader:close	()V
    //   83: aconst_null
    //   84: areturn
    //   85: iconst_0
    //   86: istore_0
    //   87: iload_0
    //   88: iload_1
    //   89: if_icmpge -58 -> 31
    //   92: aload 4
    //   94: iload_0
    //   95: caload
    //   96: bipush 13
    //   98: if_icmpeq +12 -> 110
    //   101: aload_3
    //   102: aload 4
    //   104: iload_0
    //   105: caload
    //   106: invokevirtual 79	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   109: pop
    //   110: iload_0
    //   111: iconst_1
    //   112: iadd
    //   113: istore_0
    //   114: goto -27 -> 87
    //   117: aload_2
    //   118: ifnull +7 -> 125
    //   121: aload_2
    //   122: invokevirtual 75	java/io/Reader:close	()V
    //   125: aload_3
    //   126: invokevirtual 82	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   129: invokevirtual 87	java/lang/String:trim	()Ljava/lang/String;
    //   132: ldc 89
    //   134: ldc 10
    //   136: invokevirtual 93	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   139: areturn
    //   140: astore_2
    //   141: aload_2
    //   142: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   145: goto -20 -> 125
    //   148: astore_2
    //   149: aload_2
    //   150: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   153: aconst_null
    //   154: areturn
    //   155: astore_3
    //   156: aconst_null
    //   157: astore_2
    //   158: aload_2
    //   159: ifnull +7 -> 166
    //   162: aload_2
    //   163: invokevirtual 75	java/io/Reader:close	()V
    //   166: aload_3
    //   167: athrow
    //   168: astore_2
    //   169: aload_2
    //   170: invokevirtual 96	java/io/IOException:printStackTrace	()V
    //   173: goto -7 -> 166
    //   176: astore_3
    //   177: goto -19 -> 158
    //   180: astore_2
    //   181: aconst_null
    //   182: astore_2
    //   183: goto -108 -> 75
    // Local variable table:
    //   start	length	slot	name	signature
    //   86	28	0	i	int
    //   37	53	1	j	int
    //   30	92	2	localInputStreamReader	InputStreamReader
    //   140	2	2	localIOException1	IOException
    //   148	2	2	localIOException2	IOException
    //   157	6	2	localObject1	Object
    //   168	2	2	localIOException3	IOException
    //   180	1	2	localException1	Exception
    //   182	1	2	localObject2	Object
    //   7	1	3	localStringBuffer	StringBuffer
    //   74	52	3	localException2	Exception
    //   155	12	3	localObject3	Object
    //   176	1	3	localObject4	Object
    //   12	91	4	arrayOfChar	char[]
    // Exception table:
    //   from	to	target	type
    //   31	38	74	java/lang/Exception
    //   43	71	74	java/lang/Exception
    //   101	110	74	java/lang/Exception
    //   121	125	140	java/io/IOException
    //   79	83	148	java/io/IOException
    //   8	31	155	finally
    //   162	166	168	java/io/IOException
    //   31	38	176	finally
    //   43	71	176	finally
    //   101	110	176	finally
    //   8	31	180	java/lang/Exception
  }
  
  private static String a(byte paramByte)
  {
    String str = "00" + Integer.toHexString(paramByte) + ":";
    return str.substring(str.length() - 3);
  }
  
  public static String a(Context paramContext, String paramString)
  {
    String str = "";
    Object localObject = paramContext.getPackageManager();
    label109:
    do
    {
      do
      {
        try
        {
          localObject = ((PackageManager)localObject).getApplicationInfo(paramContext.getPackageName(), 128);
          paramContext = str;
          if (localObject != null)
          {
            paramContext = null;
            if (metaData != null) {
              paramContext = metaData.get(paramString);
            }
            if (paramContext != null) {
              break label109;
            }
            e.a("StatSDK", "null,can't find information for key:" + paramString);
            paramContext = str;
            if (paramString == "BaiduMobAd_STAT_ID")
            {
              e.c("不能在manifest.xml中找到APP Key||can't find app key in manifest.xml.");
              paramContext = str;
            }
          }
        }
        catch (PackageManager.NameNotFoundException paramContext)
        {
          do
          {
            paramContext = str;
          } while (paramString != "BaiduMobAd_STAT_ID");
          e.c("不能在manifest.xml中找到APP Key||can't find app key in manifest.xml.");
          return "";
        }
        return paramContext;
        str = paramContext.toString();
        paramContext = str;
      } while (!str.trim().equals(""));
      paramContext = str;
    } while (paramString != "BaiduMobAd_STAT_ID");
    e.c("APP Key值为空||The value of APP Key is empty.");
    return str;
  }
  
  public static String a(Context paramContext, String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    localObject = null;
    HttpURLConnection localHttpURLConnection = c.a(paramContext, paramString1, paramInt1, paramInt2);
    localHttpURLConnection.setDoOutput(true);
    localHttpURLConnection.setInstanceFollowRedirects(false);
    localHttpURLConnection.setUseCaches(false);
    localHttpURLConnection.setRequestProperty("Content-Type", "gzip");
    localHttpURLConnection.connect();
    e.a("AdUtil.httpPost connected");
    StringBuilder localStringBuilder = new StringBuilder();
    for (;;)
    {
      try
      {
        paramContext = new BufferedWriter(new OutputStreamWriter(new GZIPOutputStream(localHttpURLConnection.getOutputStream())));
      }
      catch (IOException paramContext)
      {
        paramString1 = null;
        paramString2 = (String)localObject;
        continue;
      }
      try
      {
        paramContext.write(paramString2);
        paramContext.close();
        paramString1 = new BufferedReader(new InputStreamReader(localHttpURLConnection.getInputStream()));
        try
        {
          paramContext = paramString1.readLine();
          if (paramContext == null) {
            continue;
          }
          localStringBuilder.append(paramContext);
          continue;
          if (paramString1 == null) {
            continue;
          }
        }
        catch (IOException paramContext)
        {
          paramString2 = (String)localObject;
        }
      }
      catch (IOException paramString1)
      {
        paramString2 = paramContext;
        localObject = null;
        paramContext = paramString1;
        paramString1 = (String)localObject;
      }
    }
    paramString1.close();
    if (paramString2 != null) {
      paramString2.close();
    }
    localHttpURLConnection.disconnect();
    throw paramContext;
    paramString1.close();
    localHttpURLConnection.disconnect();
    paramInt1 = localHttpURLConnection.getContentLength();
    if ((localHttpURLConnection.getResponseCode() != 200) || (paramInt1 != 0)) {
      throw new IOException("http code =" + localHttpURLConnection.getResponseCode() + "& contentResponse=" + localStringBuilder);
    }
    return localStringBuilder.toString();
  }
  
  public static int b(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    try
    {
      paramContext = l(paramContext);
      return heightPixels;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        e.a("createAdReqURL", paramContext);
        paramContext = localDisplayMetrics;
      }
    }
  }
  
  public static int c(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    paramContext = paramContext.getPackageName();
    try
    {
      int i = getPackageInfo0versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      e.c(new Object[] { "sdkstat", "get app version code exception" });
    }
    return 1;
  }
  
  public static String d(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    paramContext = paramContext.getPackageName();
    try
    {
      paramContext = getPackageInfo0versionName;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      e.c(new Object[] { "sdkstat", "get app version name exception" });
    }
    return "";
  }
  
  public static String e(Context paramContext)
  {
    String str = String.format("%s_%s_%s", new Object[] { Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0) });
    try
    {
      if ((c.f(paramContext, "android.permission.ACCESS_FINE_LOCATION")) || (c.f(paramContext, "android.permission.ACCESS_COARSE_LOCATION")))
      {
        paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getCellLocation();
        e.a("getLocation cell:", paramContext + "");
        if (paramContext == null) {
          return str;
        }
        if ((paramContext instanceof GsmCellLocation))
        {
          paramContext = (GsmCellLocation)paramContext;
          return String.format("%s_%s_%s", new Object[] { String.format("%d", new Object[] { Integer.valueOf(paramContext.getCid()) }), String.format("%d", new Object[] { Integer.valueOf(paramContext.getLac()) }), Integer.valueOf(0) });
        }
        paramContext = paramContext.toString().replace("[", "").replace("]", "").split(",");
        paramContext = String.format("%s_%s_%s", new Object[] { paramContext[0], paramContext[3], paramContext[4] });
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
      e.a("getLocation", paramContext);
    }
    return str;
  }
  
  public static String f(Context paramContext)
  {
    try
    {
      if (c.f(paramContext, "android.permission.ACCESS_FINE_LOCATION"))
      {
        paramContext = ((LocationManager)paramContext.getSystemService("location")).getLastKnownLocation("gps");
        e.a("sdkstat", "location: " + paramContext);
        if (paramContext != null)
        {
          paramContext = String.format("%s_%s_%s", new Object[] { Long.valueOf(paramContext.getTime()), Double.valueOf(paramContext.getLongitude()), Double.valueOf(paramContext.getLatitude()) });
          return paramContext;
        }
      }
    }
    catch (Exception paramContext)
    {
      e.a("sdkstat", paramContext);
    }
    return "";
  }
  
  public static String g(Context paramContext)
  {
    try
    {
      if (c.f(paramContext, "android.permission.ACCESS_WIFI_STATE"))
      {
        localWifiInfo = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
        paramContext = localWifiInfo.getMacAddress();
      }
    }
    catch (Exception localException1)
    {
      WifiInfo localWifiInfo;
      paramContext = null;
    }
    try
    {
      e.a(String.format("ssid=%s mac=%s", new Object[] { localWifiInfo.getSSID(), localWifiInfo.getMacAddress() }));
      return paramContext;
    }
    catch (Exception localException2)
    {
      for (;;) {}
    }
    e.c("You need the android.Manifest.permission.ACCESS_WIFI_STATE permission. Open AndroidManifest.xml and just before the final </manifest> tag add:android.permission.ACCESS_WIFI_STATE");
    return null;
    e.a("sdkstat", localException1);
    return paramContext;
  }
  
  @SuppressLint({"NewApi"})
  static String h(Context paramContext)
  {
    Object localObject3 = null;
    Object localObject1 = null;
    StringBuffer localStringBuffer = new StringBuffer();
    for (;;)
    {
      Object localObject2;
      try
      {
        Enumeration localEnumeration1 = NetworkInterface.getNetworkInterfaces();
        localObject3 = localObject1;
        localObject4 = localObject1;
        if (localEnumeration1.hasMoreElements())
        {
          localObject3 = localObject1;
          NetworkInterface localNetworkInterface = (NetworkInterface)localEnumeration1.nextElement();
          localObject3 = localObject1;
          Enumeration localEnumeration2 = localNetworkInterface.getInetAddresses();
          localObject4 = localObject1;
          localObject1 = localObject4;
          localObject3 = localObject4;
          if (!localEnumeration2.hasMoreElements()) {
            continue;
          }
          localObject3 = localObject4;
          localObject1 = (InetAddress)localEnumeration2.nextElement();
          localObject3 = localObject4;
          if (((InetAddress)localObject1).isAnyLocalAddress()) {
            continue;
          }
          localObject3 = localObject4;
          if (!(localObject1 instanceof Inet4Address)) {
            continue;
          }
          localObject3 = localObject4;
          if (((InetAddress)localObject1).isLoopbackAddress()) {
            continue;
          }
          localObject3 = localObject4;
          if (((InetAddress)localObject1).isSiteLocalAddress())
          {
            localObject3 = localObject4;
            localObject1 = localNetworkInterface.getHardwareAddress();
            break label251;
          }
          localObject3 = localObject4;
          if (((InetAddress)localObject1).isLinkLocalAddress()) {
            break label248;
          }
          localObject3 = localObject4;
          localObject1 = localNetworkInterface.getHardwareAddress();
        }
        int i;
        localObject2 = localObject4;
      }
      catch (SocketException localSocketException)
      {
        localSocketException.printStackTrace();
        localObject4 = localObject3;
        if (localObject4 != null)
        {
          i = 0;
          if (i < localObject4.length)
          {
            localStringBuffer.append(a(localObject4[i]));
            i += 1;
            continue;
          }
          paramContext = localStringBuffer.substring(0, localStringBuffer.length() - 1).replaceAll(":", "");
          return paramContext;
        }
        localObject2 = g(paramContext);
        paramContext = (Context)localObject2;
        if (localObject2 == null) {
          continue;
        }
        return ((String)localObject2).replaceAll(":", "");
      }
      label248:
      label251:
      Object localObject4 = localObject2;
    }
  }
  
  @SuppressLint({"NewApi"})
  public static String i(Context paramContext)
  {
    Object localObject1 = Build.BRAND;
    if (("4.1.1".equals(Build.VERSION.RELEASE)) && ("TCT".equals(localObject1))) {
      localObject1 = "";
    }
    Object localObject2;
    for (;;)
    {
      return (String)localObject1;
      String str = "";
      localObject1 = str;
      localObject2 = str;
      try
      {
        if (c.f(paramContext, "android.permission.BLUETOOTH"))
        {
          localObject2 = str;
          paramContext = BluetoothAdapter.getDefaultAdapter();
          localObject1 = str;
          if (paramContext != null)
          {
            localObject2 = str;
            paramContext = paramContext.getAddress();
            localObject1 = paramContext;
            if (paramContext != null)
            {
              localObject2 = paramContext;
              paramContext = d.a(a.a(t.e, paramContext.getBytes()), "utf-8");
              return paramContext;
            }
          }
        }
      }
      catch (Exception paramContext)
      {
        e.a("sdkstat", paramContext);
      }
    }
    return (String)localObject2;
  }
  
  public static String j(Context paramContext)
  {
    int k = 1;
    if (paramContext == null) {}
    while (!c.f(paramContext, "android.permission.ACCESS_WIFI_STATE")) {
      return "";
    }
    if (c.f(paramContext, "android.permission.ACCESS_FINE_LOCATION")) {}
    for (boolean bool = ((LocationManager)paramContext.getSystemService("location")).isProviderEnabled("gps");; bool = false)
    {
      Object localObject = (WifiManager)paramContext.getSystemService("wifi");
      WifiInfo localWifiInfo = ((WifiManager)localObject).getConnectionInfo();
      JSONObject localJSONObject = new JSONObject();
      JSONArray localJSONArray = new JSONArray();
      List localList = ((WifiManager)localObject).getScanResults();
      int i = 0;
      if ((localList != null) && (i < localList.size()) && (i < 10))
      {
        ScanResult localScanResult = (ScanResult)localList.get(i);
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(BSSID);
        localStringBuilder.append("|");
        String str = SSID.replaceAll("\\|", "");
        localObject = str;
        if (str.length() > 30) {
          localObject = str.substring(0, 30);
        }
        localStringBuilder.append((String)localObject);
        localStringBuilder.append("|");
        localStringBuilder.append(level);
        localStringBuilder.append("|");
        if ((localWifiInfo != null) && (BSSID.equals(localWifiInfo.getBSSID()))) {}
        for (int j = 1;; j = 0)
        {
          localStringBuilder.append(j);
          localJSONArray.put(localStringBuilder.toString());
          i += 1;
          break;
        }
      }
      for (;;)
      {
        try
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append(System.currentTimeMillis());
          ((StringBuilder)localObject).append("|");
          if (!bool) {
            continue;
          }
          i = k;
          ((StringBuilder)localObject).append(i);
          ((StringBuilder)localObject).append("|");
          ((StringBuilder)localObject).append(f(paramContext));
          localJSONObject.put("ap-list", localJSONArray);
          localJSONObject.put("meta-data", ((StringBuilder)localObject).toString());
          paramContext = localJSONObject.toString().getBytes();
          paramContext = d.a(a.a(t.e, paramContext), "UTF-8");
          paramContext = paramContext + "|" + t.b;
        }
        catch (Exception paramContext)
        {
          paramContext.printStackTrace();
          paramContext = "";
          continue;
        }
        return paramContext;
        i = 0;
      }
    }
  }
  
  @SuppressLint({"NewApi"})
  public static String k(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    String str = localNetworkInfo.getTypeName();
    paramContext = str;
    if (!str.equals("WIFI"))
    {
      paramContext = str;
      if (localNetworkInfo.getSubtypeName() != null) {
        paramContext = localNetworkInfo.getSubtypeName();
      }
    }
    return paramContext;
  }
  
  public static DisplayMetrics l(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics;
  }
  
  public static String m(Context paramContext)
  {
    paramContext = paramContext.getPackageName();
    try
    {
      paramContext = d.a(a.a(t.e, paramContext.getBytes()), "UTF-8");
      return paramContext;
    }
    catch (Exception paramContext)
    {
      f.a(paramContext);
    }
    return "";
  }
  
  public static String n(Context paramContext)
  {
    int i;
    if (TextUtils.isEmpty(a))
    {
      paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
      i = 0;
    }
    for (;;)
    {
      int j;
      int k;
      if (paramContext != null)
      {
        j = 1;
        if (i >= paramContext.size()) {
          break label125;
        }
        k = 1;
        label43:
        if ((j & k) != 0)
        {
          ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)paramContext.get(i);
          if ((localRunningAppProcessInfo == null) || (pid != Process.myPid())) {
            break label136;
          }
          paramContext = processName;
          i = paramContext.lastIndexOf(':');
          if ((i <= 0) || (i + 1 >= paramContext.length())) {
            break label130;
          }
        }
      }
      label125:
      label130:
      for (paramContext = paramContext.substring(i + 1);; paramContext = "")
      {
        a = paramContext;
        return a;
        j = 0;
        break;
        k = 0;
        break label43;
      }
      label136:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */