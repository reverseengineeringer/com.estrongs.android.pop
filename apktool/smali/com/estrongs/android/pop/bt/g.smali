.class public Lcom/estrongs/android/pop/bt/g;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/UUID;

.field private b:Lb/b/g;

.field private c:Z

.field private d:Z

.field private e:Lcom/estrongs/android/pop/bt/k;


# direct methods
.method static synthetic a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/g;->e:Lcom/estrongs/android/pop/bt/k;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/bt/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/g;->e:Lcom/estrongs/android/pop/bt/k;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/bt/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/bt/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/g;->c:Z

    return v0
.end method

.method static synthetic d()Ljava/io/File;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/bt/g;->f()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private e()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static f()Ljava/io/File;
    .locals 2

    const-string v0, "/sdcard"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/g;->c:Z

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/bt/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OBEX Object Push"

    iget-object v2, p0, Lcom/estrongs/android/pop/bt/g;->a:Ljava/util/UUID;

    invoke-static {v0, v2}, Lcom/estrongs/bluetooth/c;->a(Ljava/lang/String;Ljava/util/UUID;)Lb/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/g;->b:Lb/b/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/g;->d:Z

    move v0, v1

    move v3, v1

    :goto_0
    iget-boolean v2, p0, Lcom/estrongs/android/pop/bt/g;->c:Z

    if-nez v2, :cond_1

    new-instance v4, Lcom/estrongs/android/pop/bt/i;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v2}, Lcom/estrongs/android/pop/bt/i;-><init>(Lcom/estrongs/android/pop/bt/g;Lcom/estrongs/android/pop/bt/h;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v0, 0x1

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/g;->b:Lb/b/g;

    invoke-interface {v0, v4}, Lb/b/g;->a(Lb/b/f;)Lb/a/a/a;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/estrongs/android/pop/bt/i;->a(Lb/a/a/a;)V
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    move v3, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OBEXOppServer"

    const-string v2, "Unable to create notifier"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/g;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/g;->c()V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/g;->d:Z

    :goto_1
    return-void

    :catch_2
    move-exception v0

    :try_start_4
    const-string v4, "Stack closed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/g;->c:Z

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/g;->c:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/g;->c()V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/g;->d:Z

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/g;->c()V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/g;->d:Z

    throw v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/g;->d:Z

    return v0
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/g;->c:Z

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/g;->b:Lb/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/g;->b:Lb/b/g;

    invoke-interface {v0}, Lb/b/g;->e()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/g;->d:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OBEXOppServer"

    const-string v2, "OBEX Server stop error"

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/util/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
