package com.estrongs.android.util;

import android.util.SparseArray;
import android.webkit.MimeTypeMap;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.adb.a;
import com.estrongs.fs.util.j;
import com.estrongs.fs.w;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class bg
{
  public static final Set<Integer> a = new HashSet();
  public static final Set<Integer> b = new HashSet();
  public static final Set<Integer> c = new HashSet();
  public static final Set<Integer> d = new HashSet();
  public static final Set<Integer> e = new HashSet();
  public static String f;
  public static String g = null;
  public static String h;
  private static final HashMap<String, Integer> i = new HashMap();
  private static final SparseArray<String[]> j = new SparseArray();
  private static final SparseArray<String> k = new SparseArray();
  private static String l = null;
  
  static
  {
    String str2 = MimeTypeMap.getSingleton().getMimeTypeFromExtension("bmp");
    a(65536, ".apk", "application/vnd.android.package-archive", 100);
    a(65537, new String[] { ".txt", ".text", ".ini", ".properties", ".prop", ".conf", ".classpath", ".project", ".php", ".js", ".rss", ".jsp", ".asp", ".aspx", ".c", ".java", ".vb", ".vbs", ".h", ".checksum" }, "text/plain", 4);
    a(65552, ".png", "image/png", 1);
    a(65553, ".jpg", "image/jpeg", 1);
    String str1 = str2;
    if (str2 == null) {
      str1 = "image/bmp";
    }
    a(65554, ".bmp", str1, 1);
    a(65555, ".gif", "image/gif", 1);
    a(65556, ".jpeg", "image/jpeg", 1);
    a(65557, ".wbmp", "image/vnd.wap.wbmp", 1);
    a(65558, new String[] { ".tif", ".tiff" }, "image/tif", 1);
    a(131104, ".mp3", "audio/mpeg", 2);
    a(131105, new String[] { ".mid", ".midi", ".rmi" }, "audio/mid", 2);
    a(131106, ".wav", "audio/x-wav", 2);
    a(131107, ".amr", "audio/amr", 2);
    a(131108, new String[] { ".ogg", ".x-ogg" }, "audio/ogg", 2);
    a(131109, new String[] { ".m4a" }, "audio/mp4", 2);
    a(131110, ".wma", "audio/x-ms-wma", 2);
    a(131111, ".qcp", "audio/vnd.qcelp", 2);
    a(131112, new String[] { ".ra", ".ram" }, "audio/x-pn-realaudio", 2);
    a(131113, new String[] { ".aif", ".aifc", ".aiff" }, "audio/x-aiff", 2);
    a(131114, ".m3u", "audio/x-mpegurl", 2);
    a(131115, ".flac", "audio/flac", 2);
    a(131116, ".ape", "audio/x-ape", 2);
    a(131117, ".oga", "audio/ogg", 2);
    a(131118, ".ac3", "audio/ac3", 2);
    a(131119, ".awb", "audio/amr-wb", 2);
    a(131120, new String[] { ".mp2", ".mpga" }, "audio/mpeg", 2);
    a(131121, new String[] { ".3gpa", ".3ga" }, "audio/3ga", 2);
    a(131122, ".imy", "audio/imelod", 2);
    a(131123, new String[] { ".aac" }, "audio/aac", 2);
    a(196647, new String[] { ".asf", ".asx" }, "video/x-ms-asf", 3);
    a(196648, ".wmv", "video/x-ms-wmv", 3);
    a(196649, new String[] { ".rm", ".rmvb", ".mkv", ".mov" }, "video/*", 3);
    a(196650, new String[] { ".3gp", ".3gpp" }, "video/3gpp", 3);
    a(196651, ".avi", "video/avi", 3);
    a(196652, new String[] { ".mp4", ".m4v", ".f4v" }, "video/mp4", 3);
    a(196653, new String[] { ".mpg", ".ts" }, "video/mpeg", 3);
    a(196654, ".mpeg", "video/mpeg", 3);
    a(196656, ".flv", "application/x-shockwave-flash", 3);
    a(196658, ".vob", "application/octet-stream", 3);
    a(196659, ".webm", "video/webm", 3);
    a(196660, ".ogv", "video/ogg", 3);
    a(196661, ".3g2", "video/3gpp2", 3);
    a(196662, ".m2ts", "video/mpeg", 3);
    a(196663, ".trp", "video/*", 3);
    a(196664, ".mts", "video/avchd-stream", 3);
    a(196665, ".divx", "video/divx", 3);
    a(458753, ".swf", "application/x-shockwave-flash", 3);
    a(262192, new String[] { ".doc", ".docx", ".docm" }, "application/msword", 100);
    a(262193, new String[] { ".xls", ".xlsx", ".xla", ".xlc", ".xlm", ".xlt", ".xlsm", ".xlsb", ".ods" }, "application/vnd.ms-excel", 100);
    a(262194, new String[] { ".html", ".htm", ".mht" }, "text/html", 100);
    a(262224, ".wps", "application/wps", 100);
    a(262225, ".wpt", "application/wpt", 100);
    a(262226, ".dps", "application/dps", 100);
    a(262227, ".dpt", "application/dpt", 100);
    a(262228, ".et", "application/et", 100);
    a(262229, ".ett", "application/ett", 100);
    a(262195, ".bat", "magnus-internal/cgi", 100);
    a(262196, ".exe", "magnus-internal/cgi", 100);
    a(262197, ".dll", "application/x-msdownload", 100);
    a(262198, ".lib", "application/octet-stream", 100);
    a(262199, new String[] { ".ppt", ".pps", ".ppx", ".pptx", ".odp", ".ppsm" }, "application/vnd.ms-powerpoint", 100);
    a(262208, ".chm", "application/x-chm", 100);
    a(262203, ".esj", "application/esj", 100);
    a(262204, ".epub", "application/epub+zip", 100);
    a(327746, ".7z", "application/x-7z-compressed", 5);
    a(327736, new String[] { ".zip", ".tar", ".gz", ".cab", ".esi", ".7z", ".jar" }, "application/zip", 5);
    a(327737, ".pdf", "application/pdf", 100);
    a(327738, ".xml", "text/xml", 4);
    a(327741, ".odt", "application/vnd.oasis.opendocument.text", 100);
    a(327743, new String[] { ".pgn", ".xqf" }, "application/x-chess-pgn", 100);
    a(327744, ".rar", "application/x-rar-compressed", 5);
    a(327745, ".gzip", "application/x-gzip", 5);
    a(327747, ".tar", "application/x-tar", 5);
    a(327748, ".bz2", "application/x-bzip2", 5);
    a(327749, ".cab", "application/vnd.ms-cab-compressed", 5);
    a(393291, ".torrent", "application/x-bittorrent", 100);
    a(393292, new String[] { ".mobi", ".prc" }, "application/x-mobipocket-ebook", 100);
    a(65612, ".vcf", "text/x-vcard", 100);
    a(65613, new String[] { ".ics", ".ical", ".icalendar" }, "text/calendar", 100);
    a(524289, ".nzb", "application/x-nzb", 100);
    a(524290, ".umd", "application/umd", 100);
    a(589825, ".pcs", null, 100);
    a(589840, ".eslock", null, 100);
    a(593920, ".ods", "application/vnd.oasis.opendocument.spreadsheet", 100);
    a(593921, ".odp", "application/vnd.oasis.opendocument.presentation", 100);
    a(598016, ".fb2", "application/fb2", 100);
    a(598017, ".azw", "application/vnd.amazon.ebook", 100);
    a(598018, ".azw1", "application/x-topaz-ebook", 100);
    a(598019, ".azw3", "application/x-mobipocket-ebook", 100);
    a(598020, ".azw4", "application/umd", 100);
    a(598020, ".ebk", "application/umd", 100);
    a(524292, ".ebk2", "application/umd", 100);
    a(524293, ".ebk3", "application/umd", 100);
  }
  
  public static final boolean A(int paramInt)
  {
    return paramInt == 262194;
  }
  
  public static final boolean A(String paramString)
  {
    return s(b(paramString));
  }
  
  public static final boolean B(int paramInt)
  {
    return paramInt == 262199;
  }
  
  public static final boolean B(String paramString)
  {
    return t(b(paramString));
  }
  
  public static final boolean C(int paramInt)
  {
    return paramInt == 327738;
  }
  
  public static final boolean C(String paramString)
  {
    return x(b(paramString));
  }
  
  public static final boolean D(int paramInt)
  {
    return paramInt == 65613;
  }
  
  public static final boolean D(String paramString)
  {
    return y(b(paramString));
  }
  
  public static final boolean E(int paramInt)
  {
    return paramInt == 131111;
  }
  
  public static final boolean E(String paramString)
  {
    return z(b(paramString));
  }
  
  public static final boolean F(int paramInt)
  {
    return paramInt == 65536;
  }
  
  public static final boolean F(String paramString)
  {
    return A(b(paramString));
  }
  
  public static final boolean G(int paramInt)
  {
    return paramInt == 589841;
  }
  
  public static final boolean G(String paramString)
  {
    return B(b(paramString));
  }
  
  public static String H(int paramInt)
  {
    return (String)k.get(paramInt);
  }
  
  public static final boolean H(String paramString)
  {
    return C(b(paramString));
  }
  
  public static final boolean I(int paramInt)
  {
    return paramInt == 589840;
  }
  
  public static final boolean I(String paramString)
  {
    return D(b(paramString));
  }
  
  public static final boolean J(String paramString)
  {
    return E(b(paramString));
  }
  
  public static final boolean K(String paramString)
  {
    return F(b(paramString));
  }
  
  public static final boolean L(String paramString)
  {
    return G(b(paramString));
  }
  
  public static final boolean M(String paramString)
  {
    paramString = paramString.toLowerCase();
    return (paramString.endsWith(".zip")) || (paramString.endsWith(".jar")) || (paramString.endsWith(".apk"));
  }
  
  public static final boolean N(String paramString)
  {
    String str = paramString.toLowerCase();
    return (M(paramString)) || (str.endsWith(".gz")) || (str.endsWith(".gzip")) || (str.endsWith(".rar")) || (o(paramString));
  }
  
  public static final boolean O(String paramString)
  {
    return paramString.toLowerCase().endsWith(".pcs");
  }
  
  public static final boolean P(String paramString)
  {
    paramString = ap.bR(paramString);
    if (paramString == null) {}
    String str;
    do
    {
      return false;
      str = c();
    } while ((str == null) || (str.indexOf(paramString) < 0));
    return true;
  }
  
  public static final boolean Q(String paramString)
  {
    paramString = ap.bR(paramString);
    if (paramString == null) {}
    String str;
    do
    {
      return false;
      str = e();
    } while ((str == null) || (str.indexOf(paramString) < 0));
    return true;
  }
  
  public static final boolean R(String paramString)
  {
    if (paramString == null) {}
    while ((!paramString.endsWith("rm")) && (!paramString.endsWith("rmvb")) && (!paramString.endsWith(".mpg")) && (!paramString.endsWith(".mpeg")) && (!paramString.endsWith(".asf")) && (!paramString.endsWith(".flv")) && (!paramString.endsWith(".f4v"))) {
      return false;
    }
    return true;
  }
  
  public static boolean S(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.toLowerCase().endsWith(".eslock");
  }
  
  public static String T(String paramString)
  {
    if (("application/zip".equalsIgnoreCase(paramString)) || ("application/x-zip-compressed".equalsIgnoreCase(paramString))) {
      return ".zip";
    }
    if ("application/x-gzip".equalsIgnoreCase(paramString)) {
      return ".gz";
    }
    if (("application/x-rar-compressed".equalsIgnoreCase(paramString)) || ("application/rar".equalsIgnoreCase(paramString))) {
      return ".rar";
    }
    return null;
  }
  
  public static String U(String paramString)
  {
    Object localObject;
    if (paramString == null) {
      localObject = "*/*";
    }
    do
    {
      do
      {
        return (String)localObject;
        str = H(b(paramString));
        localObject = str;
      } while (str != null);
      String str = j.b(paramString);
      if (str.length() <= 0) {
        break;
      }
      localObject = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str.toLowerCase());
      paramString = (String)localObject;
      if (localObject == null) {
        paramString = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str.toUpperCase());
      }
      localObject = paramString;
    } while (paramString != null);
    return "*/*";
  }
  
  public static final int a(h paramh)
  {
    int n = paramh.getESFileType();
    int m = n;
    if (n == -2)
    {
      if ((!ap.aQ(paramh.getPath())) || (!paramh.getFileType().b())) {
        break label51;
      }
      m = 65553;
    }
    for (;;)
    {
      paramh.setESFileType(m);
      return m;
      label51:
      if ((paramh instanceof a)) {
        m = 589841;
      } else {
        m = b(paramh.getAbsolutePath());
      }
    }
  }
  
  public static final int a(String paramString)
  {
    if (i.containsKey(paramString)) {
      return ((Integer)i.get(paramString)).intValue();
    }
    return -1;
  }
  
  public static final String a()
  {
    if (f != null) {
      return f;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      String[] arrayOfString = (String[])j.get(((Integer)localIterator.next()).intValue());
      int m = 0;
      while (m < arrayOfString.length)
      {
        if (localStringBuffer.length() > 0) {
          localStringBuffer.append(";");
        }
        localStringBuffer.append(arrayOfString[m]);
        m += 1;
      }
    }
    f = localStringBuffer.toString();
    return f;
  }
  
  private static final void a(int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    a(paramInt1, new String[] { paramString1 }, paramString2, paramInt2);
  }
  
  private static final void a(int paramInt1, String[] paramArrayOfString, String paramString, int paramInt2)
  {
    if (paramString != null) {
      k.put(paramInt1, paramString);
    }
    int m = 0;
    while (m < paramArrayOfString.length)
    {
      i.put(paramArrayOfString[m], Integer.valueOf(paramInt1));
      m += 1;
    }
    j.put(paramInt1, paramArrayOfString);
    if (paramInt2 == 1) {
      b.add(Integer.valueOf(paramInt1));
    }
    do
    {
      return;
      if (paramInt2 == 2)
      {
        a.add(Integer.valueOf(paramInt1));
        return;
      }
      if (paramInt2 == 3)
      {
        c.add(Integer.valueOf(paramInt1));
        return;
      }
      if (paramInt2 == 4)
      {
        d.add(Integer.valueOf(paramInt1));
        return;
      }
    } while (paramInt2 != 5);
    e.add(Integer.valueOf(paramInt1));
  }
  
  public static final boolean a(int paramInt)
  {
    return b.contains(Integer.valueOf(paramInt));
  }
  
  public static final int b(String paramString)
  {
    int n = -1;
    int m = n;
    if (paramString != null)
    {
      if (paramString.trim().length() >= 1) {
        break label23;
      }
      m = n;
    }
    label23:
    String str;
    do
    {
      do
      {
        do
        {
          do
          {
            return m;
            str = paramString;
            if (paramString.charAt(paramString.length() - 1) == '/') {
              str = paramString.substring(0, paramString.length() - 1);
            }
            paramString = ap.bR(str);
            m = n;
          } while (paramString == null);
          paramString = paramString.toLowerCase();
          m = n;
        } while (!i.containsKey(paramString));
        n = ((Integer)i.get(paramString)).intValue();
        m = n;
      } while (n != 65536);
      m = n;
    } while (!ap.O(str));
    return 589841;
  }
  
  public static final String b()
  {
    if (g != null) {
      return g;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      String[] arrayOfString = (String[])j.get(((Integer)localIterator.next()).intValue());
      int m = 0;
      while (m < arrayOfString.length)
      {
        if (localStringBuffer.length() > 0) {
          localStringBuffer.append(";");
        }
        localStringBuffer.append(arrayOfString[m]);
        m += 1;
      }
    }
    g = localStringBuffer.toString();
    return g;
  }
  
  public static final boolean b(int paramInt)
  {
    return (paramInt == 65556) || (paramInt == 65553);
  }
  
  public static final boolean b(h paramh)
  {
    if (paramh.getFileType().a()) {}
    do
    {
      return false;
      if ((ap.aQ(paramh.getPath())) && (paramh.getFileType().b())) {
        return true;
      }
    } while ((!a(a(paramh))) && (!c(paramh.getName())));
    return true;
  }
  
  public static final String c()
  {
    if ((l != null) && (!ad.b.booleanValue())) {
      return l;
    }
    ArrayList localArrayList = new ArrayList();
    ad.a(FexApplication.a()).g(localArrayList);
    if (localArrayList.size() == 0) {
      return null;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    int m = 0;
    while (m < localArrayList.size())
    {
      if (m > 0) {
        localStringBuffer.append(";");
      }
      localStringBuffer.append('.').append((String)localArrayList.get(m));
      m += 1;
    }
    l = localStringBuffer.toString();
    ad.b = Boolean.valueOf(false);
    return l;
  }
  
  public static final boolean c(int paramInt)
  {
    return paramInt == 65552;
  }
  
  public static final boolean c(String paramString)
  {
    return a(b(paramString));
  }
  
  public static final String d()
  {
    return ".doc;.docx;.ppt;.pps;.ppx;.pptx;.odp;.xls;.xlsx;.xla;.xlc;.xlm;.xlt;.xlsm;.xlsb;.chm;.html;.htm;.txt;.pdf;.mobi;.rtf;.epub;.fb2";
  }
  
  public static final boolean d(int paramInt)
  {
    return (a.contains(Integer.valueOf(paramInt))) || (c.contains(Integer.valueOf(paramInt)));
  }
  
  public static final boolean d(String paramString)
  {
    return b(b(paramString));
  }
  
  public static final String e()
  {
    return new String(".zip;.rar;.tar;.gzip;.bz2;.gz;.7z;.esi;.cab;.jar");
  }
  
  public static final boolean e(int paramInt)
  {
    return a.contains(Integer.valueOf(paramInt));
  }
  
  public static final boolean e(String paramString)
  {
    return c(b(paramString));
  }
  
  public static final String f()
  {
    return ".eslock";
  }
  
  public static final boolean f(int paramInt)
  {
    return paramInt == 131104;
  }
  
  public static final boolean f(String paramString)
  {
    return d(b(paramString));
  }
  
  public static final String g()
  {
    if (h != null) {
      return h;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      String[] arrayOfString = (String[])j.get(((Integer)localIterator.next()).intValue());
      int m = 0;
      while (m < arrayOfString.length)
      {
        if (localStringBuffer.length() > 0) {
          localStringBuffer.append(";");
        }
        localStringBuffer.append(arrayOfString[m]);
        m += 1;
      }
    }
    h = localStringBuffer.toString();
    return h;
  }
  
  public static final boolean g(int paramInt)
  {
    return c.contains(Integer.valueOf(paramInt));
  }
  
  public static final boolean g(String paramString)
  {
    return e(b(paramString));
  }
  
  public static final String h()
  {
    return new String(".apk");
  }
  
  public static String h(int paramInt)
  {
    String str2 = (String)k.get(paramInt);
    String str1 = str2;
    if (str2 == null) {
      str1 = "video/*";
    }
    return str1;
  }
  
  public static final boolean h(String paramString)
  {
    return g(b(paramString));
  }
  
  public static final String i()
  {
    return ".eslock";
  }
  
  public static String i(int paramInt)
  {
    String str2 = (String)k.get(paramInt);
    String str1 = str2;
    if (str2 == null) {
      str1 = "audio/*";
    }
    return str1;
  }
  
  public static final boolean i(String paramString)
  {
    return j(b(paramString));
  }
  
  public static final boolean j(int paramInt)
  {
    return d.contains(Integer.valueOf(paramInt));
  }
  
  public static final boolean j(String paramString)
  {
    return k(b(paramString));
  }
  
  public static String[] j()
  {
    String[] arrayOfString = new String[b.size()];
    Iterator localIterator = b.iterator();
    int m = 0;
    while (localIterator.hasNext())
    {
      arrayOfString[m] = Integer.toString(((Integer)localIterator.next()).intValue());
      m += 1;
    }
    return arrayOfString;
  }
  
  public static final boolean k(int paramInt)
  {
    return e.contains(Integer.valueOf(paramInt));
  }
  
  public static final boolean k(String paramString)
  {
    return l(b(paramString));
  }
  
  public static String[] k()
  {
    String[] arrayOfString = new String[c.size()];
    Iterator localIterator = c.iterator();
    int m = 0;
    while (localIterator.hasNext())
    {
      arrayOfString[m] = Integer.toString(((Integer)localIterator.next()).intValue());
      m += 1;
    }
    return arrayOfString;
  }
  
  public static final boolean l(int paramInt)
  {
    return paramInt == 458753;
  }
  
  public static final boolean l(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      String str = paramString;
      if (paramString.charAt(paramString.length() - 1) == '/') {
        str = paramString.substring(0, paramString.length() - 1);
      }
      paramString = str.toLowerCase();
    } while ((!paramString.endsWith(".gzip")) && (!paramString.endsWith(".gz")));
    return true;
  }
  
  public static final boolean m(int paramInt)
  {
    return paramInt == 327737;
  }
  
  public static final boolean m(String paramString)
  {
    if (paramString == null) {}
    String str;
    do
    {
      return false;
      str = paramString;
      if (paramString.charAt(paramString.length() - 1) == '/') {
        str = paramString.substring(0, paramString.length() - 1);
      }
    } while (!str.toLowerCase().endsWith(".7z"));
    return true;
  }
  
  public static final boolean n(int paramInt)
  {
    return paramInt == 262203;
  }
  
  public static final boolean n(String paramString)
  {
    if (paramString == null) {}
    String str;
    do
    {
      return false;
      str = paramString;
      if (paramString.charAt(paramString.length() - 1) == '/') {
        str = paramString.substring(0, paramString.length() - 1);
      }
    } while (!str.toLowerCase().endsWith(".rar"));
    return true;
  }
  
  public static final boolean o(int paramInt)
  {
    return paramInt == 262204;
  }
  
  public static final boolean o(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {}
    do
    {
      return false;
      String str = paramString;
      if (paramString.charAt(paramString.length() - 1) == '/') {
        str = paramString.substring(0, paramString.length() - 1);
      }
      paramString = str.toLowerCase();
    } while ((!paramString.endsWith(".7z")) && (!paramString.endsWith(".tar")) && (!paramString.endsWith(".bz2")) && (!paramString.endsWith(".cab")));
    return true;
  }
  
  public static final boolean p(int paramInt)
  {
    return paramInt == 393292;
  }
  
  public static final boolean p(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {}
    String str;
    do
    {
      return false;
      str = paramString;
      if (paramString.charAt(paramString.length() - 1) == '/') {
        str = paramString.substring(0, paramString.length() - 1);
      }
    } while (!str.toLowerCase().endsWith(".bz2"));
    return true;
  }
  
  public static final boolean q(int paramInt)
  {
    return paramInt == 393291;
  }
  
  public static final boolean q(String paramString)
  {
    return m(b(paramString));
  }
  
  public static final boolean r(int paramInt)
  {
    return paramInt == 327743;
  }
  
  public static final boolean r(String paramString)
  {
    return n(b(paramString));
  }
  
  public static final boolean s(int paramInt)
  {
    return paramInt == 524289;
  }
  
  public static final boolean s(String paramString)
  {
    return o(b(paramString));
  }
  
  public static final boolean t(int paramInt)
  {
    return paramInt == 327741;
  }
  
  public static final boolean t(String paramString)
  {
    return p(b(paramString));
  }
  
  public static final boolean u(int paramInt)
  {
    return paramInt == 593921;
  }
  
  public static final boolean u(String paramString)
  {
    return q(b(paramString));
  }
  
  public static final boolean v(int paramInt)
  {
    return paramInt == 593920;
  }
  
  public static final boolean v(String paramString)
  {
    return b(paramString) == 524290;
  }
  
  public static final boolean w(int paramInt)
  {
    return (paramInt == 598016) || (paramInt == 598017) || (paramInt == 598018) || (paramInt == 598019) || (paramInt == 598020) || (paramInt == 598020) || (paramInt == 524292) || (paramInt == 524293) || (paramInt == 524290);
  }
  
  public static final boolean w(String paramString)
  {
    return b(paramString) == 524291;
  }
  
  public static final boolean x(int paramInt)
  {
    return paramInt == 262192;
  }
  
  public static final boolean x(String paramString)
  {
    return b(paramString) == 524292;
  }
  
  public static final boolean y(int paramInt)
  {
    return paramInt == 262193;
  }
  
  public static final boolean y(String paramString)
  {
    return b(paramString) == 524293;
  }
  
  public static final boolean z(int paramInt)
  {
    return paramInt == 262208;
  }
  
  public static final boolean z(String paramString)
  {
    return r(b(paramString));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */