package com.dropbox.client2;

import com.dropbox.client2.exception.DropboxParseException;
import com.dropbox.client2.exception.DropboxUnlinkedException;
import com.dropbox.client2.jsonextract.JsonExtractionException;
import com.dropbox.client2.jsonextract.JsonThing;
import com.dropbox.client2.session.Session;
import com.dropbox.client2.session.Session.AccessType;
import com.estrongs.android.pop.netfs.utils.LargeInputStreamEntity;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.json.simple.JSONArray;

public class DropboxAPI<SESS_T extends Session>
{
  public static final long MAX_UPLOAD_SIZE = 188743680L;
  protected static final int METADATA_DEFAULT_LIMIT = 25000;
  private static final int REVISION_DEFAULT_LIMIT = 1000;
  public static final String SDK_VERSION = ;
  private static final int SEARCH_DEFAULT_LIMIT = 10000;
  private static final int UPLOAD_SO_TIMEOUT_MS = 180000;
  public static final int VERSION = 1;
  protected final SESS_T session;
  
  public DropboxAPI(SESS_T paramSESS_T)
  {
    if (paramSESS_T == null) {
      throw new IllegalArgumentException("Session must not be null.");
    }
    session = paramSESS_T;
  }
  
  private DropboxAPI.Entry commitChunkedUpload(String paramString1, String paramString2, boolean paramBoolean, String paramString3)
  {
    if ((paramString1 == null) || (paramString1.equals(""))) {
      throw new IllegalArgumentException("path is null or empty.");
    }
    assertAuthenticated();
    String str = paramString1;
    if (!paramString1.startsWith("/")) {
      str = "/" + paramString1;
    }
    paramString1 = "/commit_chunked_upload/" + session.getAccessType() + str;
    str = session.getLocale().toString();
    paramString1 = new HttpPost(RESTUtility.buildURL(session.getContentServer(), 1, paramString1, new String[] { "overwrite", String.valueOf(paramBoolean), "parent_rev", paramString3, "locale", str, "upload_id", paramString2 }));
    session.sign(paramString1);
    return new DropboxAPI.Entry((Map)RESTUtility.parseAsJSON(RESTUtility.execute(session, paramString1)));
  }
  
  protected static boolean getFromMapAsBoolean(Map<String, Object> paramMap, String paramString)
  {
    paramMap = paramMap.get(paramString);
    if ((paramMap != null) && ((paramMap instanceof Boolean))) {
      return ((Boolean)paramMap).booleanValue();
    }
    return false;
  }
  
  protected static long getFromMapAsLong(Map<String, Object> paramMap, String paramString)
  {
    paramMap = paramMap.get(paramString);
    if (paramMap != null)
    {
      if ((paramMap instanceof Number)) {
        return ((Number)paramMap).longValue();
      }
      if ((paramMap instanceof String)) {
        return Long.parseLong((String)paramMap, 16);
      }
    }
    return 0L;
  }
  
  private DropboxAPI.UploadRequest putFileRequest(String paramString1, InputStream paramInputStream, long paramLong, boolean paramBoolean, String paramString2, ProgressListener paramProgressListener)
  {
    if ((paramString1 == null) || (paramString1.equals(""))) {
      throw new IllegalArgumentException("path is null or empty.");
    }
    assertAuthenticated();
    String str = paramString1;
    if (!paramString1.startsWith("/")) {
      str = "/" + paramString1;
    }
    str = "/files_put/" + session.getAccessType() + str;
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = "";
    }
    paramString2 = session.getLocale().toString();
    paramString2 = new HttpPut(RESTUtility.buildURL(session.getContentServer(), 1, str, new String[] { "overwrite", String.valueOf(paramBoolean), "parent_rev", paramString1, "locale", paramString2 }));
    session.sign(paramString2);
    paramString1 = new LargeInputStreamEntity(paramInputStream, paramLong);
    paramString1.setContentEncoding("application/octet-stream");
    paramString1.setChunked(false);
    if (paramProgressListener != null) {
      paramString1 = new ProgressListener.ProgressHttpEntity(paramString1, paramProgressListener);
    }
    for (;;)
    {
      paramString2.setEntity(paramString1);
      return new DropboxAPI.BasicUploadRequest(paramString2, session);
    }
  }
  
  public DropboxAPI.Account accountInfo()
  {
    assertAuthenticated();
    RESTUtility.RequestMethod localRequestMethod = RESTUtility.RequestMethod.GET;
    String str1 = session.getAPIServer();
    String str2 = session.getLocale().toString();
    Session localSession = session;
    return new DropboxAPI.Account((Map)RESTUtility.request(localRequestMethod, str1, "/account/info", 1, new String[] { "locale", str2 }, localSession));
  }
  
  public DropboxAPI.Entry addFromCopyRef(String paramString1, String paramString2)
  {
    assertAuthenticated();
    if (!paramString2.startsWith("/")) {
      throw new IllegalArgumentException("'targetPath' doesn't start with \"/\": " + paramString2);
    }
    String str1 = session.getLocale().toString();
    String str2 = session.getAccessType().toString();
    RESTUtility.RequestMethod localRequestMethod = RESTUtility.RequestMethod.GET;
    String str3 = session.getAPIServer();
    Session localSession = session;
    return new DropboxAPI.Entry((Map)RESTUtility.request(localRequestMethod, str3, "/fileops/copy", 1, new String[] { "locale", str1, "root", str2, "from_copy_ref", paramString1, "to_path", paramString2 }, localSession));
  }
  
  protected void assertAuthenticated()
  {
    if (!session.isLinked()) {
      throw new DropboxUnlinkedException();
    }
  }
  
  public DropboxAPI.ChunkedUploadRequest chunkedUploadRequest(InputStream paramInputStream, long paramLong1, ProgressListener paramProgressListener, long paramLong2, String paramString)
  {
    if (paramLong2 == 0L)
    {
      paramString = new String[0];
      paramString = new HttpPut(RESTUtility.buildURL(session.getContentServer(), 1, "/chunked_upload/", paramString));
      session.sign(paramString);
      paramInputStream = new LargeInputStreamEntity(paramInputStream, paramLong1);
      paramInputStream.setContentEncoding("application/octet-stream");
      paramInputStream.setChunked(false);
      if (paramProgressListener == null) {
        break label158;
      }
      paramInputStream = new ProgressListener.ProgressHttpEntity(paramInputStream, paramProgressListener);
    }
    label158:
    for (;;)
    {
      paramString.setEntity(paramInputStream);
      return new DropboxAPI.ChunkedUploadRequest(paramString, session);
      String[] arrayOfString = new String[4];
      arrayOfString[0] = "upload_id";
      arrayOfString[1] = paramString;
      arrayOfString[2] = "offset";
      arrayOfString[3] = paramLong2;
      paramString = arrayOfString;
      break;
    }
  }
  
  public DropboxAPI.Entry copy(String paramString1, String paramString2)
  {
    assertAuthenticated();
    String str1 = session.getAccessType().toString();
    String str2 = session.getLocale().toString();
    RESTUtility.RequestMethod localRequestMethod = RESTUtility.RequestMethod.POST;
    String str3 = session.getAPIServer();
    Session localSession = session;
    return new DropboxAPI.Entry((Map)RESTUtility.request(localRequestMethod, str3, "/fileops/copy", 1, new String[] { "root", str1, "from_path", paramString1, "to_path", paramString2, "locale", str2 }, localSession));
  }
  
  public DropboxAPI.CreatedCopyRef createCopyRef(String paramString)
  {
    assertAuthenticated();
    if (!paramString.startsWith("/")) {
      throw new IllegalArgumentException("'sourcePath' must start with \"/\": " + paramString);
    }
    String str1 = session.getLocale().toString();
    paramString = "/copy_ref/" + session.getAccessType() + paramString;
    RESTUtility.RequestMethod localRequestMethod = RESTUtility.RequestMethod.GET;
    String str2 = session.getAPIServer();
    Session localSession = session;
    paramString = RESTUtility.request(localRequestMethod, str2, paramString, 1, new String[] { "locale", str1 }, localSession);
    try
    {
      paramString = DropboxAPI.CreatedCopyRef.extractFromJson(new JsonThing(paramString));
      return paramString;
    }
    catch (JsonExtractionException paramString)
    {
      throw new DropboxParseException("Error parsing /copy_ref results: " + paramString.getMessage());
    }
  }
  
  public DropboxAPI.Entry createFolder(String paramString)
  {
    assertAuthenticated();
    String str1 = session.getAccessType().toString();
    String str2 = session.getLocale().toString();
    RESTUtility.RequestMethod localRequestMethod = RESTUtility.RequestMethod.POST;
    String str3 = session.getAPIServer();
    Session localSession = session;
    return new DropboxAPI.Entry((Map)RESTUtility.request(localRequestMethod, str3, "/fileops/create_folder", 1, new String[] { "root", str1, "path", paramString, "locale", str2 }, localSession));
  }
  
  public void delete(String paramString)
  {
    assertAuthenticated();
    String str1 = session.getAccessType().toString();
    String str2 = session.getLocale().toString();
    RESTUtility.RequestMethod localRequestMethod = RESTUtility.RequestMethod.POST;
    String str3 = session.getAPIServer();
    Session localSession = session;
    RESTUtility.request(localRequestMethod, str3, "/fileops/delete", 1, new String[] { "root", str1, "path", paramString, "locale", str2 }, localSession);
  }
  
  public DropboxAPI.DeltaPage<DropboxAPI.Entry> delta(String paramString)
  {
    String str1 = session.getLocale().toString();
    RESTUtility.RequestMethod localRequestMethod = RESTUtility.RequestMethod.POST;
    String str2 = session.getAPIServer();
    Session localSession = session;
    paramString = RESTUtility.request(localRequestMethod, str2, "/delta", 1, new String[] { "cursor", paramString, "locale", str1 }, localSession);
    try
    {
      paramString = DropboxAPI.DeltaPage.extractFromJson(new JsonThing(paramString), DropboxAPI.Entry.JsonExtractor);
      return paramString;
    }
    catch (JsonExtractionException paramString)
    {
      throw new DropboxParseException("Error parsing /delta results: " + paramString.getMessage());
    }
  }
  
  public DropboxAPI<SESS_T>.ChunkedUploader getChunkedUploader(InputStream paramInputStream)
  {
    return new DropboxAPI.ChunkedUploader(this, paramInputStream, -1L, null);
  }
  
  public DropboxAPI<SESS_T>.ChunkedUploader getChunkedUploader(InputStream paramInputStream, long paramLong)
  {
    return new DropboxAPI.ChunkedUploader(this, paramInputStream, paramLong, null);
  }
  
  public DropboxAPI<SESS_T>.ChunkedUploader getChunkedUploader(InputStream paramInputStream, long paramLong, int paramInt)
  {
    return new DropboxAPI.ChunkedUploader(this, paramInputStream, paramLong, paramInt, null);
  }
  
  public DropboxAPI.DropboxFileInfo getFile(String paramString1, String paramString2, OutputStream paramOutputStream, ProgressListener paramProgressListener)
  {
    paramString1 = getFileStream(paramString1, paramString2);
    paramString1.copyStreamToOutput(paramOutputStream, paramProgressListener);
    return paramString1.getFileInfo();
  }
  
  public DropboxAPI.DropboxInputStream getFileStream(String paramString1, String paramString2)
  {
    assertAuthenticated();
    String str = paramString1;
    if (!paramString1.startsWith("/")) {
      str = "/" + paramString1;
    }
    paramString1 = "/files/" + session.getAccessType() + str;
    str = session.getLocale().toString();
    paramString1 = new HttpGet(RESTUtility.buildURL(session.getContentServer(), 1, paramString1, new String[] { "rev", paramString2, "locale", str }));
    session.sign(paramString1);
    return new DropboxAPI.DropboxInputStream(paramString1, RESTUtility.execute(session, paramString1));
  }
  
  public SESS_T getSession()
  {
    return session;
  }
  
  public DropboxAPI.DropboxFileInfo getThumbnail(String paramString, OutputStream paramOutputStream, DropboxAPI.ThumbSize paramThumbSize, DropboxAPI.ThumbFormat paramThumbFormat, ProgressListener paramProgressListener)
  {
    paramString = getThumbnailStream(paramString, paramThumbSize, paramThumbFormat);
    paramString.copyStreamToOutput(paramOutputStream, paramProgressListener);
    return paramString.getFileInfo();
  }
  
  public DropboxAPI.DropboxInputStream getThumbnailStream(String paramString, DropboxAPI.ThumbSize paramThumbSize, DropboxAPI.ThumbFormat paramThumbFormat)
  {
    assertAuthenticated();
    paramString = "/thumbnails/" + session.getAccessType() + paramString;
    paramThumbSize = paramThumbSize.toAPISize();
    paramThumbFormat = paramThumbFormat.toString();
    String str1 = session.getLocale().toString();
    RESTUtility.RequestMethod localRequestMethod = RESTUtility.RequestMethod.GET;
    String str2 = session.getContentServer();
    Session localSession = session;
    paramString = RESTUtility.streamRequest(localRequestMethod, str2, paramString, 1, new String[] { "size", paramThumbSize, "format", paramThumbFormat, "locale", str1 }, localSession);
    return new DropboxAPI.DropboxInputStream(request, response);
  }
  
  public DropboxAPI.DropboxLink media(String paramString, boolean paramBoolean)
  {
    assertAuthenticated();
    paramString = "/media/" + session.getAccessType() + paramString;
    RESTUtility.RequestMethod localRequestMethod = RESTUtility.RequestMethod.GET;
    String str1 = session.getAPIServer();
    String str2 = session.getLocale().toString();
    Session localSession = session;
    return new DropboxAPI.DropboxLink((Map)RESTUtility.request(localRequestMethod, str1, paramString, 1, new String[] { "locale", str2 }, localSession), paramBoolean, null);
  }
  
  public DropboxAPI.Entry metadata(String paramString1, int paramInt, String paramString2, boolean paramBoolean, String paramString3)
  {
    assertAuthenticated();
    int i = paramInt;
    if (paramInt <= 0) {
      i = 25000;
    }
    String str1 = session.getLocale().toString();
    paramString1 = "/metadata/" + session.getAccessType() + paramString1;
    RESTUtility.RequestMethod localRequestMethod = RESTUtility.RequestMethod.GET;
    String str2 = session.getAPIServer();
    Session localSession = session;
    return new DropboxAPI.Entry((Map)RESTUtility.request(localRequestMethod, str2, paramString1, 1, new String[] { "file_limit", String.valueOf(i), "hash", paramString2, "list", String.valueOf(paramBoolean), "rev", paramString3, "locale", str1 }, localSession));
  }
  
  public DropboxAPI.Entry move(String paramString1, String paramString2)
  {
    assertAuthenticated();
    String str1 = session.getAccessType().toString();
    String str2 = session.getLocale().toString();
    RESTUtility.RequestMethod localRequestMethod = RESTUtility.RequestMethod.POST;
    String str3 = session.getAPIServer();
    Session localSession = session;
    return new DropboxAPI.Entry((Map)RESTUtility.request(localRequestMethod, str3, "/fileops/move", 1, new String[] { "root", str1, "from_path", paramString1, "to_path", paramString2, "locale", str2 }, localSession));
  }
  
  public DropboxAPI.Entry putFile(String paramString1, InputStream paramInputStream, long paramLong, String paramString2, ProgressListener paramProgressListener)
  {
    return putFileRequest(paramString1, paramInputStream, paramLong, paramString2, paramProgressListener).upload();
  }
  
  public DropboxAPI.Entry putFileOverwrite(String paramString, InputStream paramInputStream, long paramLong, ProgressListener paramProgressListener)
  {
    return putFileOverwriteRequest(paramString, paramInputStream, paramLong, paramProgressListener).upload();
  }
  
  public DropboxAPI.UploadRequest putFileOverwriteRequest(String paramString, InputStream paramInputStream, long paramLong, ProgressListener paramProgressListener)
  {
    return putFileRequest(paramString, paramInputStream, paramLong, true, null, paramProgressListener);
  }
  
  public DropboxAPI.UploadRequest putFileRequest(String paramString1, InputStream paramInputStream, long paramLong, String paramString2, ProgressListener paramProgressListener)
  {
    return putFileRequest(paramString1, paramInputStream, paramLong, false, paramString2, paramProgressListener);
  }
  
  public DropboxAPI.Entry restore(String paramString1, String paramString2)
  {
    assertAuthenticated();
    String str1 = session.getLocale().toString();
    paramString1 = "/restore/" + session.getAccessType() + paramString1;
    RESTUtility.RequestMethod localRequestMethod = RESTUtility.RequestMethod.GET;
    String str2 = session.getAPIServer();
    Session localSession = session;
    return new DropboxAPI.Entry((Map)RESTUtility.request(localRequestMethod, str2, paramString1, 1, new String[] { "rev", paramString2, "locale", str1 }, localSession));
  }
  
  public List<DropboxAPI.Entry> revisions(String paramString, int paramInt)
  {
    assertAuthenticated();
    int i = paramInt;
    if (paramInt <= 0) {
      i = 1000;
    }
    Object localObject = session.getLocale().toString();
    paramString = "/revisions/" + session.getAccessType() + paramString;
    RESTUtility.RequestMethod localRequestMethod = RESTUtility.RequestMethod.GET;
    String str = session.getAPIServer();
    Session localSession = session;
    localObject = (JSONArray)RESTUtility.request(localRequestMethod, str, paramString, 1, new String[] { "rev_limit", String.valueOf(i), "locale", localObject }, localSession);
    paramString = new LinkedList();
    localObject = ((JSONArray)localObject).iterator();
    for (;;)
    {
      if (!((Iterator)localObject).hasNext()) {
        return paramString;
      }
      paramString.add(new DropboxAPI.Entry((Map)((Iterator)localObject).next()));
    }
  }
  
  public List<DropboxAPI.Entry> search(String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    assertAuthenticated();
    int i = paramInt;
    if (paramInt <= 0) {
      i = 10000;
    }
    paramString1 = "/search/" + session.getAccessType() + paramString1;
    Object localObject = session.getLocale().toString();
    RESTUtility.RequestMethod localRequestMethod = RESTUtility.RequestMethod.GET;
    String str = session.getAPIServer();
    Session localSession = session;
    paramString2 = RESTUtility.request(localRequestMethod, str, paramString1, 1, new String[] { "query", paramString2, "file_limit", String.valueOf(i), "include_deleted", String.valueOf(paramBoolean), "locale", localObject }, localSession);
    paramString1 = new ArrayList();
    if ((paramString2 instanceof JSONArray)) {
      paramString2 = ((JSONArray)paramString2).iterator();
    }
    for (;;)
    {
      if (!paramString2.hasNext()) {
        return paramString1;
      }
      localObject = paramString2.next();
      if ((localObject instanceof Map)) {
        paramString1.add(new DropboxAPI.Entry((Map)localObject));
      }
    }
  }
  
  public DropboxAPI.DropboxLink share(String paramString)
  {
    assertAuthenticated();
    paramString = "/shares/" + session.getAccessType() + paramString;
    Object localObject1 = RESTUtility.RequestMethod.GET;
    Object localObject2 = session.getAPIServer();
    String str = session.getLocale().toString();
    Session localSession = session;
    paramString = (Map)RESTUtility.request((RESTUtility.RequestMethod)localObject1, (String)localObject2, paramString, 1, new String[] { "locale", str }, localSession);
    localObject1 = (String)paramString.get("url");
    localObject2 = RESTUtility.parseDate((String)paramString.get("expires"));
    if ((localObject1 == null) || (localObject2 == null)) {
      throw new DropboxParseException("Could not parse share response.");
    }
    return new DropboxAPI.DropboxLink(paramString, null);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.DropboxAPI
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */