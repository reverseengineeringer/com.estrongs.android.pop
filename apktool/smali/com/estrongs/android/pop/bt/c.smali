.class Lcom/estrongs/android/pop/bt/c;
.super Lb/b/f;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/bt/a;

.field private b:Ljava/util/Timer;

.field private c:Z

.field private d:Z

.field private e:Lb/a/a/a;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/bt/a;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-direct {p0}, Lb/b/f;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/c;->b:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/c;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/bt/a;Lcom/estrongs/android/pop/bt/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/c;-><init>(Lcom/estrongs/android/pop/bt/a;)V

    return-void
.end method

.method private c()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Lb/b/c;Lb/b/c;)I
    .locals 6

    const/16 v2, 0xc0

    const/16 v1, 0xa0

    const-string v0, "OBEXFtpServer"

    const-string v3, "OBEX onConnect"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x46

    :try_start_0
    invoke-interface {p1, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-nez v0, :cond_2

    :cond_1
    const/16 v0, 0xcb

    new-instance v3, Ljava/lang/Long;

    iget v4, p0, Lcom/estrongs/android/pop/bt/c;->h:I

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p2, v0, v3}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/16 v0, 0x4a

    invoke-static {}, Lcom/estrongs/android/pop/bt/a;->d()[B

    move-result-object v3

    invoke-interface {p2, v0, v3}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public a(Lb/b/c;Lb/b/c;ZZ)I
    .locals 8

    const/16 v1, 0xc4

    const/16 v2, 0xc0

    const-string v0, "OBEXFtpServer"

    const-string v3, "OBEX onSetPath"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    if-nez v0, :cond_0

    const/16 v0, 0xa4

    :goto_0
    return v0

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/c;->g:Ljava/lang/String;

    :cond_1
    const/16 v0, 0xcb

    :try_start_0
    invoke-interface {p1, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v0, p0, Lcom/estrongs/android/pop/bt/c;->h:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    const/16 v0, 0xd3

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    :cond_3
    if-nez p3, :cond_5

    if-nez p4, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/a;->b(Lcom/estrongs/android/pop/bt/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    :cond_4
    :goto_1
    const/16 v0, 0xa0

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_7

    if-nez p4, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/a;->b(Lcom/estrongs/android/pop/bt/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/bt/a;->b(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/a;->b(Lcom/estrongs/android/pop/bt/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    goto :goto_1

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/bt/a;->c(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Z

    move-result v3

    if-nez p4, :cond_a

    if-nez v3, :cond_a

    move v0, v1

    goto/16 :goto_0

    :cond_a
    iput-object v0, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    if-eqz p4, :cond_4

    if-nez v3, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/bt/a;->d(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public a(Lb/b/d;)I
    .locals 10

    const/16 v1, 0xd3

    const/4 v2, 0x0

    const-string v0, "OBEXFtpServer"

    const-string v3, "OBEX onPut"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    if-nez v0, :cond_0

    const/16 v0, 0xa4

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lb/b/d;->h()Lb/b/c;

    move-result-object v4

    const/16 v0, 0xcb

    invoke-interface {v4, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v0, p0, Lcom/estrongs/android/pop/bt/c;->h:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    const-string v0, "OBEXFtpServer"

    const-string v2, "OBEX onPut ends"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/a;->c(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/bt/k;->a()V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v4, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v3, "OBEXFtpServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receiving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V

    move-object v3, v0

    :goto_1
    const/16 v0, 0xc3

    invoke-interface {v4, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    const-string v4, "OBEXFtpServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file lenght:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v4}, Lcom/estrongs/android/pop/bt/a;->c(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/estrongs/android/pop/bt/k;->b(I)V

    iget-object v4, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v4}, Lcom/estrongs/android/pop/bt/a;->c(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/estrongs/android/pop/bt/k;->a(I)V

    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :cond_3
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v7, 0x10000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-interface {p1}, Lb/b/d;->a()Ljava/io/InputStream;

    move-result-object v7

    const/high16 v8, 0x10000

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/high16 v7, 0x10000

    new-array v7, v7, [B

    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v8}, Lcom/estrongs/android/pop/bt/a;->d(Lcom/estrongs/android/pop/bt/a;)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x0

    const/high16 v9, 0x10000

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    const-string v0, "OBEXFtpServer"

    const-string v2, "EOS received"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    invoke-interface {p1}, Lb/b/d;->e()V

    const-string v0, "OBEXFtpServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file saved:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->d:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/bt/c;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0xa0

    const-string v1, "OBEXFtpServer"

    const-string v2, "OBEX onPut ends"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/bt/a;->c(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/bt/k;->a()V

    goto/16 :goto_0

    :cond_6
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt_received.tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    const-string v5, "Receiving file"

    invoke-static {v3, v5}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V

    move-object v3, v0

    goto/16 :goto_1

    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v2, v8

    if-eqz v0, :cond_4

    rem-int/lit8 v8, v2, 0x64

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v8}, Lcom/estrongs/android/pop/bt/a;->c(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;

    move-result-object v8

    invoke-interface {v8, v2}, Lcom/estrongs/android/pop/bt/k;->b(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "OBEXFtpServer"

    const-string v3, "OBEX Server onPut error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v0, "OBEXFtpServer"

    const-string v2, "OBEX onPut ends"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/a;->c(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/bt/k;->a()V

    move v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "OBEXFtpServer"

    const-string v2, "OBEX onPut ends"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/bt/a;->c(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/bt/k;->a()V

    throw v0
.end method

.method public a()V
    .locals 2

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX notConnectedClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    if-nez v0, :cond_0

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX connection timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->e:Lb/a/a/a;

    invoke-interface {v0}, Lb/a/a/a;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lb/a/a/a;I)V
    .locals 4

    const-string v0, "OBEXFtpServer"

    const-string v1, "Received OBEX connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    const-string v1, "Client connected"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/c;->e:Lb/a/a/a;

    iput p2, p0, Lcom/estrongs/android/pop/bt/c;->h:I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->b:Ljava/util/Timer;

    new-instance v1, Lcom/estrongs/android/pop/bt/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/bt/d;-><init>(Lcom/estrongs/android/pop/bt/c;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 3

    const-string v0, "OBEXFtpServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OBEX AuthFailure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Lb/b/d;)I
    .locals 8

    const/16 v3, 0xa0

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    if-nez v0, :cond_0

    const/16 v0, 0xa4

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lb/b/d;->h()Lb/b/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v0, 0xc0

    const-string v1, "OBEXFtpServer"

    const-string v2, "OBEX onGet ends"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/16 v0, 0x42

    :try_start_1
    invoke-interface {v2, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v4, 0xcb

    invoke-interface {v2, v4}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v2, p0, Lcom/estrongs/android/pop/bt/c;->h:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    const/16 v0, 0xd3

    const-string v1, "OBEXFtpServer"

    const-string v2, "OBEX onGet ends"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    :try_start_2
    const-string v2, "x-obex/folder-listing"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/a;->e(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/bluetooth/parser/a;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    iget-object v4, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    invoke-static {v2, v4, v1}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/c;->b()Lb/b/c;

    move-result-object v2

    const/16 v4, 0xcb

    new-instance v5, Ljava/lang/Long;

    iget v6, p0, Lcom/estrongs/android/pop/bt/c;->h:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v2, v4, v5}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/16 v4, 0xc3

    new-instance v5, Ljava/lang/Long;

    array-length v6, v0

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v2, v4, v5}, Lb/b/c;->a(ILjava/lang/Object;)V

    const/4 v4, 0x1

    invoke-interface {v2, v4, v1}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {p1, v2}, Lb/b/d;->b(Lb/b/c;)V

    invoke-interface {p1}, Lb/b/d;->d()Ljava/io/DataOutputStream;

    move-result-object v1

    const/4 v2, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-interface {p1}, Lb/b/d;->e()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onGet ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto/16 :goto_0

    :cond_3
    if-nez v1, :cond_4

    :try_start_3
    invoke-interface {p1}, Lb/b/d;->h()Lb/b/c;

    move-result-object v0

    const/16 v1, 0x49

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-interface {v0, v1, v2}, Lb/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lb/b/d;->b(Lb/b/c;)V

    invoke-interface {p1}, Lb/b/d;->e()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onGet ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto/16 :goto_0

    :cond_4
    :try_start_4
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v0, 0x10000

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-interface {p1}, Lb/b/d;->c()Ljava/io/OutputStream;

    move-result-object v2

    const/high16 v4, 0x10000

    invoke-direct {v0, v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/high16 v2, 0x10000

    new-array v2, v2, [B

    :goto_1
    const/4 v4, 0x0

    const/high16 v5, 0x10000

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "OBEXFtpServer"

    const-string v2, "OBEX Server onGet error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v0, 0xd3

    const-string v1, "OBEXFtpServer"

    const-string v2, "OBEX onGet ends"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    invoke-interface {p1}, Lb/b/d;->e()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onGet ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "OBEXFtpServer"

    const-string v2, "OBEX onGet ends"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public b(Lb/b/c;Lb/b/c;)V
    .locals 2

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    return-void
.end method

.method public c(Lb/b/c;Lb/b/c;)I
    .locals 4

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onDelete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    if-nez v0, :cond_0

    const/16 v0, 0xa4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xcb

    :try_start_0
    invoke-interface {p1, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p0, Lcom/estrongs/android/pop/bt/c;->h:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0xd3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/16 v0, 0xc0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/bt/a;->c(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v0, 0xc4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/bt/a;->e(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xa0

    goto :goto_0

    :cond_5
    const/16 v0, 0xc3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0, p1, p2}, Lb/b/f;->c(Lb/b/c;Lb/b/c;)I

    move-result v0

    goto :goto_0
.end method
