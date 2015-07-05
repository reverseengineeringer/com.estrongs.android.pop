package com.estrongs.android.pop.netfs.utils;

import java.util.HashMap;

public class TypeUtils
{
  public static final int ANDROID_APPLICATION = 65536;
  public static final int BIT_TORRENT = 393291;
  public static final int CHESS_FILE = 327743;
  public static final int ET_JOURNAL = 262203;
  public static final int ET_PUB = 262204;
  public static final int IMAGE_BMP = 65554;
  public static final int IMAGE_GIF = 65555;
  public static final int IMAGE_JPEG = 65556;
  public static final int IMAGE_JPG = 65553;
  public static final int IMAGE_PNG = 65552;
  public static final int MEDIA_3GP = 196650;
  public static final int MEDIA_AIF = 131113;
  public static final int MEDIA_AMR = 131107;
  public static final int MEDIA_ASF = 196647;
  public static final int MEDIA_AVI = 196651;
  public static final int MEDIA_FLAC = 131115;
  public static final int MEDIA_FLASH = 458753;
  public static final int MEDIA_M3U = 131114;
  public static final int MEDIA_M4A = 131109;
  public static final int MEDIA_MIDI = 131105;
  public static final int MEDIA_MKV = 196655;
  public static final int MEDIA_MP3 = 131104;
  public static final int MEDIA_MP4 = 196652;
  public static final int MEDIA_MPEG = 196654;
  public static final int MEDIA_MPG = 196653;
  public static final int MEDIA_OGG = 131108;
  public static final int MEDIA_QCP = 131111;
  public static final int MEDIA_RA = 131112;
  public static final int MEDIA_REALMEDIA = 196649;
  public static final int MEDIA_WAV = 131106;
  public static final int MEDIA_WMA = 131110;
  public static final int MEDIA_WMV = 196648;
  private static final HashMap<Integer, String> MIME_TYPE = new HashMap();
  public static final int MOBI_POCKET = 393292;
  public static final int NZB_FILE = 524289;
  public static final int OPEN_DOC = 327741;
  public static final int PDF_FILE = 327737;
  public static final int PLAIN_TEXT = 65537;
  public static final int WIN_BAT = 262195;
  public static final int WIN_CHM = 262208;
  public static final int WIN_DLL = 262197;
  public static final int WIN_DOC = 262192;
  public static final int WIN_EXCEL = 262193;
  public static final int WIN_EXE = 262196;
  public static final int WIN_HTML = 262194;
  public static final int WIN_LIB = 262198;
  public static final int WIN_PPT = 262199;
  public static final int XML_FILE = 327738;
  public static final int ZIP_FILE = 327736;
  
  static
  {
    MIME_TYPE.put(Integer.valueOf(393291), "application/x-bittorrent");
    MIME_TYPE.put(Integer.valueOf(327743), "application/x-chess-pgn");
    MIME_TYPE.put(Integer.valueOf(262204), "application/epub+zip");
    MIME_TYPE.put(Integer.valueOf(262203), "application/esj");
    MIME_TYPE.put(Integer.valueOf(393292), "application/x-mobipocket-ebook");
    MIME_TYPE.put(Integer.valueOf(327741), "application/vnd.oasis.opendocument.text");
    MIME_TYPE.put(Integer.valueOf(524289), "application/x-nzb");
    MIME_TYPE.put(Integer.valueOf(131104), "audio/mpeg");
    MIME_TYPE.put(Integer.valueOf(131105), "audio/mid");
    MIME_TYPE.put(Integer.valueOf(131106), "audio/x-wav");
    MIME_TYPE.put(Integer.valueOf(131107), "audio/amr");
    MIME_TYPE.put(Integer.valueOf(131108), "audio/ogg");
    MIME_TYPE.put(Integer.valueOf(131109), "audio/mp4a-latm");
    MIME_TYPE.put(Integer.valueOf(131110), "audio/x-ms-wma");
    MIME_TYPE.put(Integer.valueOf(131111), "audio/vnd.qcelp");
    MIME_TYPE.put(Integer.valueOf(131112), "audio/x-pn-realaudio");
    MIME_TYPE.put(Integer.valueOf(131113), "audio/x-aiff");
    MIME_TYPE.put(Integer.valueOf(131114), "audio/x-mpegurl");
    MIME_TYPE.put(Integer.valueOf(131115), "audio/flac");
    MIME_TYPE.put(Integer.valueOf(196647), "video/x-ms-asf");
    MIME_TYPE.put(Integer.valueOf(196648), "video/x-ms-wmv");
    MIME_TYPE.put(Integer.valueOf(196649), "video/*");
    MIME_TYPE.put(Integer.valueOf(196650), "video/3gpp");
    MIME_TYPE.put(Integer.valueOf(196651), "video/x-msvideo");
    MIME_TYPE.put(Integer.valueOf(196652), "video/mp4");
    MIME_TYPE.put(Integer.valueOf(196653), "video/mpeg");
    MIME_TYPE.put(Integer.valueOf(196654), "video/mpeg");
    MIME_TYPE.put(Integer.valueOf(196655), "video/x-matroska");
    MIME_TYPE.put(Integer.valueOf(65552), "image/png");
    MIME_TYPE.put(Integer.valueOf(65553), "image/jpeg");
    MIME_TYPE.put(Integer.valueOf(65554), "image/bmp");
    MIME_TYPE.put(Integer.valueOf(65555), "image/gif");
    MIME_TYPE.put(Integer.valueOf(65556), "image/jpeg");
    MIME_TYPE.put(Integer.valueOf(262192), "application/msword");
    MIME_TYPE.put(Integer.valueOf(262193), "application/vnd.ms-excel");
    MIME_TYPE.put(Integer.valueOf(262194), "text/html");
    MIME_TYPE.put(Integer.valueOf(262195), "magnus-internal/cgi");
    MIME_TYPE.put(Integer.valueOf(262196), "\tmagnus-internal/cgi");
    MIME_TYPE.put(Integer.valueOf(262199), "application/vnd.ms-powerpoint");
    MIME_TYPE.put(Integer.valueOf(262208), "image/jpeg");
    MIME_TYPE.put(Integer.valueOf(327736), "application/zip");
    MIME_TYPE.put(Integer.valueOf(327737), "application/pdf");
    MIME_TYPE.put(Integer.valueOf(458753), "application/x-shockwave-flash");
  }
  
  public static final String getApkSuffix()
  {
    return new String(".apk");
  }
  
  public static String getAudioMimeType(int paramInt)
  {
    String str2 = (String)MIME_TYPE.get(Integer.valueOf(paramInt));
    String str1 = str2;
    if (str2 == null) {
      str1 = "audio/*";
    }
    return str1;
  }
  
  public static final int getFileType(String paramString)
  {
    if ((paramString == null) || (paramString.trim().length() < 1)) {}
    do
    {
      return -1;
      String str = paramString;
      if (paramString.charAt(paramString.length() - 1) == '/') {
        str = paramString.substring(0, paramString.length() - 1);
      }
      paramString = str.toLowerCase();
      if (paramString.endsWith(".apk")) {
        return 65536;
      }
      if (paramString.endsWith(".png")) {
        return 65552;
      }
      if (paramString.endsWith(".jpg")) {
        return 65553;
      }
      if (paramString.endsWith(".bmp")) {
        return 65554;
      }
      if (paramString.endsWith(".gif")) {
        return 65555;
      }
      if (paramString.endsWith(".jpeg")) {
        return 65556;
      }
      if (paramString.endsWith(".mp3")) {
        return 131104;
      }
      if ((paramString.endsWith(".mp4")) || (paramString.endsWith(".m4v"))) {
        return 196652;
      }
      if (paramString.endsWith(".avi")) {
        return 196651;
      }
      if ((paramString.endsWith(".mid")) || (paramString.endsWith(".midi")) || (paramString.endsWith("rmi"))) {
        return 131105;
      }
      if (paramString.endsWith(".wmv")) {
        return 196648;
      }
      if (paramString.endsWith(".wav")) {
        return 131106;
      }
      if (paramString.endsWith(".asf")) {
        return 196647;
      }
      if (paramString.endsWith(".mpg")) {
        return 196653;
      }
      if (paramString.endsWith(".mpeg")) {
        return 196654;
      }
      if ((paramString.endsWith(".3gp")) || (paramString.endsWith(".3gpp"))) {
        return 196650;
      }
      if (paramString.endsWith(".amr")) {
        return 131107;
      }
      if ((paramString.endsWith(".rm")) || (paramString.endsWith(".rmvb"))) {
        return 196649;
      }
      if ((paramString.endsWith(".ogg")) || (paramString.endsWith(".x-ogg"))) {
        return 131108;
      }
      if ((paramString.endsWith(".m4a")) || (paramString.endsWith(".aac"))) {
        return 131109;
      }
      if (paramString.endsWith(".wma")) {
        return 131110;
      }
      if ((paramString.endsWith(".doc")) || (paramString.endsWith(".docx"))) {
        return 262192;
      }
      if ((paramString.endsWith(".ppt")) || (paramString.endsWith(".pps")) || (paramString.endsWith(".ppx")) || (paramString.endsWith(".pptx")) || (paramString.endsWith(".odp"))) {
        return 262199;
      }
      if ((paramString.endsWith(".xls")) || (paramString.endsWith(".xlsx")) || (paramString.endsWith(".xla")) || (paramString.endsWith(".xlc")) || (paramString.endsWith(".xlm")) || (paramString.endsWith(".xlt")) || (paramString.endsWith(".xlsm")) || (paramString.endsWith(".xlsb"))) {
        return 262193;
      }
      if (paramString.endsWith(".chm")) {
        return 262208;
      }
      if ((paramString.endsWith(".html")) || (paramString.endsWith(".htm")) || (paramString.endsWith(".mht"))) {
        return 262194;
      }
      if (paramString.endsWith(".bat")) {
        return 262195;
      }
      if (paramString.endsWith(".exe")) {
        return 262196;
      }
      if (paramString.endsWith(".dll")) {
        return 262197;
      }
      if (paramString.endsWith(".lib")) {
        return 262198;
      }
      if ((paramString.endsWith(".txt")) || (paramString.endsWith(".text")) || (paramString.endsWith(".ini")) || (paramString.endsWith(".properties")) || (paramString.endsWith(".prop")) || (paramString.endsWith(".xml")) || (paramString.endsWith(".conf")) || (paramString.endsWith(".classpath")) || (paramString.endsWith(".project")) || (paramString.endsWith(".php")) || (paramString.endsWith(".js")) || (paramString.endsWith(".rss")) || (paramString.endsWith(".jsp")) || (paramString.endsWith(".asp")) || (paramString.endsWith(".aspx")) || (paramString.endsWith(".c")) || (paramString.endsWith(".java")) || (paramString.endsWith(".vb")) || (paramString.endsWith(".vbs")) || (paramString.endsWith(".h"))) {
        return 65537;
      }
      if ((paramString.endsWith(".zip")) || (paramString.endsWith(".tar")) || (paramString.endsWith(".gz")) || (paramString.endsWith(".rar")) || (paramString.endsWith(".cab")) || (paramString.endsWith(".esi")) || (paramString.endsWith(".7z"))) {
        return 327736;
      }
      if (paramString.endsWith(".xml")) {
        return 327738;
      }
      if (paramString.endsWith(".pdf")) {
        return 327737;
      }
      if (paramString.endsWith(".esj")) {
        return 262203;
      }
      if (paramString.endsWith(".qcp")) {
        return 131111;
      }
      if (paramString.endsWith(".epub")) {
        return 262204;
      }
      if (paramString.endsWith(".torrent")) {
        return 393291;
      }
      if ((paramString.endsWith(".pgn")) || (paramString.endsWith(".xqf"))) {
        return 327743;
      }
      if (paramString.endsWith(".odt")) {
        return 327741;
      }
      if ((paramString.endsWith(".mobi")) || (paramString.endsWith(".prc"))) {
        return 393292;
      }
      if (paramString.endsWith(".mkv")) {
        return 196655;
      }
      if (paramString.endsWith(".flac")) {
        return 131115;
      }
      if ((paramString.endsWith(".aif")) || (paramString.endsWith("aifc")) || (paramString.endsWith("aiff"))) {
        return 131113;
      }
      if ((paramString.endsWith(".ra")) || (paramString.endsWith("ram"))) {
        return 131112;
      }
      if (paramString.endsWith(".m3u")) {
        return 131114;
      }
      if ((paramString.endsWith(".flv")) || (paramString.endsWith(".swf"))) {
        return 458753;
      }
    } while (!paramString.endsWith(".nzb"));
    return 524289;
  }
  
  public static final String getImageFileSuffix()
  {
    return new String(".jpg;.jpeg;.png;.bmp;.gif");
  }
  
  public static final String getMediaFileSuffix()
  {
    return new String(".mp3;.mp4;.3gp;.3gpp;.amr;.mid;.midi;.wmv;.wma;.ogg;.x-ogg;.wav;.m4a;.aac;.rm;.rmvb;.avi;.mpg;.mpeg;.asf;.m4v;.mkv");
  }
  
  public static String getMimetypeName(int paramInt)
  {
    return (String)MIME_TYPE.get(Integer.valueOf(paramInt));
  }
  
  public static String getVideoMimeType(int paramInt)
  {
    String str2 = (String)MIME_TYPE.get(Integer.valueOf(paramInt));
    String str1 = str2;
    if (str2 == null) {
      str1 = "video/*";
    }
    return str1;
  }
  
  public static final String getZipSuffix()
  {
    return new String(".zip;.rar;.tar;.gzip;.bz2;.gz;.7z;.esi");
  }
  
  public static final boolean isAndroidApp(String paramString)
  {
    return getFileType(paramString) == 65536;
  }
  
  public static final boolean isAudioFile(String paramString)
  {
    int i = getFileType(paramString);
    return (i >= 131104) && (i <= 131115);
  }
  
  public static final boolean isBTFile(String paramString)
  {
    return getFileType(paramString) == 393291;
  }
  
  public static final boolean isChessFile(String paramString)
  {
    return getFileType(paramString) == 327743;
  }
  
  public static final boolean isChmFile(String paramString)
  {
    return getFileType(paramString) == 262208;
  }
  
  public static final boolean isETJournalFile(String paramString)
  {
    return getFileType(paramString) == 262203;
  }
  
  public static final boolean isETPubFile(String paramString)
  {
    return getFileType(paramString) == 262204;
  }
  
  public static boolean isEcrypteFile(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.toLowerCase().endsWith(".esc");
  }
  
  public static final boolean isExcelFile(String paramString)
  {
    return getFileType(paramString) == 262193;
  }
  
  public static final boolean isFlashFile(String paramString)
  {
    return getFileType(paramString) == 458753;
  }
  
  public static final boolean isGzFile(String paramString)
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
  
  public static final boolean isHtmlFile(String paramString)
  {
    return getFileType(paramString) == 262194;
  }
  
  public static final boolean isImageFile(String paramString)
  {
    int i = getFileType(paramString);
    return (i >= 65552) && (i <= 65556);
  }
  
  public static final boolean isJpegFile(String paramString)
  {
    return (getFileType(paramString) == 65556) || (getFileType(paramString) == 65553);
  }
  
  public static final boolean isMediaFile(String paramString)
  {
    int i = getFileType(paramString);
    return (i >= 131104) && (i <= 196655);
  }
  
  public static final boolean isMobiPocketFile(String paramString)
  {
    return getFileType(paramString) == 393292;
  }
  
  public static final boolean isNZBFile(String paramString)
  {
    return getFileType(paramString) == 524289;
  }
  
  public static final boolean isOggMediaFile(String paramString)
  {
    return getFileType(paramString) == 131108;
  }
  
  public static final boolean isOpenDocument(String paramString)
  {
    return getFileType(paramString) == 327741;
  }
  
  public static final boolean isPdfFile(String paramString)
  {
    return getFileType(paramString) == 327737;
  }
  
  public static final boolean isPngFile(String paramString)
  {
    return getFileType(paramString) == 65552;
  }
  
  public static final boolean isPptFile(String paramString)
  {
    return getFileType(paramString) == 262199;
  }
  
  public static final boolean isQcpMediaFile(String paramString)
  {
    return getFileType(paramString) == 131111;
  }
  
  public static final boolean isRarFile(String paramString)
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
  
  public static boolean isTarFile(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.endsWith(".tar");
  }
  
  public static final boolean isTextFile(String paramString)
  {
    return getFileType(paramString) == 65537;
  }
  
  public static final boolean isUnsupportedMediaTypes(String paramString)
  {
    return (paramString.endsWith("rm")) || (paramString.endsWith("rmvb")) || (paramString.endsWith(".mpg")) || (paramString.endsWith(".mpeg")) || (paramString.endsWith(".asf")) || (paramString.endsWith(".flv"));
  }
  
  public static final boolean isVideoFile(String paramString)
  {
    int i = getFileType(paramString);
    return (i >= 196647) && (i <= 196655);
  }
  
  public static final boolean isWordFile(String paramString)
  {
    return getFileType(paramString) == 262192;
  }
  
  public static final boolean isXmlFile(String paramString)
  {
    return getFileType(paramString) == 327738;
  }
  
  public static final boolean isZipFile(String paramString)
  {
    return getFileType(paramString) == 327736;
  }
  
  public static final boolean isZipFile_Current(String paramString)
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
    } while (!str.toLowerCase().endsWith(".zip"));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.netfs.utils.TypeUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */