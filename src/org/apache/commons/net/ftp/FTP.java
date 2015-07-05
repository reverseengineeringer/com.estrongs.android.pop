package org.apache.commons.net.ftp;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.net.MalformedServerReplyException;
import org.apache.commons.net.ProtocolCommandSupport;
import org.apache.commons.net.SocketClient;
import org.apache.commons.net.io.CRLFLineReader;

public class FTP
  extends SocketClient
{
  public static final int ASCII_FILE_TYPE = 0;
  public static final int BINARY_FILE_TYPE = 2;
  public static final int BLOCK_TRANSFER_MODE = 11;
  public static final int CARRIAGE_CONTROL_TEXT_FORMAT = 6;
  public static final int COMPRESSED_TRANSFER_MODE = 12;
  public static final String DEFAULT_CONTROL_ENCODING = "ISO-8859-1";
  public static final int DEFAULT_DATA_PORT = 20;
  public static final int DEFAULT_PORT = 21;
  public static final int EBCDIC_FILE_TYPE = 1;
  public static final int FILE_STRUCTURE = 7;
  public static final int LOCAL_FILE_TYPE = 3;
  public static final int NON_PRINT_TEXT_FORMAT = 4;
  public static final int PAGE_STRUCTURE = 9;
  public static final int RECORD_STRUCTURE = 8;
  public static final int STREAM_TRANSFER_MODE = 10;
  public static final int TELNET_TEXT_FORMAT = 5;
  private static final String __modes = "AEILNTCFRPSBC";
  protected ProtocolCommandSupport _commandSupport_;
  protected String _controlEncoding;
  protected BufferedReader _controlInput_;
  protected BufferedWriter _controlOutput_;
  protected boolean _needAutoDetectEncoding;
  protected boolean _newReplyString;
  protected int _replyCode;
  protected ArrayList<String> _replyLines;
  protected String _replyString;
  protected boolean strictMultilineParsing = false;
  
  public FTP()
  {
    setDefaultPort(21);
    _replyLines = new ArrayList();
    _newReplyString = false;
    _replyString = null;
    _controlEncoding = "ISO-8859-1";
    _commandSupport_ = new ProtocolCommandSupport(this);
  }
  
  private String __buildMessage(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString1);
    if (paramString2 != null)
    {
      localStringBuilder.append(' ');
      localStringBuilder.append(paramString2);
    }
    localStringBuilder.append("\r\n");
    return localStringBuilder.toString();
  }
  
  private void __getReply()
  {
    __getReply(true);
  }
  
  private void __getReply(boolean paramBoolean)
  {
    _newReplyString = true;
    _replyLines.clear();
    String str1 = _controlInput_.readLine();
    if (str1 == null) {
      throw new FTPConnectionClosedException("Connection closed without indication.");
    }
    int i = str1.length();
    if (i < 3) {
      throw new MalformedServerReplyException("Truncated server reply: " + str1);
    }
    do
    {
      try
      {
        String str2 = str1.substring(0, 3);
        _replyCode = Integer.parseInt(str2);
        _replyLines.add(str1);
        if ((i <= 3) || (str1.charAt(3) != '-')) {
          break;
        }
        str1 = _controlInput_.readLine();
        if (str1 == null) {
          throw new FTPConnectionClosedException("Connection closed without indication.");
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new MalformedServerReplyException("Could not parse response code.\nServer Reply: " + str1);
      }
      _replyLines.add(str1);
      if (!isStrictMultilineParsing()) {
        break label215;
      }
    } while (__strictCheck(str1, localNumberFormatException));
    for (;;)
    {
      fireReplyReceived(_replyCode, getReplyString());
      if (_replyCode != 421) {
        return;
      }
      throw new FTPConnectionClosedException("FTP response 421 received.  Server closed connection.");
      label215:
      if (__lenientCheck(str1)) {
        break;
      }
    }
  }
  
  private boolean __lenientCheck(String paramString)
  {
    return (paramString.length() < 4) || (paramString.charAt(3) == '-') || (!Character.isDigit(paramString.charAt(0)));
  }
  
  private void __send(String paramString)
  {
    try
    {
      _controlOutput_.write(paramString);
      _controlOutput_.flush();
      return;
    }
    catch (SocketException paramString)
    {
      if (!isConnected()) {
        throw new FTPConnectionClosedException("Connection unexpectedly closed.");
      }
      throw paramString;
    }
  }
  
  private boolean __strictCheck(String paramString1, String paramString2)
  {
    return (!paramString1.startsWith(paramString2)) || (paramString1.charAt(3) != ' ');
  }
  
  protected void __getReplyNoReport()
  {
    __getReply(false);
  }
  
  protected void __noop()
  {
    __send(__buildMessage(FTPCommand.getCommand(32), null));
    __getReplyNoReport();
  }
  
  protected void _connectAction_()
  {
    super._connectAction_();
    _controlInput_ = new CRLFLineReader(new InputStreamReader(_input_, getControlEncoding()));
    _controlOutput_ = new BufferedWriter(new OutputStreamWriter(_output_, getControlEncoding()));
    int i;
    if (connectTimeout > 0)
    {
      i = _socket_.getSoTimeout();
      _socket_.setSoTimeout(connectTimeout);
    }
    do
    {
      try
      {
        __getReply();
        if (FTPReply.isPositivePreliminary(_replyCode)) {
          __getReply();
        }
        return;
      }
      catch (SocketTimeoutException localSocketTimeoutException)
      {
        IOException localIOException = new IOException("Timed out waiting for initial connect reply");
        localIOException.initCause(localSocketTimeoutException);
        throw localIOException;
      }
      finally
      {
        _socket_.setSoTimeout(i);
      }
      __getReply();
    } while (!FTPReply.isPositivePreliminary(_replyCode));
    __getReply();
  }
  
  public int abor()
  {
    return sendCommand(21);
  }
  
  public int acct(String paramString)
  {
    return sendCommand(2, paramString);
  }
  
  public int allo(int paramInt)
  {
    return sendCommand(17, Integer.toString(paramInt));
  }
  
  public int allo(int paramInt1, int paramInt2)
  {
    return sendCommand(17, Integer.toString(paramInt1) + " R " + Integer.toString(paramInt2));
  }
  
  public int appe(String paramString)
  {
    return sendCommand(16, paramString);
  }
  
  public int cdup()
  {
    return sendCommand(4);
  }
  
  public int cwd(String paramString)
  {
    return sendCommand(3, paramString);
  }
  
  public int dele(String paramString)
  {
    return sendCommand(22, paramString);
  }
  
  public void disconnect()
  {
    super.disconnect();
    _controlInput_ = null;
    _controlOutput_ = null;
    _newReplyString = false;
    _replyString = null;
  }
  
  public int eprt(InetAddress paramInetAddress, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str2 = paramInetAddress.getHostAddress();
    int i = str2.indexOf("%");
    String str1 = str2;
    if (i > 0) {
      str1 = str2.substring(0, i);
    }
    localStringBuilder.append("|");
    if ((paramInetAddress instanceof Inet4Address)) {
      localStringBuilder.append("1");
    }
    for (;;)
    {
      localStringBuilder.append("|");
      localStringBuilder.append(str1);
      localStringBuilder.append("|");
      localStringBuilder.append(paramInt);
      localStringBuilder.append("|");
      return sendCommand(37, localStringBuilder.toString());
      if ((paramInetAddress instanceof Inet6Address)) {
        localStringBuilder.append("2");
      }
    }
  }
  
  public int epsv()
  {
    return sendCommand(36);
  }
  
  public int feat()
  {
    return sendCommand(34);
  }
  
  protected ProtocolCommandSupport getCommandSupport()
  {
    return _commandSupport_;
  }
  
  public String getControlEncoding()
  {
    if ("AUTO".equalsIgnoreCase(_controlEncoding)) {
      return "UTF-8";
    }
    return _controlEncoding;
  }
  
  public int getReply()
  {
    __getReply();
    return _replyCode;
  }
  
  public int getReplyCode()
  {
    return _replyCode;
  }
  
  public String getReplyString()
  {
    if (!_newReplyString) {
      return _replyString;
    }
    Object localObject = new StringBuilder(256);
    Iterator localIterator = _replyLines.iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        _newReplyString = false;
        localObject = ((StringBuilder)localObject).toString();
        _replyString = ((String)localObject);
        return (String)localObject;
      }
      ((StringBuilder)localObject).append((String)localIterator.next());
      ((StringBuilder)localObject).append("\r\n");
    }
  }
  
  public String[] getReplyStrings()
  {
    return (String[])_replyLines.toArray(new String[_replyLines.size()]);
  }
  
  public int help()
  {
    return sendCommand(31);
  }
  
  public int help(String paramString)
  {
    return sendCommand(31, paramString);
  }
  
  public boolean isNeedAutoDetectEncoding()
  {
    return _needAutoDetectEncoding;
  }
  
  public boolean isStrictMultilineParsing()
  {
    return strictMultilineParsing;
  }
  
  public int list()
  {
    return sendCommand(26);
  }
  
  public int list(String paramString)
  {
    return sendCommand(26, paramString);
  }
  
  public int mdtm(String paramString)
  {
    return sendCommand(33, paramString);
  }
  
  public int mfmt(String paramString1, String paramString2)
  {
    return sendCommand(35, paramString2 + " " + paramString1);
  }
  
  public int mkd(String paramString)
  {
    return sendCommand(24, paramString);
  }
  
  public int mlsd()
  {
    return sendCommand(38);
  }
  
  public int mlsd(String paramString)
  {
    return sendCommand(38, paramString);
  }
  
  public int mlst()
  {
    return sendCommand(39);
  }
  
  public int mlst(String paramString)
  {
    return sendCommand(39, paramString);
  }
  
  public int mode(int paramInt)
  {
    return sendCommand(12, "AEILNTCFRPSBC".substring(paramInt, paramInt + 1));
  }
  
  public int nlst()
  {
    return sendCommand(27);
  }
  
  public int nlst(String paramString)
  {
    return sendCommand(27, paramString);
  }
  
  public int noop()
  {
    return sendCommand(32);
  }
  
  public int pass(String paramString)
  {
    return sendCommand(1, paramString);
  }
  
  public int pasv()
  {
    return sendCommand(9);
  }
  
  public int port(InetAddress paramInetAddress, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder(24);
    localStringBuilder.append(paramInetAddress.getHostAddress().replace('.', ','));
    localStringBuilder.append(',');
    localStringBuilder.append(paramInt >>> 8);
    localStringBuilder.append(',');
    localStringBuilder.append(paramInt & 0xFF);
    return sendCommand(8, localStringBuilder.toString());
  }
  
  public int pwd()
  {
    return sendCommand(25);
  }
  
  public int quit()
  {
    return sendCommand(7);
  }
  
  public int rein()
  {
    return sendCommand(6);
  }
  
  public int rest(String paramString)
  {
    return sendCommand(18, paramString);
  }
  
  public int retr(String paramString)
  {
    return sendCommand(13, paramString);
  }
  
  public int rmd(String paramString)
  {
    return sendCommand(23, paramString);
  }
  
  public int rnfr(String paramString)
  {
    return sendCommand(19, paramString);
  }
  
  public int rnto(String paramString)
  {
    return sendCommand(20, paramString);
  }
  
  public int sendCommand(int paramInt)
  {
    return sendCommand(paramInt, null);
  }
  
  public int sendCommand(int paramInt, String paramString)
  {
    return sendCommand(FTPCommand.getCommand(paramInt), paramString);
  }
  
  public int sendCommand(String paramString)
  {
    return sendCommand(paramString, null);
  }
  
  public int sendCommand(String paramString1, String paramString2)
  {
    if (_controlOutput_ == null) {
      throw new IOException("Connection is not open");
    }
    paramString2 = __buildMessage(paramString1, paramString2);
    __send(paramString2);
    fireCommandSent(paramString1, paramString2);
    __getReply();
    return _replyCode;
  }
  
  public void setControlEncoding(String paramString)
  {
    _controlEncoding = paramString;
    if ("AUTO".equalsIgnoreCase(_controlEncoding)) {}
    for (_needAutoDetectEncoding = true;; _needAutoDetectEncoding = false)
    {
      if (_output_ != null)
      {
        _controlInput_ = new CRLFLineReader(new InputStreamReader(_input_, getControlEncoding()));
        _controlOutput_ = new BufferedWriter(new OutputStreamWriter(_output_, getControlEncoding()));
      }
      return;
    }
  }
  
  public void setStrictMultilineParsing(boolean paramBoolean)
  {
    strictMultilineParsing = paramBoolean;
  }
  
  public int site(String paramString)
  {
    return sendCommand(28, paramString);
  }
  
  public int smnt(String paramString)
  {
    return sendCommand(5, paramString);
  }
  
  public int stat()
  {
    return sendCommand(30);
  }
  
  public int stat(String paramString)
  {
    return sendCommand(30, paramString);
  }
  
  public int stor(String paramString)
  {
    return sendCommand(14, paramString);
  }
  
  public int stou()
  {
    return sendCommand(15);
  }
  
  public int stou(String paramString)
  {
    return sendCommand(15, paramString);
  }
  
  public int stru(int paramInt)
  {
    return sendCommand(11, "AEILNTCFRPSBC".substring(paramInt, paramInt + 1));
  }
  
  public int syst()
  {
    return sendCommand(29);
  }
  
  public int type(int paramInt)
  {
    return sendCommand(10, "AEILNTCFRPSBC".substring(paramInt, paramInt + 1));
  }
  
  public int type(int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("AEILNTCFRPSBC".charAt(paramInt1));
    localStringBuilder.append(' ');
    if (paramInt1 == 3) {
      localStringBuilder.append(paramInt2);
    }
    for (;;)
    {
      return sendCommand(10, localStringBuilder.toString());
      localStringBuilder.append("AEILNTCFRPSBC".charAt(paramInt2));
    }
  }
  
  public int user(String paramString)
  {
    return sendCommand(0, paramString);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTP
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */