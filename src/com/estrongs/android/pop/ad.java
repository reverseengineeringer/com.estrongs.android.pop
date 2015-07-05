package com.estrongs.android.pop;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Environment;
import android.preference.PreferenceManager;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.pop.utils.cv;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bd;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.m;
import com.estrongs.fs.util.a.c;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
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
  private static ad d = null;
  private static Context e = null;
  boolean a;
  private ArrayList<af> f = new ArrayList();
  
  private ad(Context paramContext)
  {
    e = paramContext;
    a = PreferenceManager.getDefaultSharedPreferences(e).getBoolean("show_associate_app", true);
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
    if (am.H(paramString)) {
      str = "serverlistdb";
    }
    do
    {
      return str;
      if ((am.J(paramString)) || (am.I(paramString)) || (am.m(paramString)) || (am.p(paramString))) {
        return "serverlistdb3";
      }
      if (am.aw(paramString)) {
        return "serverlistdb7";
      }
      if (am.aG(paramString)) {
        return "serverlistdb8";
      }
    } while (!am.K(paramString));
    return "serverlistdb9";
  }
  
  private void Z(String paramString)
  {
    paramString = e.getSharedPreferences(paramString, 0);
    Object localObject1 = paramString.getAll();
    Object localObject2;
    if (!((Map)localObject1).isEmpty())
    {
      localObject2 = e.getSharedPreferences("serverlistdb6", 0);
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
  
  public static ad a(Context paramContext)
  {
    if (d == null) {
      d = new ad(paramContext);
    }
    if (paramContext != null) {
      d.b(paramContext);
    }
    return d;
  }
  
  private String a(String paramString1, String paramString2, Comparator<String> paramComparator)
  {
    String str = null;
    try
    {
      if (bd.a(paramString1))
      {
        paramString1 = PreferenceManager.getDefaultSharedPreferences(e);
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
          bool = bd.b(str);
          paramString1 = str;
          if (bool)
          {
            return str;
            paramString1 = e.getSharedPreferences(paramString1, 0);
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
    if (X()) {}
    Object localObject;
    SharedPreferences.Editor localEditor;
    do
    {
      return;
      localObject = e.getSharedPreferences(paramString, 0);
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
      str2 = am.bG(str1);
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
  
  private boolean ab(String paramString)
  {
    boolean bool = true;
    if (paramString.equals("tookkit_block")) {
      bool = false;
    }
    while (!paramString.equalsIgnoreCase("collection_block")) {
      return bool;
    }
    return true;
  }
  
  /* Error */
  private void b(String paramString, long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: new 275	java/io/File
    //   6: dup
    //   7: new 277	java/lang/StringBuilder
    //   10: dup
    //   11: invokespecial 278	java/lang/StringBuilder:<init>	()V
    //   14: getstatic 283	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   17: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: ldc_w 289
    //   23: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: invokevirtual 293	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: invokespecial 295	java/io/File:<init>	(Ljava/lang/String;)V
    //   32: astore 6
    //   34: aload 6
    //   36: invokevirtual 298	java/io/File:exists	()Z
    //   39: ifne +102 -> 141
    //   42: aload 5
    //   44: astore 4
    //   46: aload 6
    //   48: invokevirtual 301	java/io/File:mkdirs	()Z
    //   51: ifeq +34 -> 85
    //   54: new 303	java/io/FileOutputStream
    //   57: dup
    //   58: new 277	java/lang/StringBuilder
    //   61: dup
    //   62: invokespecial 278	java/lang/StringBuilder:<init>	()V
    //   65: getstatic 283	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   68: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: ldc_w 305
    //   74: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: invokevirtual 293	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: invokespecial 306	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   83: astore 4
    //   85: aload 4
    //   87: ifnull +39 -> 126
    //   90: aload 4
    //   92: new 277	java/lang/StringBuilder
    //   95: dup
    //   96: invokespecial 278	java/lang/StringBuilder:<init>	()V
    //   99: aload_1
    //   100: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: ldc 67
    //   105: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: lload_2
    //   109: invokevirtual 309	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   112: invokevirtual 293	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: invokevirtual 313	java/lang/String:getBytes	()[B
    //   118: invokevirtual 317	java/io/FileOutputStream:write	([B)V
    //   121: aload 4
    //   123: invokevirtual 320	java/io/FileOutputStream:close	()V
    //   126: return
    //   127: astore 4
    //   129: aload 4
    //   131: invokevirtual 323	java/io/FileNotFoundException:printStackTrace	()V
    //   134: aload 5
    //   136: astore 4
    //   138: goto -53 -> 85
    //   141: new 275	java/io/File
    //   144: dup
    //   145: new 277	java/lang/StringBuilder
    //   148: dup
    //   149: invokespecial 278	java/lang/StringBuilder:<init>	()V
    //   152: getstatic 283	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   155: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: ldc_w 305
    //   161: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: invokevirtual 293	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   167: invokespecial 295	java/io/File:<init>	(Ljava/lang/String;)V
    //   170: invokevirtual 326	java/io/File:delete	()Z
    //   173: pop
    //   174: new 303	java/io/FileOutputStream
    //   177: dup
    //   178: new 277	java/lang/StringBuilder
    //   181: dup
    //   182: invokespecial 278	java/lang/StringBuilder:<init>	()V
    //   185: getstatic 283	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   188: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: ldc_w 305
    //   194: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: invokevirtual 293	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   200: invokespecial 306	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   203: astore 4
    //   205: goto -120 -> 85
    //   208: astore 4
    //   210: aload 4
    //   212: invokevirtual 323	java/io/FileNotFoundException:printStackTrace	()V
    //   215: aload 5
    //   217: astore 4
    //   219: goto -134 -> 85
    //   222: astore_1
    //   223: aload_1
    //   224: invokevirtual 327	java/io/IOException:printStackTrace	()V
    //   227: goto -106 -> 121
    //   230: astore_1
    //   231: aload_1
    //   232: invokevirtual 327	java/io/IOException:printStackTrace	()V
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
  
  private void b(String paramString1, String paramString2, Comparator<String> paramComparator)
  {
    LinkedList localLinkedList = new LinkedList();
    try
    {
      if (bd.a(paramString1)) {}
      for (paramString1 = PreferenceManager.getDefaultSharedPreferences(e);; paramString1 = e.getSharedPreferences(paramString1, 0))
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
  
  private static boolean bb()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("isUninitDocumentExtList", true);
  }
  
  private static void bc()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
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
  
  public com.estrongs.fs.util.a.a A(String paramString)
  {
    paramString = com.estrongs.android.pop.view.utils.ac.a(e, paramString);
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
  
  public boolean A()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("bt_turnoff", true);
  }
  
  public String B()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString("language_setting", "-1");
  }
  
  public String B(String paramString)
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString(paramString, "0000");
  }
  
  public long C()
  {
    return e.getSharedPreferences("preference", 0).getLong("upgrade_last_check_time", 0L);
  }
  
  public boolean C(String paramString)
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getAll().containsKey(paramString);
  }
  
  public long D()
  {
    return e.getSharedPreferences("preference", 0).getLong("recomm_last_check_time", 0L);
  }
  
  public void D(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("ftpsvrroot", paramString);
    localEditor.commit();
  }
  
  public java.text.DateFormat E()
  {
    return android.text.format.DateFormat.getDateFormat(e);
  }
  
  public void E(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("ftpsvrcharset", paramString);
    localEditor.commit();
  }
  
  public java.text.DateFormat F()
  {
    return android.text.format.DateFormat.getDateFormat(e);
  }
  
  public void F(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("PCS_backup_path", paramString);
    localEditor.commit();
  }
  
  public String G()
  {
    String str2 = PreferenceManager.getDefaultSharedPreferences(e).getString("netpasswd", null);
    String str1 = str2;
    if (str2 != null)
    {
      str1 = str2;
      if (X()) {
        str1 = bd.d(str2);
      }
    }
    return str1;
  }
  
  public void G(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("ap_ssid", paramString);
    localEditor.commit();
  }
  
  public void H(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("ap_passwd", paramString);
    localEditor.commit();
  }
  
  public boolean H()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("net_passwd_enable", false);
  }
  
  public void I(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("root_mountlist", paramString);
    localEditor.commit();
  }
  
  public boolean I()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("start_passwd_enable", false);
  }
  
  public void J(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("last_bk_setting_file", paramString);
    localEditor.commit();
  }
  
  public boolean J()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("hided_dirfiles_passwd_enable", false);
  }
  
  public String K()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString("theme_default", null);
  }
  
  public void K(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("last_content_chooser_path", paramString);
    localEditor.commit();
  }
  
  public int L()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getInt("file_dialog_sort", 0);
  }
  
  public void L(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("pcs_upgrade_phone_pass", bd.c(paramString));
    localEditor.commit();
  }
  
  public LinkedList<String> M()
  {
    Object localObject = PreferenceManager.getDefaultSharedPreferences(e);
    String str = ((SharedPreferences)localObject).getString("default_path_list", null);
    LinkedList localLinkedList = new LinkedList();
    boolean bool;
    if (str != null)
    {
      bool = ((SharedPreferences)localObject).getBoolean("homepage_added", false);
      localObject = new JSONParser();
    }
    for (;;)
    {
      try
      {
        localLinkedList.addAll((JSONArray)((JSONParser)localObject).parse(str));
        localLinkedList.remove("pcs://");
        if ((!bool) && (!localLinkedList.contains("#home_page#")))
        {
          localLinkedList.addFirst("#home_page#");
          f(localLinkedList);
        }
      }
      catch (ParseException localParseException)
      {
        localParseException.printStackTrace();
        continue;
      }
      localLinkedList.remove("pcs://");
      return localLinkedList;
      if (z.q != null)
      {
        Iterator localIterator = z.q.iterator();
        while (localIterator.hasNext()) {
          localLinkedList.add(z.a((String)localIterator.next()));
        }
      }
      else
      {
        localLinkedList.add("#home_page#");
        localLinkedList.add("#home#");
        localLinkedList.add("mynetwork://");
      }
    }
  }
  
  public void M(String paramString)
  {
    SharedPreferences.Editor localEditor = e.getSharedPreferences("documentExtlistdb", 0).edit();
    localEditor.putString(paramString, paramString);
    localEditor.commit();
    b = Boolean.valueOf(true);
  }
  
  public void N(String paramString)
  {
    if (paramString == null) {
      return;
    }
    SharedPreferences.Editor localEditor = e.getSharedPreferences("documentExtlistdb", 0).edit();
    localEditor.remove(paramString);
    localEditor.commit();
    b = Boolean.valueOf(true);
  }
  
  public boolean N()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("show_disk_usage", true);
  }
  
  public boolean O()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("show_sdcard_notification", false);
  }
  
  public boolean O(String paramString)
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("showbks_" + paramString, true);
  }
  
  public boolean P()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("show_disk_remain", true);
  }
  
  public boolean P(String paramString)
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("home_block_expand_" + paramString, ab(paramString));
  }
  
  public boolean Q()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("show_usb_prompt", false);
  }
  
  public boolean Q(String paramString)
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean(paramString + "_expanded", false);
  }
  
  public String R(String paramString)
  {
    if ((!am.M(paramString)) && (!am.O(paramString))) {
      return null;
    }
    return e.getSharedPreferences("adbFolderName", 0).getString(paramString, null);
  }
  
  public boolean R()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("ftpsvr_auto_exit", false);
  }
  
  public String S()
  {
    String str2 = PreferenceManager.getDefaultSharedPreferences(e).getString("ftpsvrpasswd", null);
    String str1 = str2;
    if (str2 != null)
    {
      str1 = str2;
      if (X()) {
        str1 = bd.d(str2);
      }
    }
    return str1;
  }
  
  public void S(String paramString)
  {
    SharedPreferences localSharedPreferences = e.getSharedPreferences("adbFolderName", 0);
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
  
  public String T()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString("ftpsvruser", null);
  }
  
  public void T(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.remove(paramString + "_es_uuid");
    localEditor.commit();
  }
  
  public String U()
  {
    String str2 = PreferenceManager.getDefaultSharedPreferences(e).getString("ftpsvrroot", "/sdcard");
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
  
  public String U(String paramString)
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString(paramString + "_es_uuid", null);
  }
  
  public int V()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(e);
    try
    {
      int i = localSharedPreferences.getInt("ftpsvrport", 3721);
      return i;
    }
    catch (Exception localException) {}
    return 3721;
  }
  
  public void V(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("es_tool_file_name", paramString);
    localEditor.commit();
  }
  
  public String W()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString("ftpsvrcharset", "UTF-8");
  }
  
  public boolean X()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("passwordencode", false);
  }
  
  public void Y()
  {
    if (X()) {}
    String str1;
    do
    {
      return;
      aa("serverlistdb");
      aa("serverlistdb6");
      aa("serverlistdb3");
      aa("serverlistdb4");
      aa("serverlistdb5");
      aa("serverlistdb7");
      aa("serverlistdb9");
      str1 = S();
      String str2 = T();
      if (str1 != null) {
        g(str2, bd.c(str1));
      }
      str1 = G();
    } while (str1 == null);
    x(bd.c(str1));
  }
  
  public boolean Z()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("root_reported", false);
  }
  
  public String a()
  {
    return a(1000L);
  }
  
  public String a(long paramLong)
  {
    localObject7 = e.getSharedPreferences("pcs_device_token", 0);
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
          b(W((String)localObject1), X((String)localObject1));
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
    if (e == null) {
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
      paramString3 = e.getSharedPreferences(paramString3, 0);
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
      if (X()) {
        paramString3 = am.bH(str1);
      }
      if ((4 != paramInt) && (18 != paramInt))
      {
        str1 = am.y(paramString3);
        String str2 = am.a(paramString3);
        if ((str1 == null) || (str2 == null)) {
          return null;
        }
        if ((paramString1.equalsIgnoreCase(str1)) && (str2.equalsIgnoreCase(paramString2))) {
          return am.A(paramString3);
        }
      }
      if (4 == paramInt)
      {
        if (am.a(paramString3).equalsIgnoreCase(paramString1 + "@" + paramString2)) {
          return am.al(paramString3);
        }
      }
      else if (am.a(paramString3).equalsIgnoreCase(paramString1 + "@" + paramString2)) {
        return am.am(paramString3);
      }
    }
    return null;
  }
  
  public void a(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putInt("file_dialog_sort", paramInt);
    localEditor.commit();
  }
  
  public void a(Point paramPoint, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("gesture_start_position_" + paramBoolean, com.estrongs.android.ui.d.a.a(paramPoint));
    localEditor.commit();
  }
  
  public void a(af paramaf)
  {
    synchronized (f)
    {
      f.add(paramaf);
      return;
    }
  }
  
  public void a(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("pcs_temp_token", paramString);
    localEditor.commit();
  }
  
  public void a(String paramString, int paramInt)
  {
    SharedPreferences localSharedPreferences = e.getSharedPreferences("serverlistdb5", 0);
    String str = paramString;
    if (X()) {
      str = am.bG(paramString);
    }
    paramString = localSharedPreferences.edit();
    paramString.putInt(str, paramInt);
    paramString.commit();
  }
  
  public void a(String paramString, long paramLong)
  {
    SharedPreferences.Editor localEditor = e.getSharedPreferences("pcs_device_token", 0).edit();
    localEditor.putString("pcs_device_token", paramString + "\n" + paramLong);
    localEditor.commit();
    b(paramString, paramLong);
  }
  
  public void a(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, false);
  }
  
  public void a(String paramString1, String paramString2, int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putInt(paramString1 + "_" + paramString2 + "_default_index", paramInt);
    localEditor.commit();
  }
  
  public void a(String paramString1, String arg2, boolean paramBoolean)
  {
    if (paramString1 == null) {
      return;
    }
    Object localObject = Y(paramString1);
    SharedPreferences.Editor localEditor = e.getSharedPreferences((String)localObject, 0).edit();
    if (X()) {}
    for (localObject = am.bG(paramString1);; localObject = paramString1)
    {
      localEditor.putString((String)localObject, ???);
      localEditor.commit();
      if (!paramBoolean) {
        break;
      }
      b(paramString1);
      return;
    }
    synchronized (f)
    {
      localObject = f.iterator();
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
      synchronized (f)
      {
        localObject2 = f.iterator();
        if (((Iterator)localObject2).hasNext()) {
          ((af)((Iterator)localObject2).next()).a(paramString, bool, 1);
        }
      }
      localObject2 = Y(paramString);
      localObject3 = e.getSharedPreferences((String)localObject2, 0).edit();
      if (!X()) {
        break;
      }
      ??? = am.bG(paramString);
      ((SharedPreferences.Editor)localObject3).remove((String)???);
      ((SharedPreferences.Editor)localObject3).commit();
      e(paramString);
      if ((!am.aw(paramString)) || (!paramBoolean)) {
        break label328;
      }
      localObject4 = e.getSharedPreferences("serverlistdb7", 0);
      localObject3 = am.ai(paramString);
      str1 = am.an(paramString);
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
        if ((!am.aw(str2)) || (!am.an(str2).equals(str1))) {
          break label426;
        }
        str2 = am.ai(str2);
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
        if (!((String)localObject3).equals(am.ai(r.a().g()))) {
          com.estrongs.fs.impl.j.b.m(paramString);
        }
      }
      for (;;)
      {
        if ((paramBoolean) && (am.I((String)???)) && (bd.a(a((String)localObject2, (String)???, c))))
        {
          b("sftpprivatekey", (String)???, c);
          b("sftpprivatekey_passphrases", (String)???, c);
        }
        if (am.K(paramString)) {
          S(paramString);
        }
        com.estrongs.fs.a.b.a().b(paramString, com.estrongs.fs.a.a.a(com.estrongs.fs.a.a.c(paramString), 0));
        com.estrongs.fs.a.b.a().b(paramString, "scannedserver://");
        return;
        com.estrongs.fs.impl.j.b.m(paramString);
      }
    }
  }
  
  public void a(ArrayList<com.estrongs.android.pop.app.b.f> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.isEmpty()))
    {
      Z("serverlistdb");
      Z("serverlistdb3");
      Z("serverlistdb9");
      e.getSharedPreferences("serverlistdb6", 0).getAll().clear();
    }
    do
    {
      return;
      if (paramArrayList.contains(com.estrongs.android.pop.app.b.f.a)) {
        Z("serverlistdb");
      }
      if ((paramArrayList.contains(com.estrongs.android.pop.app.b.f.b)) || (paramArrayList.contains(com.estrongs.android.pop.app.b.f.c)) || (paramArrayList.contains(com.estrongs.android.pop.app.b.f.d)) || (paramArrayList.contains(com.estrongs.android.pop.app.b.f.e))) {
        Z("serverlistdb3");
      }
    } while (!paramArrayList.contains(com.estrongs.android.pop.app.b.f.f));
    Z("serverlistdb9");
  }
  
  public void a(List<com.estrongs.fs.h> paramList)
  {
    Map localMap = e.getSharedPreferences("serverlistdb", 0).getAll();
    if (!localMap.isEmpty())
    {
      Iterator localIterator = localMap.keySet().iterator();
      if (localIterator.hasNext())
      {
        Object localObject2 = (String)localIterator.next();
        String str = (String)localMap.get(localObject2);
        Object localObject1 = localObject2;
        if (X()) {
          localObject1 = am.bH((String)localObject2);
        }
        localObject2 = str;
        if (bd.a(str)) {
          localObject2 = am.a((String)localObject1);
        }
        localObject2 = new com.estrongs.fs.impl.m.b((String)localObject1, m.c, (String)localObject2);
        if (g((String)localObject1)) {
          ((com.estrongs.fs.impl.m.b)localObject2).putExtra("item_is_scanned_server", Boolean.valueOf(true));
        }
        for (;;)
        {
          localObject1 = d((String)localObject1);
          if (!bd.a((CharSequence)localObject1)) {
            ((com.estrongs.fs.impl.m.b)localObject2).putExtra("device_name", localObject1);
          }
          paramList.add(localObject2);
          break;
          ((com.estrongs.fs.impl.m.b)localObject2).putExtra("item_is_scanned_server", Boolean.valueOf(false));
        }
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("su", paramBoolean);
    localEditor.commit();
    FexApplication.a().a("su", Boolean.valueOf(paramBoolean));
  }
  
  public long aA()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getLong("pcs_uinfo_timestamp", 0L);
  }
  
  public String aB()
  {
    return bd.d(PreferenceManager.getDefaultSharedPreferences(e).getString("pcs_upgrade_phone_pass", ""));
  }
  
  public int aC()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getInt("pcs_upgrade_sms_count", 0);
  }
  
  public boolean aD()
  {
    if (z.ag) {
      return false;
    }
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("enable_recycle", false);
  }
  
  public boolean aE()
  {
    if (z.ap) {
      return false;
    }
    return a;
  }
  
  public boolean aF()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("share_associate_app", true);
  }
  
  public long aG()
  {
    String str = PreferenceManager.getDefaultSharedPreferences(e).getString("app_folder_update_time", null);
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
  
  public void aH()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putLong("last_request_push_data_time", System.currentTimeMillis());
    localEditor.commit();
  }
  
  public long aI()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getLong("last_request_push_data_time", 0L);
  }
  
  public void aJ()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putInt("last_app_update_check_day", com.estrongs.android.util.k.a());
    localEditor.commit();
  }
  
  public long aK()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getInt("last_app_update_check_day", 0);
  }
  
  public String aL()
  {
    String str2 = PreferenceManager.getDefaultSharedPreferences(e).getString("search_engine_default", null);
    String str1;
    if (str2 != null)
    {
      str1 = str2;
      if (!str2.equalsIgnoreCase("auto")) {}
    }
    else
    {
      str1 = cv.c();
    }
    return str1;
  }
  
  public Long aM()
  {
    String str = PreferenceManager.getDefaultSharedPreferences(e).getString("search_engine_update_time", "0L");
    try
    {
      long l = Long.parseLong(str);
      return Long.valueOf(l);
    }
    catch (Exception localException) {}
    return Long.valueOf(0L);
  }
  
  public boolean aN()
  {
    if (!z.h) {
      return false;
    }
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("show_search_engine", true);
  }
  
  public String aO()
  {
    try
    {
      String str = PreferenceManager.getDefaultSharedPreferences(e).getString("search_engine_default", null);
      if ((str == null) || (str.equalsIgnoreCase("auto"))) {
        str = cv.c();
      }
      for (;;)
      {
        if ("baidu".equals(str)) {
          return e.getString(2131428686);
        }
        CharSequence[] arrayOfCharSequence1 = e.getResources().getTextArray(2131165207);
        CharSequence[] arrayOfCharSequence2 = e.getResources().getTextArray(2131165198);
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
  
  public boolean aP()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("multithread_copy_enabled", false);
  }
  
  public void aQ()
  {
    SharedPreferences.Editor localEditor = e.getSharedPreferences("documentExtlistdb", 0).edit();
    localEditor.clear();
    localEditor.commit();
    b = Boolean.valueOf(true);
  }
  
  public long aR()
  {
    String str = e.getSharedPreferences("preference", 0).getString("es_last_open_time_string", null);
    if (str == null) {
      return 0L;
    }
    try
    {
      long l = Long.parseLong(str);
      return l;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0L;
  }
  
  public int aS()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getInt("service_statistics_sent_num", 0);
  }
  
  public void aT()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putInt("service_statistics_sent_num", aS() + 1);
    localEditor.commit();
  }
  
  public boolean aU()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("clear_associate_folders_after_uninstall", true);
  }
  
  public int aV()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getInt("sd_sortby", 5);
  }
  
  public boolean aW()
  {
    return true;
  }
  
  public int aX()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getInt("rightDrawerCurrentIndex", 0);
  }
  
  public boolean aY()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("ignore_inconsistent_sign_app", true);
  }
  
  public boolean aZ()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(e);
    if ((com.estrongs.android.pop.esclasses.k.a) && (cl.d(e))) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      boolean bool2 = bool1;
      if (localSharedPreferences.contains("is_xlarge_layout")) {
        bool2 = localSharedPreferences.getBoolean("is_xlarge_layout", bool1);
      }
      return bool2;
    }
  }
  
  public boolean aa()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("root_auto_install", false);
  }
  
  public boolean ab()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("close_notification", false);
  }
  
  public String ac()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString("PCS_backup_path", null);
  }
  
  public String ad()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString("PCS_ostype", null);
  }
  
  public String ae()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString("PCS_userinfo", null);
  }
  
  public void af()
  {
    Object localObject = PreferenceManager.getDefaultSharedPreferences(e);
    if (((SharedPreferences)localObject).getLong("PCS_remind_upgrade_time", -1L) == -1L)
    {
      localObject = ((SharedPreferences)localObject).edit();
      ((SharedPreferences.Editor)localObject).putLong("PCS_remind_upgrade_time", System.currentTimeMillis() + 1296000000L);
      ((SharedPreferences.Editor)localObject).commit();
    }
  }
  
  public void ag()
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.remove("PCS_remind_upgrade_time");
    localEditor.commit();
  }
  
  public String ah()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString("ap_ssid", null);
  }
  
  public String ai()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString("ap_passwd", null);
  }
  
  public boolean aj()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("ap_flag", false);
  }
  
  public boolean ak()
  {
    int i = 0;
    Object localObject = PreferenceManager.getDefaultSharedPreferences(e);
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
      localObject = PreferenceManager.getDefaultSharedPreferences(e).edit();
      ((SharedPreferences.Editor)localObject).putBoolean("show_select_button", bool1);
      ((SharedPreferences.Editor)localObject).commit();
      return bool1;
      bool1 = false;
      continue;
      bool2 = ((Boolean)localObject).booleanValue();
    }
    return bool2;
  }
  
  public boolean al()
  {
    Object localObject = PreferenceManager.getDefaultSharedPreferences(e);
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
        bool = true;
      }
      catch (NullPointerException localNullPointerException)
      {
        int i = 1;
        bool = true;
        continue;
      }
      if (i == 0) {
        break;
      }
      localObject = PreferenceManager.getDefaultSharedPreferences(e).edit();
      ((SharedPreferences.Editor)localObject).putBoolean("gesture_setting_enabled", true);
      ((SharedPreferences.Editor)localObject).commit();
      return true;
      bool = ((Boolean)localObject).booleanValue();
      i = 0;
    }
    return bool;
  }
  
  public boolean am()
  {
    int i = 0;
    Object localObject = PreferenceManager.getDefaultSharedPreferences(e);
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
      localObject = PreferenceManager.getDefaultSharedPreferences(e).edit();
      ((SharedPreferences.Editor)localObject).putBoolean("show_windows_button", bool1);
      ((SharedPreferences.Editor)localObject).commit();
      return bool1;
      bool1 = false;
      continue;
      bool2 = ((Boolean)localObject).booleanValue();
    }
    return bool2;
  }
  
  public boolean an()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("display_guideline_op", true);
  }
  
  public boolean ao()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("display_guideline_ol", true);
  }
  
  public boolean ap()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("traffic_show", true);
  }
  
  public boolean aq()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("send_statistics", true);
  }
  
  public long ar()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getLong("last_statistics", 0L);
  }
  
  public boolean as()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("toolbar_setting_show_name", true);
  }
  
  public String at()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString("root_mountlist", "");
  }
  
  public String au()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString("last_bk_setting_file", "/sdcard/ESSettings.zip");
  }
  
  public String av()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString("last_content_chooser_path", "");
  }
  
  public long aw()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getLong("last_pcs_access", 0L);
  }
  
  public long ax()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getLong("last_pcs_verify", 0L);
  }
  
  public boolean ay()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("visiable_audio_500", false);
  }
  
  public boolean az()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("not_show_falsified_alert", false);
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: getstatic 31	com/estrongs/android/pop/ad:e	Landroid/content/Context;
    //   3: ldc_w 978
    //   6: iconst_0
    //   7: invokevirtual 131	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   10: invokeinterface 150 1 0
    //   15: astore_1
    //   16: aload_1
    //   17: ldc_w 978
    //   20: iconst_1
    //   21: invokeinterface 249 3 0
    //   26: pop
    //   27: aload_1
    //   28: invokeinterface 182 1 0
    //   33: pop
    //   34: aconst_null
    //   35: astore_2
    //   36: new 275	java/io/File
    //   39: dup
    //   40: new 277	java/lang/StringBuilder
    //   43: dup
    //   44: invokespecial 278	java/lang/StringBuilder:<init>	()V
    //   47: getstatic 283	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   50: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: ldc_w 289
    //   56: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: invokevirtual 293	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: invokespecial 295	java/io/File:<init>	(Ljava/lang/String;)V
    //   65: astore_3
    //   66: aload_3
    //   67: invokevirtual 298	java/io/File:exists	()Z
    //   70: ifne +71 -> 141
    //   73: aload_2
    //   74: astore_1
    //   75: aload_3
    //   76: invokevirtual 301	java/io/File:mkdirs	()Z
    //   79: ifeq +33 -> 112
    //   82: new 303	java/io/FileOutputStream
    //   85: dup
    //   86: new 277	java/lang/StringBuilder
    //   89: dup
    //   90: invokespecial 278	java/lang/StringBuilder:<init>	()V
    //   93: getstatic 283	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   96: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: ldc_w 980
    //   102: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: invokevirtual 293	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: invokespecial 306	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   111: astore_1
    //   112: aload_1
    //   113: ifnull +17 -> 130
    //   116: aload_1
    //   117: ldc_w 982
    //   120: invokevirtual 313	java/lang/String:getBytes	()[B
    //   123: invokevirtual 317	java/io/FileOutputStream:write	([B)V
    //   126: aload_1
    //   127: invokevirtual 320	java/io/FileOutputStream:close	()V
    //   130: return
    //   131: astore_1
    //   132: aload_1
    //   133: invokevirtual 323	java/io/FileNotFoundException:printStackTrace	()V
    //   136: aload_2
    //   137: astore_1
    //   138: goto -26 -> 112
    //   141: new 275	java/io/File
    //   144: dup
    //   145: new 277	java/lang/StringBuilder
    //   148: dup
    //   149: invokespecial 278	java/lang/StringBuilder:<init>	()V
    //   152: getstatic 283	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   155: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: ldc_w 305
    //   161: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: invokevirtual 293	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   167: invokespecial 295	java/io/File:<init>	(Ljava/lang/String;)V
    //   170: invokevirtual 326	java/io/File:delete	()Z
    //   173: pop
    //   174: new 303	java/io/FileOutputStream
    //   177: dup
    //   178: new 277	java/lang/StringBuilder
    //   181: dup
    //   182: invokespecial 278	java/lang/StringBuilder:<init>	()V
    //   185: getstatic 283	com/estrongs/android/pop/a:b	Ljava/lang/String;
    //   188: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: ldc_w 980
    //   194: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: invokevirtual 293	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   200: invokespecial 306	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   203: astore_1
    //   204: goto -92 -> 112
    //   207: astore_1
    //   208: aload_1
    //   209: invokevirtual 323	java/io/FileNotFoundException:printStackTrace	()V
    //   212: aload_2
    //   213: astore_1
    //   214: goto -102 -> 112
    //   217: astore_2
    //   218: aload_2
    //   219: invokevirtual 327	java/io/IOException:printStackTrace	()V
    //   222: goto -96 -> 126
    //   225: astore_1
    //   226: aload_1
    //   227: invokevirtual 327	java/io/IOException:printStackTrace	()V
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
  
  public void b(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putInt("ftpsvrport", paramInt);
    localEditor.commit();
  }
  
  public void b(long paramLong)
  {
    SharedPreferences.Editor localEditor = e.getSharedPreferences("preference", 0).edit();
    localEditor.putLong("upgrade_last_check_time", paramLong);
    localEditor.commit();
  }
  
  public void b(Context paramContext)
  {
    e = paramContext;
  }
  
  public void b(af paramaf)
  {
    synchronized (f)
    {
      f.remove(paramaf);
      return;
    }
  }
  
  public void b(String paramString)
  {
    if (paramString == null) {
      return;
    }
    Object localObject2 = e.getSharedPreferences("serverlistdb6", 0);
    Map localMap = ((SharedPreferences)localObject2).getAll();
    ??? = am.D(paramString);
    if (localMap.containsKey(???))
    {
      localObject2 = ((SharedPreferences)localObject2).edit();
      ((SharedPreferences.Editor)localObject2).remove((String)???);
      ((SharedPreferences.Editor)localObject2).commit();
    }
    synchronized (f)
    {
      localObject2 = f.iterator();
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
    SharedPreferences.Editor localEditor = e.getSharedPreferences("devicename", 0).edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }
  
  public void b(String paramString1, String arg2, boolean paramBoolean)
  {
    if (paramString1 == null) {
      return;
    }
    if (am.u(paramString1))
    {
      synchronized (f)
      {
        localObject1 = f.iterator();
        if (((Iterator)localObject1).hasNext()) {
          ((af)((Iterator)localObject1).next()).a(paramString1, true, 0);
        }
      }
      return;
    }
    Object localObject1 = Y(paramString1);
    localObject1 = e.getSharedPreferences((String)localObject1, 0);
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
      if (!paramString1.equals(am.D((String)((Iterator)localObject2).next()))) {
        break label346;
      }
      i = 1;
    }
    label164:
    label346:
    for (;;)
    {
      break label121;
      j = 0;
      if ((j != 0) && (!paramBoolean)) {
        break;
      }
      localObject2 = ((SharedPreferences)localObject1).edit();
      if (X()) {}
      for (localObject1 = am.bG(paramString1);; localObject1 = paramString1)
      {
        ((SharedPreferences.Editor)localObject2).putString((String)localObject1, ???);
        if (com.estrongs.android.d.e.a(???)) {
          b(paramString1, ???);
        }
        ((SharedPreferences.Editor)localObject2).commit();
        ??? = e.getSharedPreferences("serverlistdb6", 0).edit();
        ???.putBoolean((String)localObject1, true);
        ???.commit();
        synchronized (f)
        {
          localObject1 = f.iterator();
          if (!((Iterator)localObject1).hasNext()) {
            break;
          }
          ((af)((Iterator)localObject1).next()).a(paramString1, true, 0);
        }
      }
      com.estrongs.fs.a.b.a().c(am.bc(paramString1));
      com.estrongs.fs.a.b.a().a(paramString1);
      com.estrongs.fs.a.b.a().c("scannedserver://");
      return;
    }
  }
  
  public void b(String paramString, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = e.getSharedPreferences("serverlistdb4", 0).edit();
    String str = paramString;
    if (X()) {
      str = am.bG(paramString);
    }
    localEditor.putBoolean(str, paramBoolean);
    localEditor.commit();
  }
  
  public void b(List<com.estrongs.fs.h> paramList)
  {
    Map localMap = e.getSharedPreferences("serverlistdb7", 0).getAll();
    if (!localMap.isEmpty())
    {
      Iterator localIterator = localMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject2 = (String)localIterator.next();
        String str = (String)localMap.get(localObject2);
        Object localObject1 = localObject2;
        if (X()) {
          localObject1 = am.bH((String)localObject2);
        }
        localObject2 = m.a(am.an((String)localObject1));
        if (localObject2 != null) {
          paramList.add(new com.estrongs.fs.impl.m.b((String)localObject1, (m)localObject2, str));
        }
      }
    }
  }
  
  public void b(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("hidden_file", paramBoolean);
    localEditor.commit();
    FexApplication.a().a("hidden_file", Boolean.valueOf(paramBoolean));
  }
  
  public String ba()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString("es_tool_file_name", null);
  }
  
  public void c(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putInt("pcs_upgrade_sms_count", paramInt);
    localEditor.commit();
  }
  
  public void c(long paramLong)
  {
    SharedPreferences.Editor localEditor = e.getSharedPreferences("preference", 0).edit();
    localEditor.putLong("recomm_last_check_time", paramLong);
    localEditor.commit();
  }
  
  public void c(String paramString)
  {
    a(paramString, true);
  }
  
  public void c(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return;
    }
    Object localObject1 = Y(paramString1);
    Object localObject2 = e.getSharedPreferences((String)localObject1, 0);
    if (X()) {}
    for (localObject1 = am.bG(paramString1);; localObject1 = paramString1)
    {
      Object localObject3 = ((SharedPreferences)localObject2).getAll();
      if (((Map)localObject3).isEmpty()) {
        break;
      }
      Iterator localIterator = ((Map)localObject3).keySet().iterator();
      while (localIterator.hasNext())
      {
        localObject3 = (String)localIterator.next();
        if (((String)localObject1).equals(localObject3))
        {
          localObject1 = ((SharedPreferences)localObject2).edit();
          ((SharedPreferences.Editor)localObject1).putString((String)localObject3, paramString2);
          ((SharedPreferences.Editor)localObject1).commit();
          paramString2 = e.getSharedPreferences("serverlistdb6", 0);
          localObject1 = paramString2.getAll();
          localObject2 = am.D((String)localObject3);
          if (((Map)localObject1).containsKey(localObject2))
          {
            paramString2 = paramString2.edit();
            paramString2.remove((String)localObject2);
            paramString2.commit();
          }
        }
      }
      paramString2 = am.by(paramString1);
      if ((am.o(paramString1)) || (am.n(paramString1)) || (am.p(paramString1)) || (am.I(paramString1)) || (am.J(paramString1))) {
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
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("showbks_" + paramString, paramBoolean);
    localEditor.commit();
  }
  
  public void c(List<com.estrongs.fs.h> paramList)
  {
    Map localMap = e.getSharedPreferences("serverlistdb8", 0).getAll();
    if (!localMap.isEmpty())
    {
      Iterator localIterator = localMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str2 = (String)localIterator.next();
        String str3 = (String)localMap.get(str2);
        String str1 = str2;
        if (X()) {
          str1 = am.bH(str2);
        }
        paramList.add(new com.estrongs.fs.impl.m.b(str1, m.b(am.ao(str1)), str3));
      }
    }
  }
  
  public void c(boolean paramBoolean)
  {
    Object localObject = PreferenceManager.getDefaultSharedPreferences(e).edit();
    ((SharedPreferences.Editor)localObject).putBoolean("show_pcs_drive", paramBoolean);
    ((SharedPreferences.Editor)localObject).commit();
    localObject = am.bF(j("Market"));
    com.estrongs.fs.a.b.a().a((String)localObject + "*");
  }
  
  public boolean c()
  {
    boolean bool2 = e.getSharedPreferences("pcs_temp_normal_flag", 0).getBoolean("pcs_temp_normal_flag", false);
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
  
  public String d(String paramString)
  {
    return e.getSharedPreferences("devicename", 0).getString(paramString, null);
  }
  
  public void d()
  {
    Object localObject1 = e.getSharedPreferences("pcs_first_register_flag", 0).edit();
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
  
  public void d(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putInt("sd_sortby", paramInt);
    localEditor.commit();
  }
  
  public void d(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putLong("last_statistics", paramLong);
    localEditor.commit();
  }
  
  public void d(String paramString1, String paramString2)
  {
    SharedPreferences localSharedPreferences = e.getSharedPreferences("sftpprivatekey", 0);
    String str = paramString1;
    if (X()) {
      str = am.bG(paramString1);
    }
    paramString1 = localSharedPreferences.edit();
    if (bd.a(paramString2)) {
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
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("home_block_expand_" + paramString, paramBoolean);
    localEditor.commit();
  }
  
  public void d(List<com.estrongs.fs.h> paramList)
  {
    Map localMap = e.getSharedPreferences("serverlistdb3", 0).getAll();
    if (!localMap.isEmpty())
    {
      Iterator localIterator = localMap.keySet().iterator();
      if (localIterator.hasNext())
      {
        Object localObject1 = (String)localIterator.next();
        String str = (String)localMap.get(localObject1);
        Object localObject2 = localObject1;
        if (X()) {
          localObject2 = am.bH((String)localObject1);
        }
        if (am.o((String)localObject2))
        {
          localObject1 = m.h;
          label99:
          localObject1 = new com.estrongs.fs.impl.m.b((String)localObject2, (m)localObject1, str);
          if (!g((String)localObject2)) {
            break label191;
          }
          ((com.estrongs.fs.impl.m.b)localObject1).putExtra("item_is_scanned_server", Boolean.valueOf(true));
        }
        for (;;)
        {
          paramList.add(localObject1);
          break;
          if (am.n((String)localObject2))
          {
            localObject1 = m.g;
            break label99;
          }
          if (am.p((String)localObject2))
          {
            localObject1 = m.f;
            break label99;
          }
          if (am.I((String)localObject2))
          {
            localObject1 = m.e;
            break label99;
          }
          localObject1 = m.d;
          break label99;
          label191:
          ((com.estrongs.fs.impl.m.b)localObject1).putExtra("item_is_scanned_server", Boolean.valueOf(false));
        }
      }
    }
  }
  
  public void d(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("thumbnail", paramBoolean);
    localEditor.commit();
    FexApplication.a().a("thumbnail", Boolean.valueOf(paramBoolean));
  }
  
  public void e(int paramInt)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putInt("rightDrawerCurrentIndex", paramInt);
    localEditor.commit();
  }
  
  public void e(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putLong("last_pcs_access", paramLong);
    localEditor.commit();
  }
  
  public void e(String paramString)
  {
    SharedPreferences.Editor localEditor = e.getSharedPreferences("devicename", 0).edit();
    localEditor.remove(paramString);
    localEditor.commit();
  }
  
  public void e(String paramString1, String paramString2)
  {
    SharedPreferences localSharedPreferences = e.getSharedPreferences("sftpprivatekey_passphrases", 0);
    String str = paramString1;
    if (X()) {
      str = am.bG(paramString1);
    }
    paramString1 = localSharedPreferences.edit();
    if (bd.a(paramString2)) {
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
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean(paramString + "_expanded", paramBoolean);
    localEditor.commit();
  }
  
  public void e(List<com.estrongs.fs.h> paramList)
  {
    Map localMap = e.getSharedPreferences("serverlistdb9", 0).getAll();
    if (!localMap.isEmpty())
    {
      Iterator localIterator = localMap.keySet().iterator();
      if (localIterator.hasNext())
      {
        Object localObject2 = (String)localIterator.next();
        String str = (String)localMap.get(localObject2);
        Object localObject1 = localObject2;
        if (X()) {
          localObject1 = am.bH((String)localObject2);
        }
        localObject2 = new com.estrongs.fs.impl.m.b((String)localObject1, m.O, str);
        if (g((String)localObject1)) {
          ((com.estrongs.fs.impl.m.b)localObject2).putExtra("item_is_scanned_server", Boolean.valueOf(true));
        }
        for (;;)
        {
          paramList.add(localObject2);
          break;
          ((com.estrongs.fs.impl.m.b)localObject2).putExtra("item_is_scanned_server", Boolean.valueOf(false));
        }
      }
    }
  }
  
  public void e(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("hide_toolbar", paramBoolean);
    localEditor.commit();
  }
  
  public boolean e()
  {
    boolean bool2 = e.getSharedPreferences("pcs_first_register_flag", 0).getBoolean("pcs_first_register_flag", false);
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
  
  public String f()
  {
    Map localMap = e.getSharedPreferences("preference", 0).getAll();
    if ((!localMap.isEmpty()) && (localMap.containsKey("root_path"))) {
      return (String)localMap.get("root_path");
    }
    return null;
  }
  
  public void f(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putLong("last_pcs_verify", paramLong);
    localEditor.commit();
  }
  
  public void f(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }
  
  public void f(List<String> paramList)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    JSONArray localJSONArray = new JSONArray();
    int i = 0;
    while (i < paramList.size())
    {
      localJSONArray.add(paramList.get(i));
      i += 1;
    }
    localEditor.putString("default_path_list", localJSONArray.toJSONString());
    localEditor.putBoolean("homepage_added", true);
    localEditor.commit();
  }
  
  public void f(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("playlistDb_in_sdcard", paramBoolean);
    localEditor.commit();
  }
  
  public boolean f(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    String str2 = Y(paramString);
    String str1 = paramString;
    if (X()) {
      str1 = am.bG(paramString);
    }
    paramString = e.getSharedPreferences(str2, 0).getAll();
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
  
  public void g(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putLong("pcs_uinfo_timestamp", paramLong);
    localEditor.commit();
  }
  
  public void g(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("ftpsvruser", paramString1);
    paramString1 = paramString2;
    if (paramString2 != null)
    {
      paramString1 = paramString2;
      if (X()) {
        paramString1 = bd.c(paramString2);
      }
    }
    localEditor.putString("ftpsvrpasswd", paramString1);
    localEditor.commit();
  }
  
  public void g(List<String> paramList)
  {
    int i = 0;
    Object localObject1 = e.getSharedPreferences("documentExtlistdb", 0);
    Object localObject2 = ((SharedPreferences)localObject1).getAll();
    if ((localObject2 != null) && (!((Map)localObject2).isEmpty())) {
      paramList.addAll(((Map)localObject2).keySet());
    }
    for (;;)
    {
      Collections.sort(paramList);
      return;
      if (bb())
      {
        localObject2 = bc.d().split(";");
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
        bc();
      }
    }
  }
  
  public void g(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("tips_instagram_delete", paramBoolean);
    localEditor.commit();
  }
  
  public boolean g()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("history_dir_only", false);
  }
  
  public boolean g(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    String str = paramString;
    if (X()) {
      str = am.bG(paramString);
    }
    return e.getSharedPreferences("serverlistdb6", 0).contains(str);
  }
  
  public int h()
  {
    try
    {
      int i = Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(e).getString("list", "0"));
      return i;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return 0;
  }
  
  public String h(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    Object localObject = Y(paramString);
    String str1 = paramString;
    if (X()) {
      str1 = am.bG(paramString);
    }
    paramString = e.getSharedPreferences((String)localObject, 0);
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
        return paramString;
      }
      catch (ClassCastException paramString)
      {
        paramString = null;
        continue;
      }
      paramString = null;
    }
  }
  
  public void h(long paramLong)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("app_folder_update_time", "" + paramLong);
    localEditor.commit();
  }
  
  public void h(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("PCS_ostype", paramString1);
    localEditor.putString("PCS_userinfo", paramString2);
    localEditor.commit();
  }
  
  public void h(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("tips_instagram_edit", paramBoolean);
    localEditor.commit();
  }
  
  public int i(String paramString1, String paramString2)
  {
    try
    {
      int i = PreferenceManager.getDefaultSharedPreferences(e).getInt(paramString1 + "_" + paramString2 + "_default_index", 0);
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
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("search_engine_update_time", paramLong + "");
    localEditor.commit();
  }
  
  public void i(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return;
    }
    SharedPreferences.Editor localEditor = e.getSharedPreferences("preference", 0).edit();
    localEditor.putString("root_path", paramString);
    localEditor.commit();
  }
  
  public void i(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("tips_facebook_delete", paramBoolean);
    localEditor.commit();
  }
  
  public boolean i()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("scroll_thumb", true);
  }
  
  public String j(String paramString)
  {
    paramString = f();
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
    String str = paramLong + "";
    SharedPreferences.Editor localEditor = e.getSharedPreferences("preference", 0).edit();
    localEditor.putString("es_last_open_time_string", str);
    localEditor.commit();
  }
  
  public void j(String paramString1, String paramString2)
  {
    if ((!am.M(paramString1)) && (!am.O(paramString1))) {
      return;
    }
    SharedPreferences.Editor localEditor = e.getSharedPreferences("adbFolderName", 0).edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }
  
  public void j(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("passwordencode", paramBoolean);
    localEditor.commit();
  }
  
  public boolean j()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("su", false);
  }
  
  public String k(String paramString)
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getString("default_start_window", paramString);
  }
  
  public void k(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString(paramString1 + "_es_uuid", paramString2);
    localEditor.commit();
  }
  
  public void k(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("root_reported", paramBoolean);
    localEditor.commit();
  }
  
  public boolean k()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("auto_app_backup", false);
  }
  
  public void l(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("default_start_window", paramString);
    localEditor.commit();
  }
  
  public void l(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("ap_flag", paramBoolean);
    localEditor.commit();
  }
  
  public boolean l()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("backup_app_cache", false);
  }
  
  public void m(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("gesture_setting_enabled", paramBoolean);
    localEditor.commit();
    FexApplication.a().a("gesture_setting_enabled", Boolean.valueOf(paramBoolean));
  }
  
  public boolean m()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).contains("su");
  }
  
  public boolean m(String paramString)
  {
    String str1 = paramString;
    if (X()) {
      str1 = am.bG(paramString);
    }
    if (str1 == null) {
      return true;
    }
    paramString = e.getSharedPreferences("serverlistdb4", 0).getAll();
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
    if (X()) {
      str1 = am.bG(paramString);
    }
    Object localObject = e.getSharedPreferences("serverlistdb3", 0).getAll();
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
          break label172;
        }
      }
    }
    label172:
    for (localObject = str2;; localObject = paramString)
    {
      paramString = (String)localObject;
      break label52;
      if (paramString == null) {
        break;
      }
      localObject = e.getSharedPreferences("serverlistdb5", 0).getAll();
      if ((!((Map)localObject).isEmpty()) && (((Map)localObject).containsKey(paramString))) {}
      for (int i = ((Integer)((Map)localObject).get(paramString)).intValue();; i = 0) {
        return i;
      }
    }
  }
  
  public void n(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("display_guideline_op", paramBoolean);
    localEditor.commit();
  }
  
  public boolean n()
  {
    return (!z.W) && (PreferenceManager.getDefaultSharedPreferences(e).getBoolean("show_pcs_drive", true));
  }
  
  public int o(String paramString)
  {
    if (paramString == null) {
      return 0;
    }
    try
    {
      Object localObject = e.getSharedPreferences("serverlistdb5", 0);
      String str1 = paramString;
      if (X()) {
        str1 = am.bG(paramString);
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
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("display_guideline_ol", paramBoolean);
    localEditor.commit();
  }
  
  public boolean o()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("enableRemoteSynchronizer", true);
  }
  
  public String p(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      Object localObject = e.getSharedPreferences("sftpprivatekey", 0);
      String str1 = paramString;
      if (X()) {
        str1 = am.bG(paramString);
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
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("traffic_show", paramBoolean);
    localEditor.commit();
  }
  
  public boolean p()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("hidden_file", false);
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
          if (X()) {
            str1 = am.bG(paramString);
          }
          Iterator localIterator = e.getSharedPreferences("serverlistdb3", 0).getAll().entrySet().iterator();
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
        Object localObject = e.getSharedPreferences("sftpprivatekey", 0).getAll();
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
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("visiable_audio_500", paramBoolean);
    localEditor.commit();
  }
  
  public boolean q()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("auto_clear", false);
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
          if (X()) {
            str1 = am.bG(paramString);
          }
          Iterator localIterator = e.getSharedPreferences("serverlistdb3", 0).getAll().entrySet().iterator();
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
        Object localObject = e.getSharedPreferences("sftpprivatekey_passphrases", 0).getAll();
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
  
  public void r(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("not_show_falsified_alert", paramBoolean);
    localEditor.commit();
  }
  
  public boolean r()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("upgrade_auto_check", true);
  }
  
  public Point s(boolean paramBoolean)
  {
    Object localObject = PreferenceManager.getDefaultSharedPreferences(e).getString("gesture_start_position_" + paramBoolean, null);
    if (localObject == null) {
      return null;
    }
    try
    {
      localObject = com.estrongs.android.ui.d.a.b((String)localObject);
      return (Point)localObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public void s(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return;
    }
    SharedPreferences.Editor localEditor = e.getSharedPreferences("preference", 0).edit();
    localEditor.putString("app_backup_path", paramString);
    localEditor.commit();
    FexApplication.a().a("app_backup_path", paramString);
  }
  
  public boolean s()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("thumbnail", true);
  }
  
  public void t(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return;
    }
    SharedPreferences.Editor localEditor = e.getSharedPreferences("preference", 0).edit();
    localEditor.putString("bt_path", paramString);
    localEditor.commit();
  }
  
  public void t(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("enable_recycle", paramBoolean);
    localEditor.commit();
    FexApplication.a().a("enable_recycle", Boolean.valueOf(paramBoolean));
  }
  
  public boolean t()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("hide_toolbar", false);
  }
  
  public void u(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return;
    }
    SharedPreferences.Editor localEditor = e.getSharedPreferences("preference", 0).edit();
    localEditor.putString("download_path", paramString);
    localEditor.commit();
    FexApplication.a().a("download_path", paramString);
  }
  
  public void u(boolean paramBoolean)
  {
    a = paramBoolean;
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("show_associate_app", paramBoolean);
    localEditor.commit();
    FexApplication.a().a("show_associate_app", Boolean.valueOf(a));
  }
  
  public boolean u()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("playlistDb_in_sdcard", true);
  }
  
  public void v(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return;
    }
    SharedPreferences.Editor localEditor = e.getSharedPreferences("preference", 0).edit();
    localEditor.putString("note_editor_encoding", paramString);
    localEditor.commit();
  }
  
  public void v(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("share_associate_app", paramBoolean);
    localEditor.commit();
  }
  
  public boolean v()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("sdcard_size", false);
  }
  
  public String w(String paramString)
  {
    return e.getSharedPreferences("preference", 0).getString("note_editor_encoding", paramString);
  }
  
  public void w(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("show_search_engine", paramBoolean);
    localEditor.commit();
    FexApplication.a().a("show_search_engine", Boolean.valueOf(paramBoolean));
  }
  
  public boolean w()
  {
    return PreferenceManager.getDefaultSharedPreferences(e).getBoolean("app_clean_history_exit", false);
  }
  
  public String x()
  {
    String str2 = "/sdcard/backups/apps/";
    Map localMap = e.getSharedPreferences("preference", 0).getAll();
    String str1 = str2;
    if (!localMap.isEmpty())
    {
      str1 = str2;
      if (localMap.containsKey("app_backup_path")) {
        str1 = (String)localMap.get("app_backup_path");
      }
    }
    if (!com.estrongs.fs.impl.local.h.a(str1)) {}
    try
    {
      com.estrongs.fs.d.a(e).g(str1);
      return str1;
    }
    catch (FileSystemException localFileSystemException)
    {
      com.estrongs.fs.impl.local.h.g(str1);
      localFileSystemException.printStackTrace();
    }
    return str1;
  }
  
  public void x(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (X()) {
        str = bd.c(paramString);
      }
    }
    localEditor.putString("netpasswd", str);
    localEditor.commit();
  }
  
  public void x(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putBoolean("is_xlarge_layout", paramBoolean);
    localEditor.commit();
  }
  
  public String y()
  {
    Object localObject2 = "/sdcard/";
    Object localObject3 = e.getSharedPreferences("preference", 0).getAll();
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
  
  public void y(String paramString)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(e).edit();
    localEditor.putString("theme_default", paramString);
    localEditor.commit();
  }
  
  public com.estrongs.fs.util.a.a z(String paramString)
  {
    paramString = com.estrongs.android.pop.view.utils.ac.a(e, paramString);
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
  
  @SuppressLint({"NewApi"})
  public String z()
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
    localMap = e.getSharedPreferences("preference", 0).getAll();
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
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */