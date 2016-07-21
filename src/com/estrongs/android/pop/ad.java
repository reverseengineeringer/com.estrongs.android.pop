package com.estrongs.android.pop;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Environment;
import android.preference.PreferenceManager;
import com.estrongs.android.pop.esclasses.p;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.pop.utils.de;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.j;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.i;
import com.estrongs.fs.util.a.c;
import com.estrongs.fs.w;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class ad
{
  public static Boolean b = Boolean.valueOf(false);
  private static Comparator<String> c = new ae();
  private static ad e = null;
  private static Context f = null;
  boolean a;
  private boolean d;
  private ArrayList<af> g = new ArrayList();
  
  private ad(Context paramContext)
  {
    f = paramContext;
    a = PreferenceManager.getDefaultSharedPreferences(f).getBoolean("show_associate_app", true);
    d = PreferenceManager.getDefaultSharedPreferences(f).getBoolean("hidden_file", false);
  }
  
  private String W(String paramString)
  {
    if (paramString != null)
    {
      paramString = paramString.split("\n");
      if ((paramString.length > 0) && (paramString[0].length() > 0)) {
        return paramString[0];
      }
    }
    return null;
  }
  
  private long X(String paramString)
  {
    long l2 = 0L;
    long l1 = l2;
    if (paramString != null)
    {
      paramString = paramString.split("\n");
      l1 = l2;
      if (paramString.length > 1)
      {
        l1 = l2;
        if (paramString[1].length() <= 0) {}
      }
    }
    try
    {
      l1 = Long.parseLong(paramString[1]);
      return l1;
    }
    catch (Exception paramString) {}
    return 0L;
  }
  
  private String Y(String paramString)
  {
    String str = null;
    if (ap.J(paramString)) {
      str = "serverlistdb";
    }
    do
    {
      return str;
      if ((ap.L(paramString)) || (ap.K(paramString)) || (ap.o(paramString)) || (ap.r(paramString))) {
        return "serverlistdb3";
      }
      if (ap.aG(paramString)) {
        return "serverlistdb7";
      }
      if (ap.aQ(paramString)) {
        return "serverlistdb8";
      }
    } while (!ap.M(paramString));
    return "serverlistdb9";
  }
  
  private String[] Z(String paramString)
  {
    String[] arrayOfString = new String[2];
    if ((!bk.a(paramString)) && (paramString.contains("~~")))
    {
      paramString = paramString.split("~~");
      if (paramString.length < 2)
      {
        arrayOfString[0] = "";
        arrayOfString[1] = paramString[0];
        return arrayOfString;
      }
      arrayOfString[0] = paramString[0];
      arrayOfString[1] = paramString[1];
      return arrayOfString;
    }
    arrayOfString[0] = paramString;
    arrayOfString[1] = "";
    return arrayOfString;
  }
  
  public static ad a(Context paramContext)
  {
    if (e == null) {
      e = new ad(paramContext);
    }
    if (paramContext != null) {
      e.b(paramContext);
    }
    return e;
  }
  
  private String a(String paramString1, String paramString2, Comparator<String> paramComparator)
  {
    String str = null;
    try
    {
      if (bk.a(paramString1))
      {
        paramString1 = PreferenceManager.getDefaultSharedPreferences(f);
        localMap = paramString1.getAll();
        localIterator = localMap.entrySet().iterator();
        paramString1 = str;
      }
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        try
        {
          Map localMap;
          Iterator localIterator;
          if (!localIterator.hasNext()) {
            break;
          }
          str = (String)((Map.Entry)localIterator.next()).getKey();
          if (paramComparator.compare(str, paramString2) == 0) {
            str = (String)localMap.get(str);
          }
        }
        catch (Exception paramString2)
        {
          boolean bool;
          return paramString1;
        }
        try
        {
          bool = bk.b(str);
          paramString1 = str;
          if (bool)
          {
            return str;
            paramString1 = f.getSharedPreferences(paramString1, 0);
          }
        }
        catch (Exception paramString1)
        {
          return str;
        }
      }
      paramString1 = paramString1;
      return null;
    }
    return paramString1;
  }
  
  public static void a(Context paramContext, String paramString)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putString("fex_version", paramString);
    paramContext.commit();
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = paramContext.getSharedPreferences("checklistdb", 0).edit();
    paramContext.putString(paramString1, paramString2);
    paramContext.commit();
  }
  
  public static void a(Context paramContext, Map<String, String> paramMap)
  {
    paramContext = paramContext.getSharedPreferences("checklistdb", 0).getAll();
    if ((paramContext != null) && (!paramContext.isEmpty())) {
      paramMap.putAll(paramContext);
    }
  }
  
  private void aa(String paramString)
  {
    paramString = f.getSharedPreferences(paramString, 0);
    Object localObject1 = paramString.getAll();
    Object localObject2;
    if (!((Map)localObject1).isEmpty())
    {
      localObject2 = f.getSharedPreferences("serverlistdb6", 0);
      if (((SharedPreferences)localObject2).getAll().size() != 0) {
        break label52;
      }
    }
    for (;;)
    {
      return;
      label52:
      paramString = paramString.edit();
      Map localMap = ((SharedPreferences)localObject2).getAll();
      localObject2 = ((SharedPreferences)localObject2).edit();
      localObject1 = ((Map)localObject1).keySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        String str = (String)((Iterator)localObject1).next();
        if (localMap.containsKey(str))
        {
          paramString.remove(str);
          paramString.commit();
          ((SharedPreferences.Editor)localObject2).remove(str);
          ((SharedPreferences.Editor)localObject2).commit();
        }
      }
    }
  }
  
  private void ab(String paramString)
  {
    if (Y()) {}
    Object localObject;
    SharedPreferences.Editor localEditor;
    do
    {
      return;
      localObject = f.getSharedPreferences(paramString, 0);
      localEditor = ((SharedPreferences)localObject).edit();
      localObject = ((SharedPreferences)localObject).getAll();
    } while (((Map)localObject).isEmpty());
    Iterator localIterator = ((Map)localObject).keySet().iterator();
    label53:
    String str1;
    String str2;
    if (localIterator.hasNext())
    {
      str1 = (String)localIterator.next();
      str2 = ap.bX(str1);
      if ((!paramString.equals("serverlistdb6")) && (!paramString.equals("serverlistdb4"))) {
        break label142;
      }
      localEditor.putBoolean(str2, ((Boolean)((Map)localObject).get(str1)).booleanValue());
    }
    for (;;)
    {
      localEditor.remove(str1);
      localEditor.commit();
      break label53;
      break;
      label142:
      if (paramString.equals("serverlistdb5")) {
        localEditor.putInt(str2, ((Integer)((Map)localObject).get(str1)).intValue());
      } else {
        localEditor.putString(str2, (String)((Map)localObject).get(str1));
      }
    }
  }
  
  private ArrayList<String> b(ArrayList<String> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      String str = (String)paramArrayList.next();
      if (ap.cg(str))
      {
        if (aE()) {
          localArrayList.add(str);
        }
      }
      else if (ap.aG(str))
      {
        if (!z.U) {
          localArrayList.add(str);
        }
      }
      else if (ap.t(str))
      {
        if (!z.T) {
          localArrayList.add(str);
        }
      }
      else if (ap.s(str))
      {
        if (!z.ae) {
          localArrayList.add(str);
        }
      }
      else {
        localArrayList.add(str);
      }
    }
    return localArrayList;
  }
  
  private void b(String paramString1, String paramString2, Comparator<String> paramComparator)
  {
    LinkedList localLinkedList = new LinkedList();
    try
    {
      if (bk.a(paramString1)) {}
      for (paramString1 = PreferenceManager.getDefaultSharedPreferences(f);; paramString1 = f.getSharedPreferences(paramString1, 0))
      {
        Iterator localIterator = paramString1.getAll().entrySet().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)((Map.Entry)localIterator.next()).getKey();
          if (paramComparator.compare(str, paramString2) == 0) {
            localLinkedList.add(str);
          }
        }
      }
      paramString1 = paramString1.edit();
      paramString2 = localLinkedList.iterator();
      while (paramString2.hasNext()) {
        paramString1.remove((String)paramString2.next());
      }
      paramString1.commit();
      return;
    }
    catch (Exception paramString1) {}
  }
  
  public static boolean b(Context paramContext, String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramContext.getSharedPreferences("checklistdb", 0).getAll().containsKey(paramString);
  }
  
  private static boolean bu()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("isUninitDocumentExtList", true);
  }
  
  private static void bv()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("isUninitDocumentExtList", false);
    localEditor.commit();
  }
  
  public static String c(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getString("fex_version", "0");
  }
  
  public static void c(Context paramContext, String paramString)
  {
    if (paramString == null) {
      return;
    }
    paramContext = paramContext.getSharedPreferences("checklistdb", 0).edit();
    paramContext.remove(paramString);
    paramContext.commit();
  }
  
  public static void d(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("checklistdb", 0).edit();
    paramContext.clear();
    paramContext.commit();
  }
  
  /* Error */
  private void d(String paramString, long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: new 331	java/io/File
    //   6: dup
    //   7: new 333	java/lang/StringBuilder
    //   10: dup
    //   11: invokespecial 334	java/lang/StringBuilder:<init>	()V
    //   14: getstatic 339	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   17: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: ldc_w 345
    //   23: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: invokespecial 351	java/io/File:<init>	(Ljava/lang/String;)V
    //   32: astore 6
    //   34: aload 6
    //   36: invokevirtual 354	java/io/File:exists	()Z
    //   39: ifne +102 -> 141
    //   42: aload 5
    //   44: astore 4
    //   46: aload 6
    //   48: invokevirtual 357	java/io/File:mkdirs	()Z
    //   51: ifeq +34 -> 85
    //   54: new 359	java/io/FileOutputStream
    //   57: dup
    //   58: new 333	java/lang/StringBuilder
    //   61: dup
    //   62: invokespecial 334	java/lang/StringBuilder:<init>	()V
    //   65: getstatic 339	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   68: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: ldc_w 361
    //   74: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: invokespecial 362	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   83: astore 4
    //   85: aload 4
    //   87: ifnull +39 -> 126
    //   90: aload 4
    //   92: new 333	java/lang/StringBuilder
    //   95: dup
    //   96: invokespecial 334	java/lang/StringBuilder:<init>	()V
    //   99: aload_1
    //   100: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: ldc 72
    //   105: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: lload_2
    //   109: invokevirtual 365	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   112: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: invokevirtual 369	java/lang/String:getBytes	()[B
    //   118: invokevirtual 373	java/io/FileOutputStream:write	([B)V
    //   121: aload 4
    //   123: invokevirtual 376	java/io/FileOutputStream:close	()V
    //   126: return
    //   127: astore 4
    //   129: aload 4
    //   131: invokevirtual 379	java/io/FileNotFoundException:printStackTrace	()V
    //   134: aload 5
    //   136: astore 4
    //   138: goto -53 -> 85
    //   141: new 331	java/io/File
    //   144: dup
    //   145: new 333	java/lang/StringBuilder
    //   148: dup
    //   149: invokespecial 334	java/lang/StringBuilder:<init>	()V
    //   152: getstatic 339	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   155: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: ldc_w 361
    //   161: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   167: invokespecial 351	java/io/File:<init>	(Ljava/lang/String;)V
    //   170: invokevirtual 382	java/io/File:delete	()Z
    //   173: pop
    //   174: new 359	java/io/FileOutputStream
    //   177: dup
    //   178: new 333	java/lang/StringBuilder
    //   181: dup
    //   182: invokespecial 334	java/lang/StringBuilder:<init>	()V
    //   185: getstatic 339	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   188: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: ldc_w 361
    //   194: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   200: invokespecial 362	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   203: astore 4
    //   205: goto -120 -> 85
    //   208: astore 4
    //   210: aload 4
    //   212: invokevirtual 379	java/io/FileNotFoundException:printStackTrace	()V
    //   215: aload 5
    //   217: astore 4
    //   219: goto -134 -> 85
    //   222: astore_1
    //   223: aload_1
    //   224: invokevirtual 383	java/io/IOException:printStackTrace	()V
    //   227: goto -106 -> 121
    //   230: astore_1
    //   231: aload_1
    //   232: invokevirtual 383	java/io/IOException:printStackTrace	()V
    //   235: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	236	0	this	ad
    //   0	236	1	paramString	String
    //   0	236	2	paramLong	long
    //   44	78	4	localObject1	Object
    //   127	3	4	localFileNotFoundException1	FileNotFoundException
    //   136	68	4	localObject2	Object
    //   208	3	4	localFileNotFoundException2	FileNotFoundException
    //   217	1	4	localObject3	Object
    //   1	215	5	localObject4	Object
    //   32	15	6	localFile	File
    // Exception table:
    //   from	to	target	type
    //   54	85	127	java/io/FileNotFoundException
    //   174	205	208	java/io/FileNotFoundException
    //   90	121	222	java/io/IOException
    //   121	126	230	java/io/IOException
  }
  
  public com.estrongs.fs.util.a.a A(String paramString)
  {
    paramString = com.estrongs.android.pop.view.utils.ac.a(f, paramString);
    int i = c;
    if (d == 0) {}
    for (boolean bool = true;; bool = false) {
      switch (i)
      {
      default: 
        return null;
      }
    }
    return new com.estrongs.fs.util.a.d(bool);
    return new com.estrongs.fs.util.a.b(bool);
    return new com.estrongs.fs.util.a.e(bool);
    return new c(bool);
  }
  
  @SuppressLint({"NewApi"})
  public String A()
  {
    Object localObject1 = "/sdcard/Download";
    try
    {
      localObject2 = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();
      localObject1 = localObject2;
    }
    catch (Throwable localThrowable)
    {
      Object localObject2;
      Map localMap;
      for (;;) {}
    }
    localMap = f.getSharedPreferences("preference", 0).getAll();
    localObject2 = localObject1;
    if (!localMap.isEmpty())
    {
      localObject2 = localObject1;
      if (localMap.containsKey("download_path")) {
        localObject2 = (String)localMap.get("download_path");
      }
    }
    localObject1 = new File((String)localObject2);
    if (!((File)localObject1).exists()) {
      ((File)localObject1).mkdirs();
    }
    return (String)localObject2;
  }
  
  public void A(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("real_time_monitor", paramBoolean);
    localEditor.commit();
    FexApplication.a().a("real_time_monitor", Boolean.valueOf(paramBoolean));
    B(false);
  }
  
  public String B(String paramString)
  {
    String str = "0031";
    if (paramString.equals("view_local")) {
      str = "0000";
    }
    return PreferenceManager.getDefaultSharedPreferences(f).getString(paramString, str);
  }
  
  public void B(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("real_time_monitor_should_open", paramBoolean);
    localEditor.commit();
  }
  
  public boolean B()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("bt_turnoff", true);
  }
  
  public String C()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getString("language_setting", "-1");
  }
  
  public void C(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("show_nomedia_should_open", paramBoolean);
    localEditor.commit();
  }
  
  public boolean C(String paramString)
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getAll().containsKey(paramString);
  }
  
  public long D()
  {
    return f.getSharedPreferences("preference", 0).getLong("upgrade_last_check_time", 0L);
  }
  
  public void D(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("ftpsvrroot", paramString);
    localEditor.commit();
  }
  
  public void D(boolean paramBoolean)
  {
    e("charging_booster_opened", paramBoolean);
  }
  
  public long E()
  {
    return f.getSharedPreferences("preference", 0).getLong("recomm_last_check_time", 0L);
  }
  
  public void E(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("ftpsvrcharset", paramString);
    localEditor.commit();
  }
  
  public java.text.DateFormat F()
  {
    return android.text.format.DateFormat.getDateFormat(f);
  }
  
  public void F(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("PCS_backup_path", paramString);
    localEditor.commit();
  }
  
  public java.text.DateFormat G()
  {
    return android.text.format.DateFormat.getDateFormat(f);
  }
  
  public void G(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("ap_ssid", paramString);
    localEditor.commit();
  }
  
  public String H()
  {
    String str2 = PreferenceManager.getDefaultSharedPreferences(f).getString("netpasswd", null);
    String str1 = str2;
    if (str2 != null)
    {
      str1 = str2;
      if (Y()) {
        str1 = bk.d(str2);
      }
    }
    return str1;
  }
  
  public void H(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("ap_passwd", paramString);
    localEditor.commit();
  }
  
  public void I(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("root_mountlist", paramString);
    localEditor.commit();
  }
  
  public boolean I()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("net_passwd_enable", false);
  }
  
  public void J(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("last_bk_setting_file", paramString);
    localEditor.commit();
  }
  
  public boolean J()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("start_passwd_enable", false);
  }
  
  public void K(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("last_content_chooser_path", paramString);
    localEditor.commit();
  }
  
  public boolean K()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("hided_dirfiles_passwd_enable", false);
  }
  
  public String L()
  {
    return null;
  }
  
  public void L(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("pcs_upgrade_phone_pass", bk.c(paramString));
    localEditor.commit();
  }
  
  public int M()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getInt("file_dialog_sort", 0);
  }
  
  public void M(String paramString)
  {
    SharedPreferences.Editor localEditor = f.getSharedPreferences("documentExtlistdb", 0).edit();
    localEditor.putString(paramString, paramString);
    localEditor.commit();
    b = Boolean.valueOf(true);
  }
  
  public ArrayList<String> N()
  {
    Object localObject2 = PreferenceManager.getDefaultSharedPreferences(f);
    String str = ((SharedPreferences)localObject2).getString("default_window_list", null);
    ArrayList localArrayList = new ArrayList();
    boolean bool;
    if (str != null)
    {
      bool = ((SharedPreferences)localObject2).getBoolean("homepage_added", false);
      localObject2 = new JSONParser();
    }
    for (;;)
    {
      try
      {
        localArrayList.addAll((JSONArray)((JSONParser)localObject2).parse(str));
        localArrayList.remove("pcs://");
        if ((!bool) && (!localArrayList.contains("#home_page#")))
        {
          localArrayList.add(0, "#home_page#");
          f(localArrayList);
        }
      }
      catch (ParseException localParseException)
      {
        localParseException.printStackTrace();
        continue;
      }
      localArrayList.remove("pcs://");
      localArrayList.remove("app://");
      localArrayList.remove("mynetwork://");
      return localArrayList;
      Object localObject1;
      if (z.q != null)
      {
        localObject1 = z.q.iterator();
        while (((Iterator)localObject1).hasNext()) {
          localArrayList.add(z.a((String)((Iterator)localObject1).next()));
        }
      }
      else
      {
        localObject1 = com.estrongs.android.i.a.c("defaultpages");
        if (localObject1 != null)
        {
          localArrayList.addAll(b((ArrayList)localObject1));
        }
        else
        {
          localArrayList.add("#home_page#");
          localArrayList.add("#home#");
          localArrayList.add("app://");
        }
      }
    }
  }
  
  public void N(String paramString)
  {
    if (paramString == null) {
      return;
    }
    SharedPreferences.Editor localEditor = f.getSharedPreferences("documentExtlistdb", 0).edit();
    localEditor.remove(paramString);
    localEditor.commit();
    b = Boolean.valueOf(true);
  }
  
  public boolean O()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("show_disk_usage", true);
  }
  
  public boolean O(String paramString)
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("showbks_" + paramString, true);
  }
  
  public boolean P()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("show_sdcard_notification", false);
  }
  
  public boolean P(String paramString)
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean(paramString + "_expanded", false);
  }
  
  public String Q(String paramString)
  {
    if ((!ap.O(paramString)) && (!ap.Q(paramString))) {
      return null;
    }
    return f.getSharedPreferences("adbFolderName", 0).getString(paramString, null);
  }
  
  public boolean Q()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("show_disk_remain", true);
  }
  
  public void R(String paramString)
  {
    SharedPreferences localSharedPreferences = f.getSharedPreferences("adbFolderName", 0);
    Object localObject = localSharedPreferences.getAll();
    localSharedPreferences.edit();
    if (!((Map)localObject).isEmpty())
    {
      localObject = ((Map)localObject).keySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        if (str.startsWith(paramString))
        {
          SharedPreferences.Editor localEditor = localSharedPreferences.edit();
          localEditor.remove(str);
          localEditor.commit();
        }
      }
    }
  }
  
  public boolean R()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("show_usb_prompt", true);
  }
  
  public void S(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.remove(paramString + "_es_uuid");
    localEditor.commit();
  }
  
  public boolean S()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("ftpsvr_auto_exit", false);
  }
  
  public String T()
  {
    String str2 = PreferenceManager.getDefaultSharedPreferences(f).getString("ftpsvrpasswd", null);
    String str1 = str2;
    if (str2 != null)
    {
      str1 = str2;
      if (Y()) {
        str1 = bk.d(str2);
      }
    }
    return str1;
  }
  
  public String T(String paramString)
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getString(paramString + "_es_uuid", null);
  }
  
  public String U()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getString("ftpsvruser", null);
  }
  
  public void U(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("es_tool_file_name", paramString);
    localEditor.commit();
  }
  
  public String V()
  {
    String str2 = PreferenceManager.getDefaultSharedPreferences(f).getString("ftpsvrroot", "/sdcard");
    String str1 = str2;
    if (z.I != null)
    {
      str1 = str2;
      if (str2.equalsIgnoreCase("/sdcard")) {
        str1 = z.I;
      }
    }
    return str1;
  }
  
  public void V(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("remote_setting", paramString);
    localEditor.putLong("last_remote_setting_update_time", System.currentTimeMillis());
    localEditor.commit();
  }
  
  public int W()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(f);
    try
    {
      int i = localSharedPreferences.getInt("ftpsvrport", 3721);
      return i;
    }
    catch (Exception localException) {}
    return 3721;
  }
  
  public String X()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getString("ftpsvrcharset", "UTF-8");
  }
  
  public boolean Y()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("passwordencode", false);
  }
  
  public void Z()
  {
    if (Y()) {}
    String str1;
    do
    {
      return;
      ab("serverlistdb");
      ab("serverlistdb6");
      ab("serverlistdb3");
      ab("serverlistdb4");
      ab("serverlistdb5");
      ab("serverlistdb7");
      ab("serverlistdb9");
      str1 = T();
      String str2 = U();
      if (str1 != null) {
        g(str2, bk.c(str1));
      }
      str1 = H();
    } while (str1 == null);
    x(bk.c(str1));
  }
  
  public String a(long paramLong)
  {
    localObject7 = f.getSharedPreferences("pcs_device_token", 0);
    localObject1 = ((SharedPreferences)localObject7).getString("pcs_device_token", null);
    Object localObject5;
    Object localObject2;
    if (localObject1 == null)
    {
      localObject5 = new File(a.b + "/devicetoken/dt");
      localObject2 = localObject1;
      if (!((File)localObject5).exists()) {}
    }
    for (;;)
    {
      try
      {
        localObject2 = new FileInputStream((File)localObject5);
      }
      catch (Exception localException2)
      {
        int i;
        label171:
        localObject7 = null;
        localObject2 = localObject1;
        localObject1 = localObject7;
      }
      for (;;)
      {
        try
        {
          localObject5 = new byte[64];
          i = ((FileInputStream)localObject2).read((byte[])localObject5);
          if (i <= 0) {
            continue;
          }
          localObject5 = new String((byte[])localObject5, 0, i);
          localObject1 = localObject5;
        }
        catch (Exception localException3)
        {
          Object localObject6;
          Object localObject3;
          localObject7 = localObject1;
          localObject1 = localObject4;
          Object localObject4 = localObject7;
          continue;
          break;
        }
        try
        {
          localObject5 = ((SharedPreferences)localObject7).edit();
          ((SharedPreferences.Editor)localObject5).putString("pcs_device_token", (String)localObject1);
          ((SharedPreferences.Editor)localObject5).commit();
          localObject5 = localObject2;
          localObject2 = localObject1;
          if (localObject5 == null) {}
        }
        catch (Exception localException4)
        {
          localObject7 = localObject1;
          localObject1 = localObject4;
          localObject4 = localObject7;
          continue;
        }
        try
        {
          ((FileInputStream)localObject5).close();
          localObject2 = localObject1;
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
          localObject3 = localObject1;
          break label171;
        }
      }
      return W((String)localObject2);
      localException2.printStackTrace();
      localObject6 = localObject1;
      localObject1 = localObject2;
      continue;
      localObject3 = localObject1;
      try
      {
        if (!new File(a.b + "/devicetoken/dt").exists())
        {
          d(W((String)localObject1), X((String)localObject1));
          localObject3 = localObject1;
        }
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
        localObject4 = localObject1;
      }
    }
  }
  
  public String a(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    if (f == null) {
      return null;
    }
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      paramString3 = "serverlistdb";
    }
    for (;;)
    {
      paramString3 = f.getSharedPreferences(paramString3, 0);
      if (paramString3 != null) {
        break;
      }
      return null;
      paramString3 = "serverlistdb3";
      continue;
      paramString3 = "serverlistdb7";
      continue;
      return "fake";
      paramString3 = "serverlistdb8";
    }
    Iterator localIterator = paramString3.getAll().entrySet().iterator();
    while (localIterator.hasNext())
    {
      String str1 = (String)((Map.Entry)localIterator.next()).getKey();
      paramString3 = str1;
      if (Y()) {
        paramString3 = ap.bY(str1);
      }
      if ((4 != paramInt) && (18 != paramInt))
      {
        str1 = ap.A(paramString3);
        String str2 = ap.a(paramString3);
        if ((str1 == null) || (str2 == null)) {
          return null;
        }
        if ((paramString1.equalsIgnoreCase(str1)) && (str2.equalsIgnoreCase(paramString2))) {
          return ap.C(paramString3);
        }
      }
      if (4 == paramInt)
      {
        if (ap.a(paramString3).equalsIgnoreCase(paramString1 + "@" + paramString2)) {
          return ap.av(paramString3);
        }
      }
      else if (ap.a(paramString3).equalsIgnoreCase(paramString1 + "@" + paramString2)) {
        return ap.aw(paramString3);
      }
    }
    return null;
  }
  
  public void a()
  {
    a = PreferenceManager.getDefaultSharedPreferences(f).getBoolean("show_associate_app", true);
    d = PreferenceManager.getDefaultSharedPreferences(f).getBoolean("hidden_file", false);
  }
  
  public void a(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putInt("file_dialog_sort", paramInt);
    localEditor.commit();
  }
  
  public void a(Point paramPoint, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("gesture_start_position_" + paramBoolean, g.a(paramPoint));
    localEditor.commit();
  }
  
  public void a(af paramaf)
  {
    synchronized (g)
    {
      g.add(paramaf);
      return;
    }
  }
  
  public void a(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("pcs_temp_token", paramString);
    localEditor.commit();
  }
  
  public void a(String paramString, int paramInt)
  {
    SharedPreferences localSharedPreferences = f.getSharedPreferences("serverlistdb5", 0);
    String str = paramString;
    if (Y()) {
      str = ap.bX(paramString);
    }
    paramString = localSharedPreferences.edit();
    paramString.putInt(str, paramInt);
    paramString.commit();
  }
  
  public void a(String paramString, long paramLong)
  {
    SharedPreferences.Editor localEditor = f.getSharedPreferences("pcs_device_token", 0).edit();
    localEditor.putString("pcs_device_token", paramString + "\n" + paramLong);
    localEditor.commit();
    d(paramString, paramLong);
  }
  
  public void a(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, false);
  }
  
  public void a(String paramString1, String paramString2, int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putInt(paramString1 + "_" + paramString2 + "_default_index", paramInt);
    localEditor.commit();
  }
  
  public void a(String paramString1, String arg2, boolean paramBoolean)
  {
    if (paramString1 == null) {
      return;
    }
    Object localObject = Y(paramString1);
    SharedPreferences.Editor localEditor = f.getSharedPreferences((String)localObject, 0).edit();
    if (Y()) {}
    for (localObject = ap.bX(paramString1);; localObject = paramString1)
    {
      String str = ???;
      if (??? == null) {
        str = "";
      }
      localEditor.putString((String)localObject, str + "~~" + new Date().getTime());
      localEditor.commit();
      if (!paramBoolean) {
        break;
      }
      b(paramString1);
      return;
    }
    synchronized (g)
    {
      localObject = g.iterator();
      if (((Iterator)localObject).hasNext()) {
        ((af)((Iterator)localObject).next()).a(paramString1, false, 0);
      }
    }
    if (com.estrongs.fs.a.a.c(paramString1).size() > 2) {
      com.estrongs.fs.a.b.a().a(com.estrongs.fs.a.a.a(com.estrongs.fs.a.a.c(paramString1), 1), paramString1);
    }
    for (;;)
    {
      com.estrongs.fs.a.b.a().c("scannedserver://");
      return;
      com.estrongs.fs.a.b.a().a(paramString1);
    }
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    int j = 1;
    int i = 1;
    if (paramString == null) {}
    Object localObject2;
    Object localObject3;
    String str1;
    do
    {
      return;
      boolean bool = g(paramString);
      synchronized (g)
      {
        localObject2 = g.iterator();
        if (((Iterator)localObject2).hasNext()) {
          ((af)((Iterator)localObject2).next()).a(paramString, bool, 1);
        }
      }
      localObject2 = Y(paramString);
      localObject3 = f.getSharedPreferences((String)localObject2, 0).edit();
      if (!Y()) {
        break;
      }
      ??? = ap.bX(paramString);
      ((SharedPreferences.Editor)localObject3).remove((String)???);
      ((SharedPreferences.Editor)localObject3).commit();
      e(paramString);
      if ((!ap.aG(paramString)) || (!paramBoolean)) {
        break label328;
      }
      localObject4 = f.getSharedPreferences("serverlistdb7", 0);
      localObject3 = ap.as(paramString);
      str1 = ap.ax(paramString);
    } while ((localObject3 == null) || (str1 == null));
    Object localObject4 = ((SharedPreferences)localObject4).getAll();
    if (!((Map)localObject4).isEmpty())
    {
      localObject4 = ((Map)localObject4).keySet().iterator();
      label212:
      String str2;
      do
      {
        j = i;
        if (!((Iterator)localObject4).hasNext()) {
          break;
        }
        str2 = (String)((Iterator)localObject4).next();
        if ((!ap.aG(str2)) || (!ap.ax(str2).equals(str1))) {
          break label426;
        }
        str2 = ap.as(str2);
      } while (str2 == null);
      if (!str2.equals(localObject3)) {
        break label426;
      }
      i = 0;
    }
    label328:
    label419:
    label426:
    for (;;)
    {
      break label212;
      ??? = paramString;
      break;
      if (j != 0)
      {
        if (!str1.equals("pcs")) {
          break label419;
        }
        if (!((String)localObject3).equals(ap.as(u.a().g()))) {
          com.estrongs.fs.impl.o.b.m(paramString);
        }
      }
      for (;;)
      {
        if ((paramBoolean) && (ap.K((String)???)) && (bk.a(a((String)localObject2, (String)???, c))))
        {
          b("sftpprivatekey", (String)???, c);
          b("sftpprivatekey_passphrases", (String)???, c);
        }
        if (ap.M(paramString)) {
          R(paramString);
        }
        com.estrongs.fs.a.b.a().b(paramString, com.estrongs.fs.a.a.a(com.estrongs.fs.a.a.c(paramString), 0));
        com.estrongs.fs.a.b.a().b(paramString, "scannedserver://");
        return;
        com.estrongs.fs.impl.o.b.m(paramString);
      }
    }
  }
  
  public void a(ArrayList<com.estrongs.android.pop.app.f.f> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.isEmpty()))
    {
      aa("serverlistdb");
      aa("serverlistdb3");
      aa("serverlistdb9");
      f.getSharedPreferences("serverlistdb6", 0).getAll().clear();
    }
    do
    {
      return;
      if (paramArrayList.contains(com.estrongs.android.pop.app.f.f.a)) {
        aa("serverlistdb");
      }
      if ((paramArrayList.contains(com.estrongs.android.pop.app.f.f.b)) || (paramArrayList.contains(com.estrongs.android.pop.app.f.f.c)) || (paramArrayList.contains(com.estrongs.android.pop.app.f.f.d)) || (paramArrayList.contains(com.estrongs.android.pop.app.f.f.e))) {
        aa("serverlistdb3");
      }
    } while (!paramArrayList.contains(com.estrongs.android.pop.app.f.f.f));
    aa("serverlistdb9");
  }
  
  public void a(List<h> paramList)
  {
    Map localMap = f.getSharedPreferences("serverlistdb", 0).getAll();
    if (!localMap.isEmpty())
    {
      Iterator localIterator = localMap.keySet().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject = (String)localMap.get(str);
        if (Y())
        {
          str = ap.bY(str);
          label85:
          localObject = Z((String)localObject);
          if (bk.a(localObject[0])) {
            localObject[0] = ap.a(str);
          }
          if (bk.a(localObject[1])) {
            break label193;
          }
          localObject = new com.estrongs.fs.impl.r.b(str, w.c, localObject[0], Long.parseLong(localObject[1]));
          label137:
          if (!g(str)) {
            break label211;
          }
          ((com.estrongs.fs.impl.r.b)localObject).putExtra("item_is_scanned_server", Boolean.valueOf(true));
        }
        for (;;)
        {
          str = d(str);
          if (!bk.a(str)) {
            ((com.estrongs.fs.impl.r.b)localObject).putExtra("device_name", str);
          }
          paramList.add(localObject);
          break;
          break label85;
          label193:
          localObject = new com.estrongs.fs.impl.r.b(str, w.c, localObject[0]);
          break label137;
          label211:
          ((com.estrongs.fs.impl.r.b)localObject).putExtra("item_is_scanned_server", Boolean.valueOf(false));
        }
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("su", paramBoolean);
    localEditor.commit();
    FexApplication.a().a("su", Boolean.valueOf(paramBoolean));
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    d = paramBoolean1;
    if (paramBoolean2)
    {
      SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
      localEditor.putBoolean("hidden_file", paramBoolean1);
      localEditor.commit();
      FexApplication.a().a("hidden_file", Boolean.valueOf(paramBoolean1));
    }
  }
  
  public boolean aA()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("not_show_falsified_alert", false);
  }
  
  public long aB()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getLong("pcs_uinfo_timestamp", 0L);
  }
  
  public String aC()
  {
    return bk.d(PreferenceManager.getDefaultSharedPreferences(f).getString("pcs_upgrade_phone_pass", ""));
  }
  
  public int aD()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getInt("pcs_upgrade_sms_count", 0);
  }
  
  public boolean aE()
  {
    if (z.ag) {
      return false;
    }
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("enable_recycle", true);
  }
  
  public boolean aF()
  {
    if (z.ap) {
      return false;
    }
    return a;
  }
  
  public boolean aG()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("share_associate_app", true);
  }
  
  public long aH()
  {
    String str = PreferenceManager.getDefaultSharedPreferences(f).getString("app_folder_update_time", null);
    if (str == null) {
      return 0L;
    }
    try
    {
      long l = Long.valueOf(str).longValue();
      return l;
    }
    catch (Exception localException) {}
    return 0L;
  }
  
  public void aI()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putLong("last_request_push_data_time", System.currentTimeMillis());
    localEditor.commit();
  }
  
  public long aJ()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getLong("last_request_push_data_time", 0L);
  }
  
  public void aK()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putInt("last_app_update_check_day", j.a());
    localEditor.commit();
  }
  
  public long aL()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getInt("last_app_update_check_day", 0);
  }
  
  public String aM()
  {
    String str2 = PreferenceManager.getDefaultSharedPreferences(f).getString("search_engine_default", null);
    String str1;
    if (str2 != null)
    {
      str1 = str2;
      if (!str2.equalsIgnoreCase("auto")) {}
    }
    else
    {
      str1 = de.c();
    }
    return str1;
  }
  
  public Long aN()
  {
    String str = PreferenceManager.getDefaultSharedPreferences(f).getString("search_engine_update_time", "0L");
    try
    {
      long l = Long.parseLong(str);
      return Long.valueOf(l);
    }
    catch (Exception localException) {}
    return Long.valueOf(0L);
  }
  
  public boolean aO()
  {
    if (!z.h) {
      return false;
    }
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("show_search_engine", true);
  }
  
  public String aP()
  {
    try
    {
      String str = PreferenceManager.getDefaultSharedPreferences(f).getString("search_engine_default", null);
      if ((str == null) || (str.equalsIgnoreCase("auto"))) {
        str = de.c();
      }
      for (;;)
      {
        if ("baidu".equals(str)) {
          return f.getString(2131232318);
        }
        CharSequence[] arrayOfCharSequence1 = f.getResources().getTextArray(2131492879);
        CharSequence[] arrayOfCharSequence2 = f.getResources().getTextArray(2131492878);
        int i = 0;
        while (i < arrayOfCharSequence1.length)
        {
          if (arrayOfCharSequence1[i].equals(str))
          {
            str = arrayOfCharSequence2[i].toString();
            return str;
          }
          i += 1;
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return null;
    }
    return null;
  }
  
  public boolean aQ()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("multithread_copy_enabled", false);
  }
  
  public void aR()
  {
    SharedPreferences.Editor localEditor = f.getSharedPreferences("documentExtlistdb", 0).edit();
    localEditor.clear();
    localEditor.commit();
    b = Boolean.valueOf(true);
  }
  
  int aS()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getInt("user_launch_time_count", 0);
  }
  
  long aT()
  {
    try
    {
      long l = Long.parseLong(PreferenceManager.getDefaultSharedPreferences(f).getString("first_launch_time1", "-1"));
      return l;
    }
    catch (Exception localException) {}
    return -1L;
  }
  
  public boolean aU()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("clear_associate_folders_after_uninstall", true);
  }
  
  public int aV()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getInt("sd_sortby", 5);
  }
  
  public boolean aW()
  {
    return true;
  }
  
  public boolean aX()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("ignore_inconsistent_sign_app", true);
  }
  
  public boolean aY()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(f);
    if ((p.a) && (cu.d(f))) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      boolean bool2 = bool1;
      if (localSharedPreferences.contains("is_xlarge_layout")) {
        bool2 = localSharedPreferences.getBoolean("is_xlarge_layout", bool1);
      }
      return bool2;
    }
  }
  
  public boolean aZ()
  {
    return false;
  }
  
  public boolean aa()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("root_reported", false);
  }
  
  public boolean ab()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("root_auto_install", false);
  }
  
  public boolean ac()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("close_notification", false);
  }
  
  public String ad()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getString("PCS_backup_path", null);
  }
  
  public String ae()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getString("PCS_ostype", null);
  }
  
  public String af()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getString("PCS_userinfo", null);
  }
  
  public void ag()
  {
    Object localObject = PreferenceManager.getDefaultSharedPreferences(f);
    if (((SharedPreferences)localObject).getLong("PCS_remind_upgrade_time", -1L) == -1L)
    {
      localObject = ((SharedPreferences)localObject).edit();
      ((SharedPreferences.Editor)localObject).putLong("PCS_remind_upgrade_time", System.currentTimeMillis() + 1296000000L);
      ((SharedPreferences.Editor)localObject).commit();
    }
  }
  
  public void ah()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.remove("PCS_remind_upgrade_time");
    localEditor.commit();
  }
  
  public String ai()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getString("ap_ssid", null);
  }
  
  public String aj()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getString("ap_passwd", null);
  }
  
  public boolean ak()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("ap_flag", false);
  }
  
  public boolean al()
  {
    int i = 0;
    Object localObject = PreferenceManager.getDefaultSharedPreferences(f);
    boolean bool1;
    if (ac.a() < 14) {
      bool1 = true;
    }
    boolean bool2;
    for (;;)
    {
      try
      {
        localObject = ((SharedPreferences)localObject).getAll().get("show_select_button");
        if (localObject != null)
        {
          bool2 = localObject instanceof Boolean;
          if (bool2) {
            continue;
          }
        }
        i = 1;
        bool2 = bool1;
      }
      catch (NullPointerException localNullPointerException)
      {
        i = 1;
        bool2 = bool1;
        continue;
      }
      if (i == 0) {
        break;
      }
      localObject = PreferenceManager.getDefaultSharedPreferences(f).edit();
      ((SharedPreferences.Editor)localObject).putBoolean("show_select_button", bool1);
      ((SharedPreferences.Editor)localObject).commit();
      return bool1;
      bool1 = false;
      continue;
      bool2 = ((Boolean)localObject).booleanValue();
    }
    return bool2;
  }
  
  public boolean am()
  {
    int i = 1;
    Object localObject = PreferenceManager.getDefaultSharedPreferences(f);
    boolean bool;
    for (;;)
    {
      try
      {
        localObject = ((SharedPreferences)localObject).getAll().get("gesture_setting_enabled");
        if (localObject != null)
        {
          bool = localObject instanceof Boolean;
          if (bool) {
            continue;
          }
        }
        i = 1;
        bool = false;
      }
      catch (NullPointerException localNullPointerException)
      {
        bool = false;
        continue;
      }
      if (i == 0) {
        break;
      }
      localObject = PreferenceManager.getDefaultSharedPreferences(f).edit();
      ((SharedPreferences.Editor)localObject).putBoolean("gesture_setting_enabled", false);
      ((SharedPreferences.Editor)localObject).commit();
      return false;
      bool = ((Boolean)localObject).booleanValue();
      i = 0;
    }
    return bool;
  }
  
  public boolean an()
  {
    int i = 0;
    Object localObject = PreferenceManager.getDefaultSharedPreferences(f);
    boolean bool1;
    if (ac.a() >= 14) {
      bool1 = true;
    }
    boolean bool2;
    for (;;)
    {
      try
      {
        localObject = ((SharedPreferences)localObject).getAll().get("show_windows_button");
        if (localObject != null)
        {
          bool2 = localObject instanceof Boolean;
          if (bool2) {
            continue;
          }
        }
        i = 1;
        bool2 = bool1;
      }
      catch (NullPointerException localNullPointerException)
      {
        i = 1;
        bool2 = bool1;
        continue;
      }
      if (i == 0) {
        break;
      }
      localObject = PreferenceManager.getDefaultSharedPreferences(f).edit();
      ((SharedPreferences.Editor)localObject).putBoolean("show_windows_button", bool1);
      ((SharedPreferences.Editor)localObject).commit();
      return bool1;
      bool1 = false;
      continue;
      bool2 = ((Boolean)localObject).booleanValue();
    }
    return bool2;
  }
  
  public boolean ao()
  {
    return false;
  }
  
  public boolean ap()
  {
    return false;
  }
  
  public boolean aq()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("traffic_show", true);
  }
  
  public boolean ar()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("send_statistics", true);
  }
  
  public long as()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getLong("last_statistics", 0L);
  }
  
  public boolean at()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("toolbar_setting_show_name", true);
  }
  
  public String au()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getString("root_mountlist", "");
  }
  
  public String av()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getString("last_bk_setting_file", "/sdcard/ESSettings.zip");
  }
  
  public String aw()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getString("last_content_chooser_path", "");
  }
  
  public long ax()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getLong("last_pcs_access", 0L);
  }
  
  public long ay()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getLong("last_pcs_verify", 0L);
  }
  
  public boolean az()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("visiable_audio_500", false);
  }
  
  public long b(String paramString, long paramLong)
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getLong(paramString, paramLong);
  }
  
  public String b()
  {
    return a(1000L);
  }
  
  public void b(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putInt("ftpsvrport", paramInt);
    localEditor.commit();
  }
  
  public void b(long paramLong)
  {
    SharedPreferences.Editor localEditor = f.getSharedPreferences("preference", 0).edit();
    localEditor.putLong("upgrade_last_check_time", paramLong);
    localEditor.commit();
  }
  
  public void b(Context paramContext)
  {
    f = paramContext;
  }
  
  public void b(af paramaf)
  {
    synchronized (g)
    {
      g.remove(paramaf);
      return;
    }
  }
  
  public void b(String paramString)
  {
    if (paramString == null) {
      return;
    }
    Object localObject2 = f.getSharedPreferences("serverlistdb6", 0);
    Map localMap = ((SharedPreferences)localObject2).getAll();
    ??? = ap.F(paramString);
    if (localMap.containsKey(???))
    {
      localObject2 = ((SharedPreferences)localObject2).edit();
      ((SharedPreferences.Editor)localObject2).remove((String)???);
      ((SharedPreferences.Editor)localObject2).commit();
    }
    synchronized (g)
    {
      localObject2 = g.iterator();
      if (((Iterator)localObject2).hasNext()) {
        ((af)((Iterator)localObject2).next()).a(paramString, false, 0);
      }
    }
    if (com.estrongs.fs.a.a.c(paramString).size() > 2) {
      com.estrongs.fs.a.b.a().a(com.estrongs.fs.a.a.a(com.estrongs.fs.a.a.c(paramString), 1));
    }
    for (;;)
    {
      com.estrongs.fs.a.b.a().c("scannedserver://");
      return;
      com.estrongs.fs.a.b.a().a(paramString);
    }
  }
  
  public void b(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = f.getSharedPreferences("devicename", 0).edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }
  
  public void b(String paramString1, String arg2, boolean paramBoolean)
  {
    if (paramString1 == null) {
      return;
    }
    if (ap.w(paramString1))
    {
      synchronized (g)
      {
        localObject1 = g.iterator();
        if (((Iterator)localObject1).hasNext()) {
          ((af)((Iterator)localObject1).next()).a(paramString1, true, 0);
        }
      }
      return;
    }
    Object localObject1 = Y(paramString1);
    localObject1 = f.getSharedPreferences((String)localObject1, 0);
    Object localObject2 = ((SharedPreferences)localObject1).getAll();
    label121:
    int j;
    if (!((Map)localObject2).isEmpty())
    {
      localObject2 = ((Map)localObject2).keySet().iterator();
      int i = 0;
      j = i;
      if (!((Iterator)localObject2).hasNext()) {
        break label164;
      }
      if (!paramString1.equals(ap.F((String)((Iterator)localObject2).next()))) {
        break label391;
      }
      i = 1;
    }
    label164:
    label391:
    for (;;)
    {
      break label121;
      j = 0;
      if ((j != 0) && (!paramBoolean)) {
        break;
      }
      SharedPreferences.Editor localEditor = ((SharedPreferences)localObject1).edit();
      if (Y()) {}
      for (localObject1 = ap.bX(paramString1);; localObject1 = paramString1)
      {
        localObject2 = ???;
        if (??? == null) {
          localObject2 = "";
        }
        localEditor.putString((String)localObject1, (String)localObject2 + "~~" + new Date().getTime());
        if (com.estrongs.android.h.e.a((String)localObject2)) {
          b(paramString1, (String)localObject2);
        }
        localEditor.commit();
        ??? = f.getSharedPreferences("serverlistdb6", 0).edit();
        ???.putBoolean((String)localObject1, true);
        ???.commit();
        synchronized (g)
        {
          localObject1 = g.iterator();
          if (!((Iterator)localObject1).hasNext()) {
            break;
          }
          ((af)((Iterator)localObject1).next()).a(paramString1, true, 0);
        }
      }
      com.estrongs.fs.a.b.a().c(ap.bn(paramString1));
      com.estrongs.fs.a.b.a().a(paramString1);
      com.estrongs.fs.a.b.a().c("scannedserver://");
      return;
    }
  }
  
  public void b(String paramString, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = f.getSharedPreferences("serverlistdb4", 0).edit();
    String str = paramString;
    if (Y()) {
      str = ap.bX(paramString);
    }
    localEditor.putBoolean(str, paramBoolean);
    localEditor.commit();
  }
  
  public void b(List<h> paramList)
  {
    Map localMap = f.getSharedPreferences("serverlistdb7", 0).getAll();
    if (!localMap.isEmpty())
    {
      Iterator localIterator = localMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        String[] arrayOfString = Z((String)localMap.get(str));
        if (Y()) {
          str = ap.bY(str);
        }
        w localw;
        for (;;)
        {
          localw = w.a(ap.ax(str));
          if (localw == null) {
            break;
          }
          if (bk.a(arrayOfString[1])) {
            break label144;
          }
          paramList.add(new com.estrongs.fs.impl.r.b(str, localw, arrayOfString[0], Long.parseLong(arrayOfString[1])));
          break;
        }
        label144:
        paramList.add(new com.estrongs.fs.impl.r.b(str, localw, arrayOfString[0]));
      }
    }
  }
  
  public void b(boolean paramBoolean)
  {
    Object localObject = PreferenceManager.getDefaultSharedPreferences(f).edit();
    ((SharedPreferences.Editor)localObject).putBoolean("show_pcs_drive", paramBoolean);
    ((SharedPreferences.Editor)localObject).commit();
    localObject = ap.bW(j(com.estrongs.android.pop.view.a.a));
    com.estrongs.fs.a.b.a().a((String)localObject + "*");
  }
  
  public void b(boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject = PreferenceManager.getDefaultSharedPreferences(f);
    if (paramBoolean2)
    {
      if (!((SharedPreferences)localObject).contains("charging_booster_old_user_opened"))
      {
        localObject = ((SharedPreferences)localObject).edit();
        ((SharedPreferences.Editor)localObject).putBoolean("charging_booster_old_user_opened", paramBoolean1);
        ((SharedPreferences.Editor)localObject).commit();
      }
      return;
    }
    localObject = ((SharedPreferences)localObject).edit();
    ((SharedPreferences.Editor)localObject).putBoolean("charging_booster_old_user_opened", paramBoolean1);
    ((SharedPreferences.Editor)localObject).commit();
  }
  
  public String ba()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getString("es_tool_file_name", null);
  }
  
  public long bb()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getLong("last_remote_setting_update_time", 0L);
  }
  
  public String bc()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getString("remote_setting", null);
  }
  
  public long bd()
  {
    return f.getSharedPreferences("preference", 0).getLong("recomm_last_click_dusb_time", 0L);
  }
  
  public boolean be()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("hightlight_floating_button", false);
  }
  
  public boolean bf()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("apk_icon_cahce_moved", false);
  }
  
  public long bg()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getLong("card_update_time", 0L);
  }
  
  public boolean bh()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("open_app_permission_notification", true);
  }
  
  public void bi()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("analysis_result_title_clicked", true);
    localEditor.commit();
  }
  
  public boolean bj()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("analysis_result_title_clicked", false);
  }
  
  public void bk()
  {
    e("disable_charge_lockscreen_guide", true);
  }
  
  public boolean bl()
  {
    return f("disable_charge_lockscreen_guide", false);
  }
  
  public void bm()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putLong("log_clear_time", new Date().getTime());
    localEditor.commit();
  }
  
  public long bn()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getLong("log_clear_time", -1L);
  }
  
  public boolean bo()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("show_nomedia", false);
  }
  
  public boolean bp()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("real_time_monitor", false);
  }
  
  public boolean bq()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("real_time_monitor_should_open", false);
  }
  
  public boolean br()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("show_nomedia_should_open", false);
  }
  
  public boolean bs()
  {
    return f("charging_booster_opened", false);
  }
  
  public boolean bt()
  {
    return f("charging_booster_old_user_opened", false);
  }
  
  /* Error */
  public void c()
  {
    // Byte code:
    //   0: getstatic 32	com/estrongs/android/pop/ad:f	Landroid/content/Context;
    //   3: ldc_w 1126
    //   6: iconst_0
    //   7: invokevirtual 196	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   10: invokeinterface 203 1 0
    //   15: astore_1
    //   16: aload_1
    //   17: ldc_w 1126
    //   20: iconst_1
    //   21: invokeinterface 262 3 0
    //   26: pop
    //   27: aload_1
    //   28: invokeinterface 214 1 0
    //   33: pop
    //   34: aconst_null
    //   35: astore_2
    //   36: new 331	java/io/File
    //   39: dup
    //   40: new 333	java/lang/StringBuilder
    //   43: dup
    //   44: invokespecial 334	java/lang/StringBuilder:<init>	()V
    //   47: getstatic 339	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   50: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: ldc_w 345
    //   56: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: invokespecial 351	java/io/File:<init>	(Ljava/lang/String;)V
    //   65: astore_3
    //   66: aload_3
    //   67: invokevirtual 354	java/io/File:exists	()Z
    //   70: ifne +71 -> 141
    //   73: aload_2
    //   74: astore_1
    //   75: aload_3
    //   76: invokevirtual 357	java/io/File:mkdirs	()Z
    //   79: ifeq +33 -> 112
    //   82: new 359	java/io/FileOutputStream
    //   85: dup
    //   86: new 333	java/lang/StringBuilder
    //   89: dup
    //   90: invokespecial 334	java/lang/StringBuilder:<init>	()V
    //   93: getstatic 339	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   96: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: ldc_w 1128
    //   102: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: invokespecial 362	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   111: astore_1
    //   112: aload_1
    //   113: ifnull +17 -> 130
    //   116: aload_1
    //   117: ldc_w 1130
    //   120: invokevirtual 369	java/lang/String:getBytes	()[B
    //   123: invokevirtual 373	java/io/FileOutputStream:write	([B)V
    //   126: aload_1
    //   127: invokevirtual 376	java/io/FileOutputStream:close	()V
    //   130: return
    //   131: astore_1
    //   132: aload_1
    //   133: invokevirtual 379	java/io/FileNotFoundException:printStackTrace	()V
    //   136: aload_2
    //   137: astore_1
    //   138: goto -26 -> 112
    //   141: new 331	java/io/File
    //   144: dup
    //   145: new 333	java/lang/StringBuilder
    //   148: dup
    //   149: invokespecial 334	java/lang/StringBuilder:<init>	()V
    //   152: getstatic 339	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   155: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: ldc_w 361
    //   161: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   167: invokespecial 351	java/io/File:<init>	(Ljava/lang/String;)V
    //   170: invokevirtual 382	java/io/File:delete	()Z
    //   173: pop
    //   174: new 359	java/io/FileOutputStream
    //   177: dup
    //   178: new 333	java/lang/StringBuilder
    //   181: dup
    //   182: invokespecial 334	java/lang/StringBuilder:<init>	()V
    //   185: getstatic 339	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   188: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: ldc_w 1128
    //   194: invokevirtual 343	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   200: invokespecial 362	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   203: astore_1
    //   204: goto -92 -> 112
    //   207: astore_1
    //   208: aload_1
    //   209: invokevirtual 379	java/io/FileNotFoundException:printStackTrace	()V
    //   212: aload_2
    //   213: astore_1
    //   214: goto -102 -> 112
    //   217: astore_2
    //   218: aload_2
    //   219: invokevirtual 383	java/io/IOException:printStackTrace	()V
    //   222: goto -96 -> 126
    //   225: astore_1
    //   226: aload_1
    //   227: invokevirtual 383	java/io/IOException:printStackTrace	()V
    //   230: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	231	0	this	ad
    //   15	112	1	localObject1	Object
    //   131	2	1	localFileNotFoundException1	FileNotFoundException
    //   137	67	1	localObject2	Object
    //   207	2	1	localFileNotFoundException2	FileNotFoundException
    //   213	1	1	localObject3	Object
    //   225	2	1	localIOException1	IOException
    //   35	178	2	localObject4	Object
    //   217	2	2	localIOException2	IOException
    //   65	11	3	localFile	File
    // Exception table:
    //   from	to	target	type
    //   82	112	131	java/io/FileNotFoundException
    //   174	204	207	java/io/FileNotFoundException
    //   116	126	217	java/io/IOException
    //   126	130	225	java/io/IOException
  }
  
  public void c(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putInt("pcs_upgrade_sms_count", paramInt);
    localEditor.commit();
  }
  
  public void c(long paramLong)
  {
    SharedPreferences.Editor localEditor = f.getSharedPreferences("preference", 0).edit();
    localEditor.putLong("recomm_last_check_time", paramLong);
    localEditor.commit();
  }
  
  public void c(String paramString)
  {
    a(paramString, true);
  }
  
  public void c(String paramString, long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putLong(paramString, paramLong);
    localEditor.commit();
  }
  
  public void c(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return;
    }
    Object localObject1 = Y(paramString1);
    Object localObject3 = f.getSharedPreferences((String)localObject1, 0);
    if (Y()) {}
    for (localObject1 = ap.bX(paramString1);; localObject1 = paramString1)
    {
      Object localObject2 = ((SharedPreferences)localObject3).getAll();
      if (((Map)localObject2).isEmpty()) {
        break;
      }
      Iterator localIterator = ((Map)localObject2).keySet().iterator();
      while (localIterator.hasNext())
      {
        localObject2 = (String)localIterator.next();
        if (((String)localObject1).equals(localObject2))
        {
          localObject3 = ((SharedPreferences)localObject3).edit();
          localObject1 = paramString2;
          if (paramString2 == null) {
            localObject1 = "";
          }
          ((SharedPreferences.Editor)localObject3).putString((String)localObject2, (String)localObject1 + "~~" + new Date().getTime());
          ((SharedPreferences.Editor)localObject3).commit();
          paramString2 = f.getSharedPreferences("serverlistdb6", 0);
          localObject1 = paramString2.getAll();
          localObject2 = ap.F((String)localObject2);
          if (((Map)localObject1).containsKey(localObject2))
          {
            paramString2 = paramString2.edit();
            paramString2.remove((String)localObject2);
            paramString2.commit();
          }
        }
      }
      paramString2 = ap.bP(paramString1);
      if ((ap.q(paramString1)) || (ap.p(paramString1)) || (ap.r(paramString1)) || (ap.K(paramString1)) || (ap.L(paramString1))) {
        paramString2 = "ftp";
      }
      paramString1 = paramString2 + "://";
      com.estrongs.fs.a.b.a().c(paramString1);
      com.estrongs.fs.a.b.a().c("scannedserver://");
      return;
    }
  }
  
  public void c(String paramString, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("showbks_" + paramString, paramBoolean);
    localEditor.commit();
  }
  
  public void c(List<h> paramList)
  {
    Map localMap = f.getSharedPreferences("serverlistdb8", 0).getAll();
    if (!localMap.isEmpty())
    {
      Iterator localIterator = localMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        String[] arrayOfString = Z((String)localMap.get(str));
        if (Y()) {
          str = ap.bY(str);
        }
        w localw;
        for (;;)
        {
          localw = w.b(ap.ay(str));
          if (bk.a(arrayOfString[1])) {
            break label139;
          }
          paramList.add(new com.estrongs.fs.impl.r.b(str, localw, arrayOfString[0], Long.parseLong(arrayOfString[1])));
          break;
        }
        label139:
        paramList.add(new com.estrongs.fs.impl.r.b(str, localw, arrayOfString[0]));
      }
    }
  }
  
  public void c(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("thumbnail", paramBoolean);
    localEditor.commit();
    FexApplication.a().a("thumbnail", Boolean.valueOf(paramBoolean));
  }
  
  public String d(String paramString)
  {
    return f.getSharedPreferences("devicename", 0).getString(paramString, null);
  }
  
  public void d(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putInt("sd_sortby", paramInt);
    localEditor.commit();
  }
  
  public void d(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putLong("last_statistics", paramLong);
    localEditor.commit();
  }
  
  public void d(String paramString1, String paramString2)
  {
    SharedPreferences localSharedPreferences = f.getSharedPreferences("sftpprivatekey", 0);
    String str = paramString1;
    if (Y()) {
      str = ap.bX(paramString1);
    }
    paramString1 = localSharedPreferences.edit();
    if (bk.a(paramString2)) {
      paramString1.remove(str);
    }
    for (;;)
    {
      paramString1.commit();
      return;
      paramString1.putString(str, paramString2);
    }
  }
  
  public void d(String paramString, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean(paramString + "_expanded", paramBoolean);
    localEditor.commit();
  }
  
  public void d(List<h> paramList)
  {
    Map localMap = f.getSharedPreferences("serverlistdb3", 0).getAll();
    if (!localMap.isEmpty())
    {
      Iterator localIterator = localMap.keySet().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        String[] arrayOfString = Z((String)localMap.get(str));
        label90:
        Object localObject;
        if (Y())
        {
          str = ap.bY(str);
          if (!ap.q(str)) {
            break label166;
          }
          localObject = w.h;
          label101:
          if (bk.a(arrayOfString[1])) {
            break label215;
          }
          localObject = new com.estrongs.fs.impl.r.b(str, (w)localObject, arrayOfString[0], Long.parseLong(arrayOfString[1]));
          label132:
          if (!g(str)) {
            break label232;
          }
          ((com.estrongs.fs.impl.r.b)localObject).putExtra("item_is_scanned_server", Boolean.valueOf(true));
        }
        for (;;)
        {
          paramList.add(localObject);
          break;
          break label90;
          label166:
          if (ap.p(str))
          {
            localObject = w.g;
            break label101;
          }
          if (ap.r(str))
          {
            localObject = w.f;
            break label101;
          }
          if (ap.K(str))
          {
            localObject = w.e;
            break label101;
          }
          localObject = w.d;
          break label101;
          label215:
          localObject = new com.estrongs.fs.impl.r.b(str, (w)localObject, arrayOfString[0]);
          break label132;
          label232:
          ((com.estrongs.fs.impl.r.b)localObject).putExtra("item_is_scanned_server", Boolean.valueOf(false));
        }
      }
    }
  }
  
  public void d(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("hide_toolbar", paramBoolean);
    localEditor.commit();
  }
  
  public boolean d()
  {
    boolean bool2 = f.getSharedPreferences("pcs_temp_normal_flag", 0).getBoolean("pcs_temp_normal_flag", false);
    boolean bool1 = bool2;
    if (!bool2)
    {
      bool1 = bool2;
      if (new File(a.b + "/devicetoken/normal").exists()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public void e()
  {
    Object localObject1 = f.getSharedPreferences("pcs_first_register_flag", 0).edit();
    ((SharedPreferences.Editor)localObject1).putBoolean("pcs_first_register_flag", true);
    ((SharedPreferences.Editor)localObject1).commit();
    Object localObject4 = null;
    File localFile = new File(a.b + "/devicetoken");
    if (!localFile.exists())
    {
      localObject1 = localObject4;
      if (!localFile.mkdirs()) {}
    }
    try
    {
      localObject1 = new FileOutputStream(a.b + "/devicetoken/registered");
      for (;;)
      {
        if (localObject1 != null) {}
        try
        {
          ((FileOutputStream)localObject1).write("true".getBytes());
        }
        catch (IOException localIOException2)
        {
          for (;;)
          {
            try
            {
              ((FileOutputStream)localObject1).close();
              return;
            }
            catch (IOException localIOException1)
            {
              localIOException1.printStackTrace();
              return;
            }
            try
            {
              localObject1 = new FileOutputStream(a.b + "/devicetoken/registered");
            }
            catch (FileNotFoundException localFileNotFoundException1)
            {
              Object localObject2 = localIOException2;
            }
            localIOException2 = localIOException2;
            localIOException2.printStackTrace();
          }
        }
      }
    }
    catch (FileNotFoundException localFileNotFoundException2)
    {
      for (;;)
      {
        Object localObject3 = localIOException2;
      }
    }
  }
  
  public void e(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putLong("home_log_corner_mark_" + paramInt, new Date().getTime());
    localEditor.commit();
  }
  
  public void e(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putLong("last_pcs_access", paramLong);
    localEditor.commit();
  }
  
  public void e(String paramString)
  {
    SharedPreferences.Editor localEditor = f.getSharedPreferences("devicename", 0).edit();
    localEditor.remove(paramString);
    localEditor.commit();
  }
  
  public void e(String paramString1, String paramString2)
  {
    SharedPreferences localSharedPreferences = f.getSharedPreferences("sftpprivatekey_passphrases", 0);
    String str = paramString1;
    if (Y()) {
      str = ap.bX(paramString1);
    }
    paramString1 = localSharedPreferences.edit();
    if (bk.a(paramString2)) {
      paramString1.remove(str);
    }
    for (;;)
    {
      paramString1.commit();
      return;
      paramString1.putString(str, paramString2);
    }
  }
  
  public void e(String paramString, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean(paramString, paramBoolean);
    localEditor.commit();
  }
  
  public void e(List<h> paramList)
  {
    Map localMap = f.getSharedPreferences("serverlistdb9", 0).getAll();
    if (!localMap.isEmpty())
    {
      Iterator localIterator = localMap.keySet().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject = Z((String)localMap.get(str));
        label89:
        w localw;
        if (Y())
        {
          str = ap.bY(str);
          localw = w.N;
          if (bk.a(localObject[1])) {
            break label157;
          }
          localObject = new com.estrongs.fs.impl.r.b(str, localw, localObject[0], Long.parseLong(localObject[1]));
          label123:
          if (!g(str)) {
            break label174;
          }
          ((com.estrongs.fs.impl.r.b)localObject).putExtra("item_is_scanned_server", Boolean.valueOf(true));
        }
        for (;;)
        {
          paramList.add(localObject);
          break;
          break label89;
          label157:
          localObject = new com.estrongs.fs.impl.r.b(str, localw, localObject[0]);
          break label123;
          label174:
          ((com.estrongs.fs.impl.r.b)localObject).putExtra("item_is_scanned_server", Boolean.valueOf(false));
        }
      }
    }
  }
  
  public void e(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("playlistDb_in_sdcard", paramBoolean);
    localEditor.commit();
  }
  
  public long f(int paramInt)
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getLong("home_log_corner_mark_" + paramInt, -1L);
  }
  
  public void f(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putLong("last_pcs_verify", paramLong);
    localEditor.commit();
  }
  
  public void f(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }
  
  public void f(List<String> paramList)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    JSONArray localJSONArray = new JSONArray();
    int i = 0;
    while (i < paramList.size())
    {
      localJSONArray.add(paramList.get(i));
      i += 1;
    }
    localEditor.putString("default_window_list", localJSONArray.toJSONString());
    localEditor.putBoolean("homepage_added", true);
    localEditor.commit();
  }
  
  public void f(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("tips_instagram_delete", paramBoolean);
    localEditor.commit();
  }
  
  public boolean f()
  {
    boolean bool2 = f.getSharedPreferences("pcs_first_register_flag", 0).getBoolean("pcs_first_register_flag", false);
    boolean bool1 = bool2;
    if (!bool2)
    {
      bool1 = bool2;
      if (new File(a.b + "/devicetoken/registered").exists()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public boolean f(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    String str2 = Y(paramString);
    String str1 = paramString;
    if (Y()) {
      str1 = ap.bX(paramString);
    }
    paramString = f.getSharedPreferences(str2, 0).getAll();
    if (!paramString.isEmpty())
    {
      paramString = paramString.keySet().iterator();
      while (paramString.hasNext()) {
        if (str1.startsWith((String)paramString.next())) {
          return true;
        }
      }
    }
    return false;
  }
  
  public boolean f(String paramString, boolean paramBoolean)
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean(paramString, paramBoolean);
  }
  
  public String g()
  {
    Map localMap = f.getSharedPreferences("preference", 0).getAll();
    if ((!localMap.isEmpty()) && (localMap.containsKey("root_path"))) {
      return (String)localMap.get("root_path");
    }
    return null;
  }
  
  public void g(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putLong("pcs_uinfo_timestamp", paramLong);
    localEditor.commit();
  }
  
  public void g(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("ftpsvruser", paramString1);
    paramString1 = paramString2;
    if (paramString2 != null)
    {
      paramString1 = paramString2;
      if (Y()) {
        paramString1 = bk.c(paramString2);
      }
    }
    localEditor.putString("ftpsvrpasswd", paramString1);
    localEditor.commit();
  }
  
  public void g(List<String> paramList)
  {
    int i = 0;
    Object localObject1 = f.getSharedPreferences("documentExtlistdb", 0);
    Object localObject2 = ((SharedPreferences)localObject1).getAll();
    if ((localObject2 != null) && (!((Map)localObject2).isEmpty())) {
      paramList.addAll(((Map)localObject2).keySet());
    }
    for (;;)
    {
      Collections.sort(paramList);
      return;
      if (bu())
      {
        localObject2 = bg.d().split(";");
        SharedPreferences.Editor localEditor = ((SharedPreferences)localObject1).edit();
        if (i < localObject2.length)
        {
          if (localObject2[i].startsWith(".")) {}
          for (localObject1 = localObject2[i].substring(1);; localObject1 = localObject2[i])
          {
            paramList.add(localObject1);
            localEditor.putString((String)localObject1, (String)localObject1);
            i += 1;
            break;
          }
        }
        localEditor.commit();
        bv();
      }
    }
  }
  
  public void g(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("tips_instagram_edit", paramBoolean);
    localEditor.commit();
  }
  
  public boolean g(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    String str = paramString;
    if (Y()) {
      str = ap.bX(paramString);
    }
    return f.getSharedPreferences("serverlistdb6", 0).contains(str);
  }
  
  public String h(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    Object localObject = Y(paramString);
    String str1 = paramString;
    if (Y()) {
      str1 = ap.bX(paramString);
    }
    paramString = f.getSharedPreferences((String)localObject, 0);
    localObject = paramString.getAll();
    String str2;
    if (!((Map)localObject).isEmpty())
    {
      localObject = ((Map)localObject).keySet().iterator();
      do
      {
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        str2 = (String)((Iterator)localObject).next();
      } while (!str1.equals(str2));
    }
    for (;;)
    {
      try
      {
        paramString = paramString.getString(str2, null);
      }
      catch (ClassCastException paramString)
      {
        paramString = null;
        continue;
      }
      try
      {
        str1 = Z(paramString)[0];
        paramString = str1;
      }
      catch (ClassCastException localClassCastException)
      {
        continue;
      }
      return paramString;
      paramString = null;
    }
  }
  
  public void h(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("app_folder_update_time", "" + paramLong);
    localEditor.commit();
  }
  
  public void h(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("PCS_ostype", paramString1);
    localEditor.putString("PCS_userinfo", paramString2);
    localEditor.commit();
  }
  
  public void h(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("tips_facebook_delete", paramBoolean);
    localEditor.commit();
  }
  
  public boolean h()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("history_dir_only", false);
  }
  
  public int i()
  {
    try
    {
      int i = Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(f).getString("list", "0"));
      return i;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return 0;
  }
  
  public int i(String paramString1, String paramString2)
  {
    try
    {
      int i = PreferenceManager.getDefaultSharedPreferences(f).getInt(paramString1 + "_" + paramString2 + "_default_index", 0);
      return i;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
    }
    return 0;
  }
  
  public void i(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("search_engine_update_time", paramLong + "");
    localEditor.commit();
  }
  
  public void i(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return;
    }
    SharedPreferences.Editor localEditor = f.getSharedPreferences("preference", 0).edit();
    localEditor.putString("root_path", paramString);
    localEditor.commit();
  }
  
  public void i(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("passwordencode", paramBoolean);
    localEditor.commit();
  }
  
  public String j(String paramString)
  {
    paramString = g();
    if (paramString != null) {}
    for (;;)
    {
      paramString = new File(paramString);
      if ((paramString.exists()) && (paramString.isDirectory())) {}
      for (paramString = paramString.getAbsolutePath();; paramString = "/sdcard/")
      {
        String str = paramString;
        if (z.n)
        {
          str = paramString;
          if (paramString.equals("/")) {
            str = "/sdcard/";
          }
        }
        return str;
        if (z.c == null) {
          break label116;
        }
        str = z.c;
        paramString = str;
        if (str.endsWith("/")) {
          break;
        }
        paramString = str + "/";
        break;
      }
      label116:
      paramString = "/sdcard/";
    }
  }
  
  public void j(long paramLong)
  {
    SharedPreferences.Editor localEditor = f.getSharedPreferences("preference", 0).edit();
    localEditor.putLong("recomm_last_click_dusb_time", paramLong);
    localEditor.commit();
  }
  
  public void j(String paramString1, String paramString2)
  {
    if ((!ap.O(paramString1)) && (!ap.Q(paramString1))) {
      return;
    }
    SharedPreferences.Editor localEditor = f.getSharedPreferences("adbFolderName", 0).edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }
  
  public void j(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("root_reported", paramBoolean);
    localEditor.commit();
  }
  
  public boolean j()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("scroll_thumb", true);
  }
  
  public String k(String paramString)
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getString("default_start_window", paramString);
  }
  
  public void k(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putLong("card_update_time", paramLong);
    localEditor.commit();
  }
  
  public void k(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString(paramString1 + "_es_uuid", paramString2);
    localEditor.commit();
  }
  
  public void k(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("ap_flag", paramBoolean);
    localEditor.commit();
  }
  
  public boolean k()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("su", false);
  }
  
  public void l(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("default_start_window", paramString);
    localEditor.commit();
  }
  
  public void l(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("gesture_setting_enabled", paramBoolean);
    localEditor.commit();
    FexApplication.a().a("gesture_setting_enabled", Boolean.valueOf(paramBoolean));
  }
  
  public boolean l()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("auto_app_backup", false);
  }
  
  public void m(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("display_guideline_op", paramBoolean);
    localEditor.commit();
  }
  
  public boolean m()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("backup_app_cache", false);
  }
  
  public boolean m(String paramString)
  {
    String str1 = paramString;
    if (Y()) {
      str1 = ap.bX(paramString);
    }
    if (str1 == null) {
      return true;
    }
    paramString = f.getSharedPreferences("serverlistdb4", 0).getAll();
    if (!paramString.isEmpty())
    {
      Iterator localIterator = paramString.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str2 = (String)localIterator.next();
        if (str1.startsWith(str2)) {
          return ((Boolean)paramString.get(str2)).booleanValue();
        }
      }
    }
    return true;
  }
  
  public int n(String paramString)
  {
    if (paramString == null) {
      return 0;
    }
    String str1 = paramString;
    if (Y()) {
      str1 = ap.bX(paramString);
    }
    Object localObject = f.getSharedPreferences("serverlistdb3", 0).getAll();
    paramString = null;
    Iterator localIterator = ((Map)localObject).entrySet().iterator();
    label52:
    String str2;
    if (localIterator.hasNext())
    {
      str2 = (String)((Map.Entry)localIterator.next()).getKey();
      localObject = str2;
      if (!str1.startsWith(str2)) {
        if (!str2.startsWith(str1)) {
          break label173;
        }
      }
    }
    label173:
    for (localObject = str2;; localObject = paramString)
    {
      paramString = (String)localObject;
      break label52;
      if (paramString == null) {
        break;
      }
      localObject = f.getSharedPreferences("serverlistdb5", 0).getAll();
      if ((!((Map)localObject).isEmpty()) && (((Map)localObject).containsKey(paramString))) {}
      for (int i = ((Integer)((Map)localObject).get(paramString)).intValue();; i = 0) {
        return i;
      }
    }
  }
  
  public void n(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("display_guideline_ol", paramBoolean);
    localEditor.commit();
  }
  
  public boolean n()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).contains("su");
  }
  
  public int o(String paramString)
  {
    if (paramString == null) {
      return 0;
    }
    try
    {
      Object localObject = f.getSharedPreferences("serverlistdb5", 0);
      String str1 = paramString;
      if (Y()) {
        str1 = ap.bX(paramString);
      }
      paramString = ((SharedPreferences)localObject).getAll();
      if (!paramString.isEmpty())
      {
        localObject = paramString.keySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          String str2 = (String)((Iterator)localObject).next();
          if (str1.startsWith(str2))
          {
            int i = ((Integer)paramString.get(str2)).intValue();
            return i;
          }
        }
      }
      return 0;
    }
    catch (Exception paramString) {}
    return 0;
  }
  
  public void o(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("traffic_show", paramBoolean);
    localEditor.commit();
  }
  
  public boolean o()
  {
    return (!z.W) && (PreferenceManager.getDefaultSharedPreferences(f).getBoolean("show_pcs_drive", true));
  }
  
  public String p(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      Object localObject = f.getSharedPreferences("sftpprivatekey", 0);
      String str1 = paramString;
      if (Y()) {
        str1 = ap.bX(paramString);
      }
      paramString = ((SharedPreferences)localObject).getAll();
      if (!paramString.isEmpty())
      {
        localObject = paramString.keySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          String str2 = (String)((Iterator)localObject).next();
          if (str1.startsWith(str2)) {
            return (String)paramString.get(str2);
          }
        }
      }
      paramString = a("sftpprivatekey", str1, c);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public void p(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("visiable_audio_500", paramBoolean);
    localEditor.commit();
  }
  
  public boolean p()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("enableRemoteSynchronizer", true);
  }
  
  public String q(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    String str1 = paramString;
    label168:
    label170:
    do
    {
      for (;;)
      {
        try
        {
          if (Y()) {
            str1 = ap.bX(paramString);
          }
          Iterator localIterator = f.getSharedPreferences("serverlistdb3", 0).getAll().entrySet().iterator();
          paramString = null;
          if (!localIterator.hasNext()) {
            break;
          }
          String str2 = (String)((Map.Entry)localIterator.next()).getKey();
          localObject = str2;
          if (str1.startsWith(str2)) {
            break label170;
          }
          if (!str2.startsWith(str1)) {
            break label168;
          }
          localObject = str2;
        }
        catch (Exception paramString)
        {
          return null;
        }
        Object localObject = f.getSharedPreferences("sftpprivatekey", 0).getAll();
        if ((!((Map)localObject).isEmpty()) && (((Map)localObject).containsKey(paramString))) {
          return (String)((Map)localObject).get(paramString);
        }
        paramString = a("sftpprivatekey", str1, c);
        return paramString;
        localObject = paramString;
        paramString = (String)localObject;
      }
    } while (paramString != null);
    return null;
  }
  
  public void q(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("not_show_falsified_alert", paramBoolean);
    localEditor.commit();
  }
  
  public boolean q()
  {
    return d;
  }
  
  public Point r(boolean paramBoolean)
  {
    Object localObject = PreferenceManager.getDefaultSharedPreferences(f).getString("gesture_start_position_" + paramBoolean, null);
    if (localObject == null) {
      return null;
    }
    try
    {
      localObject = g.b((String)localObject);
      return (Point)localObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public String r(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    String str1 = paramString;
    label168:
    label170:
    do
    {
      for (;;)
      {
        try
        {
          if (Y()) {
            str1 = ap.bX(paramString);
          }
          Iterator localIterator = f.getSharedPreferences("serverlistdb3", 0).getAll().entrySet().iterator();
          paramString = null;
          if (!localIterator.hasNext()) {
            break;
          }
          String str2 = (String)((Map.Entry)localIterator.next()).getKey();
          localObject = str2;
          if (str1.startsWith(str2)) {
            break label170;
          }
          if (!str2.startsWith(str1)) {
            break label168;
          }
          localObject = str2;
        }
        catch (Exception paramString)
        {
          return null;
        }
        Object localObject = f.getSharedPreferences("sftpprivatekey_passphrases", 0).getAll();
        if ((!((Map)localObject).isEmpty()) && (((Map)localObject).containsKey(paramString))) {
          return (String)((Map)localObject).get(paramString);
        }
        paramString = a("sftpprivatekey_passphrases", str1, c);
        return paramString;
        localObject = paramString;
        paramString = (String)localObject;
      }
    } while (paramString != null);
    return null;
  }
  
  public boolean r()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("auto_clear", false);
  }
  
  public void s(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return;
    }
    SharedPreferences.Editor localEditor = f.getSharedPreferences("preference", 0).edit();
    localEditor.putString("app_backup_path", paramString);
    localEditor.commit();
    FexApplication.a().a("app_backup_path", paramString);
  }
  
  public void s(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("enable_recycle", paramBoolean);
    localEditor.commit();
    FexApplication.a().a("enable_recycle", Boolean.valueOf(paramBoolean));
  }
  
  public boolean s()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("upgrade_auto_check", true);
  }
  
  public void t(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return;
    }
    SharedPreferences.Editor localEditor = f.getSharedPreferences("preference", 0).edit();
    localEditor.putString("bt_path", paramString);
    localEditor.commit();
  }
  
  public void t(boolean paramBoolean)
  {
    a = paramBoolean;
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("show_associate_app", paramBoolean);
    localEditor.commit();
    FexApplication.a().a("show_associate_app", Boolean.valueOf(a));
  }
  
  public boolean t()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("thumbnail", true);
  }
  
  public void u(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return;
    }
    SharedPreferences.Editor localEditor = f.getSharedPreferences("preference", 0).edit();
    localEditor.putString("download_path", paramString);
    localEditor.commit();
    FexApplication.a().a("download_path", paramString);
  }
  
  public void u(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("share_associate_app", paramBoolean);
    localEditor.commit();
  }
  
  public boolean u()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("hide_toolbar", false);
  }
  
  public void v(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return;
    }
    SharedPreferences.Editor localEditor = f.getSharedPreferences("preference", 0).edit();
    localEditor.putString("note_editor_encoding", paramString);
    localEditor.commit();
  }
  
  public void v(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("show_search_engine", paramBoolean);
    localEditor.commit();
    FexApplication.a().a("show_search_engine", Boolean.valueOf(paramBoolean));
  }
  
  public boolean v()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("playlistDb_in_sdcard", true);
  }
  
  public String w(String paramString)
  {
    return f.getSharedPreferences("preference", 0).getString("note_editor_encoding", paramString);
  }
  
  public void w(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("is_xlarge_layout", paramBoolean);
    localEditor.commit();
  }
  
  public boolean w()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("sdcard_size", false);
  }
  
  public void x(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (Y()) {
        str = bk.c(paramString);
      }
    }
    localEditor.putString("netpasswd", str);
    localEditor.commit();
  }
  
  public void x(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("apk_icon_cahce_moved", paramBoolean);
    localEditor.commit();
  }
  
  public boolean x()
  {
    return PreferenceManager.getDefaultSharedPreferences(f).getBoolean("app_clean_history_exit", false);
  }
  
  public String y()
  {
    String str2 = "/sdcard/backups/apps/";
    Map localMap = f.getSharedPreferences("preference", 0).getAll();
    String str1 = str2;
    if (!localMap.isEmpty())
    {
      str1 = str2;
      if (localMap.containsKey("app_backup_path")) {
        str1 = (String)localMap.get("app_backup_path");
      }
    }
    if (!i.a(str1)) {}
    try
    {
      com.estrongs.fs.d.a(f).g(str1);
      return str1;
    }
    catch (FileSystemException localFileSystemException)
    {
      i.g(str1);
      localFileSystemException.printStackTrace();
    }
    return str1;
  }
  
  public void y(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putString("theme_default", paramString);
    localEditor.commit();
  }
  
  public void y(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("show_nomedia", paramBoolean);
    localEditor.commit();
    FexApplication.a().a("show_nomedia", Boolean.valueOf(paramBoolean));
    C(false);
  }
  
  public com.estrongs.fs.util.a.a z(String paramString)
  {
    paramString = com.estrongs.android.pop.view.utils.ac.a(f, paramString);
    int i = c;
    if (d == 0) {}
    for (boolean bool = true;; bool = false) {
      switch (i)
      {
      default: 
        return null;
      }
    }
    return new com.estrongs.fs.util.a.d(bool);
    return new com.estrongs.fs.util.a.f(bool);
    return new com.estrongs.fs.util.a.e(bool);
    return new c(bool);
  }
  
  public String z()
  {
    Object localObject2 = "/sdcard/";
    Object localObject3 = f.getSharedPreferences("preference", 0).getAll();
    Object localObject1 = localObject2;
    if (!((Map)localObject3).isEmpty())
    {
      localObject1 = localObject2;
      if (((Map)localObject3).containsKey("bt_path")) {
        localObject1 = (String)((Map)localObject3).get("bt_path");
      }
    }
    localObject3 = new File((String)localObject1);
    localObject2 = localObject1;
    if (!((File)localObject3).exists())
    {
      localObject2 = localObject1;
      if (!((File)localObject3).mkdirs()) {
        localObject2 = "/sdcard/";
      }
    }
    return (String)localObject2;
  }
  
  public void z(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(f).edit();
    localEditor.putBoolean("home_filter_red_point", paramBoolean);
    localEditor.commit();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */