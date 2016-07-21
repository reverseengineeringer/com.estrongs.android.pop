.class public final Lcom/dianxinos/library/notify/dispatcher/b;
.super Landroid/os/Handler;


# static fields
.field private static a:Lcom/dianxinos/library/notify/dispatcher/b;

.field private static final b:I

.field private static final c:I

.field private static g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/dianxinos/library/notify/data/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Z

.field private e:Z

.field private f:J

.field private h:Lcom/dianxinos/library/dxbase/h;

.field private i:Lcom/dianxinos/library/dxbase/h;

.field private j:Lcom/dianxinos/library/dxbase/h;

.field private k:Lcom/dianxinos/library/dxbase/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v1, 0x3e8

    const/4 v0, 0x0

    sput-object v0, Lcom/dianxinos/library/notify/dispatcher/b;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->b:Z

    if-eqz v0, :cond_0

    :cond_0
    sput v1, Lcom/dianxinos/library/notify/dispatcher/b;->b:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x404d800000000000L    # 59.0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/dianxinos/library/notify/dispatcher/b;->c:I

    new-instance v0, Lcom/dianxinos/library/notify/dispatcher/i;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/dispatcher/i;-><init>()V

    sput-object v0, Lcom/dianxinos/library/notify/dispatcher/b;->g:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-boolean v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->d:Z

    iput-boolean v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->e:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->f:J

    new-instance v0, Lcom/dianxinos/library/notify/dispatcher/o;

    invoke-direct {v0, p0}, Lcom/dianxinos/library/notify/dispatcher/o;-><init>(Lcom/dianxinos/library/notify/dispatcher/b;)V

    iput-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->h:Lcom/dianxinos/library/dxbase/h;

    new-instance v0, Lcom/dianxinos/library/notify/dispatcher/d;

    invoke-direct {v0, p0}, Lcom/dianxinos/library/notify/dispatcher/d;-><init>(Lcom/dianxinos/library/notify/dispatcher/b;)V

    iput-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->i:Lcom/dianxinos/library/dxbase/h;

    new-instance v0, Lcom/dianxinos/library/notify/dispatcher/e;

    invoke-direct {v0, p0}, Lcom/dianxinos/library/notify/dispatcher/e;-><init>(Lcom/dianxinos/library/notify/dispatcher/b;)V

    iput-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->j:Lcom/dianxinos/library/dxbase/h;

    new-instance v0, Lcom/dianxinos/library/notify/dispatcher/f;

    invoke-direct {v0, p0}, Lcom/dianxinos/library/notify/dispatcher/f;-><init>(Lcom/dianxinos/library/notify/dispatcher/b;)V

    iput-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->k:Lcom/dianxinos/library/dxbase/h;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/library/notify/dispatcher/b;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Lcom/dianxinos/library/notify/data/j;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/h/c;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/b;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "without usable splash"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_3
    sget-object v2, Lcom/dianxinos/library/notify/dispatcher/b;->g:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    iget-object v3, v0, Lcom/dianxinos/library/notify/data/j;->e:Lcom/dianxinos/library/notify/data/ShowRule;

    if-eqz v3, :cond_4

    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    invoke-virtual {v4}, Lcom/dianxinos/library/notify/data/i;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4, v0}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/data/j;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_5
    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    invoke-virtual {v4}, Lcom/dianxinos/library/notify/data/i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v4, v0}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/data/j;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_6
    invoke-virtual {v3, p0}, Lcom/dianxinos/library/notify/data/ShowRule;->a(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/dianxinos/library/notify/h/b;->b(Ljava/lang/String;Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z

    goto :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/dianxinos/library/notify/dispatcher/b;
    .locals 3

    const-class v1, Lcom/dianxinos/library/notify/dispatcher/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/library/notify/dispatcher/b;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/library/notify/dispatcher/b;

    invoke-static {}, Lcom/dianxinos/library/dxbase/o;->c()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dianxinos/library/notify/dispatcher/b;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/dianxinos/library/notify/dispatcher/b;->a:Lcom/dianxinos/library/notify/dispatcher/b;

    :cond_0
    sget-object v0, Lcom/dianxinos/library/notify/dispatcher/b;->a:Lcom/dianxinos/library/notify/dispatcher/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/dianxinos/library/notify/data/j;Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/dispatcher/p;
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/library/notify/data/j;->h:Lcom/dianxinos/library/notify/data/Works;

    invoke-virtual {v0, p1}, Lcom/dianxinos/library/notify/data/Works;->getWorkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dianxinos/library/notify/dispatcher/p;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/dispatcher/p;-><init>()V

    iget-object v2, p0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/dianxinos/library/notify/dispatcher/p;->a:Ljava/lang/String;

    const-string v2, "download"

    iput-object v2, v0, Lcom/dianxinos/library/notify/dispatcher/p;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/dianxinos/library/notify/dispatcher/p;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/dianxinos/library/notify/dispatcher/p;->c:Ljava/lang/String;

    iput-object p2, v0, Lcom/dianxinos/library/notify/dispatcher/p;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/dianxinos/library/notify/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dianxinos/library/notify/j/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, Lcom/dianxinos/library/notify/j/e;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/dispatcher/q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/dispatcher/q;->b(Ljava/lang/String;I)V

    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/dianxinos/library/notify/h/c;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v2, v0}, Lcom/dianxinos/library/notify/g/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "install"

    iget-object v2, v1, Lcom/dianxinos/library/notify/data/j;->h:Lcom/dianxinos/library/notify/data/Works;

    invoke-virtual {v2, v0}, Lcom/dianxinos/library/notify/data/Works;->getNextWork(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/dianxinos/library/notify/data/j;->h:Lcom/dianxinos/library/notify/data/Works;

    invoke-virtual {v3, v2}, Lcom/dianxinos/library/notify/data/Works;->getWorkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/dianxinos/library/notify/b/a;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/d;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/dianxinos/library/notify/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/dianxinos/library/notify/dispatcher/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/library/notify/dispatcher/b;->c()V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/library/notify/dispatcher/b;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dianxinos/library/notify/dispatcher/b;->b(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/dianxinos/library/notify/h/e;->a()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/dianxinos/library/notify/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/dianxinos/library/notify/parser/d;->b(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/dianxinos/library/notify/h/e;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/dianxinos/library/notify/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/dianxinos/library/notify/parser/d;->b(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "splash id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/dianxinos/library/notify/h/e;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/dianxinos/library/notify/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Lcom/dianxinos/library/notify/parser/d;->b(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pandora id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/dianxinos/library/notify/h/e;->d()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/dianxinos/library/notify/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v0}, Lcom/dianxinos/library/notify/parser/d;->g(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/b;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-boolean v4, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data pipe id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/dianxinos/library/notify/data/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/dianxinos/library/notify/data/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_a
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/h/c;->e()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dianxinos/library/notify/h/c;->a(Lcom/dianxinos/library/notify/data/j;)Lcom/dianxinos/library/notify/data/j;

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/data/j;->a()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/dianxinos/library/notify/h/c;->b(Lcom/dianxinos/library/notify/data/j;)Z

    goto :goto_4

    :cond_d
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/b;

    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dianxinos/library/notify/h/c;->a(Lcom/dianxinos/library/notify/data/b;)Lcom/dianxinos/library/notify/data/b;

    goto :goto_5

    :cond_e
    invoke-static {}, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->loadStrategy()Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->setActiveStrategy(Lcom/dianxinos/library/notify/parser/NotifyStrategy;)V

    :cond_f
    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/dispatcher/b;->b(Ljava/util/Set;)V

    :cond_10
    invoke-direct {p0}, Lcom/dianxinos/library/notify/dispatcher/b;->h()Z

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_0

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/dianxinos/library/notify/data/j;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/dianxinos/library/notify/j/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dianxinos/library/notify/data/j;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/dianxinos/library/notify/h/e;->b()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/dianxinos/library/notify/h/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/notify/parser/d;->b(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private b(ILjava/lang/Object;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/dianxinos/library/notify/dispatcher/b;->a(ILjava/lang/Object;J)V

    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Lcom/dianxinos/library/notify/f;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Lcom/dianxinos/library/notify/data/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dianxinos/library/notify/f;->a(Lcom/dianxinos/library/notify/data/j;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/dianxinos/library/notify/dispatcher/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/library/notify/dispatcher/b;->d()V

    return-void
.end method

.method private b(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new data pipe arrive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dianxinos/library/notify/h/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/dianxinos/library/notify/b/b;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/e;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3, v0, v2}, Lcom/dianxinos/library/notify/e;->onDataArrive(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/h/c;->c()Ljava/util/List;

    move-result-object v0

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perform run pandora item size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    sget-object v1, Lcom/dianxinos/library/notify/dispatcher/b;->g:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    iget-object v3, v0, Lcom/dianxinos/library/notify/data/j;->e:Lcom/dianxinos/library/notify/data/ShowRule;

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " without show rule"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->NORMAL:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    invoke-virtual {v3, v4}, Lcom/dianxinos/library/notify/data/ShowRule;->a(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "check failure"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    invoke-virtual {v3}, Lcom/dianxinos/library/notify/data/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v3, v0}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/data/j;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bkg file not exist"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, v0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    invoke-virtual {v3}, Lcom/dianxinos/library/notify/data/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3, v0}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/data/j;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " essential file not exist"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    iget-object v2, v0, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/dianxinos/library/notify/b/a;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/d;

    move-result-object v2

    if-nez v2, :cond_a

    sget-boolean v2, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display container is null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "display failed,try to show next item if exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin to show the highest priority notify item,notifyId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_b
    iget-object v3, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/dianxinos/library/notify/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    sget-object v5, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->NORMAL:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    invoke-static {v4, v5}, Lcom/dianxinos/library/notify/h/b;->b(Ljava/lang/String;Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/dianxinos/library/notify/h/b;->a(Ljava/lang/String;J)Z

    goto :goto_1
.end method

.method private c(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Lcom/dianxinos/library/notify/e;

    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dianxinos/library/notify/h/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/dianxinos/library/notify/e;->onDataArrive(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/dianxinos/library/notify/dispatcher/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/library/notify/dispatcher/b;->f()V

    return-void
.end method

.method private d()V
    .locals 13

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/dianxinos/library/notify/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/b;->e()Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->getShowGap()J

    move-result-wide v6

    invoke-static {}, Lcom/dianxinos/library/notify/h/b;->a()J

    move-result-wide v8

    cmp-long v0, v8, v4

    if-gtz v0, :cond_0

    add-long v10, v8, v6

    cmp-long v0, v10, v4

    if-gez v0, :cond_6

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v3}, Lcom/dianxinos/library/notify/h/b;->a(Landroid/content/Context;)J

    move-result-wide v10

    cmp-long v12, v10, v4

    if-gtz v12, :cond_1

    add-long/2addr v10, v6

    cmp-long v4, v10, v4

    if-gez v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-static {v3}, Lcom/dianxinos/library/notify/j/f;->a(Landroid/content/Context;)Z

    move-result v2

    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastShowTime is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",showGap from client is="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v6, v4

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "min"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_4

    const-string v0, "all conditions right! start this schedule..."

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/dianxinos/library/notify/dispatcher/h;

    invoke-direct {v0, p0}, Lcom/dianxinos/library/notify/dispatcher/h;-><init>(Lcom/dianxinos/library/notify/dispatcher/b;)V

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/o;->c(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOnPreloadComplete:dont\'t meet the showable conditions,stop this schedule. myselfShowable= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",settingsShowable="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isHomeFirst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private d(Landroid/os/Message;)V
    .locals 1

    new-instance v0, Lcom/dianxinos/library/notify/dispatcher/c;

    invoke-direct {v0, p0}, Lcom/dianxinos/library/notify/dispatcher/c;-><init>(Lcom/dianxinos/library/notify/dispatcher/b;)V

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/o;->c(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/dianxinos/library/notify/dispatcher/g;

    invoke-direct {v0, p0}, Lcom/dianxinos/library/notify/dispatcher/g;-><init>(Lcom/dianxinos/library/notify/dispatcher/b;)V

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/o;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/dianxinos/library/notify/dispatcher/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/library/notify/dispatcher/b;->k()V

    return-void
.end method

.method private static e()Lcom/dianxinos/library/notify/parser/NotifyStrategy;
    .locals 1

    invoke-static {}, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->getActiveStrategy()Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dianxinos/library/notify/parser/a;->a()Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private e(Landroid/os/Message;)V
    .locals 7

    const/4 v3, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/dianxinos/library/notify/dispatcher/p;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dianxinos/library/notify/dispatcher/p;

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/dianxinos/library/notify/dispatcher/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", executor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/dianxinos/library/notify/dispatcher/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", work"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/dianxinos/library/notify/dispatcher/p;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/dianxinos/library/notify/dispatcher/p;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;

    move-result-object v4

    if-nez v4, :cond_3

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find notify item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/dianxinos/library/notify/dispatcher/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/dianxinos/library/notify/dispatcher/p;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/dianxinos/library/notify/c/g;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/c/c;

    move-result-object v5

    if-nez v5, :cond_4

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "without executor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/dianxinos/library/notify/dispatcher/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "download"

    iget-object v2, v0, Lcom/dianxinos/library/notify/dispatcher/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/dianxinos/library/notify/dispatcher/p;->f:Lcom/dianxinos/library/notify/h;

    if-eqz v1, :cond_7

    move v2, v3

    :goto_1
    const/4 v1, 0x0

    if-eqz v2, :cond_5

    iget-object v1, v4, Lcom/dianxinos/library/notify/data/j;->h:Lcom/dianxinos/library/notify/data/Works;

    invoke-virtual {v1}, Lcom/dianxinos/library/notify/data/Works;->getDownloadWorkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/dianxinos/library/notify/download/g;->a()Lcom/dianxinos/library/notify/download/g;

    move-result-object v4

    iget-object v6, v0, Lcom/dianxinos/library/notify/dispatcher/p;->f:Lcom/dianxinos/library/notify/h;

    invoke-virtual {v4, v1, v6}, Lcom/dianxinos/library/notify/download/g;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/h;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_5
    invoke-interface {v5, v0}, Lcom/dianxinos/library/notify/c/c;->a(Lcom/dianxinos/library/notify/dispatcher/p;)I

    move-result v4

    sget-boolean v5, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/dianxinos/library/notify/dispatcher/p;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", work: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/dianxinos/library/notify/dispatcher/p;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_6
    if-ne v4, v3, :cond_8

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lcom/dianxinos/library/notify/dispatcher/b;->b(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    move v2, v1

    goto :goto_1

    :cond_8
    if-nez v4, :cond_9

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/dianxinos/library/notify/download/g;->a()Lcom/dianxinos/library/notify/download/g;

    move-result-object v2

    iget-object v0, v0, Lcom/dianxinos/library/notify/dispatcher/p;->f:Lcom/dianxinos/library/notify/h;

    invoke-virtual {v2, v1, v0}, Lcom/dianxinos/library/notify/download/g;->b(Ljava/lang/String;Lcom/dianxinos/library/notify/h;)Z

    goto/16 :goto_0

    :cond_9
    if-nez v4, :cond_0

    const-string v1, "install"

    iget-object v0, v0, Lcom/dianxinos/library/notify/dispatcher/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dianxinos/library/notify/dispatcher/j;

    invoke-direct {v0, p0}, Lcom/dianxinos/library/notify/dispatcher/j;-><init>(Lcom/dianxinos/library/notify/dispatcher/b;)V

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/o;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/dianxinos/library/notify/dispatcher/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/library/notify/dispatcher/b;->j()V

    return-void
.end method

.method private f()V
    .locals 6

    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/h/c;->b()Ljava/util/List;

    move-result-object v2

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performRunNotifyItem:size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/dianxinos/library/notify/dispatcher/b;->g:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", priority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/dianxinos/library/notify/data/j;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", showStartTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/dianxinos/library/notify/data/j;->e:Lcom/dianxinos/library/notify/data/ShowRule;

    iget-object v5, v5, Lcom/dianxinos/library/notify/data/ShowRule;->c:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", container: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->g:Lcom/dianxinos/library/notify/data/c;

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    iget-object v3, v0, Lcom/dianxinos/library/notify/data/j;->e:Lcom/dianxinos/library/notify/data/ShowRule;

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " without show rule"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object v4, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->NORMAL:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    invoke-virtual {v3, v4}, Lcom/dianxinos/library/notify/data/ShowRule;->a(Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "check failure"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v3, v0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    invoke-virtual {v3}, Lcom/dianxinos/library/notify/data/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v3, v0}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/data/j;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bkg file not exist"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    invoke-virtual {v4}, Lcom/dianxinos/library/notify/data/i;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bkg file sum is error"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bkg file can not decode"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    iget-object v3, v0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    invoke-virtual {v3}, Lcom/dianxinos/library/notify/data/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v3, v0}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/data/j;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " essential file not exist"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " items meet the display conditions"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    iget-object v2, v0, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/dianxinos/library/notify/b/a;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/d;

    move-result-object v2

    if-nez v2, :cond_e

    sget-boolean v2, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display container is null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "display failed,try to show next item if exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v3, :cond_f

    const-string v3, "begin to show the highest priority notify item"

    invoke-static {v3}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_f
    iget-object v3, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/dianxinos/library/notify/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/dianxinos/library/notify/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/dianxinos/library/notify/h/b;->a(Landroid/content/Context;J)Z

    invoke-static {v2, v3}, Lcom/dianxinos/library/notify/h/b;->a(J)Z

    iget-object v1, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    sget-object v4, Lcom/dianxinos/library/notify/data/ShowRule$ShowType;->NORMAL:Lcom/dianxinos/library/notify/data/ShowRule$ShowType;

    invoke-static {v1, v4}, Lcom/dianxinos/library/notify/h/b;->b(Ljava/lang/String;Lcom/dianxinos/library/notify/data/ShowRule$ShowType;)Z

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/dianxinos/library/notify/h/b;->a(Ljava/lang/String;J)Z

    goto/16 :goto_0
.end method

.method private f(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/dianxinos/library/notify/dispatcher/p;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dianxinos/library/notify/dispatcher/p;

    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v1

    iget-object v2, v0, Lcom/dianxinos/library/notify/dispatcher/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dianxinos/library/notify/h/c;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/dianxinos/library/notify/b/a;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/d;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/dianxinos/library/notify/dispatcher/p;->c:Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/dianxinos/library/notify/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static synthetic f(Lcom/dianxinos/library/notify/dispatcher/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->e:Z

    return v0
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v2, p0, Lcom/dianxinos/library/notify/dispatcher/b;->e:Z

    iput-boolean v1, p0, Lcom/dianxinos/library/notify/dispatcher/b;->d:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Ljava/util/Set;)V

    iput-boolean v1, p0, Lcom/dianxinos/library/notify/dispatcher/b;->e:Z

    iput-boolean v2, p0, Lcom/dianxinos/library/notify/dispatcher/b;->d:Z

    return-void
.end method

.method private g(Landroid/os/Message;)V
    .locals 6

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/b;->e()Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->getScheduleInterval()J

    move-result-wide v0

    invoke-static {}, Lcom/dianxinos/library/notify/h/b;->d()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x0

    sget v2, Lcom/dianxinos/library/notify/dispatcher/b;->c:I

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/dianxinos/library/notify/dispatcher/b;->a(ILjava/lang/Object;J)V

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pull network data after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/dianxinos/library/notify/dispatcher/b;->c:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "The last scheduled time less than scheduleGap(half an hour),so break this schedule"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/dianxinos/library/notify/dispatcher/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->d:Z

    return v0
.end method

.method private h(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dianxinos/library/notify/dispatcher/b;->f:J

    sub-long/2addr v0, v2

    sget v2, Lcom/dianxinos/library/notify/dispatcher/b;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/dianxinos/library/notify/dispatcher/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->d:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/dianxinos/library/notify/dispatcher/b;->h()Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->d:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/dianxinos/library/notify/dispatcher/b;->g()V

    goto :goto_0
.end method

.method private h()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/b;->e()Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->getScheduleInterval()J

    move-result-wide v2

    invoke-static {}, Lcom/dianxinos/library/notify/h/b;->d()J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    cmp-long v0, v4, v0

    if-lez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSchedulePreload:scheduleable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/dianxinos/library/notify/h/b;->d(J)Z

    new-instance v1, Lcom/dianxinos/library/notify/dispatcher/k;

    invoke-direct {v1, p0}, Lcom/dianxinos/library/notify/dispatcher/k;-><init>(Lcom/dianxinos/library/notify/dispatcher/b;)V

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/o;->c(Ljava/lang/Runnable;)V

    :cond_2
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/dianxinos/library/notify/dispatcher/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/dianxinos/library/notify/dispatcher/b;->h()Z

    move-result v0

    return v0
.end method

.method private i(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method static synthetic i(Lcom/dianxinos/library/notify/dispatcher/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/library/notify/dispatcher/b;->g()V

    return-void
.end method

.method private i()Z
    .locals 7

    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/b;->e()Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->getFetchInterval()J

    move-result-wide v0

    invoke-static {}, Lcom/dianxinos/library/notify/h/b;->b()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    add-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/dianxinos/library/notify/dispatcher/l;

    invoke-direct {v1, p0}, Lcom/dianxinos/library/notify/dispatcher/l;-><init>(Lcom/dianxinos/library/notify/dispatcher/b;)V

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/o;->c(Ljava/lang/Runnable;)V

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "network unavailable"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "performDataFetch"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/dianxinos/library/notify/d/b;->a()Lcom/dianxinos/library/notify/d/b;

    move-result-object v0

    new-instance v1, Lcom/dianxinos/library/notify/dispatcher/m;

    invoke-direct {v1, p0}, Lcom/dianxinos/library/notify/dispatcher/m;-><init>(Lcom/dianxinos/library/notify/dispatcher/b;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/library/notify/d/b;->a(Lcom/dianxinos/library/notify/d/d;)V

    goto :goto_0
.end method

.method private j(Landroid/os/Message;)V
    .locals 3

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "handleOnNotifyArrive"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/dianxinos/library/notify/parser/c;->a([B)Ljava/lang/String;

    move-result-object v1

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the result is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", data length is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v1}, Lcom/dianxinos/library/notify/parser/b;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/parser/b;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/notify/g/a;->a(Lcom/dianxinos/library/notify/parser/b;)Z

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/dianxinos/library/notify/parser/b;->a:Ljava/util/Map;

    invoke-static {v1}, Lcom/dianxinos/library/notify/h/d;->a(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/parser/b;->a()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/dianxinos/library/notify/parser/b;->b:Ljava/util/Map;

    iget-object v2, v0, Lcom/dianxinos/library/notify/parser/b;->f:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/dianxinos/library/notify/h/d;->a(Ljava/util/Map;Ljava/util/Set;)V

    iget-object v1, v0, Lcom/dianxinos/library/notify/parser/b;->c:Ljava/util/Map;

    iget-object v2, v0, Lcom/dianxinos/library/notify/parser/b;->g:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/dianxinos/library/notify/h/d;->b(Ljava/util/Map;Ljava/util/Set;)V

    iget-object v1, v0, Lcom/dianxinos/library/notify/parser/b;->e:Ljava/util/Map;

    iget-object v2, v0, Lcom/dianxinos/library/notify/parser/b;->i:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/dianxinos/library/notify/h/d;->c(Ljava/util/Map;Ljava/util/Set;)V

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v0, v0, Lcom/dianxinos/library/notify/parser/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/library/notify/dispatcher/b;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->e:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->d:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/dianxinos/library/notify/dispatcher/b;->h()Z

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->d:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/dianxinos/library/notify/dispatcher/b;->g()V

    goto/16 :goto_0
.end method

.method private k()V
    .locals 14

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "download"

    invoke-static {v0}, Lcom/dianxinos/library/notify/c/g;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/c/c;

    move-result-object v7

    if-nez v7, :cond_1

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "We cannot find DownloadExecutor"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/h/c;->b()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/h/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/dianxinos/library/notify/h/c;->a()Lcom/dianxinos/library/notify/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/h/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "We have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " items to preload essential material"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/dianxinos/library/notify/dispatcher/b;->g:Ljava/util/Comparator;

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_1
    if-ltz v6, :cond_16

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    iget-object v1, v0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    if-eqz v1, :cond_4

    move v5, v2

    :goto_2
    if-eqz v5, :cond_6

    iget-object v1, v0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    iget-object v1, v1, Lcom/dianxinos/library/notify/data/i;->b:Ljava/util/Map;

    if-eqz v1, :cond_5

    move v1, v2

    :goto_3
    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    iget-object v1, v1, Lcom/dianxinos/library/notify/data/i;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    move v4, v2

    :goto_4
    if-eqz v5, :cond_a

    iget-object v1, v0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    iget-object v1, v1, Lcom/dianxinos/library/notify/data/i;->c:Ljava/util/Map;

    if-eqz v1, :cond_9

    move v1, v2

    :goto_5
    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    iget-object v1, v1, Lcom/dianxinos/library/notify/data/i;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_6
    if-nez v4, :cond_d

    if-nez v1, :cond_d

    :cond_3
    :goto_7
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_1

    :cond_4
    move v5, v3

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    goto :goto_5

    :cond_a
    move v1, v3

    goto :goto_5

    :cond_b
    move v1, v3

    goto :goto_6

    :cond_c
    move v1, v3

    goto :goto_6

    :cond_d
    iget-object v5, v0, Lcom/dianxinos/library/notify/data/j;->e:Lcom/dianxinos/library/notify/data/ShowRule;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/dianxinos/library/notify/data/ShowRule;->a()Z

    move-result v13

    if-eqz v13, :cond_f

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " expired"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_e
    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    invoke-virtual {v5}, Lcom/dianxinos/library/notify/data/ShowRule;->c()Z

    move-result v5

    if-eqz v5, :cond_11

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " show too many times"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_10
    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_11
    iget-object v5, v0, Lcom/dianxinos/library/notify/data/j;->e:Lcom/dianxinos/library/notify/data/ShowRule;

    invoke-virtual {v5}, Lcom/dianxinos/library/notify/data/ShowRule;->b()Z

    move-result v5

    if-nez v5, :cond_12

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " check failure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_12
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_14

    sget-boolean v4, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has essentials"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_13
    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " has optianls"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_15
    iget-object v0, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_16
    if-eqz v12, :cond_17

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {v12}, Lcom/dianxinos/library/notify/h/d;->b(Ljava/util/Set;)V

    invoke-static {v12}, Lcom/dianxinos/library/notify/h/d;->a(Ljava/util/Set;)V

    :cond_17
    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "essential list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Lcom/dianxinos/library/notify/j/a;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "optional list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Lcom/dianxinos/library/notify/j/a;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_18
    const-string v0, "bkg"

    const-string v0, "file"

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/notify/data/j;

    iget-object v3, v0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    iget-object v1, v1, Lcom/dianxinos/library/notify/data/i;->b:Ljava/util/Map;

    const-string v4, "bkg"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "preload_bkg"

    invoke-static {v0, v1, v4}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Lcom/dianxinos/library/notify/data/j;Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/dispatcher/p;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-interface {v7, v4}, Lcom/dianxinos/library/notify/c/c;->a(Lcom/dianxinos/library/notify/dispatcher/p;)I

    move-result v4

    sget-boolean v5, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v5, :cond_1a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " do work: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " result: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_1a
    iget-object v1, v0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    iget-object v1, v1, Lcom/dianxinos/library/notify/data/i;->b:Ljava/util/Map;

    const-string v4, "file"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "preload_file"

    invoke-static {v0, v1, v4}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Lcom/dianxinos/library/notify/data/j;Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/dispatcher/p;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-interface {v7, v4}, Lcom/dianxinos/library/notify/c/c;->a(Lcom/dianxinos/library/notify/dispatcher/p;)I

    move-result v4

    sget-boolean v5, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v5, :cond_1b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " do work: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "result: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_1b
    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    iget-object v1, v1, Lcom/dianxinos/library/notify/data/i;->c:Ljava/util/Map;

    const-string v4, "file"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    const-string v4, "preload_file"

    invoke-static {v0, v1, v4}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Lcom/dianxinos/library/notify/data/j;Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/dispatcher/p;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v7, v0}, Lcom/dianxinos/library/notify/c/c;->a(Lcom/dianxinos/library/notify/dispatcher/p;)I

    move-result v0

    sget-boolean v4, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v4, :cond_19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " do work: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1c
    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/a;->a()Lcom/dianxinos/library/notify/dispatcher/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/dispatcher/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/library/notify/dispatcher/b;->a(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private k(Landroid/os/Message;)V
    .locals 4

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "handleInitialize"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->h:Lcom/dianxinos/library/dxbase/h;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-static {v0, v1}, Lcom/dianxinos/library/dxbase/DXBEventSource;->a(Lcom/dianxinos/library/dxbase/h;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->i:Lcom/dianxinos/library/dxbase/h;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-static {v0, v1}, Lcom/dianxinos/library/dxbase/DXBEventSource;->a(Lcom/dianxinos/library/dxbase/h;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->i:Lcom/dianxinos/library/dxbase/h;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-static {v0, v1}, Lcom/dianxinos/library/dxbase/DXBEventSource;->a(Lcom/dianxinos/library/dxbase/h;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->j:Lcom/dianxinos/library/dxbase/h;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v0, v1}, Lcom/dianxinos/library/dxbase/DXBEventSource;->a(Lcom/dianxinos/library/dxbase/h;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/dianxinos/library/notify/dispatcher/b;->k:Lcom/dianxinos/library/dxbase/h;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v0, v1}, Lcom/dianxinos/library/dxbase/DXBEventSource;->a(Lcom/dianxinos/library/dxbase/h;Ljava/lang/String;)Z

    invoke-static {}, Lcom/dianxinos/library/dxbase/k;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "network avaliable when initialize"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    sget v2, Lcom/dianxinos/library/notify/dispatcher/b;->b:I

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/dianxinos/library/notify/dispatcher/b;->a(ILjava/lang/Object;J)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/dianxinos/library/notify/dispatcher/b;->a(ILjava/lang/Object;J)V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/dianxinos/library/notify/dispatcher/b;->a(ILjava/lang/Object;J)V

    return-void
.end method

.method public declared-synchronized a(ILjava/lang/Object;J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/dianxinos/library/notify/dispatcher/b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicated msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " removed. send new msg..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dianxinos/library/notify/dispatcher/b;->removeMessages(I)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/dianxinos/library/notify/dispatcher/b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/dianxinos/library/notify/dispatcher/b;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0, v0, p3, p4}, Lcom/dianxinos/library/notify/dispatcher/b;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/dianxinos/library/notify/download/DownloadInfo;)V
    .locals 4

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download complete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mCurrentBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_0
    const-string v0, "preload_bkg"

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "preload_file"

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/a;->a()Lcom/dianxinos/library/notify/dispatcher/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/dispatcher/a;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "preload queue is empty"

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/library/notify/dispatcher/b;->a(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/dianxinos/library/notify/dispatcher/a;->c()Z

    move-result v0

    sget-boolean v1, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preload execute next success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/a;->b()Lcom/dianxinos/library/notify/dispatcher/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/library/notify/dispatcher/a;->c()Z

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/dxbase/j;->b(Ljava/lang/String;)V

    :cond_6
    iget v0, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mStatus:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/dianxinos/library/notify/dispatcher/p;

    invoke-direct {v0}, Lcom/dianxinos/library/notify/dispatcher/p;-><init>()V

    const-string v1, "download"

    iput-object v1, v0, Lcom/dianxinos/library/notify/dispatcher/p;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/dianxinos/library/notify/download/DownloadInfo;->mRcmId:Ljava/lang/String;

    iput-object v1, v0, Lcom/dianxinos/library/notify/dispatcher/p;->a:Ljava/lang/String;

    const-string v1, "download"

    iput-object v1, v0, Lcom/dianxinos/library/notify/dispatcher/p;->c:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lcom/dianxinos/library/notify/dispatcher/b;->b(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/dispatcher/b;->k(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/dispatcher/b;->h(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/dispatcher/b;->i(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/dispatcher/b;->g(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/dispatcher/b;->j(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/dispatcher/b;->e(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/dispatcher/b;->f(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/dispatcher/b;->d(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/dispatcher/b;->c(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/dispatcher/b;->b(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Ljava/util/Set;)V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/dianxinos/library/notify/dispatcher/b;->a(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
