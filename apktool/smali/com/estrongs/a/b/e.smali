.class Lcom/estrongs/a/b/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/a/b/d;


# direct methods
.method constructor <init>(Lcom/estrongs/a/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v14, 0x1

    const/4 v8, 0x0

    sget-object v0, Lcom/estrongs/a/b/d;->b:Ljava/lang/String;

    const-string v1, "ESuser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/a/b/d;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {}, Lcom/estrongs/a/b/d;->b()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;Ljava/net/Socket;)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v2}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v1}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;

    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v2}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, v1}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;

    new-instance v13, Ljava/util/Properties;

    invoke-direct {v13}, Ljava/util/Properties;-><init>()V

    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->b(Lcom/estrongs/a/b/d;)Ljava/io/DataInputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/a/b/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v4, v0, 0x1

    const-string v0, "HTTP/1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    const-string v0, "http/1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    if-lez v0, :cond_3

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v1}, Lcom/estrongs/a/b/d;->b(Lcom/estrongs/a/b/d;)Ljava/io/DataInputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/a/b/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "GET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "hostname"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "content-length"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v1}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    iget-object v2, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v2}, Lcom/estrongs/a/b/d;->c(Lcom/estrongs/a/b/d;)Ljava/io/DataOutputStream;

    move-result-object v2

    const/16 v3, 0xc8

    sget-object v4, Lcom/estrongs/a/b/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/a/b/d;->a(Ljava/io/OutputStream;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v1}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/estrongs/fs/b/au;->a([BLjava/lang/String;)V

    invoke-static {}, Lcom/estrongs/a/b/d;->c()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/a/b/f;

    invoke-direct {v1, p0}, Lcom/estrongs/a/b/f;-><init>(Lcom/estrongs/a/b/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v4, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :try_start_6
    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    iget-object v1, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v1}, Lcom/estrongs/a/b/d;->c(Lcom/estrongs/a/b/d;)Ljava/io/DataOutputStream;

    move-result-object v1

    const/16 v2, 0xc8

    sget-object v3, Lcom/estrongs/a/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/a/b/d;->a(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v1}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v1}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_3
    throw v0

    :cond_7
    :try_start_8
    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    iget-object v1, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v1}, Lcom/estrongs/a/b/d;->c(Lcom/estrongs/a/b/d;)Ljava/io/DataOutputStream;

    move-result-object v1

    const/16 v2, 0x194

    const-string v3, "Not found"

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/a/b/d;->a(Ljava/io/OutputStream;ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const-string v0, "MYPOST"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->d(Lcom/estrongs/a/b/d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->d(Lcom/estrongs/a/b/d;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    const-wide/16 v6, 0x0

    const-string v0, "content-length"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "content-length"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :cond_9
    const-string v0, "files-number"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v0, "files-number"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v12, v0

    :goto_5
    if-le v12, v14, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_6
    const-string v0, "items-number"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v0, "items-number"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v10, v0

    :goto_7
    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_14

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :goto_8
    const-string v0, "content-type"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "media/realtime"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/a/b/d;->c()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b00df

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v11}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/estrongs/fs/b/bl;

    invoke-static {v11}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v5

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/fs/b/bl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "host"

    invoke-virtual {v13, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/fs/b/bl;->a:Ljava/lang/String;

    const-string v0, "/"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/estrongs/fs/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/fs/b/bl;->a:Ljava/lang/String;

    :goto_9
    iput-object v9, v1, Lcom/estrongs/fs/b/bl;->g:Ljava/lang/String;

    iput v12, v1, Lcom/estrongs/fs/b/bl;->c:I

    iput v10, v1, Lcom/estrongs/fs/b/bl;->d:I

    invoke-static {}, Lcom/estrongs/a/b/d;->c()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/estrongs/a/b/g;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/a/b/g;-><init>(Lcom/estrongs/a/b/e;Lcom/estrongs/fs/b/bl;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;Ljava/net/Socket;)Ljava/net/Socket;

    goto/16 :goto_2

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v1}, Lcom/estrongs/a/b/d;->d(Lcom/estrongs/a/b/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/estrongs/fs/b/bl;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/fs/b/bl;->a:Ljava/lang/String;

    goto :goto_9

    :cond_c
    const-string v0, "content-type"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "application/folder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/a/b/d;->c()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b00e0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/estrongs/fs/b/bl;

    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v5

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/fs/b/bl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;J)V

    const/4 v0, 0x2

    iput v0, v1, Lcom/estrongs/fs/b/bl;->b:I

    goto/16 :goto_9

    :cond_d
    const-string v0, "content-type"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "application/files"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/a/b/d;->c()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b00e1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/estrongs/fs/b/bl;

    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v5

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/fs/b/bl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;J)V

    const/4 v0, 0x3

    iput v0, v1, Lcom/estrongs/fs/b/bl;->b:I

    goto/16 :goto_9

    :cond_e
    const-string v0, "append-data"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "thumbnail-image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/a/b/d;->c()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b00e2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/estrongs/fs/b/bl;

    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v5

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/fs/b/bl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;J)V

    const-string v0, "image-width"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/estrongs/fs/b/bl;->m:I

    const-string v0, "image-height"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/estrongs/fs/b/bl;->n:I

    iget v0, v1, Lcom/estrongs/fs/b/bl;->m:I

    iget v2, v1, Lcom/estrongs/fs/b/bl;->n:I

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, v1, Lcom/estrongs/fs/b/bl;->l:[B

    move v0, v8

    :cond_f
    iget-object v2, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v2}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, v1, Lcom/estrongs/fs/b/bl;->l:[B

    iget-object v4, v1, Lcom/estrongs/fs/b/bl;->l:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_10

    :goto_a
    iget-object v2, v1, Lcom/estrongs/fs/b/bl;->l:[B

    array-length v2, v2

    if-ge v0, v2, :cond_12

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Read data error."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    add-int/2addr v0, v2

    iget-object v2, v1, Lcom/estrongs/fs/b/bl;->l:[B

    array-length v2, v2

    if-gt v2, v0, :cond_f

    goto :goto_a

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/a/b/d;->c()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b00e1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/estrongs/fs/b/bl;

    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;)Ljava/net/Socket;

    move-result-object v5

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/fs/b/bl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;J)V

    :cond_12
    const/4 v0, 0x1

    iput v0, v1, Lcom/estrongs/fs/b/bl;->b:I

    goto/16 :goto_9

    :cond_13
    iget-object v0, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    iget-object v1, p0, Lcom/estrongs/a/b/e;->a:Lcom/estrongs/a/b/d;

    invoke-static {v1}, Lcom/estrongs/a/b/d;->c(Lcom/estrongs/a/b/d;)Ljava/io/DataOutputStream;

    move-result-object v1

    const/16 v2, 0x194

    const-string v3, "Not found"

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/a/b/d;->a(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    return-void

    :cond_14
    move-object v9, v0

    goto/16 :goto_8

    :cond_15
    move v10, v8

    goto/16 :goto_7

    :cond_16
    move-object v1, v11

    goto/16 :goto_6

    :cond_17
    move v12, v8

    goto/16 :goto_5
.end method
