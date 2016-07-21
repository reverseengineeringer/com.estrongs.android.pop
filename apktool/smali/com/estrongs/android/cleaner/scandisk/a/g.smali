.class public Lcom/estrongs/android/cleaner/scandisk/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/cleaner/f;


# instance fields
.field protected final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private volatile d:Z

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Lcom/estrongs/android/cleaner/h;

.field private g:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/cleaner/e;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/estrongs/android/cleaner/i;

.field private i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/content/pm/PackageManager;

.field private final k:Ljava/lang/String;

.field private l:Lcom/estrongs/android/pop/ad;

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/estrongs/android/cleaner/i;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Obsolete Apks3"

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->b:Ljava/lang/String;

    iput v2, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->c:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->d:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->h:Lcom/estrongs/android/cleaner/i;

    new-instance v0, Lcom/estrongs/android/cleaner/h;

    invoke-direct {v0, v2}, Lcom/estrongs/android/cleaner/h;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->f:Lcom/estrongs/android/cleaner/h;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->f:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->f:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/cleaner/h;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->f:Lcom/estrongs/android/cleaner/h;

    const-string v1, "Obsolete Apks3"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->f:Lcom/estrongs/android/cleaner/h;

    const v1, 0x7f0801c7

    invoke-static {v1}, Lcom/estrongs/android/cleaner/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->j:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->k:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->l:Lcom/estrongs/android/pop/ad;

    const v0, 0x7f0801d4

    invoke-static {v0}, Lcom/estrongs/android/cleaner/j;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/estrongs/android/cleaner/h;Lcom/estrongs/fs/h;)V
    .locals 8

    const/4 v0, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v2}, Lcom/estrongs/android/cleaner/h;->c(I)V

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->i:Ljava/util/Set;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/estrongs/android/cleaner/j;->a()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->i:Ljava/util/Set;

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->m:Ljava/util/Set;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->m:Ljava/util/Set;

    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->m:Ljava/util/Set;

    const-string v4, "/sdcard/backups/apps"

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->m:Ljava/util/Set;

    iget-object v4, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->l:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/ad;->y()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->i:Ljava/util/Set;

    if-nez v3, :cond_4

    invoke-virtual {p1, v2}, Lcom/estrongs/android/cleaner/h;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v7}, Lcom/estrongs/android/cleaner/h;->c(I)V

    invoke-virtual {p1, v1}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->h:Lcom/estrongs/android/cleaner/i;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/estrongs/android/cleaner/i;->a(Ljava/lang/String;JZ)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1, v6}, Lcom/estrongs/android/cleaner/h;->c(I)V

    invoke-virtual {p1, v2}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->h:Lcom/estrongs/android/cleaner/i;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/estrongs/android/cleaner/i;->a(Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->j:Landroid/content/pm/PackageManager;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/utils/w;->d(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->j:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    :cond_5
    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->i:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v6}, Lcom/estrongs/android/cleaner/h;->c(I)V

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v7}, Lcom/estrongs/android/cleaner/h;->c(I)V

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->h:Lcom/estrongs/android/cleaner/i;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/estrongs/android/cleaner/i;->a(Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/estrongs/android/cleaner/h;->c(I)V

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move-object v3, v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/util/bk;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->k:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/estrongs/android/cleaner/scandisk/a/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/estrongs/android/cleaner/scandisk/a/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public a(Lcom/estrongs/android/cleaner/e;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Obsolete Apks3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/cleaner/scandisk/h;)V
    .locals 9

    const/4 v8, 0x1

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    :try_start_0
    const-string v1, "apk://"

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/estrongs/android/cleaner/scandisk/a/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    new-instance v4, Lcom/estrongs/android/cleaner/h;

    iget-object v5, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->f:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v5}, Lcom/estrongs/android/cleaner/h;->b()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->f:Lcom/estrongs/android/cleaner/h;

    invoke-direct {v4, v3, v5, v6}, Lcom/estrongs/android/cleaner/h;-><init>(IILcom/estrongs/android/cleaner/h;)V

    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Lcom/estrongs/android/cleaner/h;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/scandisk/a/g;->a()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/estrongs/android/cleaner/h;->b(I)V

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/estrongs/android/cleaner/h;->b(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/estrongs/android/cleaner/h;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/estrongs/android/cleaner/h;->a(J)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/estrongs/android/cleaner/h;->c(I)V

    invoke-static {v2}, Lcom/estrongs/android/cleaner/j;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/estrongs/android/cleaner/h;->c(Z)V

    invoke-direct {p0, v4, v0}, Lcom/estrongs/android/cleaner/scandisk/a/g;->a(Lcom/estrongs/android/cleaner/h;Lcom/estrongs/fs/h;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/e;

    invoke-interface {v0, v2}, Lcom/estrongs/android/cleaner/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "Obsolete Apks3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/e;

    const-string v2, "Obsolete Apks3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->f:Lcom/estrongs/android/cleaner/h;

    invoke-interface {v0, v2}, Lcom/estrongs/android/cleaner/e;->b(Lcom/estrongs/android/cleaner/h;)V

    goto :goto_1

    :cond_1
    const-string v0, "Obsolete Apks3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/e;

    const-string v2, "Obsolete Apks3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->f:Lcom/estrongs/android/cleaner/h;

    invoke-interface {v0, v2}, Lcom/estrongs/android/cleaner/e;->b(Lcom/estrongs/android/cleaner/h;)V

    goto :goto_2

    :cond_2
    iput-boolean v8, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->d:Z

    :goto_3
    return-void

    :cond_3
    iput-boolean v8, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->d:Z

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    const-string v0, "Obsolete Apks3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/e;

    const-string v3, "Obsolete Apks3"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->f:Lcom/estrongs/android/cleaner/h;

    invoke-interface {v0, v3}, Lcom/estrongs/android/cleaner/e;->b(Lcom/estrongs/android/cleaner/h;)V

    goto :goto_4

    :cond_4
    iput-boolean v8, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->d:Z

    throw v1
.end method

.method public b()V
    .locals 3

    const-string v0, "Obsolete Apks3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public b(Lcom/estrongs/android/cleaner/e;)V
    .locals 3

    const-string v0, "Obsolete Apks3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/estrongs/android/cleaner/e;)V
    .locals 3

    const-string v0, "Obsolete Apks3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->d:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "Obsolete Apks3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->f:Lcom/estrongs/android/cleaner/h;

    invoke-interface {p1, v0}, Lcom/estrongs/android/cleaner/e;->b(Lcom/estrongs/android/cleaner/h;)V

    :cond_0
    return-void
.end method

.method public d()Lcom/estrongs/android/cleaner/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/g;->f:Lcom/estrongs/android/cleaner/h;

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Filter:Obsolete Apks3"

    return-object v0
.end method
