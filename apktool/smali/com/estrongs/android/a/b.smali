.class public final Lcom/estrongs/android/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final r:Lcom/estrongs/android/a/b;


# instance fields
.field private b:Lcom/estrongs/android/a/v;

.field private c:Lcom/estrongs/android/a/q;

.field private d:Lcom/estrongs/android/a/l;

.field private e:Lcom/estrongs/android/a/ab;

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/estrongs/android/a/j;

.field private final h:Lcom/estrongs/android/a/j;

.field private final i:Lcom/estrongs/android/a/j;

.field private final j:Lcom/estrongs/android/a/j;

.field private final k:Lcom/estrongs/android/a/j;

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/a/b;->a:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/a/b;

    invoke-direct {v0}, Lcom/estrongs/android/a/b;-><init>()V

    sput-object v0, Lcom/estrongs/android/a/b;->r:Lcom/estrongs/android/a/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/android/a/b;->l:Z

    iput-boolean v0, p0, Lcom/estrongs/android/a/b;->m:Z

    iput-boolean v0, p0, Lcom/estrongs/android/a/b;->n:Z

    iput-boolean v0, p0, Lcom/estrongs/android/a/b;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/a/b;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/estrongs/android/a/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/a/c;-><init>(Lcom/estrongs/android/a/b;)V

    iput-object v0, p0, Lcom/estrongs/android/a/b;->g:Lcom/estrongs/android/a/j;

    new-instance v0, Lcom/estrongs/android/a/d;

    invoke-direct {v0, p0}, Lcom/estrongs/android/a/d;-><init>(Lcom/estrongs/android/a/b;)V

    iput-object v0, p0, Lcom/estrongs/android/a/b;->h:Lcom/estrongs/android/a/j;

    new-instance v0, Lcom/estrongs/android/a/e;

    invoke-direct {v0, p0}, Lcom/estrongs/android/a/e;-><init>(Lcom/estrongs/android/a/b;)V

    iput-object v0, p0, Lcom/estrongs/android/a/b;->k:Lcom/estrongs/android/a/j;

    new-instance v0, Lcom/estrongs/android/a/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/a/f;-><init>(Lcom/estrongs/android/a/b;)V

    iput-object v0, p0, Lcom/estrongs/android/a/b;->j:Lcom/estrongs/android/a/j;

    new-instance v0, Lcom/estrongs/android/a/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/a/g;-><init>(Lcom/estrongs/android/a/b;)V

    iput-object v0, p0, Lcom/estrongs/android/a/b;->i:Lcom/estrongs/android/a/j;

    return-void
.end method

.method public static final a()Lcom/estrongs/android/a/b;
    .locals 1

    sget-object v0, Lcom/estrongs/android/a/b;->r:Lcom/estrongs/android/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/a/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/a/b;->m:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/a/b;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/a/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;Lcom/estrongs/android/a/j;)V
    .locals 1

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "/"

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/a/b;->m:Z

    new-instance v0, Lcom/estrongs/android/a/q;

    invoke-direct {v0, p2}, Lcom/estrongs/android/a/q;-><init>(Lcom/estrongs/android/a/j;)V

    iput-object v0, p0, Lcom/estrongs/android/a/b;->c:Lcom/estrongs/android/a/q;

    iget-object v0, p0, Lcom/estrongs/android/a/b;->c:Lcom/estrongs/android/a/q;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/a/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/a/b;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/v;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    return-object v0
.end method

.method private c(Ljava/lang/String;Lcom/estrongs/android/a/j;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/a/b;->o:Z

    new-instance v0, Lcom/estrongs/android/a/ab;

    invoke-direct {v0, p2}, Lcom/estrongs/android/a/ab;-><init>(Lcom/estrongs/android/a/j;)V

    iput-object v0, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    iget-object v0, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/a/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/a/b;->o:Z

    return p1
.end method

.method static synthetic d(Lcom/estrongs/android/a/b;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/a/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/a/b;->n:Z

    return p1
.end method

.method static synthetic e(Lcom/estrongs/android/a/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/a/b;->l:Z

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/q;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->c:Lcom/estrongs/android/a/q;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/ab;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/a/b;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->q:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic i()Lcom/estrongs/android/a/b;
    .locals 1

    sget-object v0, Lcom/estrongs/android/a/b;->r:Lcom/estrongs/android/a/b;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/a/b;->k()V

    return-void
.end method

.method private j()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/a/l;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/a/v;

    iget-object v2, p0, Lcom/estrongs/android/a/b;->j:Lcom/estrongs/android/a/j;

    invoke-direct {v1, v2}, Lcom/estrongs/android/a/v;-><init>(Lcom/estrongs/android/a/j;)V

    iput-object v1, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    iget-object v1, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/v;->a(Ljava/util/List;)V

    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/estrongs/android/cleaner/j;->d()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-boolean v2, p0, Lcom/estrongs/android/a/b;->l:Z

    new-instance v1, Lcom/estrongs/android/a/v;

    iget-object v2, p0, Lcom/estrongs/android/a/b;->g:Lcom/estrongs/android/a/j;

    invoke-direct {v1, v2}, Lcom/estrongs/android/a/v;-><init>(Lcom/estrongs/android/a/j;)V

    iput-object v1, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    iget-object v1, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/v;->a(Ljava/util/List;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic j(Lcom/estrongs/android/a/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/a/b;->o:Z

    return v0
.end method

.method private k(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 8

    sget-object v0, Lcom/estrongs/android/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaOverview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ah(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v0, p0, Lcom/estrongs/android/a/b;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/a/ab;->b(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v1, Lcom/estrongs/android/a/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getOverview: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/a;-><init>()V

    goto :goto_1
.end method

.method private k()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/a/b;->n:Z

    invoke-static {}, Lcom/estrongs/android/a/l;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/a/v;->f(Ljava/lang/String;)Lcom/estrongs/android/a/b/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    instance-of v4, v0, Lcom/estrongs/android/a/b/g;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/estrongs/android/a/b/g;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/a/l;

    iget-object v2, p0, Lcom/estrongs/android/a/b;->i:Lcom/estrongs/android/a/j;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/a/l;-><init>(Ljava/util/Map;Lcom/estrongs/android/a/j;)V

    iput-object v0, p0, Lcom/estrongs/android/a/b;->d:Lcom/estrongs/android/a/l;

    iget-object v0, p0, Lcom/estrongs/android/a/b;->d:Lcom/estrongs/android/a/l;

    invoke-virtual {v0}, Lcom/estrongs/android/a/l;->b()V

    return-void
.end method

.method private l()Z
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/a/b;->l:Z

    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->m:Z

    and-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->n:Z

    and-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->o:Z

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->l:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/v;->a(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->m:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/a/b;->c:Lcom/estrongs/android/a/q;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/q;->c(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/a;-><init>()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->l:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/a/v;->a(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/a;-><init>()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/a/b;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->d:Lcom/estrongs/android/a/l;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/a/l;->b(Ljava/lang/String;)Lcom/estrongs/android/a/b/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/estrongs/android/a/b/c;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/c;-><init>()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->ah(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/estrongs/android/a/b;->k(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->l:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/v;->g(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->m:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/a/b;->c:Lcom/estrongs/android/a/q;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/q;->b(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/a;-><init>()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/a/b/f;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/f;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/g;

    new-instance v4, Lcom/estrongs/android/a/b/l;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/estrongs/android/a/b/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/estrongs/android/a/b/l;->h()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/a/v;->c(Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(Lcom/estrongs/android/a/j;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/a/b;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/estrongs/android/a/j;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/a/b;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/android/a/j;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/estrongs/android/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    sget-object v0, Lcom/estrongs/android/a/b;->a:Ljava/lang/String;

    const-string v1, "Analysis Callback is null!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/a/b;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/a/b;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/cleaner/j;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/estrongs/android/a/b;->a:Ljava/lang/String;

    const-string v1, "analyze disk and lib"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/estrongs/android/a/b;->n:Z

    iput-boolean v3, p0, Lcom/estrongs/android/a/b;->o:Z

    iget-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/a/b;->h:Lcom/estrongs/android/a/j;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/a/b;->b(Ljava/lang/String;Lcom/estrongs/android/a/j;)V

    iget-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/a/b;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/estrongs/android/a/b;->a:Ljava/lang/String;

    const-string v1, "analyze app only"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/estrongs/android/a/b;->m:Z

    iput-boolean v3, p0, Lcom/estrongs/android/a/b;->o:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/a/b;->q:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/estrongs/android/a/b;->j()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/a/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/a/h;-><init>(Lcom/estrongs/android/a/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/estrongs/android/a/b;->a:Ljava/lang/String;

    const-string v1, "analyze disk only"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/estrongs/android/a/b;->m:Z

    iput-boolean v3, p0, Lcom/estrongs/android/a/b;->n:Z

    iput-boolean v3, p0, Lcom/estrongs/android/a/b;->o:Z

    iget-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/a/b;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ah(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    sget-object v0, Lcom/estrongs/android/a/b;->a:Ljava/lang/String;

    const-string v1, "analyze media only"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/estrongs/android/a/b;->l:Z

    iput-boolean v3, p0, Lcom/estrongs/android/a/b;->n:Z

    iput-boolean v3, p0, Lcom/estrongs/android/a/b;->m:Z

    iget-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/a/b;->k:Lcom/estrongs/android/a/j;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/a/b;->c(Ljava/lang/String;Lcom/estrongs/android/a/j;)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/estrongs/android/a/b;->a:Ljava/lang/String;

    const-string v1, "no any analysis!!!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/estrongs/android/a/j;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;Lcom/estrongs/android/a/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/android/a/k;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/a/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/estrongs/android/a/i;-><init>(Lcom/estrongs/android/a/b;Ljava/util/List;Lcom/estrongs/android/a/k;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ah(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/a/ab;->d(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->l:Z

    if-nez v1, :cond_1

    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/a;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/a/v;->b(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/estrongs/android/a/b/u;
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ah(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/ab;->f(Ljava/lang/String;)Lcom/estrongs/android/a/b/u;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->l:Z

    if-nez v1, :cond_1

    new-instance v0, Lcom/estrongs/android/a/b/u;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/u;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/v;->b(Ljava/lang/String;)Lcom/estrongs/android/a/b/u;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v0}, Lcom/estrongs/android/a/v;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/a/b;->c:Lcom/estrongs/android/a/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->c:Lcom/estrongs/android/a/q;

    invoke-virtual {v0}, Lcom/estrongs/android/a/q;->a()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/a/b;->d:Lcom/estrongs/android/a/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/a/b;->d:Lcom/estrongs/android/a/l;

    invoke-virtual {v0}, Lcom/estrongs/android/a/l;->c()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    invoke-virtual {v0}, Lcom/estrongs/android/a/ab;->a()V

    :cond_3
    return-void
.end method

.method public b(Lcom/estrongs/android/a/j;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/b;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/a/b;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c()Lcom/estrongs/android/a/b/a;
    .locals 6

    iget-boolean v0, p0, Lcom/estrongs/android/a/b;->l:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/a;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v0}, Lcom/estrongs/android/a/v;->b()Lcom/estrongs/android/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/estrongs/android/a/b/g;

    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-virtual {v4}, Lcom/estrongs/android/a/b/g;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4}, Lcom/estrongs/android/a/b/g;->b()I

    move-result v2

    invoke-virtual {v4}, Lcom/estrongs/android/a/b/g;->a()I

    move-result v3

    invoke-virtual {v4}, Lcom/estrongs/android/a/b/g;->length()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/a;-><init>(Ljava/util/List;IIJ)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ah(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/ab;->c(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->l:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/v;->c(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->m:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/a/b;->c:Lcom/estrongs/android/a/q;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/q;->d(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/a;-><init>()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ah(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/a/ab;->a(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->l:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/a/v;->c(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/a;-><init>()V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->l:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/v;->d(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->m:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/a/b;->c:Lcom/estrongs/android/a/q;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/q;->e(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/a;-><init>()V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->l:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/a/v;->d(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/a;-><init>()V

    goto :goto_0
.end method

.method public d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pic://"

    const-string v2, "pic://"

    invoke-virtual {p0, v2}, Lcom/estrongs/android/a/b;->g(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video://"

    const-string v2, "video://"

    invoke-virtual {p0, v2}, Lcom/estrongs/android/a/b;->g(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "music://"

    const-string v2, "music://"

    invoke-virtual {p0, v2}, Lcom/estrongs/android/a/b;->g(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "book://"

    const-string v2, "book://"

    invoke-virtual {p0, v2}, Lcom/estrongs/android/a/b;->g(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "apk://"

    const-string v2, "apk://"

    invoke-virtual {p0, v2}, Lcom/estrongs/android/a/b;->g(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "file://"

    iget-object v2, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/estrongs/android/a/b;->g(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final e()Lcom/estrongs/android/a/b/a;
    .locals 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/a/b;->n:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/a/b/m;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/m;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/a/b;->d:Lcom/estrongs/android/a/l;

    invoke-virtual {v0}, Lcom/estrongs/android/a/l;->h()Ljava/util/List;

    move-result-object v0

    const-string v3, "Memory"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/a/b;->d:Lcom/estrongs/android/a/l;

    invoke-virtual {v0}, Lcom/estrongs/android/a/l;->g()Ljava/util/List;

    move-result-object v0

    const-string v3, "Cache"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/a/b;->d:Lcom/estrongs/android/a/l;

    invoke-virtual {v0}, Lcom/estrongs/android/a/l;->j()Ljava/util/List;

    move-result-object v0

    const-string v3, "Battery"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/estrongs/android/a/l;->k()Ljava/util/List;

    move-result-object v0

    const-string v3, "Associated"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/a/b/m;

    const-wide/16 v4, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/m;-><init>(Ljava/util/Map;IIJ)V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 2

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->ah(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/a/ab;->e(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->l:Z

    if-nez v1, :cond_1

    new-instance v0, Lcom/estrongs/android/a/b/a;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/a;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v1, v0, p2}, Lcom/estrongs/android/a/v;->e(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Lcom/estrongs/android/a/b/m;
    .locals 4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRedundantFileList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/a/b;->p:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->ah(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/ab;->g(Ljava/lang/String;)Lcom/estrongs/android/a/b/m;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->l:Z

    if-nez v1, :cond_1

    new-instance v0, Lcom/estrongs/android/a/b/m;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/m;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/a/b;->b:Lcom/estrongs/android/a/v;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/v;->e(Ljava/lang/String;)Lcom/estrongs/android/a/b/m;

    move-result-object v0

    goto :goto_0
.end method

.method public final f()Lcom/estrongs/android/a/b/a;
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/a/l;->k()Ljava/util/List;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/a/b/a;

    const-wide/16 v4, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/a;-><init>(Ljava/util/List;IIJ)V

    return-object v0
.end method

.method public f(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/a/ab;->c(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/estrongs/android/a/b/u;
    .locals 8

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimilarImageFileList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/estrongs/android/a/b;->o:Z

    if-nez v1, :cond_0

    new-instance v0, Lcom/estrongs/android/a/b/u;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/u;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/ab;->e(Ljava/lang/String;)Lcom/estrongs/android/a/b/u;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v1, Lcom/estrongs/android/a/b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimilarImageFileList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g()Lcom/estrongs/android/a/b/a;
    .locals 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/a/b;->n:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/a/b/m;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/m;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/android/a/b/m;

    iget-object v1, p0, Lcom/estrongs/android/a/b;->d:Lcom/estrongs/android/a/l;

    invoke-virtual {v1}, Lcom/estrongs/android/a/l;->i()Ljava/util/Map;

    move-result-object v1

    const-wide/16 v4, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/m;-><init>(Ljava/util/Map;IIJ)V

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/a/ab;->b(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/a/ab;->f(Ljava/lang/String;I)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Lcom/estrongs/android/a/b/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/a/ab;->d(Ljava/lang/String;)Lcom/estrongs/android/a/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/b;->e:Lcom/estrongs/android/a/ab;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/a/ab;->h(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    return-object v0
.end method
