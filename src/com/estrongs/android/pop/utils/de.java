package com.estrongs.android.pop.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.aa;
import com.estrongs.android.util.an;
import com.estrongs.android.util.bk;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.zip.InflaterInputStream;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;

public class de
{
  public static boolean a = true;
  public static boolean b = false;
  private static HashMap<String, ArrayList<dg>> c = new HashMap();
  private static final Object d = new Object();
  private static String e = null;
  
  public static dh a(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramContext, ad.a(paramContext).aM(), paramString1, paramString2);
  }
  
  private static dh a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    synchronized (d)
    {
      a();
      boolean bool = bk.a(paramString3);
      ArrayList localArrayList2 = (ArrayList)c.get(paramString1 + "_" + "all");
      Object localObject1;
      if ((bk.a(com.estrongs.android.pop.view.a.b)) || (com.estrongs.android.pop.view.a.b.equalsIgnoreCase("Amazon"))) {
        localObject1 = (ArrayList)c.get(paramString1 + "_" + paramString2);
      }
      int i;
      for (;;)
      {
        i = ad.a(FexApplication.a()).i(paramString1, paramString2);
        paramString1 = a((ArrayList)localObject1, paramString3, bool, i);
        if (paramString1 == null) {
          break;
        }
        return paramString1;
        ArrayList localArrayList1 = (ArrayList)c.get(com.estrongs.android.pop.view.a.b + "_" + paramString2);
        localObject1 = localArrayList1;
        if (localArrayList1 == null) {
          localObject1 = (ArrayList)c.get(paramString1 + "_" + paramString2);
        }
      }
      paramString1 = a(paramContext, paramString2);
      paramContext = paramString3;
      if (bk.b(paramString1))
      {
        if (bool) {
          paramString3 = "";
        }
        paramContext = paramString3 + " " + paramString1;
      }
      paramContext = a(localArrayList2, paramContext, false, i);
      return paramContext;
    }
  }
  
  private static dh a(ArrayList<dg> paramArrayList, String paramString, boolean paramBoolean, int paramInt)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    int i;
    if (paramArrayList != null)
    {
      localObject1 = localObject2;
      if (paramArrayList.size() > 0)
      {
        if (paramInt >= 0)
        {
          i = paramInt;
          if (paramInt < paramArrayList.size()) {}
        }
        else
        {
          i = 0;
        }
        if ((!paramBoolean) || (getd == null) || (getd.length() <= 0)) {
          break label113;
        }
        localObject1 = new dh(getd, gete);
      }
    }
    label113:
    do
    {
      do
      {
        do
        {
          return (dh)localObject1;
          localObject1 = localObject2;
        } while (paramBoolean);
        localObject1 = localObject2;
      } while (getb == null);
      localObject1 = localObject2;
    } while (getb.length() <= 0);
    localObject1 = String.format(getb, new Object[] { paramString });
    if (getc == null) {}
    for (paramArrayList = null;; paramArrayList = String.format(getc, new Object[] { paramString })) {
      return new dh((String)localObject1, paramArrayList);
    }
  }
  
  private static String a(Context paramContext, String paramString)
  {
    String str = "";
    if ("image".equals(paramString)) {
      str = paramContext.getString(2131231138);
    }
    for (;;)
    {
      return str.toUpperCase(Locale.getDefault());
      if ("music".equals(paramString)) {
        str = paramContext.getString(2131231136);
      } else if ("video".equals(paramString)) {
        str = paramContext.getString(2131231135);
      } else if ("apk".equals(paramString)) {
        str = paramContext.getString(2131231129);
      } else if ("document".equals(paramString)) {
        str = paramContext.getString(2131231130);
      }
    }
  }
  
  public static ArrayList<String> a(String paramString1, String paramString2)
  {
    a();
    ArrayList localArrayList2 = new ArrayList();
    Object localObject;
    if ((bk.a(com.estrongs.android.pop.view.a.b)) || (com.estrongs.android.pop.view.a.b.equalsIgnoreCase("Amazon"))) {
      localObject = (ArrayList)c.get(paramString1 + "_" + paramString2);
    }
    while ((localObject != null) && (((ArrayList)localObject).size() > 0))
    {
      paramString1 = ((ArrayList)localObject).iterator();
      while (paramString1.hasNext())
      {
        paramString2 = (dg)paramString1.next();
        if ((d != null) && (d.length() > 0)) {
          localArrayList2.add(d);
        }
      }
      ArrayList localArrayList1 = (ArrayList)c.get(com.estrongs.android.pop.view.a.b + "_" + paramString2);
      localObject = localArrayList1;
      if (localArrayList1 == null) {
        localObject = (ArrayList)c.get(paramString1 + "_" + paramString2);
      }
    }
    return localArrayList2;
  }
  
  public static void a()
  {
    for (;;)
    {
      synchronized (d)
      {
        if (c.size() > 0)
        {
          long l1 = ad.a(FexApplication.a()).aN().longValue();
          long l2 = new Date().getTime();
          if ((cl.a()) || (l2 - l1 > 86400000L)) {
            b();
          }
          return;
        }
        HashMap localHashMap2 = b(com.estrongs.android.pop.a.u, true);
        Object localObject3 = d;
        if (localHashMap2 != null) {
          ??? = localHashMap2;
        }
        try
        {
          if (localHashMap2.size() == 0)
          {
            ??? = new HashMap();
            a((HashMap)???, "baidu_all", "baidu", "http://m.baidu.com/s?from=1648a&word=%1s", "http://m.baidu.com/s?from=1648a", null, null);
            a((HashMap)???, "baidu_image", "百度图片", "http://m.baidu.com/s?from=1648a&vit=union&st=103041&word=%1s", "http://m.hao123.com/a/tupian/?tagid=shenghuo_shoujibizhi", null, null);
            a((HashMap)???, "baidu_video", "百度视频", "http://m.baidu.com/video?from=1648a&word=%1s", "http://tv.baidu.com/m?from=es_file_explorer", null, null);
            if (bk.b()) {
              a((HashMap)???, "baidu_music", "百度音乐", "http://music.baidu.com/#search/%1s/?fr=ch_es&pa=1&da=1&bb=1&lr=1&vd=1&td=1&ta=1&mgd=0&bi=1&sl=1&dsa=1&tn=1&noad=1", "http://music.baidu.com/?fr=ch_es&pa=1&da=1&bb=1&lr=1&vd=1&td=1&ta=1&mgd=0&bi=1&sl=1&dsa=1&tn=1&noad=1", null, null);
            }
            if ("TmallBox".equalsIgnoreCase(com.estrongs.android.pop.view.a.b))
            {
              a((HashMap)???, "baidu_apk", "百度应用", "http://down.znds.com/plus/search.php?kwtype=0&q=%1s&searchtype=title", "http://down.znds.com/", null, null);
              a((HashMap)???, "baidu_document", "百度书城", "http://m.baidu.com/s?st=11n041&tn=xsd&pn=0&pu=sz@1320_1001&ssid=0&from=1648a&bd_page_type=1&word=%1s", "http://m.baidu.com/book/?ref=es_file_explorer&from=1648a", null, null);
              a((HashMap)???, "baidu_weather", "天气", "http://m.baidu.com/s?from=1648a&word=天气", "http://m.baidu.com/s?from=1648a&word=天气", null, null);
              a((HashMap)???, "baidu_news", "百度新闻", "http://m.baidu.com/news?from=1648a", "http://m.baidu.com/news?from=1648a", null, null);
              a((HashMap)???, "google_all", "Google", "http://www.google.com/search?safe=strict&q=%1s", "http://www.google.com/", null, null);
              a((HashMap)???, "google_image", "Google Images", "http://www.google.com/search?safe=strict&tbm=isch&q=%1s", "http://images.google.com/", null, null);
              a((HashMap)???, "google_video", "Youtube", "http://www.youtube.com/results?search_query=%1s", "http://m.youtube.com/", null, null);
              a((HashMap)???, "google_music", "Google Music", "https://play.google.com/store/search?q=%1s", "https://play.google.com/music/", "market://search?q=%1s&c=music", "https://market.android.com/music/");
              a((HashMap)???, "google_apk", "Google APKs", "https://play.google.com/store/search?q=%1s", "https://play.google.com/apps/", "market://search?q=%1s&c=apps", "https://market.android.com/apps/");
              a((HashMap)???, "google_document", "Google Books", "https://www.google.com/search?&tbm=bks&q=%1s", "https://play.google.com/books/", "market://search?q=%1s&c=books", "https://market.android.com/books/");
              a((HashMap)???, "google_weather", "Google Weather", "https://www.google.com/search?&q=weather", "https://www.google.com/search?&q=weather", null, null);
              a((HashMap)???, "google_news", "Google News", "https://news.google.com", "https://news.google.com", null, null);
              a((HashMap)???, "yandex_all", "Yandex", "http://www.yandex.com/touchsearch?text=%1s", "http://www.yandex.com/", null, null);
              a((HashMap)???, "yandex_image", "Yandex Images", "http://www.yandex.com/images/search?text=%1s", "http://yandex.com/images/", null, null);
              a((HashMap)???, "yandex_video", "Yandex Video", "http://m.video.yandex.com/#!/search?text=%1s", "http://yandex.com/video/", null, null);
              a((HashMap)???, "yandex_music", "Google Music", null, "https://play.google.com/music/", null, "https://market.android.com/music/");
              a((HashMap)???, "yandex_apk", "Google APKs", "https://play.google.com/store/search?q=%1s", "https://play.google.com/apps/", "market://search?q=%1s&c=apps", "https://market.android.com/appks/");
              a((HashMap)???, "yandex_document", "Google Books", null, "https://play.google.com/books/", null, "https://market.android.com/books/");
              a((HashMap)???, "yandex_weather", "Google Weather", "https://www.google.com/search?&q=weather", "https://www.google.com/search?&q=weather", null, null);
              a((HashMap)???, "yandex_news", "Google News", "https://news.google.com", "https://news.google.com", null, null);
              a((HashMap)???, "naver_all", "Naver", "http://search.naver.com/search.naver?query=%1s", "http://wwww.naver.com/", null, null);
              a((HashMap)???, "naver_image", "Naver Images", "http://image.search.naver.com/search.naver?query=%1s", "http://photo.naver.com/", null, null);
              a((HashMap)???, "naver_video", "Naver Video", "http://video.search.naver.com/search.naver?query=%1s", "http://movie.naver.com/", null, null);
              a((HashMap)???, "naver_music", "Naver Music", "http://m.music.naver.com/search/search.nhn?query=%1s", "http://music.naver.com/", null, null);
              a((HashMap)???, "naver_apk", "Naver APKs", "http://nstore.naver.com/search/search.nhn?t=all&fs=appstore&q=%1s", "http://appstore.naver.com/", null, null);
              a((HashMap)???, "naver_document", "Naver Books", "http://book.naver.com/search/search.nhn?query=%1s", "http://book.naver.com/", null, null);
              a((HashMap)???, "naver_weather", "Google Weather", "https://www.google.com/search?&q=weather", "https://www.google.com/search?&q=weather", null, null);
              a((HashMap)???, "naver_news", "Google News", "https://news.google.com", "https://news.google.com", null, null);
              a((HashMap)???, "yahoo_all", "Yahoo", "https://search.yahoo.com/search?p=%1s", "http://www.yahoo.com/", null, null);
              a((HashMap)???, "yahoo_video", "Yahoo Video", "https://video.search.yahoo.com/search/video?p=%1s", "http://movies.yahoo.com/", null, null);
              a((HashMap)???, "yahoo_music", "Yahoo Music", "http://search.yahoo.com/search/?p=%1s&vs=music.yahoo.com", "http://music.yahoo.com/", null, null);
              a((HashMap)???, "yahoo_image", "Flickr", "https://images.search.yahoo.com/search/images?p=%1s", "http://m.flickr.com/#/explore/interesting/", null, null);
              a((HashMap)???, "yahoo_apk", "Yahoo Games", null, "http://games.yahoo.com/", null, null);
              a((HashMap)???, "yahoo_document", "Yahoo Books", null, "http://books.yahoo.com/", null, null);
              a((HashMap)???, "yahoo_weather", "Google Weather", "https://www.google.com/search?&q=weather", "https://www.google.com/search?&q=weather", null, null);
              a((HashMap)???, "yahoo_news", "Google News", "https://news.google.com", "https://news.google.com", null, null);
              a((HashMap)???, "amazon_all", "Amazon", "http://www.amazon.com/s/field-keywords=%1s", "http://www.amazon.com/", null, null);
              a((HashMap)???, "amazon_image", "Google Images", "http://www.google.com/search?safe=strict&tbm=isch&q=%1s", "http://images.google.com/", null, null);
              a((HashMap)???, "amazon_video", "Movies and TV", null, "http://video.amazon.com/", null, null);
              a((HashMap)???, "amazon_music", "Amazon Music", null, "http://music.amazon.com/", null, null);
              a((HashMap)???, "amazon_apk", "Appstore for Android", null, "http://www.amazon.com/appstore", null, null);
              a((HashMap)???, "amazon_document", "Books", null, "http://books.amazon.com/", null, null);
              a((HashMap)???, "amazon_weather", "Google Weather", "https://www.google.com/search?&q=weather", "https://www.google.com/search?&q=weather", null, null);
              a((HashMap)???, "amazon_news", "Google News", "https://news.google.com", "https://news.google.com", null, null);
              a((HashMap)???, "mysearch_all", "MySearch", "http://www.mysearch.com/web?mgct=hp&o=APN11955&q=%1s", "http://www.mysearch.com/web?mgct=hp&o=APN11955", null, null);
              a((HashMap)???, "mysearch_news", "MySearch News", "http://www.mysearch.com/web?mgct=hp&o=APN11955&q=%1s", "http://www.mysearch.com/web?mgct=hp&o=APN11955&q=news", null, null);
              a((HashMap)???, "mysearch_document", "MySearch Document", "http://www.mysearch.com/web?mgct=hp&o=APN11955&q=%1s", "http://www.mysearch.com/web?mgct=hp&o=APN11955&q=document", null, null);
              a((HashMap)???, "mysearch_image", "MySearch Images", "http://www.mysearch.com/pictures?mgct=hp&o=APN11895&q=%1s", "http://www.mysearch.com/web?mgct=hp&o=APN11955&q=image", null, null);
              a((HashMap)???, "mysearch_video", "MySearch Video", "http://www.mysearch.com/videos?mgct=hp&o=APN11895&q=%1s", "http://www.mysearch.com/web?mgct=hp&o=APN11955&q=video", null, null);
              a((HashMap)???, "mysearch_music", "MySearch Music", "http://www.mysearch.com/web?mgct=hp&o=APN11955&q=%1s", "http://www.mysearch.com/web?mgct=hp&o=APN11955&q=music", null, null);
              a((HashMap)???, "mysearch_weather", "MySearch Weather", "http://www.mysearch.com/web?mgct=hp&o=APN11955&q=%1s", "http://www.mysearch.com/web?mgct=hp&o=APN11955&q=weather", null, null);
              a((HashMap)???, "mysearch_apk", "MySearch Apk", "http://www.mysearch.com/web?mgct=hp&o=APN11955&q=%1s", "http://www.mysearch.com/web?mgct=hp&o=APN11955&q=apk", null, null);
            }
          }
          else
          {
            c = (HashMap)???;
            return;
          }
        }
        finally {}
      }
      if (com.estrongs.android.pop.view.a.b.equalsIgnoreCase("安智")) {
        a(localHashMap1, "baidu_apk", "百度应用", null, "http://m.anzhi.com", null, null);
      } else if (com.estrongs.android.pop.view.a.b.equalsIgnoreCase("智汇云")) {
        a(localHashMap1, "baidu_apk", "百度应用", null, "http://app.vmall.com", null, null);
      } else if (com.estrongs.android.pop.view.a.b.equalsIgnoreCase("Shafa")) {
        a(localHashMap1, "baidu_apk", "百度应用", "http://m.shafa.com/search?kw=%1s", "http://m.shafa.com/", null, null);
      } else {
        a(localHashMap1, "baidu_apk", "百度应用", "http://m.baidu.com/app?action=search&from=1000364e&pu=osname@esbrowser#word=%1s", "http://m.baidu.com/app?from=1000364e&pu=osname@esbrowser", null, null);
      }
    }
  }
  
  private static void a(HashMap<String, ArrayList<dg>> paramHashMap, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    paramString2 = new dg(paramString2, paramString3, paramString4, paramString5, paramString6);
    paramString3 = new ArrayList();
    paramString3.add(paramString2);
    paramHashMap.put(paramString1, paramString3);
  }
  
  private static void a(HashMap<String, ArrayList<dg>> paramHashMap, String paramString, JSONArray paramJSONArray)
  {
    try
    {
      int i = paramString.indexOf(")");
      if (i == -1) {
        return;
      }
      String str = paramString.substring(1, i);
      paramString = paramString.substring(i + 1);
      if (str.startsWith("api>="))
      {
        i = Integer.parseInt(str.substring(5));
        if (ac.a() >= i)
        {
          b(paramHashMap, paramString, paramJSONArray);
          return;
        }
      }
    }
    catch (Exception paramHashMap) {}
  }
  
  public static boolean a(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse(paramString));
    localIntent.setPackage("com.android.vending");
    localIntent.addFlags(268435456);
    try
    {
      FexApplication.a().startActivity(localIntent);
      return true;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  public static ArrayList<dg> b(String paramString1, String paramString2)
  {
    
    Object localObject;
    if ((bk.a(com.estrongs.android.pop.view.a.b)) || (com.estrongs.android.pop.view.a.b.equalsIgnoreCase("Amazon"))) {
      localObject = (ArrayList)c.get(paramString1 + "_" + paramString2);
    }
    ArrayList localArrayList;
    do
    {
      return (ArrayList<dg>)localObject;
      localArrayList = (ArrayList)c.get(com.estrongs.android.pop.view.a.b + "_" + paramString2);
      localObject = localArrayList;
    } while (localArrayList != null);
    return (ArrayList)c.get(paramString1 + "_" + paramString2);
  }
  
  private static HashMap<String, ArrayList<dg>> b(String paramString, boolean paramBoolean)
  {
    if (paramString == null) {
      return null;
    }
    File localFile = new File(paramString);
    try
    {
      if (!localFile.exists())
      {
        if (!paramBoolean) {
          break label363;
        }
        e = null;
        b();
        break label363;
      }
      int i = Long.valueOf(localFile.length()).intValue();
      localObject3 = new byte[i];
      Object localObject1 = new RandomAccessFile(localFile, "r");
      ((RandomAccessFile)localObject1).read((byte[])localObject3, 0, i);
      ((RandomAccessFile)localObject1).close();
      localObject1 = new ByteArrayOutputStream();
      localObject3 = new InflaterInputStream(new ByteArrayInputStream((byte[])localObject3));
      localObject4 = new byte['Ѐ'];
      for (;;)
      {
        i = ((InflaterInputStream)localObject3).read((byte[])localObject4, 0, 1024);
        if (i <= 0) {
          break;
        }
        ((ByteArrayOutputStream)localObject1).write((byte[])localObject4, 0, i);
      }
      ((InflaterInputStream)localObject3).close();
    }
    catch (Exception localException1)
    {
      if (paramString.equalsIgnoreCase(com.estrongs.android.pop.a.u)) {
        localFile.delete();
      }
      if (paramBoolean)
      {
        e = null;
        b();
      }
      return null;
    }
    Object localObject3 = new String(localException1.toByteArray());
    localException1.close();
    Object localObject2 = (Map)new JSONParser().parse((String)localObject3);
    Object localObject4 = new HashMap();
    Iterator localIterator = ((Map)localObject2).entrySet().iterator();
    localObject2 = null;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        Object localObject5 = (Map.Entry)localIterator.next();
        try
        {
          localObject3 = (String)((Map.Entry)localObject5).getKey();
          if (((String)localObject3).equals("hash_code"))
          {
            localObject3 = (String)((Map.Entry)localObject5).getValue();
            localObject2 = localObject3;
          }
          else
          {
            localObject5 = (JSONArray)((Map.Entry)localObject5).getValue();
            if (((String)localObject3).startsWith("(")) {
              a((HashMap)localObject4, (String)localObject3, (JSONArray)localObject5);
            } else {
              b((HashMap)localObject4, (String)localObject3, (JSONArray)localObject5);
            }
          }
        }
        catch (Exception localException2) {}
      }
      if (((HashMap)localObject4).size() > 0) {
        e = (String)localObject2;
      }
      return (HashMap<String, ArrayList<dg>>)localObject4;
      label363:
      return null;
    }
  }
  
  public static void b()
  {
    try
    {
      if ((!b) && (a))
      {
        if (!an.b()) {
          return;
        }
        b = true;
        if (!new File(com.estrongs.android.pop.a.u).exists()) {
          e = null;
        }
        StringBuilder localStringBuilder = new StringBuilder().append("http://www.estrongs.com/console/service/searchaddrs?v=");
        if (e == null) {}
        for (Object localObject = "0";; localObject = e)
        {
          localObject = new aa((String)localObject);
          new File(com.estrongs.android.pop.a.u + ".tmp").delete();
          ((aa)localObject).a(com.estrongs.android.pop.a.u + ".tmp");
          ((aa)localObject).a(new df((aa)localObject));
          ((aa)localObject).c();
          return;
        }
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  private static void b(HashMap<String, ArrayList<dg>> paramHashMap, String paramString, JSONArray paramJSONArray)
  {
    if ((paramJSONArray != null) && (paramJSONArray.size() == 0)) {}
    for (;;)
    {
      return;
      ArrayList localArrayList = new ArrayList();
      int i = 0;
      label23:
      if (i < paramJSONArray.size()) {}
      try
      {
        Map localMap = (Map)paramJSONArray.get(i);
        dg localdg = new dg();
        a = ((String)localMap.get("title"));
        b = ((String)localMap.get("surl"));
        d = ((String)localMap.get("url"));
        e = ((String)localMap.get("m_url"));
        c = ((String)localMap.get("m_surl"));
        localArrayList.add(localdg);
        i += 1;
        break label23;
        if (localArrayList.size() <= 0) {
          continue;
        }
        paramHashMap.put(paramString, localArrayList);
        return;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
  }
  
  public static String c()
  {
    String str1 = "google";
    String str2 = Locale.getDefault().getCountry().toLowerCase();
    if (str2.contains("cn")) {
      str1 = "baidu";
    }
    for (;;)
    {
      if ((com.estrongs.android.pop.view.a.b.equalsIgnoreCase("Amazon")) || (com.estrongs.android.pop.view.a.d())) {
        str1 = "amazon";
      }
      return str1;
      if (str2.contains("us")) {
        str1 = "google";
      } else if (com.estrongs.android.i.a.a("mysearch_test_enabled", 0) == 1) {
        str1 = "mysearch";
      } else if (str2.contains("ru")) {
        str1 = "yandex";
      } else if ((str2.contains("kr")) || (str2.contains("ko"))) {
        str1 = "naver";
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.de
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */