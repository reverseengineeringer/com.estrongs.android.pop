.class public Lcom/estrongs/android/cleaner/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/cleaner/h;

.field private b:Lcom/estrongs/android/cleaner/e;

.field private volatile c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/cleaner/h;

    invoke-direct {v0, v1}, Lcom/estrongs/android/cleaner/h;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/a/a;->a:Lcom/estrongs/android/cleaner/h;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a;->a:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/cleaner/h;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a;->a:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a;->a:Lcom/estrongs/android/cleaner/h;

    const-string v1, "Memory"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a;->a:Lcom/estrongs/android/cleaner/h;

    const v1, 0x7f0801ca

    invoke-static {v1}, Lcom/estrongs/android/cleaner/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    const v0, 0x7f0801d4

    invoke-static {v0}, Lcom/estrongs/android/cleaner/j;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/a/a;->d:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/cleaner/a/a;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/cleaner/a/a;)Lcom/estrongs/android/cleaner/e;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a;->b:Lcom/estrongs/android/cleaner/e;

    return-object v0
.end method

.method private a(Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/cleaner/a/c;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-boolean v1, p0, Lcom/estrongs/android/cleaner/a/a;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/estrongs/android/cleaner/a/a/b;->a()Lcom/estrongs/android/cleaner/a/a/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/estrongs/android/cleaner/a/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/estrongs/android/cleaner/a/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/estrongs/android/cleaner/a/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/cleaner/a/c;-><init>(Lcom/estrongs/android/cleaner/a/a;)V

    invoke-interface {p3, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iput-object v4, v1, Lcom/estrongs/android/cleaner/a/c;->a:Ljava/lang/String;

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v1, v0}, Lcom/estrongs/android/cleaner/a/c;->a(I)V

    goto :goto_0

    :cond_3
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/cleaner/a/c;

    goto :goto_1
.end method

.method private a(Landroid/app/ActivityManager;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/cleaner/a/c;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/cleaner/a/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/cleaner/a/c;->a()[I

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/cleaner/a/c;->a()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v6

    const-wide/16 v4, 0x0

    array-length v7, v6

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_1

    aget-object v8, v6, v2

    invoke-virtual {v8}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v9

    invoke-virtual {v8}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v8

    add-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v4, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v7, p0, Lcom/estrongs/android/cleaner/a/a;->a:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v7}, Lcom/estrongs/android/cleaner/h;->b()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/estrongs/android/cleaner/a/a;->a:Lcom/estrongs/android/cleaner/h;

    invoke-direct {v2, v6, v7, v8}, Lcom/estrongs/android/cleaner/h;-><init>(IILcom/estrongs/android/cleaner/h;)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/cleaner/h;->b(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/estrongs/android/cleaner/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {v2, v1}, Lcom/estrongs/android/cleaner/h;->a(I)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/estrongs/android/cleaner/h;->b(I)V

    const/16 v1, 0xa

    shl-long/2addr v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/estrongs/android/cleaner/h;->a(J)V

    iget-object v1, p0, Lcom/estrongs/android/cleaner/a/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/cleaner/h;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/cleaner/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/cleaner/a/a;Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/cleaner/a/a;->a(Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/cleaner/a/a;Landroid/app/ActivityManager;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/cleaner/a/a;->a(Landroid/app/ActivityManager;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/h;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/cleaner/a/a;->a(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/cleaner/a/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/cleaner/a/a;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/cleaner/a/a;)Lcom/estrongs/android/cleaner/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a;->a:Lcom/estrongs/android/cleaner/h;

    return-object v0
.end method

.method private b(Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/cleaner/a/c;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-boolean v1, p0, Lcom/estrongs/android/cleaner/a/a;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/estrongs/android/cleaner/a/a/b;->a()Lcom/estrongs/android/cleaner/a/a/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/estrongs/android/cleaner/a/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/estrongs/android/cleaner/a/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p3, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/estrongs/android/cleaner/a/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/cleaner/a/c;-><init>(Lcom/estrongs/android/cleaner/a/a;)V

    invoke-interface {p3, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iput-object v4, v1, Lcom/estrongs/android/cleaner/a/c;->a:Ljava/lang/String;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v1, v0}, Lcom/estrongs/android/cleaner/a/c;->a(I)V

    goto :goto_0

    :cond_3
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/cleaner/a/c;

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/android/cleaner/a/a;Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/cleaner/a/a;->b(Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/a/a;->d()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/cleaner/a/b;

    invoke-direct {v1, p0}, Lcom/estrongs/android/cleaner/a/b;-><init>(Lcom/estrongs/android/cleaner/a/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Lcom/estrongs/android/cleaner/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/cleaner/a/a;->b:Lcom/estrongs/android/cleaner/e;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/cleaner/a/a;->c:Z

    return-void
.end method

.method public b(Lcom/estrongs/android/cleaner/e;)V
    .locals 0

    return-void
.end method

.method public c()Lcom/estrongs/android/cleaner/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a;->a:Lcom/estrongs/android/cleaner/h;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/a/a;->a:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/cleaner/a/a;->a(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
