.class Lcom/estrongs/android/g/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/g/f;

.field private b:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/g/f;Ljava/net/Socket;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/g/h;->b:Ljava/net/Socket;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a([BI)I
    .locals 3

    const/16 v2, 0xd

    const/16 v1, 0xa

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    aget-byte v0, p1, p2

    if-ne v0, v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, p2

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, p2

    if-ne v0, v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, p2

    if-ne v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, p2, 0x1

    return v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "400 Bad Request"

    const-string v1, "BAD REQUEST: Bad percent-encoding."

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([BII)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-lez p3, :cond_0

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "NanoHTTPD"

    const-string v3, ""

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "400 Bad Request"

    const-string v3, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v3, "method"

    invoke-virtual {p2, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "400 Bad Request"

    const-string v4, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {p0, v3, v4}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x1

    const-string v0, "HTTP/1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_3

    const-string v0, "http/1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_3
    if-lez v0, :cond_5

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    :goto_1
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_6

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/util/Properties;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-direct {p0, v0}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_7
    const-string v0, "uri"

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "500 Internal Server Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "text/plain"

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lcom/estrongs/android/util/k;->a(ZZ)V

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/Error;

    const-string v1, "sendResponse(): Status can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    if-eqz p4, :cond_0

    :try_start_1
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/g/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v6, v7}, Lcom/estrongs/android/util/k;->b(ZZ)V

    :goto_2
    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/g/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP/1.0 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_3

    const-string v0, "Date"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/g/f;->j()Ljava/text/SimpleDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Lcom/estrongs/android/util/k;->b(ZZ)V

    throw v0

    :cond_5
    :try_start_4
    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    if-eqz p4, :cond_6

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    :goto_4
    const/4 v2, 0x0

    const/high16 v3, 0x10000

    invoke-virtual {p4, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_8

    :cond_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    invoke-static {v6, v7}, Lcom/estrongs/android/util/k;->b(ZZ)V

    goto/16 :goto_2

    :cond_8
    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 10

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/estrongs/android/g/h;->a([B[B)[I

    move-result-object v3

    const/4 v1, 0x1

    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v0, "400 Bad Request"

    const-string v2, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v1, 0x1

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_d

    const-string v1, "content-disposition"

    invoke-virtual {v4, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v5, "400 Bad Request"

    const-string v6, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    invoke-direct {p0, v5, v6}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, "; "

    invoke-direct {v5, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    :cond_4
    :goto_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v8, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "500 Internal Server Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    :try_start_1
    const-string v1, "name"

    invoke-virtual {v6, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    const-string v7, "content-type"

    invoke-virtual {v4, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :cond_7
    :goto_3
    if-eqz v1, :cond_c

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_c

    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v6, 0x0

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    array-length v0, v3

    if-le v2, v0, :cond_a

    const-string v0, "500 Internal Server Error"

    const-string v1, "Error processing request"

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v0, v2, -0x2

    aget v0, v3, v0

    invoke-direct {p0, p2, v0}, Lcom/estrongs/android/g/h;->a([BI)I

    move-result v0

    add-int/lit8 v1, v2, -0x1

    aget v1, v3, v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x4

    invoke-direct {p0, p2, v0, v1}, Lcom/estrongs/android/g/h;->a([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v5, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "filename"

    invoke-virtual {v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_b
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_b

    :cond_c
    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    invoke-virtual {p4, v5, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    move v1, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public a([B[B)[I
    .locals 8

    const/4 v3, -0x1

    const/4 v1, 0x0

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    move v0, v1

    move v2, v3

    move v4, v1

    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_3

    aget-byte v6, p1, v0

    aget-byte v7, p2, v4

    if-ne v6, v7, :cond_2

    if-nez v4, :cond_0

    move v2, v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    array-length v6, p2

    if-ne v4, v6, :cond_1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v3

    move v4, v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v4

    move v2, v3

    move v4, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [I

    :goto_2
    array-length v0, v2

    if-ge v1, v0, :cond_4

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object v2
.end method

.method public run()V
    .locals 19

    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x2000

    new-array v13, v2, [B

    const/4 v3, 0x0

    invoke-virtual {v14, v13, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v13, v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    new-instance v11, Ljava/util/Properties;

    invoke-direct {v11}, Ljava/util/Properties;-><init>()V

    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v6, v11}, Lcom/estrongs/android/g/h;->a(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V

    const-string v3, "method"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-wide v2, 0x7fffffffffffffffL

    const-string v4, "content-length"

    invoke-virtual {v11, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v4

    if-eqz v4, :cond_2

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result v2

    int-to-long v2, v2

    :cond_2
    :goto_1
    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v4, v5, :cond_22

    :try_start_2
    aget-byte v15, v13, v4

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    add-int/lit8 v4, v4, 0x1

    aget-byte v15, v13, v4

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    add-int/lit8 v4, v4, 0x1

    aget-byte v15, v13, v4

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    add-int/lit8 v4, v4, 0x1

    aget-byte v15, v13, v4

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/4 v12, 0x1

    move/from16 v18, v12

    move v12, v4

    move/from16 v4, v18

    :goto_3
    add-int/lit8 v12, v12, 0x1

    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-ge v12, v5, :cond_3

    sub-int v16, v5, v12

    move/from16 v0, v16

    invoke-virtual {v15, v13, v12, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_3
    if-ge v12, v5, :cond_8

    sub-int v4, v5, v12

    add-int/lit8 v4, v4, 0x1

    int-to-long v12, v4

    sub-long/2addr v2, v12

    :cond_4
    :goto_4
    const/16 v4, 0x200

    new-array v12, v4, [B

    move v4, v5

    :cond_5
    :goto_5
    if-ltz v4, :cond_a

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_a

    const/4 v4, 0x0

    const/16 v5, 0x200

    invoke-virtual {v14, v12, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v16, v0

    sub-long v2, v2, v16

    if-lez v4, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v15, v12, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_5

    :catch_0
    move-exception v2

    :goto_6
    :try_start_3
    const-string v3, "500 Internal Server Error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :goto_7
    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->c(Lcom/estrongs/android/g/f;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->g(Lcom/estrongs/android/g/f;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->h(Lcom/estrongs/android/g/f;)I

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    new-instance v4, Lcom/estrongs/android/g/i;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/estrongs/android/g/i;-><init>(Lcom/estrongs/android/g/h;)V

    invoke-static {v2, v4}, Lcom/estrongs/android/g/f;->a(Lcom/estrongs/android/g/f;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->i(Lcom/estrongs/android/g/f;)Ljava/util/Timer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v4}, Lcom/estrongs/android/g/f;->f(Lcom/estrongs/android/g/f;)Ljava/util/TimerTask;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :goto_8
    :try_start_5
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_8
    if-eqz v4, :cond_9

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v4, v2, v12

    if-nez v4, :cond_4

    :cond_9
    const-wide/16 v2, 0x0

    goto/16 :goto_4

    :cond_a
    :try_start_6
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/g/f;->a(Lcom/estrongs/android/g/f;[B)[B

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v2, "POST"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, ""

    const-string v3, "content-type"

    invoke-virtual {v11, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v12, Ljava/util/StringTokenizer;

    const-string v13, "; "

    invoke-direct {v12, v3, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    :cond_b
    const-string v3, "multipart/form-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "400 Bad Request"

    const-string v3, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v12, "="

    invoke-direct {v3, v2, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    const/4 v12, 0x2

    if-eq v2, v12, :cond_d

    const-string v2, "400 Bad Request"

    const-string v12, "BAD REQUEST: Content type is multipart/form-data but boundary syntax error. Usage: GET /example/file.html"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V

    :cond_e
    :goto_9
    invoke-static {v9}, Lcom/estrongs/android/util/ap;->bH(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v4

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->c(Lcom/estrongs/android/g/f;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v4, :cond_21

    :try_start_8
    invoke-static {v4}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->isAudioFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {v4}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->isVideoFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_f
    invoke-static {}, Lcom/estrongs/android/util/bk;->q()Z

    move-result v2

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->d(Lcom/estrongs/android/g/f;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    const/4 v3, 0x1

    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->e(Lcom/estrongs/android/g/f;)Lcom/estrongs/android/ui/notification/d;

    move-result-object v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->f(Lcom/estrongs/android/g/f;)Ljava/util/TimerTask;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->f(Lcom/estrongs/android/g/f;)Ljava/util/TimerTask;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/estrongs/android/g/f;->a(Lcom/estrongs/android/g/f;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    :cond_10
    :goto_a
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_11

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1a

    :cond_11
    if-nez v4, :cond_20

    move-object v2, v9

    :goto_c
    invoke-static {}, Lcom/estrongs/android/util/bk;->p()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {v8}, Lcom/estrongs/android/g/f;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_12
    invoke-static {v8, v2}, Lcom/estrongs/android/g/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_13
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    move-object v12, v6

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/estrongs/android/g/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)Lcom/estrongs/android/g/j;

    move-result-object v2

    :goto_d
    if-nez v2, :cond_1d

    const-string v2, "500 Internal Server Error"

    const-string v4, "SERVER INTERNAL ERROR: Serve() returned a null response."

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->c(Lcom/estrongs/android/g/f;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->g(Lcom/estrongs/android/g/f;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->h(Lcom/estrongs/android/g/f;)I

    move-result v2

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    new-instance v4, Lcom/estrongs/android/g/i;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/estrongs/android/g/i;-><init>(Lcom/estrongs/android/g/h;)V

    invoke-static {v2, v4}, Lcom/estrongs/android/g/f;->a(Lcom/estrongs/android/g/f;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->i(Lcom/estrongs/android/g/f;)Ljava/util/Timer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v4}, Lcom/estrongs/android/g/f;->f(Lcom/estrongs/android/g/f;)Ljava/util/TimerTask;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_14
    :goto_f
    :try_start_c
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v2

    :cond_15
    :try_start_d
    const-string v3, ""

    const/16 v2, 0x200

    new-array v4, v2, [C

    invoke-virtual {v5, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    :goto_10
    if-ltz v2, :cond_16

    const-string v12, "\r\n"

    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_16

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v12, 0x0

    invoke-static {v4, v12, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    goto :goto_10

    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/util/Properties;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto/16 :goto_9

    :catch_1
    move-exception v2

    :goto_11
    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->c(Lcom/estrongs/android/g/f;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->g(Lcom/estrongs/android/g/f;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->h(Lcom/estrongs/android/g/f;)I

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    new-instance v4, Lcom/estrongs/android/g/i;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/estrongs/android/g/i;-><init>(Lcom/estrongs/android/g/h;)V

    invoke-static {v2, v4}, Lcom/estrongs/android/g/f;->a(Lcom/estrongs/android/g/f;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v2}, Lcom/estrongs/android/g/f;->i(Lcom/estrongs/android/g/f;)Ljava/util/Timer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v4}, Lcom/estrongs/android/g/f;->f(Lcom/estrongs/android/g/f;)Ljava/util/TimerTask;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_17
    :goto_12
    :try_start_f
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v2

    :cond_18
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    new-instance v8, Lcom/estrongs/android/ui/notification/d;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v13

    invoke-direct {v8, v13}, Lcom/estrongs/android/ui/notification/d;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v8}, Lcom/estrongs/android/g/f;->a(Lcom/estrongs/android/g/f;Lcom/estrongs/android/ui/notification/d;)Lcom/estrongs/android/ui/notification/d;

    goto/16 :goto_a

    :catchall_3
    move-exception v2

    :goto_13
    monitor-exit v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    throw v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catch_2
    move-exception v2

    move v8, v3

    :goto_14
    :try_start_12
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move v3, v8

    goto/16 :goto_b

    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_d

    :cond_1a
    :try_start_13
    const-string v2, "127.0.0.1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {v8, v4}, Lcom/estrongs/android/g/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    move-object v12, v6

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/estrongs/android/g/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)Lcom/estrongs/android/g/j;

    move-result-object v2

    goto/16 :goto_d

    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_d

    :cond_1d
    iget-object v4, v2, Lcom/estrongs/android/g/j;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/estrongs/android/g/j;->b:Ljava/lang/String;

    iget-object v7, v2, Lcom/estrongs/android/g/j;->d:Ljava/util/Properties;

    iget-object v2, v2, Lcom/estrongs/android/g/j;->c:Ljava/io/InputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7, v2}, Lcom/estrongs/android/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto/16 :goto_e

    :catch_3
    move-exception v2

    move v8, v3

    goto/16 :goto_6

    :catch_4
    move-exception v2

    :try_start_14
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_f

    :catch_5
    move-exception v2

    :try_start_15
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_8

    :catch_6
    move-exception v2

    :try_start_16
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto :goto_12

    :catchall_4
    move-exception v2

    :goto_15
    if-eqz v8, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v3}, Lcom/estrongs/android/g/f;->c(Lcom/estrongs/android/g/f;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v3}, Lcom/estrongs/android/g/f;->g(Lcom/estrongs/android/g/f;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v3}, Lcom/estrongs/android/g/f;->h(Lcom/estrongs/android/g/f;)I

    move-result v3

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    new-instance v5, Lcom/estrongs/android/g/i;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/estrongs/android/g/i;-><init>(Lcom/estrongs/android/g/h;)V

    invoke-static {v3, v5}, Lcom/estrongs/android/g/f;->a(Lcom/estrongs/android/g/f;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v3}, Lcom/estrongs/android/g/f;->i(Lcom/estrongs/android/g/f;)Ljava/util/Timer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v5}, Lcom/estrongs/android/g/f;->f(Lcom/estrongs/android/g/f;)Ljava/util/TimerTask;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :cond_1e
    :goto_16
    :try_start_18
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :cond_1f
    throw v2

    :catch_7
    move-exception v3

    :try_start_19
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    :catchall_5
    move-exception v2

    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    throw v2

    :catch_8
    move-exception v4

    goto/16 :goto_1

    :catchall_6
    move-exception v2

    move v8, v3

    goto :goto_15

    :catch_9
    move-exception v2

    move v8, v3

    goto/16 :goto_11

    :catch_a
    move-exception v2

    goto/16 :goto_7

    :catch_b
    move-exception v2

    goto/16 :goto_14

    :catchall_7
    move-exception v2

    move v3, v8

    goto/16 :goto_13

    :cond_20
    move-object v2, v4

    goto/16 :goto_c

    :cond_21
    move v3, v8

    goto/16 :goto_a

    :cond_22
    move/from16 v18, v12

    move v12, v4

    move/from16 v4, v18

    goto/16 :goto_3
.end method
