package oauth.signpost;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import oauth.signpost.exception.OAuthCommunicationException;
import oauth.signpost.exception.OAuthExpectationFailedException;
import oauth.signpost.exception.OAuthNotAuthorizedException;
import oauth.signpost.http.HttpParameters;
import oauth.signpost.http.HttpRequest;
import oauth.signpost.http.HttpResponse;

public abstract class AbstractOAuthProvider
  implements OAuthProvider
{
  private static final long serialVersionUID = 1L;
  private String accessTokenEndpointUrl;
  private String authorizationWebsiteUrl;
  private Map<String, String> defaultHeaders;
  private boolean isOAuth10a;
  private transient OAuthProviderListener listener;
  private String requestTokenEndpointUrl;
  private HttpParameters responseParameters;
  
  public AbstractOAuthProvider(String paramString1, String paramString2, String paramString3)
  {
    requestTokenEndpointUrl = paramString1;
    accessTokenEndpointUrl = paramString2;
    authorizationWebsiteUrl = paramString3;
    responseParameters = new HttpParameters();
    defaultHeaders = new HashMap();
  }
  
  protected void closeConnection(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse) {}
  
  protected abstract HttpRequest createRequest(String paramString);
  
  public String getAccessTokenEndpointUrl()
  {
    return accessTokenEndpointUrl;
  }
  
  public String getAuthorizationWebsiteUrl()
  {
    return authorizationWebsiteUrl;
  }
  
  public Map<String, String> getRequestHeaders()
  {
    return defaultHeaders;
  }
  
  public String getRequestTokenEndpointUrl()
  {
    return requestTokenEndpointUrl;
  }
  
  protected String getResponseParameter(String paramString)
  {
    return responseParameters.getFirst(paramString);
  }
  
  public HttpParameters getResponseParameters()
  {
    return responseParameters;
  }
  
  protected void handleUnexpectedResponse(int paramInt, HttpResponse paramHttpResponse)
  {
    if (paramHttpResponse == null) {
      return;
    }
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramHttpResponse.getContent()));
    StringBuilder localStringBuilder = new StringBuilder();
    for (String str = localBufferedReader.readLine(); str != null; str = localBufferedReader.readLine()) {
      localStringBuilder.append(str);
    }
    switch (paramInt)
    {
    default: 
      throw new OAuthCommunicationException("Service provider responded in error: " + paramInt + " (" + paramHttpResponse.getReasonPhrase() + ")", localStringBuilder.toString());
    }
    throw new OAuthNotAuthorizedException(localStringBuilder.toString());
  }
  
  public boolean isOAuth10a()
  {
    return isOAuth10a;
  }
  
  public void removeListener(OAuthProviderListener paramOAuthProviderListener)
  {
    listener = null;
  }
  
  public void retrieveAccessToken(OAuthConsumer paramOAuthConsumer, String paramString)
  {
    if ((paramOAuthConsumer.getToken() == null) || (paramOAuthConsumer.getTokenSecret() == null)) {
      throw new OAuthExpectationFailedException("Authorized request token or token secret not set. Did you retrieve an authorized request token before?");
    }
    if ((isOAuth10a) && (paramString != null))
    {
      retrieveToken(paramOAuthConsumer, accessTokenEndpointUrl, new String[] { "oauth_verifier", paramString });
      return;
    }
    retrieveToken(paramOAuthConsumer, accessTokenEndpointUrl, new String[0]);
  }
  
  public String retrieveRequestToken(OAuthConsumer paramOAuthConsumer, String paramString)
  {
    paramOAuthConsumer.setTokenWithSecret(null, null);
    retrieveToken(paramOAuthConsumer, requestTokenEndpointUrl, new String[] { "oauth_callback", paramString });
    String str = responseParameters.getFirst("oauth_callback_confirmed");
    responseParameters.remove("oauth_callback_confirmed");
    isOAuth10a = Boolean.TRUE.toString().equals(str);
    if (isOAuth10a) {
      return OAuth.addQueryParameters(authorizationWebsiteUrl, new String[] { "oauth_token", paramOAuthConsumer.getToken() });
    }
    return OAuth.addQueryParameters(authorizationWebsiteUrl, new String[] { "oauth_token", paramOAuthConsumer.getToken(), "oauth_callback", paramString });
  }
  
  /* Error */
  protected void retrieveToken(OAuthConsumer paramOAuthConsumer, String paramString, String... paramVarArgs)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 8
    //   6: aconst_null
    //   7: astore 9
    //   9: aconst_null
    //   10: astore 10
    //   12: aconst_null
    //   13: astore 6
    //   15: aload_0
    //   16: invokevirtual 184	oauth/signpost/AbstractOAuthProvider:getRequestHeaders	()Ljava/util/Map;
    //   19: astore 11
    //   21: aload_1
    //   22: invokeinterface 187 1 0
    //   27: ifnull +12 -> 39
    //   30: aload_1
    //   31: invokeinterface 190 1 0
    //   36: ifnonnull +13 -> 49
    //   39: new 137	oauth/signpost/exception/OAuthExpectationFailedException
    //   42: dup
    //   43: ldc -64
    //   45: invokespecial 140	oauth/signpost/exception/OAuthExpectationFailedException:<init>	(Ljava/lang/String;)V
    //   48: athrow
    //   49: aload_0
    //   50: aload_2
    //   51: invokevirtual 194	oauth/signpost/AbstractOAuthProvider:createRequest	(Ljava/lang/String;)Loauth/signpost/http/HttpRequest;
    //   54: astore_2
    //   55: aload 10
    //   57: astore 6
    //   59: aload_2
    //   60: astore 7
    //   62: aload 11
    //   64: invokeinterface 200 1 0
    //   69: invokeinterface 206 1 0
    //   74: astore 12
    //   76: aload 10
    //   78: astore 6
    //   80: aload_2
    //   81: astore 7
    //   83: aload 12
    //   85: invokeinterface 211 1 0
    //   90: ifeq +82 -> 172
    //   93: aload 10
    //   95: astore 6
    //   97: aload_2
    //   98: astore 7
    //   100: aload 12
    //   102: invokeinterface 215 1 0
    //   107: checkcast 142	java/lang/String
    //   110: astore 13
    //   112: aload 10
    //   114: astore 6
    //   116: aload_2
    //   117: astore 7
    //   119: aload_2
    //   120: aload 13
    //   122: aload 11
    //   124: aload 13
    //   126: invokeinterface 219 2 0
    //   131: checkcast 142	java/lang/String
    //   134: invokeinterface 224 3 0
    //   139: goto -63 -> 76
    //   142: astore 6
    //   144: aconst_null
    //   145: astore_3
    //   146: aload_2
    //   147: astore_1
    //   148: aload 6
    //   150: astore_2
    //   151: aload_2
    //   152: athrow
    //   153: astore 7
    //   155: aload_1
    //   156: astore_2
    //   157: aload_3
    //   158: astore 6
    //   160: aload 7
    //   162: astore_1
    //   163: aload_0
    //   164: aload_2
    //   165: aload 6
    //   167: invokevirtual 226	oauth/signpost/AbstractOAuthProvider:closeConnection	(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpResponse;)V
    //   170: aload_1
    //   171: athrow
    //   172: aload_3
    //   173: ifnull +48 -> 221
    //   176: aload 10
    //   178: astore 6
    //   180: aload_2
    //   181: astore 7
    //   183: new 36	oauth/signpost/http/HttpParameters
    //   186: dup
    //   187: invokespecial 37	oauth/signpost/http/HttpParameters:<init>	()V
    //   190: astore 11
    //   192: aload 10
    //   194: astore 6
    //   196: aload_2
    //   197: astore 7
    //   199: aload 11
    //   201: aload_3
    //   202: iconst_1
    //   203: invokevirtual 230	oauth/signpost/http/HttpParameters:putAll	([Ljava/lang/String;Z)V
    //   206: aload 10
    //   208: astore 6
    //   210: aload_2
    //   211: astore 7
    //   213: aload_1
    //   214: aload 11
    //   216: invokeinterface 234 2 0
    //   221: aload 10
    //   223: astore 6
    //   225: aload_2
    //   226: astore 7
    //   228: aload_0
    //   229: getfield 125	oauth/signpost/AbstractOAuthProvider:listener	Loauth/signpost/OAuthProviderListener;
    //   232: ifnull +20 -> 252
    //   235: aload 10
    //   237: astore 6
    //   239: aload_2
    //   240: astore 7
    //   242: aload_0
    //   243: getfield 125	oauth/signpost/AbstractOAuthProvider:listener	Loauth/signpost/OAuthProviderListener;
    //   246: aload_2
    //   247: invokeinterface 240 2 0
    //   252: aload 10
    //   254: astore 6
    //   256: aload_2
    //   257: astore 7
    //   259: aload_1
    //   260: aload_2
    //   261: invokeinterface 244 2 0
    //   266: pop
    //   267: aload 10
    //   269: astore 6
    //   271: aload_2
    //   272: astore 7
    //   274: aload_0
    //   275: getfield 125	oauth/signpost/AbstractOAuthProvider:listener	Loauth/signpost/OAuthProviderListener;
    //   278: ifnull +20 -> 298
    //   281: aload 10
    //   283: astore 6
    //   285: aload_2
    //   286: astore 7
    //   288: aload_0
    //   289: getfield 125	oauth/signpost/AbstractOAuthProvider:listener	Loauth/signpost/OAuthProviderListener;
    //   292: aload_2
    //   293: invokeinterface 247 2 0
    //   298: aload 10
    //   300: astore 6
    //   302: aload_2
    //   303: astore 7
    //   305: aload_0
    //   306: aload_2
    //   307: invokevirtual 251	oauth/signpost/AbstractOAuthProvider:sendRequest	(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpResponse;
    //   310: astore_3
    //   311: aload_3
    //   312: invokeinterface 255 1 0
    //   317: istore 4
    //   319: iconst_0
    //   320: istore 5
    //   322: aload_0
    //   323: getfield 125	oauth/signpost/AbstractOAuthProvider:listener	Loauth/signpost/OAuthProviderListener;
    //   326: ifnull +16 -> 342
    //   329: aload_0
    //   330: getfield 125	oauth/signpost/AbstractOAuthProvider:listener	Loauth/signpost/OAuthProviderListener;
    //   333: aload_2
    //   334: aload_3
    //   335: invokeinterface 259 3 0
    //   340: istore 5
    //   342: iload 5
    //   344: ifeq +20 -> 364
    //   347: aload_0
    //   348: aload_2
    //   349: aload_3
    //   350: invokevirtual 226	oauth/signpost/AbstractOAuthProvider:closeConnection	(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpResponse;)V
    //   353: return
    //   354: astore_1
    //   355: new 95	oauth/signpost/exception/OAuthCommunicationException
    //   358: dup
    //   359: aload_1
    //   360: invokespecial 262	oauth/signpost/exception/OAuthCommunicationException:<init>	(Ljava/lang/Exception;)V
    //   363: athrow
    //   364: iload 4
    //   366: sipush 300
    //   369: if_icmplt +10 -> 379
    //   372: aload_0
    //   373: iload 4
    //   375: aload_3
    //   376: invokevirtual 264	oauth/signpost/AbstractOAuthProvider:handleUnexpectedResponse	(ILoauth/signpost/http/HttpResponse;)V
    //   379: aload_3
    //   380: invokeinterface 77 1 0
    //   385: invokestatic 268	oauth/signpost/OAuth:decodeForm	(Ljava/io/InputStream;)Loauth/signpost/http/HttpParameters;
    //   388: astore 6
    //   390: aload 6
    //   392: ldc -82
    //   394: invokevirtual 63	oauth/signpost/http/HttpParameters:getFirst	(Ljava/lang/Object;)Ljava/lang/String;
    //   397: astore 7
    //   399: aload 6
    //   401: ldc_w 270
    //   404: invokevirtual 63	oauth/signpost/http/HttpParameters:getFirst	(Ljava/lang/Object;)Ljava/lang/String;
    //   407: astore 8
    //   409: aload 6
    //   411: ldc -82
    //   413: invokevirtual 161	oauth/signpost/http/HttpParameters:remove	(Ljava/lang/Object;)Ljava/util/SortedSet;
    //   416: pop
    //   417: aload 6
    //   419: ldc_w 270
    //   422: invokevirtual 161	oauth/signpost/http/HttpParameters:remove	(Ljava/lang/Object;)Ljava/util/SortedSet;
    //   425: pop
    //   426: aload_0
    //   427: aload 6
    //   429: invokevirtual 273	oauth/signpost/AbstractOAuthProvider:setResponseParameters	(Loauth/signpost/http/HttpParameters;)V
    //   432: aload 7
    //   434: ifnull +8 -> 442
    //   437: aload 8
    //   439: ifnonnull +14 -> 453
    //   442: new 137	oauth/signpost/exception/OAuthExpectationFailedException
    //   445: dup
    //   446: ldc_w 275
    //   449: invokespecial 140	oauth/signpost/exception/OAuthExpectationFailedException:<init>	(Ljava/lang/String;)V
    //   452: athrow
    //   453: aload_1
    //   454: aload 7
    //   456: aload 8
    //   458: invokeinterface 153 3 0
    //   463: aload_0
    //   464: aload_2
    //   465: aload_3
    //   466: invokevirtual 226	oauth/signpost/AbstractOAuthProvider:closeConnection	(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpResponse;)V
    //   469: return
    //   470: astore_1
    //   471: new 95	oauth/signpost/exception/OAuthCommunicationException
    //   474: dup
    //   475: aload_1
    //   476: invokespecial 262	oauth/signpost/exception/OAuthCommunicationException:<init>	(Ljava/lang/Exception;)V
    //   479: athrow
    //   480: astore_1
    //   481: aconst_null
    //   482: astore_2
    //   483: aload 8
    //   485: astore 6
    //   487: aload_2
    //   488: astore 7
    //   490: aload_1
    //   491: athrow
    //   492: aload_2
    //   493: astore 7
    //   495: new 95	oauth/signpost/exception/OAuthCommunicationException
    //   498: dup
    //   499: aload_1
    //   500: invokespecial 262	oauth/signpost/exception/OAuthCommunicationException:<init>	(Ljava/lang/Exception;)V
    //   503: athrow
    //   504: astore_1
    //   505: new 95	oauth/signpost/exception/OAuthCommunicationException
    //   508: dup
    //   509: aload_1
    //   510: invokespecial 262	oauth/signpost/exception/OAuthCommunicationException:<init>	(Ljava/lang/Exception;)V
    //   513: athrow
    //   514: astore_1
    //   515: aconst_null
    //   516: astore_2
    //   517: aload 7
    //   519: astore 6
    //   521: goto -358 -> 163
    //   524: astore_1
    //   525: aload_3
    //   526: astore 6
    //   528: goto -365 -> 163
    //   531: astore_1
    //   532: aload 9
    //   534: astore 6
    //   536: goto -44 -> 492
    //   539: astore_1
    //   540: aload_3
    //   541: astore 6
    //   543: goto -51 -> 492
    //   546: astore_1
    //   547: aload 8
    //   549: astore 6
    //   551: goto -64 -> 487
    //   554: astore_1
    //   555: aload_3
    //   556: astore 6
    //   558: goto -71 -> 487
    //   561: astore_2
    //   562: aconst_null
    //   563: astore_3
    //   564: aload 6
    //   566: astore_1
    //   567: goto -416 -> 151
    //   570: astore 6
    //   572: aload_2
    //   573: astore_1
    //   574: aload 6
    //   576: astore_2
    //   577: goto -426 -> 151
    //   580: astore_1
    //   581: aload 7
    //   583: astore_2
    //   584: goto -421 -> 163
    //   587: astore_1
    //   588: aconst_null
    //   589: astore_2
    //   590: aload 9
    //   592: astore 6
    //   594: goto -102 -> 492
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	597	0	this	AbstractOAuthProvider
    //   0	597	1	paramOAuthConsumer	OAuthConsumer
    //   0	597	2	paramString	String
    //   0	597	3	paramVarArgs	String[]
    //   317	57	4	i	int
    //   320	23	5	bool	boolean
    //   13	102	6	localObject1	Object
    //   142	7	6	localOAuthNotAuthorizedException1	OAuthNotAuthorizedException
    //   158	407	6	localObject2	Object
    //   570	5	6	localOAuthNotAuthorizedException2	OAuthNotAuthorizedException
    //   592	1	6	localObject3	Object
    //   1	117	7	str1	String
    //   153	8	7	localObject4	Object
    //   181	401	7	str2	String
    //   4	544	8	str3	String
    //   7	584	9	localObject5	Object
    //   10	289	10	localObject6	Object
    //   19	196	11	localObject7	Object
    //   74	27	12	localIterator	java.util.Iterator
    //   110	15	13	str4	String
    // Exception table:
    //   from	to	target	type
    //   62	76	142	oauth/signpost/exception/OAuthNotAuthorizedException
    //   83	93	142	oauth/signpost/exception/OAuthNotAuthorizedException
    //   100	112	142	oauth/signpost/exception/OAuthNotAuthorizedException
    //   119	139	142	oauth/signpost/exception/OAuthNotAuthorizedException
    //   183	192	142	oauth/signpost/exception/OAuthNotAuthorizedException
    //   199	206	142	oauth/signpost/exception/OAuthNotAuthorizedException
    //   213	221	142	oauth/signpost/exception/OAuthNotAuthorizedException
    //   228	235	142	oauth/signpost/exception/OAuthNotAuthorizedException
    //   242	252	142	oauth/signpost/exception/OAuthNotAuthorizedException
    //   259	267	142	oauth/signpost/exception/OAuthNotAuthorizedException
    //   274	281	142	oauth/signpost/exception/OAuthNotAuthorizedException
    //   288	298	142	oauth/signpost/exception/OAuthNotAuthorizedException
    //   305	311	142	oauth/signpost/exception/OAuthNotAuthorizedException
    //   151	153	153	finally
    //   347	353	354	java/lang/Exception
    //   463	469	470	java/lang/Exception
    //   49	55	480	oauth/signpost/exception/OAuthExpectationFailedException
    //   163	170	504	java/lang/Exception
    //   49	55	514	finally
    //   311	319	524	finally
    //   322	342	524	finally
    //   372	379	524	finally
    //   379	432	524	finally
    //   442	453	524	finally
    //   453	463	524	finally
    //   62	76	531	java/lang/Exception
    //   83	93	531	java/lang/Exception
    //   100	112	531	java/lang/Exception
    //   119	139	531	java/lang/Exception
    //   183	192	531	java/lang/Exception
    //   199	206	531	java/lang/Exception
    //   213	221	531	java/lang/Exception
    //   228	235	531	java/lang/Exception
    //   242	252	531	java/lang/Exception
    //   259	267	531	java/lang/Exception
    //   274	281	531	java/lang/Exception
    //   288	298	531	java/lang/Exception
    //   305	311	531	java/lang/Exception
    //   311	319	539	java/lang/Exception
    //   322	342	539	java/lang/Exception
    //   372	379	539	java/lang/Exception
    //   379	432	539	java/lang/Exception
    //   442	453	539	java/lang/Exception
    //   453	463	539	java/lang/Exception
    //   62	76	546	oauth/signpost/exception/OAuthExpectationFailedException
    //   83	93	546	oauth/signpost/exception/OAuthExpectationFailedException
    //   100	112	546	oauth/signpost/exception/OAuthExpectationFailedException
    //   119	139	546	oauth/signpost/exception/OAuthExpectationFailedException
    //   183	192	546	oauth/signpost/exception/OAuthExpectationFailedException
    //   199	206	546	oauth/signpost/exception/OAuthExpectationFailedException
    //   213	221	546	oauth/signpost/exception/OAuthExpectationFailedException
    //   228	235	546	oauth/signpost/exception/OAuthExpectationFailedException
    //   242	252	546	oauth/signpost/exception/OAuthExpectationFailedException
    //   259	267	546	oauth/signpost/exception/OAuthExpectationFailedException
    //   274	281	546	oauth/signpost/exception/OAuthExpectationFailedException
    //   288	298	546	oauth/signpost/exception/OAuthExpectationFailedException
    //   305	311	546	oauth/signpost/exception/OAuthExpectationFailedException
    //   311	319	554	oauth/signpost/exception/OAuthExpectationFailedException
    //   322	342	554	oauth/signpost/exception/OAuthExpectationFailedException
    //   372	379	554	oauth/signpost/exception/OAuthExpectationFailedException
    //   379	432	554	oauth/signpost/exception/OAuthExpectationFailedException
    //   442	453	554	oauth/signpost/exception/OAuthExpectationFailedException
    //   453	463	554	oauth/signpost/exception/OAuthExpectationFailedException
    //   49	55	561	oauth/signpost/exception/OAuthNotAuthorizedException
    //   311	319	570	oauth/signpost/exception/OAuthNotAuthorizedException
    //   322	342	570	oauth/signpost/exception/OAuthNotAuthorizedException
    //   372	379	570	oauth/signpost/exception/OAuthNotAuthorizedException
    //   379	432	570	oauth/signpost/exception/OAuthNotAuthorizedException
    //   442	453	570	oauth/signpost/exception/OAuthNotAuthorizedException
    //   453	463	570	oauth/signpost/exception/OAuthNotAuthorizedException
    //   62	76	580	finally
    //   83	93	580	finally
    //   100	112	580	finally
    //   119	139	580	finally
    //   183	192	580	finally
    //   199	206	580	finally
    //   213	221	580	finally
    //   228	235	580	finally
    //   242	252	580	finally
    //   259	267	580	finally
    //   274	281	580	finally
    //   288	298	580	finally
    //   305	311	580	finally
    //   490	492	580	finally
    //   495	504	580	finally
    //   49	55	587	java/lang/Exception
  }
  
  protected abstract HttpResponse sendRequest(HttpRequest paramHttpRequest);
  
  public void setListener(OAuthProviderListener paramOAuthProviderListener)
  {
    listener = paramOAuthProviderListener;
  }
  
  public void setOAuth10a(boolean paramBoolean)
  {
    isOAuth10a = paramBoolean;
  }
  
  public void setRequestHeader(String paramString1, String paramString2)
  {
    defaultHeaders.put(paramString1, paramString2);
  }
  
  public void setResponseParameters(HttpParameters paramHttpParameters)
  {
    responseParameters = paramHttpParameters;
  }
}

/* Location:
 * Qualified Name:     oauth.signpost.AbstractOAuthProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */