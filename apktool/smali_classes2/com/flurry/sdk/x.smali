.class public Lcom/flurry/sdk/x;
.super Lcom/flurry/sdk/p;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/GestureDetector;

.field private c:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/n;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/flurry/sdk/x$a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/graphics/Rect;

.field private l:I

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private final n:I

.field private o:Landroid/os/Handler;

.field private p:Landroid/view/GestureDetector;

.field private q:Lcom/flurry/sdk/ge;

.field private r:Lcom/flurry/sdk/go;

.field private s:Landroid/app/KeyguardManager;

.field private t:J

.field private u:Lcom/flurry/sdk/gt$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lcom/flurry/sdk/p;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/sdk/x;->e:Ljava/util/List;

    iput-object v1, p0, Lcom/flurry/sdk/x;->f:Ljava/util/List;

    iput-boolean v2, p0, Lcom/flurry/sdk/x;->g:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->h:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->i:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->j:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/x;->k:Landroid/graphics/Rect;

    iput v2, p0, Lcom/flurry/sdk/x;->l:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->m:Ljava/lang/ref/WeakReference;

    const/16 v0, 0x32

    iput v0, p0, Lcom/flurry/sdk/x;->n:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/x;->o:Landroid/os/Handler;

    iput-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    iput-object v1, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/sdk/x;->t:J

    new-instance v0, Lcom/flurry/sdk/x$7;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/x$7;-><init>(Lcom/flurry/sdk/x;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->u:Lcom/flurry/sdk/gt$a;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/flurry/sdk/x$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/x$1;-><init>(Lcom/flurry/sdk/x;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->b:Landroid/view/GestureDetector;

    new-instance v0, Lcom/flurry/sdk/x$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/x$2;-><init>(Lcom/flurry/sdk/x;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->c:Lcom/flurry/sdk/kb;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/flurry/sdk/x$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/x$3;-><init>(Lcom/flurry/sdk/x;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->p:Landroid/view/GestureDetector;

    sget-object v0, Lcom/flurry/sdk/x$a;->a:Lcom/flurry/sdk/x$a;

    iput-object v0, p0, Lcom/flurry/sdk/x;->d:Lcom/flurry/sdk/x$a;

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.RegisterCTAViewEvent"

    iget-object v2, p0, Lcom/flurry/sdk/x;->c:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method static synthetic J()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method private K()Z
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/x;->s:Landroid/app/KeyguardManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/flurry/sdk/x;->s:Landroid/app/KeyguardManager;

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/x;->s:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized L()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/x;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    const-string v1, "Impression logged"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/bb;->U:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->l()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/x;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized M()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    const-string v1, "Click logged"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/bb;->h:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->l()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized N()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    const-string v1, "Expand logged"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/bb;->X:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->l()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized O()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    const-string v1, "Collapse logged"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/bb;->Y:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->l()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/x;->h:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/x;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/x;->m:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/x;->a(Landroid/view/ViewGroup;)V

    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/x;->i:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private b(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/flurry/sdk/x$5;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/x$5;-><init>(Lcom/flurry/sdk/x;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ge;->setClickable(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    new-instance v1, Lcom/flurry/sdk/x$6;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/x$6;-><init>(Lcom/flurry/sdk/x;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ge;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/flurry/sdk/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/x;->N()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/x;->j:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic e(Lcom/flurry/sdk/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/x;->O()V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/x;->L()V

    return-void
.end method

.method static synthetic g(Lcom/flurry/sdk/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/x;->M()V

    return-void
.end method

.method static synthetic h(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/x;->m:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic i(Lcom/flurry/sdk/x;)Lcom/flurry/sdk/ge;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    return-object v0
.end method

.method static synthetic j(Lcom/flurry/sdk/x;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/x;->b:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic k(Lcom/flurry/sdk/x;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/x;->p:Landroid/view/GestureDetector;

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iget-object v1, p0, Lcom/flurry/sdk/x;->d:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public B()Z
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iget-object v2, p0, Lcom/flurry/sdk/x;->d:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/x;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/da;

    iget-object v0, v0, Lcom/flurry/sdk/da;->a:Ljava/lang/String;

    sget-object v3, Lcom/flurry/sdk/fg;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public C()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/x$a;->a:Lcom/flurry/sdk/x$a;

    iget-object v1, p0, Lcom/flurry/sdk/x;->d:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->t()V

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iget-object v1, p0, Lcom/flurry/sdk/x;->d:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeAdObject fetched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public D()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/x;->h:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/x;->b(Ljava/lang/ref/WeakReference;)V

    iget-object v0, p0, Lcom/flurry/sdk/x;->i:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/x;->b(Ljava/lang/ref/WeakReference;)V

    iget-object v0, p0, Lcom/flurry/sdk/x;->j:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/x;->b(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public E()I
    .locals 2

    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iget-object v1, p0, Lcom/flurry/sdk/x;->d:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/x;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->h()Lcom/flurry/sdk/cz;

    move-result-object v0

    iget v0, v0, Lcom/flurry/sdk/cz;->a:I

    goto :goto_0
.end method

.method public F()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/da;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iget-object v1, p0, Lcom/flurry/sdk/x;->d:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->l()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->i()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public G()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    invoke-virtual {v0}, Lcom/flurry/sdk/ge;->g()V

    return-void
.end method

.method public H()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    invoke-virtual {v0}, Lcom/flurry/sdk/ge;->n()V

    return-void
.end method

.method public I()Lcom/flurry/sdk/ge;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    return-object v0
.end method

.method public a(Landroid/view/View;)I
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/x;->K()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr v0, v1

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    double-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/flurry/sdk/p;->a()V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    sget-object v1, Lcom/flurry/sdk/ge$a;->a:Lcom/flurry/sdk/ge$a;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/ge;->a(Lcom/flurry/sdk/ge$a;I)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/x;->b(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->i:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected a(Lcom/flurry/sdk/d;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/flurry/sdk/p;->a(Lcom/flurry/sdk/d;)V

    sget-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->o()Lcom/flurry/sdk/au;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/ba;->c:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/ba;->e:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/flurry/sdk/cq;->e:Lcom/flurry/sdk/cq;

    iget-object v0, v0, Lcom/flurry/sdk/co;->a:Lcom/flurry/sdk/cq;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/cq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/ba;->v:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/x;->q()V

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iput-object v0, p0, Lcom/flurry/sdk/x;->d:Lcom/flurry/sdk/x$a;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/flurry/sdk/ge;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    invoke-virtual {v0}, Lcom/flurry/sdk/ge;->removeAllViews()V

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    invoke-virtual {v0}, Lcom/flurry/sdk/ge;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    :goto_1
    iput-object p1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    iget-object v3, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    invoke-virtual {v3, p2}, Lcom/flurry/sdk/ge;->setVideoUrl(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    invoke-virtual {v3}, Lcom/flurry/sdk/ge;->getVideoController()Lcom/flurry/sdk/go;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    iget-object v3, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v3, p2, v2}, Lcom/flurry/sdk/go;->a(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v3}, Lcom/flurry/sdk/go;->c()V

    iget-object v3, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/go;->a(Z)V

    iget-object v1, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/go;->b(Z)V

    iget-object v1, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/flurry/sdk/gp;->a(II)V

    iget-object v1, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v2}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/gp;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v2}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/gq;->setMediaController(Landroid/widget/MediaController;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    invoke-virtual {v0}, Lcom/flurry/sdk/ge;->p()V

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    invoke-virtual {v0}, Lcom/flurry/sdk/ge;->o()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/Button;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    new-instance v1, Lcom/flurry/sdk/x$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/x$4;-><init>(Lcom/flurry/sdk/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/flurry/sdk/x;->e:Ljava/util/List;

    return-void
.end method

.method protected b()V
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->B()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/flurry/sdk/p;->b()V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->D()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->h:Ljava/lang/ref/WeakReference;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/flurry/sdk/x;->a(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/x;->b(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/x;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected s()V
    .locals 12

    const/4 v11, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/high16 v10, 0x42480000    # 50.0f

    invoke-super {p0}, Lcom/flurry/sdk/p;->s()V

    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iget-object v1, p0, Lcom/flurry/sdk/x;->d:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/x;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/x;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/x;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/x;->a(Ljava/lang/ref/WeakReference;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/flurry/sdk/x;->c(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/x;->g:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/x;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/flurry/sdk/x;->k:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v4, p0, Lcom/flurry/sdk/x;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v1, v4

    int-to-long v4, v1

    :goto_1
    cmp-long v1, v4, v6

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/flurry/sdk/x;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/flurry/sdk/x;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_c

    move v1, v2

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-long v8, v8

    long-to-float v4, v4

    long-to-float v5, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v5, v8

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_6

    if-nez v1, :cond_6

    iget v1, p0, Lcom/flurry/sdk/x;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/flurry/sdk/x;->l:I

    const/16 v3, 0xa

    if-lt v1, v3, :cond_3

    invoke-direct {p0}, Lcom/flurry/sdk/x;->L()V

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/x;->a(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v10

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    iput-boolean v2, v1, Lcom/flurry/sdk/ge;->a:Z

    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    invoke-virtual {v1}, Lcom/flurry/sdk/ge;->f()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    invoke-virtual {v1}, Lcom/flurry/sdk/ge;->h()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-wide v2, p0, Lcom/flurry/sdk/x;->t:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/x;->t:J

    :cond_5
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/x;->a(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, v10

    if-gez v1, :cond_8

    iget-object v1, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->d()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayPause: view-ability Ready to pause video position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/go;->d(I)V

    goto/16 :goto_0

    :cond_6
    iput v3, p0, Lcom/flurry/sdk/x;->l:I

    goto/16 :goto_3

    :cond_7
    iput v3, p0, Lcom/flurry/sdk/x;->l:I

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/x;->a(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v10

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->r()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/x;->t:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    invoke-virtual {v0}, Lcom/flurry/sdk/ge;->getVideoCompletedFromStateOrVideo()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    invoke-virtual {v0}, Lcom/flurry/sdk/ge;->q()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayPause: view-ability Ready to play video adObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->n()V

    :cond_9
    iput-wide v6, p0, Lcom/flurry/sdk/x;->t:J

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    invoke-virtual {v1}, Lcom/flurry/sdk/ge;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    invoke-virtual {v1}, Lcom/flurry/sdk/ge;->h()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/x;->a(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, v10

    if-gez v1, :cond_b

    iget-object v1, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->d()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/flurry/sdk/x;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayPause: view-ability Ready to pause video position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/x;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/go;->d(I)V

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    invoke-virtual {v0}, Lcom/flurry/sdk/ge;->j()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/x;->a(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v10

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/x;->r:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/x;->q:Lcom/flurry/sdk/ge;

    iput-boolean v2, v0, Lcom/flurry/sdk/ge;->a:Z

    goto/16 :goto_0

    :cond_c
    move v1, v3

    goto/16 :goto_2

    :cond_d
    move-wide v4, v6

    goto/16 :goto_1
.end method

.method public x()Z
    .locals 2

    sget-object v0, Lcom/flurry/sdk/x$a;->b:Lcom/flurry/sdk/x$a;

    iget-object v1, p0, Lcom/flurry/sdk/x;->d:Lcom/flurry/sdk/x$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/x;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->w()Z

    move-result v0

    goto :goto_0
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/x;->e:Ljava/util/List;

    return-object v0
.end method

.method public z()Ljava/util/List;
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

    iget-object v0, p0, Lcom/flurry/sdk/x;->f:Ljava/util/List;

    return-object v0
.end method
