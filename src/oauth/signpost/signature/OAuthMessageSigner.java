package oauth.signpost.signature;

import java.io.ObjectInputStream;
import java.io.Serializable;
import oauth.signpost.http.HttpParameters;
import oauth.signpost.http.HttpRequest;
import org.apache.commons.codec.binary.Base64;

public abstract class OAuthMessageSigner
  implements Serializable
{
  private static final long serialVersionUID = 4445779788786131202L;
  private transient Base64 base64 = new Base64();
  private String consumerSecret;
  private String tokenSecret;
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    base64 = new Base64();
  }
  
  protected String base64Encode(byte[] paramArrayOfByte)
  {
    return new String(base64.encode(paramArrayOfByte));
  }
  
  protected byte[] decodeBase64(String paramString)
  {
    return base64.decode(paramString.getBytes());
  }
  
  public String getConsumerSecret()
  {
    return consumerSecret;
  }
  
  public abstract String getSignatureMethod();
  
  public String getTokenSecret()
  {
    return tokenSecret;
  }
  
  public void setConsumerSecret(String paramString)
  {
    consumerSecret = paramString;
  }
  
  public void setTokenSecret(String paramString)
  {
    tokenSecret = paramString;
  }
  
  public abstract String sign(HttpRequest paramHttpRequest, HttpParameters paramHttpParameters);
}

/* Location:
 * Qualified Name:     oauth.signpost.signature.OAuthMessageSigner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */