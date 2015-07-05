package org.apache.commons.net.ftp;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.net.util.Base64;

public class FTPHTTPClient
  extends FTPClient
{
  private final byte[] CRLF;
  private final Base64 base64 = new Base64();
  private String host;
  private int port;
  private final String proxyHost;
  private final String proxyPassword;
  private final int proxyPort;
  private final String proxyUsername;
  
  public FTPHTTPClient(String paramString, int paramInt)
  {
    this(paramString, paramInt, null, null);
  }
  
  public FTPHTTPClient(String paramString1, int paramInt, String paramString2, String paramString3)
  {
    proxyHost = paramString1;
    proxyPort = paramInt;
    proxyUsername = paramString2;
    proxyPassword = paramString3;
    try
    {
      CRLF = "\r\n".getBytes(getControlEncoding());
      return;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      throw new RuntimeException(paramString1);
    }
  }
  
  private void tunnelHandshake(String paramString, int paramInt, InputStream paramInputStream, OutputStream paramOutputStream)
  {
    paramString = "CONNECT " + paramString + ":" + paramInt + " HTTP/1.1";
    _output_.write(paramString.getBytes(getControlEncoding()));
    _output_.write(CRLF);
    if ((proxyUsername != null) && (proxyPassword != null))
    {
      paramString = "Proxy-Authorization: Basic " + base64.encode(new StringBuilder(String.valueOf(proxyUsername)).append(":").append(proxyPassword).toString()) + "\r\n";
      _output_.write(paramString.getBytes("UTF-8"));
      _output_.write(CRLF);
      paramInputStream = new ArrayList();
      paramOutputStream = new BufferedReader(new InputStreamReader(_input_));
      for (paramString = paramOutputStream.readLine();; paramString = paramOutputStream.readLine())
      {
        if ((paramString == null) || (paramString.length() <= 0))
        {
          if (paramInputStream.size() != 0) {
            break;
          }
          throw new IOException("No response from proxy");
        }
        paramInputStream.add(paramString);
      }
      paramString = (String)paramInputStream.get(0);
      if ((paramString.startsWith("HTTP/")) && (paramString.length() >= 12))
      {
        if (!"200".equals(paramString.substring(9, 12)))
        {
          paramString = new StringBuilder();
          paramString.append("HTTPTunnelConnector: connection failed\r\n");
          paramString.append("Response received from the proxy:\r\n");
          paramInputStream = paramInputStream.iterator();
        }
      }
      else {
        for (;;)
        {
          if (!paramInputStream.hasNext())
          {
            throw new IOException(paramString.toString());
            throw new IOException("Invalid response from proxy: " + paramString);
          }
          paramString.append((String)paramInputStream.next());
          paramString.append("\r\n");
        }
      }
    }
  }
  
  protected Socket _openDataConnection_(int paramInt, String paramString)
  {
    paramString = new Socket(host, port);
    InputStream localInputStream = paramString.getInputStream();
    OutputStream localOutputStream = paramString.getOutputStream();
    tunnelHandshake(host, port, localInputStream, localOutputStream);
    return paramString;
  }
  
  public void connect(String paramString, int paramInt)
  {
    host = paramString;
    port = paramInt;
    _socket_ = new Socket(proxyHost, proxyPort);
    _input_ = _socket_.getInputStream();
    _output_ = _socket_.getOutputStream();
    try
    {
      tunnelHandshake(paramString, paramInt, _input_, _output_);
      return;
    }
    catch (Exception localException)
    {
      paramString = new IOException("Could not connect to " + paramString);
      paramString.initCause(localException);
      throw paramString;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTPHTTPClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */