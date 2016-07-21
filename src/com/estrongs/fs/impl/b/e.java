package com.estrongs.fs.impl.b;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ah;
import com.estrongs.android.util.bk;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.b.al;
import com.estrongs.fs.util.j;
import com.estrongs.fs.v;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.UnknownHostException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.json.simple.JSONArray;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class e
  extends v
{
  private Context a;
  private ArrayList<String> b = null;
  
  public e(Context paramContext)
  {
    a = paramContext;
  }
  
  private int a(PackageManager paramPackageManager, ApplicationInfo paramApplicationInfo, String paramString, HashMap<String, String> paramHashMap)
  {
    String str = com.estrongs.android.pop.utils.w.a(paramPackageManager, paramApplicationInfo);
    paramPackageManager = a(paramPackageManager, paramApplicationInfo);
    if (com.estrongs.fs.impl.local.i.a(paramString + str + paramPackageManager + ".apk")) {
      return 3;
    }
    if ((paramHashMap != null) && (paramHashMap.get(str) != null)) {
      return 2;
    }
    return 1;
  }
  
  private static String a(PackageManager paramPackageManager, List<com.estrongs.fs.h> paramList)
  {
    JSONArray localJSONArray = new JSONArray();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (d)paramList.next();
      org.json.simple.JSONObject localJSONObject = new org.json.simple.JSONObject();
      localObject = hpackageName;
      localJSONObject.put("package", localObject);
      localJSONObject.put("versioncode", Integer.valueOf(com.estrongs.android.pop.utils.w.a(paramPackageManager, (String)localObject)));
      localJSONObject.put("signmd5", com.estrongs.android.pop.utils.w.c(paramPackageManager, (String)localObject));
      localJSONArray.add(localJSONObject);
    }
    return localJSONArray.toString();
  }
  
  public static String a(String paramString1, String paramString2)
  {
    return paramString1 + "_" + paramString2 + ".zip";
  }
  
  private List<com.estrongs.fs.h> a()
  {
    LinkedList localLinkedList = new LinkedList();
    a(ad.a(a).y(), localLinkedList);
    return localLinkedList;
  }
  
  @TargetApi(8)
  public static List<com.estrongs.fs.h> a(Context paramContext, List<com.estrongs.fs.h> paramList)
  {
    Object localObject2 = paramList.iterator();
    Object localObject1;
    int i;
    while (((Iterator)localObject2).hasNext())
    {
      localObject1 = (d)((Iterator)localObject2).next();
      if (paramContext.getPackageName().equals(hpackageName))
      {
        if (localObject1 != null) {
          paramList.remove(localObject1);
        }
        localObject1 = new ArrayList();
        if (!bk.c()) {
          return (List<com.estrongs.fs.h>)localObject1;
        }
        if (ad.a(paramContext).aX()) {
          break label1153;
        }
        i = 1;
      }
    }
    for (;;)
    {
      int j;
      try
      {
        com.estrongs.android.ui.g.a.a(paramContext).b();
        Object localObject3 = "http://m.baidu.com/api?" + "from=1002320s&token=es&type=app" + "&index=3";
        localObject2 = ah.a(null);
        localObject3 = ((HttpClient)localObject2).execute(new HttpGet((String)localObject3));
        if (((HttpResponse)localObject3).getStatusLine().getStatusCode() != 200) {
          return null;
        }
        Object localObject4 = ah.a((HttpResponse)localObject3).trim();
        ah.a((HttpClient)localObject2);
        localObject3 = DocumentBuilderFactory.newInstance().newDocumentBuilder();
        localObject2 = ((DocumentBuilder)localObject3).parse(new InputSource(new StringReader((String)localObject4))).getDocumentElement();
        Object localObject5;
        Object localObject6;
        if ("0".equals(((Element)localObject2).getElementsByTagName("statuscode").item(0).getTextContent()))
        {
          localObject2 = ((Element)localObject2).getElementsByTagName("url").item(0).getTextContent();
          localObject4 = (String)localObject2 + "&" + "from=1002320s&token=es&type=app";
          localObject2 = new HashMap();
          localObject5 = paramList.iterator();
          if (!((Iterator)localObject5).hasNext()) {
            continue;
          }
          localObject6 = (d)((Iterator)localObject5).next();
          ((Map)localObject2).put(hpackageName, localObject6);
          continue;
        }
        Object localObject7;
        String str1;
        String str2;
        String str3;
        long l3;
        String str4;
        long l1;
        long l2;
        d locald;
        localObject1 = null;
      }
      catch (UnknownHostException paramContext)
      {
        if (com.estrongs.a.a.getCurrentTask() != null) {
          getCurrentTaski = true;
        }
        return (List<com.estrongs.fs.h>)localObject1;
        paramList = a(FexApplication.a().getPackageManager(), paramList);
        localObject4 = (HttpURLConnection)new URL((String)localObject4).openConnection();
        ((HttpURLConnection)localObject4).setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        ((HttpURLConnection)localObject4).setRequestMethod("POST");
        ((HttpURLConnection)localObject4).setDoOutput(true);
        ((HttpURLConnection)localObject4).setDoInput(true);
        ((HttpURLConnection)localObject4).setRequestProperty("Connection", "Keep-Alive");
        ((HttpURLConnection)localObject4).connect();
        localObject5 = new BufferedOutputStream(((HttpURLConnection)localObject4).getOutputStream());
        ((OutputStream)localObject5).write(paramList.getBytes());
        ((OutputStream)localObject5).flush();
        ((OutputStream)localObject5).close();
        localObject4 = ((HttpURLConnection)localObject4).getInputStream();
        localObject5 = new StringBuilder();
        localObject6 = new BufferedReader(new InputStreamReader((InputStream)localObject4), 1000);
        paramList = ((BufferedReader)localObject6).readLine();
        if (paramList != null)
        {
          ((StringBuilder)localObject5).append(paramList);
          paramList = ((BufferedReader)localObject6).readLine();
          continue;
        }
        ((InputStream)localObject4).close();
        paramList = ((DocumentBuilder)localObject3).parse(new InputSource(new StringReader(((StringBuilder)localObject5).toString()))).getDocumentElement();
        if (!"0".equals(paramList.getElementsByTagName("statuscode").item(0).getTextContent())) {
          continue;
        }
        paramList = ((Element)paramList.getElementsByTagName("result").item(0)).getElementsByTagName("apps").item(0).getChildNodes();
        localObject3 = new SimpleDateFormat("yyyy-MM-dd");
        j = 0;
        if (j < paramList.getLength())
        {
          localObject7 = (Element)paramList.item(j);
          localObject4 = ((Element)localObject7).getElementsByTagName("sname").item(0).getTextContent();
          localObject5 = ((Element)localObject7).getElementsByTagName("package").item(0).getTextContent();
          localObject6 = ((Element)localObject7).getElementsByTagName("versionname").item(0).getTextContent();
          str1 = ((Element)localObject7).getElementsByTagName("versioncode").item(0).getTextContent();
          str2 = ((Element)localObject7).getElementsByTagName("signmd5").item(0).getTextContent();
          str3 = ((Element)localObject7).getElementsByTagName("usersignmd5").item(0).getTextContent();
          l3 = Long.parseLong(((Element)localObject7).getElementsByTagName("size").item(0).getTextContent());
          str4 = ((Element)localObject7).getElementsByTagName("updatetime").item(0).getTextContent();
          l1 = -1L;
        }
        try
        {
          l2 = ((SimpleDateFormat)localObject3).parse(str4).getTime();
          l1 = l2;
        }
        catch (ParseException localParseException)
        {
          continue;
        }
        str4 = ((Element)localObject7).getElementsByTagName("download_url").item(0).getTextContent();
        localObject7 = ((Element)localObject7).getElementsByTagName("changelog").item(0).getTextContent();
        locald = (d)((Map)localObject2).get(localObject5);
        if (str2.equals(str3)) {
          break label1165;
        }
        bool = true;
        locald.a(new h((String)localObject4, (String)localObject5, (String)localObject6, str1, str4, l3, l1, (String)localObject7, bool));
        if (bool)
        {
          locald.setDisplayName(locald.getName() + "(" + paramContext.getString(2131231602) + ")");
          if (i != 0) {
            ((List)localObject1).add(locald);
          }
        }
        else
        {
          ((List)localObject1).add(locald);
        }
      }
      catch (ProtocolException paramContext)
      {
        if (com.estrongs.a.a.getCurrentTask() == null) {
          continue;
        }
        getCurrentTaski = true;
        continue;
        return (List<com.estrongs.fs.h>)localObject1;
      }
      catch (IOException paramContext)
      {
        if (com.estrongs.a.a.getCurrentTask() == null) {
          continue;
        }
        getCurrentTaski = true;
        continue;
      }
      catch (Exception paramContext)
      {
        continue;
      }
      catch (ParserConfigurationException paramContext)
      {
        continue;
      }
      catch (SAXException paramContext)
      {
        continue;
      }
      break;
      label1153:
      i = 0;
      continue;
      j += 1;
      continue;
      label1165:
      boolean bool = false;
    }
  }
  
  private void a(String paramString, List<com.estrongs.fs.h> paramList)
  {
    Object localObject3 = null;
    try
    {
      Object localObject1 = com.estrongs.fs.d.a(a).a(paramString);
      if (localObject1 != null)
      {
        Iterator localIterator = ((List)localObject1).iterator();
        for (localObject1 = localObject3;; localObject1 = localObject3)
        {
          if (!localIterator.hasNext()) {
            break label453;
          }
          localObject5 = (com.estrongs.fs.h)localIterator.next();
          if (!((com.estrongs.fs.h)localObject5).getFileType().a()) {
            break;
          }
          localObject3 = localObject1;
          if (localObject1 == null) {
            localObject3 = new LinkedList();
          }
          ((List)localObject3).add(localObject5);
        }
      }
    }
    catch (FileSystemException localFileSystemException)
    {
      Object localObject2;
      for (;;)
      {
        Object localObject5;
        localFileSystemException.printStackTrace();
        localObject2 = null;
        continue;
        Object localObject4;
        String str1;
        String str2;
        if (((com.estrongs.fs.h)localObject5).getName().endsWith(".apk"))
        {
          localObject3 = e(((com.estrongs.fs.h)localObject5).getName());
          if (localObject3 != null)
          {
            localObject4 = localObject3[0];
            str1 = localObject3[1];
            localObject3 = new g(new File(((com.estrongs.fs.h)localObject5).getAbsolutePath()));
            ((g)localObject3).c((String)localObject4);
            ((g)localObject3).a(str1);
            str2 = paramString + a((String)localObject4, str1);
            localObject5 = paramString + c((String)localObject4, str1);
          }
        }
        try
        {
          if (com.estrongs.fs.d.a(a).b(str2)) {
            ((g)localObject3).b(str2);
          }
          if (com.estrongs.fs.d.a(a).b((String)localObject5))
          {
            ((g)localObject3).a(true);
            ((g)localObject3).d((String)localObject5);
            localObject4 = paramString + b((String)localObject4, str1);
            if (com.estrongs.fs.d.a(a).b((String)localObject4)) {
              ((g)localObject3).e((String)localObject4);
            }
            localObject4 = j.b(new File((String)localObject5), "UTF-8");
            if ((localObject4 != null) && (!"".equals(localObject4)))
            {
              localObject4 = new org.json.JSONObject((String)localObject4);
              if (((org.json.JSONObject)localObject4).has("apkpath")) {
                ((g)localObject3).f(((org.json.JSONObject)localObject4).getString("apkpath"));
              }
              if (((org.json.JSONObject)localObject4).has("odexpath")) {
                ((g)localObject3).g(((org.json.JSONObject)localObject4).getString("odexpath"));
              }
            }
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localException.printStackTrace();
          }
        }
        paramList.add(localObject3);
      }
      label453:
      if (localObject2 != null)
      {
        paramString = ((List)localObject2).iterator();
        while (paramString.hasNext()) {
          a(((com.estrongs.fs.h)paramString.next()).getPath(), paramList);
        }
      }
    }
  }
  
  public static String b(String paramString1, String paramString2)
  {
    return paramString1 + "_" + paramString2 + ".odex";
  }
  
  private ArrayList<String> b()
  {
    ArrayList localArrayList;
    try
    {
      Cursor localCursor = a.getContentResolver().query(Uri.parse(com.estrongs.android.pop.a.d), null, null, null, null);
      if (localCursor != null)
      {
        localArrayList = new ArrayList();
        while (localCursor.moveToNext()) {
          localArrayList.add(localCursor.getString(0));
        }
      }
      return null;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    localException.close();
    return localArrayList;
  }
  
  public static String c(String paramString1, String paramString2)
  {
    return paramString1 + "_" + paramString2 + ".systag";
  }
  
  private String[] e(String paramString)
  {
    int i = paramString.lastIndexOf("_");
    if (i > 0) {
      return new String[] { paramString.substring(0, i), paramString.substring(i + 1, paramString.indexOf(".apk")) };
    }
    return null;
  }
  
  public String a(PackageManager paramPackageManager, ApplicationInfo paramApplicationInfo)
  {
    if (paramApplicationInfo != null) {
      return "_" + com.estrongs.android.pop.utils.w.b(paramPackageManager, paramApplicationInfo)[0];
    }
    return "";
  }
  
  public List<com.estrongs.fs.h> a(com.estrongs.fs.h paramh, com.estrongs.fs.i parami, TypedMap paramTypedMap)
  {
    paramTypedMap = paramh.getPath().substring("app://".length());
    if ("backuped".equals(paramTypedMap)) {
      return a();
    }
    if ("update".equals(paramTypedMap))
    {
      paramh = com.estrongs.android.pop.utils.c.a();
      if ((paramh != null) && (paramh.size() >= 1))
      {
        com.estrongs.android.pop.utils.c.b();
        return a(a, paramh);
      }
    }
    String str = ad.a(a).y();
    PackageManager localPackageManager = FexApplication.a().getPackageManager();
    Object localObject1 = FexApplication.a().a(8192);
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    Object localObject2 = new File(str).list(new f(this));
    Object localObject3;
    if (localObject2 != null)
    {
      parami = new HashMap(localObject2.length);
      int j = localObject2.length;
      int i = 0;
      paramh = parami;
      if (i < j)
      {
        localObject3 = localObject2[i];
        int k = ((String)localObject3).lastIndexOf("_");
        if (k > 0)
        {
          paramh = ((String)localObject3).substring(0, k);
          localObject3 = ((String)localObject3).substring(k);
          if (parami.get(paramh) == null) {
            break label242;
          }
          if (((String)parami.get(paramh)).compareTo((String)localObject3) < 0) {
            parami.put(paramh, localObject3);
          }
        }
        for (;;)
        {
          i += 1;
          break;
          label242:
          parami.put(paramh, localObject3);
        }
      }
    }
    else
    {
      paramh = null;
    }
    parami = new LinkedList();
    b = b();
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (ApplicationInfo)((Iterator)localObject1).next();
      if ((locala != null) && (locala.taskStopped())) {
        return null;
      }
      if (sourceDir != null)
      {
        localObject3 = new d(sourceDir, com.estrongs.fs.w.b, com.estrongs.android.pop.utils.w.a(localPackageManager, (ApplicationInfo)localObject2), (ApplicationInfo)localObject2);
        String[] arrayOfString = com.estrongs.android.pop.utils.w.b(localPackageManager, (ApplicationInfo)localObject2);
        ((d)localObject3).a(arrayOfString[0]);
        ((d)localObject3).b(arrayOfString[1]);
        ((d)localObject3).a(a(localPackageManager, (ApplicationInfo)localObject2, str, paramh));
        parami.add(localObject3);
      }
    }
    if ("update".equals(paramTypedMap)) {
      return a(a, a(parami, "user"));
    }
    return a(parami, paramTypedMap);
  }
  
  public List<com.estrongs.fs.h> a(List<d> paramList, String paramString)
  {
    Object localObject;
    if (ac.a() >= 8)
    {
      localObject = new b();
      if (!"user".equals(paramString)) {
        break label126;
      }
      a = 2;
    }
    for (;;)
    {
      paramString = new LinkedList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        d locald = (d)paramList.next();
        if (((c)localObject).a(locald))
        {
          if ((b != null) && (b.contains(locald.m()))) {
            locald.a(true);
          }
          paramString.add(locald);
        }
      }
      localObject = new c();
      break;
      label126:
      if ("system".equals(paramString)) {
        a = 1;
      } else if ("phone".equals(paramString)) {
        a = 3;
      } else if ("sdcard".equals(paramString)) {
        a = 4;
      }
    }
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */