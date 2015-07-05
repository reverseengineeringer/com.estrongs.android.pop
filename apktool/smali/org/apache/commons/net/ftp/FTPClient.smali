.class public Lorg/apache/commons/net/ftp/FTPClient;
.super Lorg/apache/commons/net/ftp/FTP;

# interfaces
.implements Lorg/apache/commons/net/ftp/Configurable;


# static fields
.field public static final ACTIVE_LOCAL_DATA_CONNECTION_MODE:I = 0x0

.field public static final ACTIVE_REMOTE_DATA_CONNECTION_MODE:I = 0x1

.field public static final FTP_SYSTEM_TYPE:Ljava/lang/String; = "org.apache.commons.net.ftp.systemType"

.field public static final PASSIVE_LOCAL_DATA_CONNECTION_MODE:I = 0x2

.field public static final PASSIVE_REMOTE_DATA_CONNECTION_MODE:I = 0x3

.field public static final SYSTEM_TYPE_PROPERTIES:Ljava/lang/String; = "/systemType.properties"

.field private static final __PARMS_PAT:Ljava/util/regex/Pattern;


# instance fields
.field private __activeExternalHost:Ljava/net/InetAddress;

.field private __activeMaxPort:I

.field private __activeMinPort:I

.field private __autodetectEncoding:Z

.field private __bufferSize:I

.field private __configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

.field private __controlKeepAliveReplyTimeout:I

.field private __controlKeepAliveTimeout:J

.field private __copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

.field private __dataConnectionMode:I

.field private __dataTimeout:I

.field private __entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

.field private __entryParserKey:Ljava/lang/String;

.field private __featuresMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private __fileFormat:I

.field private __fileStructure:I

.field private __fileTransferMode:I

.field private __fileType:I

.field private __listHiddenFiles:Z

.field private __parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

.field private __passiveHost:Ljava/lang/String;

.field private __passivePort:I

.field private final __random:Ljava/util/Random;

.field private __remoteVerificationEnabled:Z

.field private __restartOffset:J

.field private __systemName:Ljava/lang/String;

.field private __useEPSVwithIPv4:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/ftp/FTPClient;->__PARMS_PAT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveReplyTimeout:I

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__autodetectEncoding:Z

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->__initDefaults()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataTimeout:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__remoteVerificationEnabled:Z

    new-instance v0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__listHiddenFiles:Z

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__useEPSVwithIPv4:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__random:Ljava/util/Random;

    return-void
.end method

.method private __initDefaults()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I

    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeExternalHost:Ljava/net/InetAddress;

    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMinPort:I

    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMaxPort:I

    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileType:I

    const/4 v0, 0x7

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileStructure:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileFormat:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileTransferMode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__systemName:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParserKey:Ljava/lang/String;

    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__bufferSize:I

    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    return-void
.end method

.method private __mergeListeners(Lorg/apache/commons/net/io/CopyStreamListener;)Lorg/apache/commons/net/io/CopyStreamListener;
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/net/io/CopyStreamAdapter;

    invoke-direct {v0}, Lorg/apache/commons/net/io/CopyStreamAdapter;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/io/CopyStreamAdapter;->addCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/io/CopyStreamAdapter;->addCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private __parseExtendedPassiveModeReply(Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v1, v2, :cond_0

    if-ne v2, v3, :cond_0

    if-eq v3, v4, :cond_1

    :cond_0
    new-instance v1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse extended passive host information.\nServer Reply: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I

    return-void

    :catch_0
    move-exception v1

    new-instance v1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse extended passive host information.\nServer Reply: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private __parsePassiveModeReply(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lorg/apache/commons/net/ftp/FTPClient;->__PARMS_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse passive host information.\nServer Reply: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2c

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Replacing site local address "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->fireReplyReceived(ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse passive port information.\nServer Reply: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse passive host information.\nServer Reply: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private __parsePathname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private __storeFile(ILjava/lang/String;Ljava/io/InputStream;)Z
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferSize()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileType:I

    if-nez v1, :cond_3

    new-instance v2, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;

    invoke-direct {v2, v0}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_1
    const/4 v0, 0x0

    iget-wide v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient$CSL;

    iget-wide v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveTimeout:J

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveReplyTimeout:I

    invoke-direct {v0, p0, v4, v5, v1}, Lorg/apache/commons/net/ftp/FTPClient$CSL;-><init>(Lorg/apache/commons/net/ftp/FTPClient;JI)V

    move-object v8, v0

    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferSize()I

    move-result v3

    const-wide/16 v4, -0x1

    invoke-direct {p0, v8}, Lorg/apache/commons/net/ftp/FTPClient;->__mergeListeners(Lorg/apache/commons/net/io/CopyStreamListener;)Lorg/apache/commons/net/io/CopyStreamListener;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p3

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v9}, Ljava/net/Socket;->close()V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result v0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->cleanUp()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v9}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    throw v0

    :cond_2
    move-object v8, v0

    goto :goto_2

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method private __storeFileStream(ILjava/lang/String;)Ljava/io/OutputStream;
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileType:I

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferSize()I

    move-result v3

    invoke-direct {v1, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-instance v0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    :cond_1
    new-instance v1, Lorg/apache/commons/net/io/SocketOutputStream;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/net/io/SocketOutputStream;-><init>(Ljava/net/Socket;Ljava/io/OutputStream;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private getActivePort()I
    .locals 3

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMinPort:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMaxPort:I

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMinPort:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMaxPort:I

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMinPort:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMaxPort:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__random:Ljava/util/Random;

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMaxPort:I

    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMinPort:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMinPort:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHostAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeExternalHost:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeExternalHost:Ljava/net/InetAddress;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private static getOverrideProperties()Ljava/util/Properties;
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPClient$PropertiesSingleton;->PROPERTIES:Ljava/util/Properties;

    return-object v0
.end method

.method private initFeatureMap()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->feat()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyStrings()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v0

    :goto_1
    if-lt v3, v5, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    aget-object v6, v4, v3

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    const/16 v1, 0x20

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_2
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2
.end method

.method private initiateListParsing(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 4

    new-instance v0, Lorg/apache/commons/net/ftp/FTPListParseEngine;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;-><init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Lorg/apache/commons/net/ftp/FTPClient;)V

    const/16 v1, 0x1a

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->getListArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    throw v0
.end method

.method private initiateMListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 4

    new-instance v0, Lorg/apache/commons/net/ftp/FTPListParseEngine;

    invoke-static {}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->getInstance()Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;-><init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    const/16 v1, 0x26

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    throw v0
.end method

.method private restart(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->rest(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected _connectAction_()V
    .locals 6

    invoke-super {p0}, Lorg/apache/commons/net/ftp/FTP;->_connectAction_()V

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->__initDefaults()V

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__autodetectEncoding:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    const-string v2, "UTF8"

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setControlEncoding(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_controlInput_:Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_controlOutput_:Ljava/io/BufferedWriter;

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    :cond_2
    return-void
.end method

.method protected _openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    if-nez v4, :cond_8

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getActivePort()I

    move-result v4

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v2, v4, v0, v5}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v2

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/net/ftp/FTPClient;->eprt(Ljava/net/InetAddress;I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/net/ftp/FTPClient;->port(Ljava/net/InetAddress;I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    iget-wide v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    invoke-direct {p0, v4, v5}, Lorg/apache/commons/net/ftp/FTPClient;->restart(J)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->sendCommand(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    move-object v0, v1

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataTimeout:I

    if-ltz v0, :cond_6

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataTimeout:I

    invoke-virtual {v2, v0}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    :cond_6
    :try_start_0
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    :cond_7
    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__remoteVerificationEnabled:Z

    if-eqz v1, :cond_e

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->verifyRemote(Ljava/net/Socket;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Host attempting data connection "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not same as server "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    throw v0

    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->isUseEPSVwithIPv4()Z

    move-result v4

    if-nez v4, :cond_9

    if-nez v3, :cond_9

    move v0, v2

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->epsv()I

    move-result v0

    const/16 v4, 0xe5

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->__parseExtendedPassiveModeReply(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->connectTimeout:I

    invoke-virtual {v0, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-wide v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_d

    iget-wide v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->restart(J)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    if-eqz v3, :cond_b

    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->pasv()I

    move-result v0

    const/16 v3, 0xe3

    if-eq v0, v3, :cond_c

    move-object v0, v1

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->__parsePassiveModeReply(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->sendCommand(ILjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_e
    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataTimeout:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto/16 :goto_0
.end method

.method public abort()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->abor()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public allocate(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->allo(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public allocate(II)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->allo(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public appendFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFile(ILjava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public appendFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFileStream(ILjava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public changeToParentDirectory()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->cdup()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public changeWorkingDirectory(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->cwd(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public completePendingCommand()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReply()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    return-void
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->dele(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public disconnect()V
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/net/ftp/FTP;->disconnect()V

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->__initDefaults()V

    return-void
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public doCommandAsStrings(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyStrings()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enterLocalActiveMode()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I

    return-void
.end method

.method public enterLocalPassiveMode()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I

    return-void
.end method

.method public enterRemoteActiveMode(Ljava/net/InetAddress;I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->port(Ljava/net/InetAddress;I)I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enterRemotePassiveMode()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->pasv()I

    move-result v1

    const/16 v2, 0xe3

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->__parsePassiveModeReply(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public featureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->featureValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public featureValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initFeatureMap()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public features()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->feat()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public getAutodetectUTF8()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__autodetectEncoding:Z

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__bufferSize:I

    return v0
.end method

.method public getControlKeepAliveReplyTimeout()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveReplyTimeout:I

    return v0
.end method

.method public getControlKeepAliveTimeout()J
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveTimeout:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getCopyStreamListener()Lorg/apache/commons/net/io/CopyStreamListener;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    return-object v0
.end method

.method public getDataConnectionMode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    return v0
.end method

.method protected getListArguments(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getListHiddenFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "-a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string p1, "-a"

    goto :goto_0
.end method

.method public getListHiddenFiles()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__listHiddenFiles:Z

    return v0
.end method

.method public getModificationTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->mdtm(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPassiveHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passiveHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPassivePort()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__passivePort:I

    return v0
.end method

.method public getRestartOffset()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    return-wide v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->stat()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->stat(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__systemName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->syst()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__systemName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__systemName:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemType()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__systemName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->syst()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__systemName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__systemName:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to determine system type - response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initFeatureMap()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initFeatureMap()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__featuresMap:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public initiateListParsing()Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    return-object v0
.end method

.method public initiateListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    return-object v0
.end method

.method public initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParserKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParserKey:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;->createFileEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParserKey:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "org.apache.commons.net.ftp.systemType"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getSystemType()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/apache/commons/net/ftp/FTPClient;->getOverrideProperties()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    invoke-interface {v1, v0}, Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__entryParserKey:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public isRemoteVerificationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__remoteVerificationEnabled:Z

    return v0
.end method

.method public isUseEPSVwithIPv4()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__useEPSVwithIPv4:Z

    return v0
.end method

.method public listDirectories()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listDirectories(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public listDirectories(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->DIRECTORIES:Lorg/apache/commons/net/ftp/FTPFileFilter;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public listHelp()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->help()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listHelp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->help(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listNames()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x1b

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->getListArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getControlEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->user(Ljava/lang/String;)I

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->pass(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->user(Ljava/lang/String;)I

    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->pass(Ljava/lang/String;)I

    iget v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p3}, Lorg/apache/commons/net/ftp/FTPClient;->acct(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    goto :goto_0
.end method

.method public logout()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->quit()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public makeDirectory(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->mkd(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public mlistDir()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->mlistDir(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public mlistDir(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateMListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public mlistDir(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateMListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public mlistFile(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x27

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->sendCommand(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyStrings()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printWorkingDirectory()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->pwd()I

    move-result v0

    const/16 v1, 0x101

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->__parsePathname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method reinitialize()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->rein()I

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReply()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->__initDefaults()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remoteAppend(Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->appe(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remoteRetrieve(Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->retr(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remoteStore(Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->stor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remoteStoreUnique()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->stou()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remoteStoreUnique(Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataConnectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->stou(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDirectory(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->rmd(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->rnfr(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->rnto(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    goto :goto_0
.end method

.method public retrieveFile(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 10

    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferSize()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileType:I

    if-nez v1, :cond_3

    new-instance v1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;

    invoke-direct {v1, v0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    const/4 v0, 0x0

    iget-wide v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient$CSL;

    iget-wide v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveTimeout:J

    iget v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveReplyTimeout:I

    invoke-direct {v0, p0, v2, v3, v4}, Lorg/apache/commons/net/ftp/FTPClient$CSL;-><init>(Lorg/apache/commons/net/ftp/FTPClient;JI)V

    move-object v8, v0

    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferSize()I

    move-result v3

    const-wide/16 v4, -0x1

    invoke-direct {p0, v8}, Lorg/apache/commons/net/ftp/FTPClient;->__mergeListeners(Lorg/apache/commons/net/io/CopyStreamListener;)Lorg/apache/commons/net/io/CopyStreamListener;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result v0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->cleanUp()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v9}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    throw v0

    :cond_2
    move-object v8, v0

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileType:I

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferSize()I

    move-result v3

    invoke-direct {v1, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_1
    new-instance v1, Lorg/apache/commons/net/io/SocketInputStream;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/net/io/SocketInputStream;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public sendNoOp()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->noop()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public sendSiteCommand(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->site(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public setActiveExternalIPAddress(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeExternalHost:Ljava/net/InetAddress;

    return-void
.end method

.method public setActivePortRange(II)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMinPort:I

    iput p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__activeMaxPort:I

    return-void
.end method

.method public setAutodetectUTF8(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__autodetectEncoding:Z

    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__bufferSize:I

    return-void
.end method

.method public setControlKeepAliveReplyTimeout(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveReplyTimeout:I

    return-void
.end method

.method public setControlKeepAliveTimeout(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__controlKeepAliveTimeout:J

    return-void
.end method

.method public setCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    return-void
.end method

.method public setDataTimeout(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__dataTimeout:I

    return-void
.end method

.method public setFileStructure(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->stru(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileStructure:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFileTransferMode(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->mode(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileTransferMode:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFileType(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->type(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileType:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileFormat:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFileType(II)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->type(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileType:I

    iput p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->__fileFormat:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListHiddenFiles(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__listHiddenFiles:Z

    return-void
.end method

.method public setModificationTime(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->mfmt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public setParserFactory(Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    return-void
.end method

.method public setRemoteVerificationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__remoteVerificationEnabled:Z

    return-void
.end method

.method public setRestartOffset(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__restartOffset:J

    :cond_0
    return-void
.end method

.method public setUseEPSVwithIPv4(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->__useEPSVwithIPv4:Z

    return-void
.end method

.method public storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFile(ILjava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFileStream(ILjava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public storeUniqueFile(Ljava/io/InputStream;)Z
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFile(ILjava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public storeUniqueFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFile(ILjava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public storeUniqueFileStream()Ljava/io/OutputStream;
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFileStream(ILjava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public storeUniqueFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->__storeFileStream(ILjava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public structureMount(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->smnt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method
