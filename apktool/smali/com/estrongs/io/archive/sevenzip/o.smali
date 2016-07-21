.class final Lcom/estrongs/io/archive/sevenzip/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/o;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:[Z

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Landroid/os/ConditionVariable;

.field final synthetic g:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/io/File;[ZLandroid/app/Activity;Ljava/lang/String;ZLandroid/os/ConditionVariable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/sevenzip/o;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/estrongs/io/archive/sevenzip/o;->b:[Z

    iput-object p3, p0, Lcom/estrongs/io/archive/sevenzip/o;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/estrongs/io/archive/sevenzip/o;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/estrongs/io/archive/sevenzip/o;->e:Z

    iput-object p6, p0, Lcom/estrongs/io/archive/sevenzip/o;->f:Landroid/os/ConditionVariable;

    iput-object p7, p0, Lcom/estrongs/io/archive/sevenzip/o;->g:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Z)V
    .locals 8

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/o;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_2

    new-instance v2, Lcom/estrongs/android/util/ao;

    invoke-direct {v2, v1}, Lcom/estrongs/android/util/ao;-><init>(Ljava/lang/Object;)V

    const-string v1, "setExecutable"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v3, v4}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setReadable"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v3, v4}, Lcom/estrongs/android/util/ao;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/o;->b:[Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/o;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/o;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/io/archive/sevenzip/f;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/estrongs/io/archive/sevenzip/o;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/o;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/o;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "777"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/fs/impl/local/m;->a(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/o;->b:[Z

    aput-boolean v7, v0, v7

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/o;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/o;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/io/archive/sevenzip/f;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/o;->b:[Z

    aput-boolean v7, v0, v7

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/o;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/o;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/io/archive/sevenzip/f;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/o;->c:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/io/archive/sevenzip/p;

    invoke-direct {v1, p0}, Lcom/estrongs/io/archive/sevenzip/p;-><init>(Lcom/estrongs/io/archive/sevenzip/o;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
