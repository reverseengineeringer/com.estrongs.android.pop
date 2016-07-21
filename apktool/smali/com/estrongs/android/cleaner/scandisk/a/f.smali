.class public Lcom/estrongs/android/cleaner/scandisk/a/f;
.super Lcom/estrongs/android/cleaner/scandisk/a/a;


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:I

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

.field private k:Lcom/estrongs/android/pop/ad;

.field private l:Ljava/util/Set;
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
.method public constructor <init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/cleaner/i;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0801c7

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/cleaner/scandisk/a/a;-><init>(Lcom/estrongs/android/cleaner/i;Ljava/util/List;I)V

    const-string v0, "Obsolete Apks"

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->g:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->h:I

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->j:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->k:Lcom/estrongs/android/pop/ad;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/estrongs/android/cleaner/scandisk/a/f;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/estrongs/android/util/ap;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->A()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/cleaner/j;->c()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/Download/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Download/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/estrongs/android/cleaner/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected a(Lcom/estrongs/android/cleaner/h;Lcom/estrongs/android/cleaner/scandisk/i;)V
    .locals 8

    const/4 v0, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v2}, Lcom/estrongs/android/cleaner/h;->c(I)V

    iget-object v3, p2, Lcom/estrongs/android/cleaner/scandisk/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->i:Ljava/util/Set;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/estrongs/android/cleaner/j;->a()Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->i:Ljava/util/Set;

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->l:Ljava/util/Set;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->l:Ljava/util/Set;

    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->l:Ljava/util/Set;

    const-string v4, "/sdcard/backups/apps"

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->l:Ljava/util/Set;

    iget-object v4, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->k:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/ad;->y()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->i:Ljava/util/Set;

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p2, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v7}, Lcom/estrongs/android/cleaner/h;->c(I)V

    invoke-virtual {p1, v1}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->f:Lcom/estrongs/android/cleaner/i;

    iget-object v2, p2, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    iget-wide v4, p2, Lcom/estrongs/android/cleaner/scandisk/i;->d:J

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/estrongs/android/cleaner/i;->a(Ljava/lang/String;JZ)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    invoke-virtual {p1, v6}, Lcom/estrongs/android/cleaner/h;->c(I)V

    invoke-virtual {p1, v2}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->f:Lcom/estrongs/android/cleaner/i;

    iget-object v1, p2, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    iget-wide v4, p2, Lcom/estrongs/android/cleaner/scandisk/i;->d:J

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/estrongs/android/cleaner/i;->a(Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->j:Landroid/content/pm/PackageManager;

    iget-object v4, p2, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/utils/w;->d(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    iput-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    iput-object v5, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->j:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lcom/estrongs/android/cleaner/h;->d(Ljava/lang/String;)V

    :cond_5
    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->i:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v6}, Lcom/estrongs/android/cleaner/h;->c(I)V

    const-string v0, "Obsolete Apks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apk installed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p2, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v7}, Lcom/estrongs/android/cleaner/h;->c(I)V

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Lcom/estrongs/android/cleaner/h;->a(Z)V

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/a/f;->f:Lcom/estrongs/android/cleaner/i;

    iget-object v2, p2, Lcom/estrongs/android/cleaner/scandisk/i;->a:Ljava/lang/String;

    iget-wide v4, p2, Lcom/estrongs/android/cleaner/scandisk/i;->d:J

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/estrongs/android/cleaner/i;->a(Ljava/lang/String;JZ)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/estrongs/android/cleaner/h;->c(I)V

    const-string v0, "Obsolete Apks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apk uninstalled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move-object v3, v0

    goto :goto_1
.end method

.method protected a(Lcom/estrongs/android/cleaner/scandisk/i;)Z
    .locals 2

    iget-object v0, p1, Lcom/estrongs/android/cleaner/scandisk/i;->b:Ljava/lang/String;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected c(Lcom/estrongs/android/cleaner/scandisk/h;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Lcom/estrongs/android/cleaner/scandisk/h;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/estrongs/android/cleaner/scandisk/h;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/cleaner/scandisk/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "Obsolete Apks"

    return-object v0
.end method
