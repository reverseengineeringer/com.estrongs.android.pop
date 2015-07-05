.class Lcom/baidu/mobstat/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/os/Message;

.field final synthetic b:Lcom/baidu/mobstat/Download;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/Download;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/mobstat/w;->b:Lcom/baidu/mobstat/Download;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/baidu/mobstat/w;->b:Lcom/baidu/mobstat/Download;

    invoke-static {v0}, Lcom/baidu/mobstat/Download;->a(Lcom/baidu/mobstat/Download;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/w;->a:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;)J
    .locals 12

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "User-Agent"

    const-string v5, "PacificHttpClient"

    invoke-virtual {v0, v1, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    iget-object v5, p0, Lcom/baidu/mobstat/w;->b:Lcom/baidu/mobstat/Download;

    invoke-static {v5}, Lcom/baidu/mobstat/Download;->c(Lcom/baidu/mobstat/Download;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    int-to-long v8, v1

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/baidu/mobstat/w;->b:Lcom/baidu/mobstat/Download;

    invoke-static {v5}, Lcom/baidu/mobstat/Download;->c(Lcom/baidu/mobstat/Download;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xa4cb800

    cmp-long v5, v6, v8

    if-gez v5, :cond_3

    iget-object v2, p0, Lcom/baidu/mobstat/w;->b:Lcom/baidu/mobstat/Download;

    invoke-static {v2}, Lcom/baidu/mobstat/Download;->a(Lcom/baidu/mobstat/Download;)Landroid/os/Handler;

    move-result-object v2

    sget v3, Lcom/baidu/mobstat/Download;->a:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0x194

    if-ne v5, v6, :cond_7

    iget-object v1, p0, Lcom/baidu/mobstat/w;->b:Lcom/baidu/mobstat/Download;

    invoke-static {v1}, Lcom/baidu/mobstat/Download;->a(Lcom/baidu/mobstat/Download;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/baidu/mobstat/Download;->b:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "fail!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    throw v0

    :cond_7
    const/16 v5, 0xa

    if-ge v1, v5, :cond_8

    :try_start_3
    iget-object v1, p0, Lcom/baidu/mobstat/w;->b:Lcom/baidu/mobstat/Download;

    invoke-static {v1}, Lcom/baidu/mobstat/Download;->a(Lcom/baidu/mobstat/Download;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/baidu/mobstat/Download;->b:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "fail!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    :try_start_4
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v5, p2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v4, 0x1000

    :try_start_5
    new-array v4, v4, [B

    move-wide v8, v2

    :goto_2
    invoke-virtual {v6, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_9

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v10, v7

    add-long/2addr v8, v10

    goto :goto_2

    :cond_9
    int-to-long v10, v1

    cmp-long v1, v8, v10

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/baidu/mobstat/w;->b:Lcom/baidu/mobstat/Download;

    invoke-static {v1}, Lcom/baidu/mobstat/Download;->a(Lcom/baidu/mobstat/Download;)Landroid/os/Handler;

    move-result-object v1

    sget v4, Lcom/baidu/mobstat/Download;->b:I

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_3
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_c
    move-wide v0, v2

    goto/16 :goto_0

    :cond_d
    :try_start_6
    iget-object v1, p0, Lcom/baidu/mobstat/w;->b:Lcom/baidu/mobstat/Download;

    invoke-static {v1}, Lcom/baidu/mobstat/Download;->a(Lcom/baidu/mobstat/Download;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/baidu/mobstat/Download;->a:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-wide v2, v8

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    move-object v4, v6

    goto :goto_1

    :catchall_3
    move-exception v1

    move-object v4, v6

    move-object v2, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_1
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/w;->b:Lcom/baidu/mobstat/Download;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/Download;->b(Lcom/baidu/mobstat/Download;Z)Z

    iget-object v0, p0, Lcom/baidu/mobstat/w;->a:Landroid/os/Message;

    sget v1, Lcom/baidu/mobstat/Download;->a:I

    iput v1, v0, Landroid/os/Message;->what:I

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/w;->b:Lcom/baidu/mobstat/Download;

    invoke-static {v0}, Lcom/baidu/mobstat/Download;->b(Lcom/baidu/mobstat/Download;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/w;->b:Lcom/baidu/mobstat/Download;

    invoke-static {v1}, Lcom/baidu/mobstat/Download;->c(Lcom/baidu/mobstat/Download;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobstat/w;->a(Ljava/lang/String;Ljava/io/File;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/baidu/mobstat/w;->b:Lcom/baidu/mobstat/Download;

    invoke-static {v0}, Lcom/baidu/mobstat/Download;->a(Lcom/baidu/mobstat/Download;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/baidu/mobstat/Download;->b:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
