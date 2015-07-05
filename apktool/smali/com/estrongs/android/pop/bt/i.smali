.class Lcom/estrongs/android/pop/bt/i;
.super Lb/b/f;


# instance fields
.field a:Ljava/util/Timer;

.field b:Z

.field c:Z

.field d:Lb/a/a/a;

.field final synthetic e:Lcom/estrongs/android/pop/bt/g;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/bt/g;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/i;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-direct {p0}, Lb/b/f;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/i;->a:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/i;->b:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/i;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/bt/g;Lcom/estrongs/android/pop/bt/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/i;-><init>(Lcom/estrongs/android/pop/bt/g;)V

    return-void
.end method


# virtual methods
.method public a(Lb/b/c;Lb/b/c;)I
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/i;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/i;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/16 v0, 0xa0

    return v0
.end method

.method public a(Lb/b/c;Lb/b/c;ZZ)I
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lb/b/f;->a(Lb/b/c;Lb/b/c;ZZ)I

    move-result v0

    return v0
.end method

.method public a(Lb/b/d;)I
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1}, Lb/b/d;->h()Lb/b/c;

    move-result-object v3

    const/4 v0, 0x1

    invoke-interface {v3, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x42

    invoke-interface {v3, v1}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/16 v0, 0xc0

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/i;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v1}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/bt/k;->a()V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/pop/bt/i;->e:Lcom/estrongs/android/pop/bt/g;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;Ljava/lang/String;)V

    const/16 v1, 0xc3

    invoke-interface {v3, v1}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/estrongs/android/pop/bt/i;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v3}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/k;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/estrongs/android/pop/bt/k;->b(I)V

    iget-object v3, p0, Lcom/estrongs/android/pop/bt/i;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v3}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/k;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/estrongs/android/pop/bt/k;->a(I)V

    :cond_1
    if-nez v0, :cond_4

    const-string v3, "temp"

    const-string v4, "tmp"

    invoke-static {}, Lcom/estrongs/android/pop/bt/g;->d()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    :goto_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-interface {p1}, Lb/b/d;->a()Ljava/io/InputStream;

    move-result-object v3

    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/estrongs/android/pop/bt/i;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v5}, Lcom/estrongs/android/pop/bt/g;->b(Lcom/estrongs/android/pop/bt/g;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    :cond_3
    invoke-interface {p1}, Lb/b/d;->e()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/i;->e:Lcom/estrongs/android/pop/bt/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/i;->c:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0xa0

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/i;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v1}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/bt/k;->a()V

    goto/16 :goto_0

    :cond_4
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/estrongs/android/pop/bt/g;->d()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "OBEXOppServer"

    const-string v2, "OBEX Server onPut error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v0, 0xd3

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/i;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v1}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/bt/k;->a()V

    goto/16 :goto_0

    :cond_5
    :try_start_4
    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_2

    rem-int/lit8 v5, v2, 0x64

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/estrongs/android/pop/bt/i;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v5}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/k;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/estrongs/android/pop/bt/k;->b(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/i;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v1}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/bt/k;->a()V

    throw v0
.end method

.method a()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/i;->b:Z

    if-nez v0, :cond_0

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX connection timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/i;->d:Lb/a/a/a;

    invoke-interface {v0}, Lb/a/a/a;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/i;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/i;->e:Lcom/estrongs/android/pop/bt/g;

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Lb/a/a/a;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/i;->e:Lcom/estrongs/android/pop/bt/g;

    const-string v1, "Client connected"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/i;->d:Lb/a/a/a;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/i;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/i;->a:Ljava/util/Timer;

    new-instance v1, Lcom/estrongs/android/pop/bt/j;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/bt/j;-><init>(Lcom/estrongs/android/pop/bt/i;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 3

    const-string v0, "OBEXOppServer"

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
    .locals 4

    const/16 v1, 0xd3

    :try_start_0
    invoke-interface {p1}, Lb/b/d;->h()Lb/b/c;

    move-result-object v2

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v0, 0x42

    invoke-interface {v2, v0}, Lb/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0xc0

    :goto_0
    return v0

    :cond_0
    const-string v2, "x-obex/capability"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "OBEXOppServer"

    const-string v3, "OBEX Server onGet error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public b(Lb/b/c;Lb/b/c;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/i;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/i;->e:Lcom/estrongs/android/pop/bt/g;

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/i;->b:Z

    return-void
.end method

.method public c(Lb/b/c;Lb/b/c;)I
    .locals 1

    invoke-super {p0, p1, p2}, Lb/b/f;->c(Lb/b/c;Lb/b/c;)I

    move-result v0

    return v0
.end method
