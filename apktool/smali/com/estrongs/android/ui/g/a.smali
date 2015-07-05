.class public Lcom/estrongs/android/ui/g/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/ui/g/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/g/a;->a:Lcom/estrongs/android/ui/g/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/g/a;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/estrongs/android/ui/g/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/g/a;->d()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/g/a;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/g/a;->f()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/ui/g/a;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/g/a;->a:Lcom/estrongs/android/ui/g/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/g/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/g/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/ui/g/a;->a:Lcom/estrongs/android/ui/g/a;

    :cond_0
    sget-object v0, Lcom/estrongs/android/ui/g/a;->a:Lcom/estrongs/android/ui/g/a;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/g/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/g/a;->g()V

    return-void
.end method

.method private b(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aI()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/ak;->b()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/util/ak;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/estrongs/android/ui/g/a;->a:Lcom/estrongs/android/ui/g/a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/ui/g/a;->a:Lcom/estrongs/android/ui/g/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/g/a;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/g/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/c;->i()V

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/g/a;->a:Lcom/estrongs/android/ui/g/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private d()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/g/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pushInfo.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/g/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/g/a;->c:Ljava/util/List;

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/util/ak;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/g/c;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/ui/g/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/g/c;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/e;->a:Ljava/lang/String;

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "cn"

    :cond_2
    :goto_0
    const-string v1, "http://www.estrongs.com/console/service/0918/?"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/g/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/util/am;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pushInfo.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/util/y;

    invoke-direct {v2, v0}, Lcom/estrongs/android/util/y;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/ui/g/b;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/g/b;-><init>(Lcom/estrongs/android/ui/g/a;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/estrongs/android/util/y;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/y;->a(Lcom/estrongs/android/util/ab;)V

    invoke-virtual {v2}, Lcom/estrongs/android/util/y;->c()V

    return-void

    :cond_3
    const-string v0, "en"

    goto :goto_0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aH()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/g/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pushInfo.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/g/a;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lcom/estrongs/android/ui/g/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/g/a;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/g/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/g/a;->e()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(I)Lcom/estrongs/android/ui/g/c;
    .locals 7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/estrongs/android/ui/g/a;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/g/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v3

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/g/c;

    iget-object v5, p0, Lcom/estrongs/android/ui/g/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/g/c;->f(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/estrongs/android/ui/g/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/g/c;->i(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/c;->g()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "action_recomm_pcs"

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/android/ui/pcs/r;->c()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/c;->e()I

    move-result v5

    if-le v5, p1, :cond_2

    iget-object v5, p0, Lcom/estrongs/android/ui/g/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/g/c;->d(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_7

    monitor-exit v3

    move-object v0, v1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/g/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/c;->f()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_2

    :cond_8
    if-nez v2, :cond_9

    monitor-exit v3

    move-object v0, v1

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/g/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/c;->f()I

    move-result v5

    sub-int/2addr v2, v5

    if-gez v2, :cond_a

    monitor-exit v3

    goto/16 :goto_0

    :cond_b
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/g/a;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/g/a;->f()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/ui/g/a;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/g/c;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/estrongs/android/ui/g/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/g/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    monitor-exit v3

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public b()Lcom/estrongs/android/ui/g/c;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/estrongs/android/ui/g/a;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/ui/g/a;->c:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/g/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/g/a;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/g/c;

    const-string v4, "com.baidu.appsearch"

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    monitor-exit v3

    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/g/a;->a(Z)V

    :cond_2
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
