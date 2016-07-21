.class public Lcom/flurry/sdk/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/s;
.implements Lcom/flurry/sdk/t;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private f:Lcom/flurry/sdk/v$a;

.field private final g:Lcom/flurry/sdk/dq;

.field private h:Lcom/flurry/sdk/au;

.field private i:Lcom/flurry/sdk/au;

.field private j:Z

.field private k:Z

.field private l:J

.field private final m:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/ln;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/lg;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/d;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:J

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/flurry/sdk/v;->j:Z

    iput-boolean v0, p0, Lcom/flurry/sdk/v;->k:Z

    new-instance v0, Lcom/flurry/sdk/v$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/v$1;-><init>(Lcom/flurry/sdk/v;)V

    iput-object v0, p0, Lcom/flurry/sdk/v;->m:Lcom/flurry/sdk/kb;

    new-instance v0, Lcom/flurry/sdk/v$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/v$2;-><init>(Lcom/flurry/sdk/v;)V

    iput-object v0, p0, Lcom/flurry/sdk/v;->n:Lcom/flurry/sdk/kb;

    new-instance v0, Lcom/flurry/sdk/v$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/v$3;-><init>(Lcom/flurry/sdk/v;)V

    iput-object v0, p0, Lcom/flurry/sdk/v;->o:Lcom/flurry/sdk/kb;

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A session must be started before ad objects may be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/fd;->a()I

    move-result v1

    iput v1, p0, Lcom/flurry/sdk/v;->b:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flurry/sdk/v;->c:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flurry/sdk/v;->d:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/flurry/sdk/v;->e:Ljava/lang/String;

    sget-object v1, Lcom/flurry/sdk/v$a;->a:Lcom/flurry/sdk/v$a;

    iput-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    new-instance v1, Lcom/flurry/sdk/dq;

    invoke-direct {v1, p3}, Lcom/flurry/sdk/dq;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/sdk/v;->g:Lcom/flurry/sdk/dq;

    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flurry/sdk/v;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->e()Lcom/flurry/sdk/w;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p0}, Lcom/flurry/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/v;)V

    invoke-direct {p0}, Lcom/flurry/sdk/v;->B()V

    invoke-direct {p0}, Lcom/flurry/sdk/v;->D()V

    invoke-direct {p0}, Lcom/flurry/sdk/v;->F()V

    return-void
.end method

.method private A()V
    .locals 4

    const/4 v3, 0x3

    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session Id not created yet. Delaying the fetch until session is created."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/v;->k:Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching ad now for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V

    goto :goto_0
.end method

.method private B()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/v;->l:J

    invoke-static {}, Lcom/flurry/sdk/lo;->a()Lcom/flurry/sdk/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/v;->m:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lo;->a(Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method private C()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/lo;->a()Lcom/flurry/sdk/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/v;->m:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lo;->b(Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method private D()V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/v;->o:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method private E()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/v;->o:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kc;->a(Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method private F()V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/v;->n:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method private G()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/v;->n:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kc;->a(Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method private H()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    invoke-static {}, Lcom/flurry/sdk/lt;->b()V

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/v$a;->b:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/v$a;->d:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/flurry/sdk/v$a;->b:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/v;->h:Lcom/flurry/sdk/au;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/j;->b()Lcom/flurry/android/FlurryAdListener;

    move-result-object v2

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firing shouldDisplayAd, listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/flurry/sdk/v;->e:Ljava/lang/String;

    sget-object v0, Lcom/flurry/sdk/bc;->a:Lcom/flurry/sdk/bc;

    iget-object v4, p0, Lcom/flurry/sdk/v;->h:Lcom/flurry/sdk/au;

    invoke-virtual {v4}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/bc;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/android/FlurryAdType;->WEB_BANNER:Lcom/flurry/android/FlurryAdType;

    :goto_1
    invoke-interface {v2, v3, v0}, Lcom/flurry/android/FlurryAdListener;->shouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_2
    if-nez v0, :cond_2

    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    sget-object v0, Lcom/flurry/android/FlurryAdType;->WEB_TAKEOVER:Lcom/flurry/android/FlurryAdType;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    :try_start_4
    sget-object v3, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    const-string v4, "AdListener.shouldDisplayAd"

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/flurry/sdk/v$a;->c:Lcom/flurry/sdk/v$a;

    iput-object v0, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "render banner ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->g()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v2, :cond_3

    instance-of v1, v2, Landroid/app/Activity;

    if-nez v1, :cond_4

    :cond_3
    sget-object v0, Lcom/flurry/sdk/ba;->d:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto/16 :goto_0

    :cond_4
    if-nez v0, :cond_5

    sget-object v0, Lcom/flurry/sdk/ba;->t:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/flurry/sdk/v;->h:Lcom/flurry/sdk/au;

    if-nez v4, :cond_6

    sget-object v0, Lcom/flurry/sdk/ba;->c:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v4}, Lcom/flurry/sdk/au;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/flurry/sdk/ba;->x:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->c()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    const-string v3, "There is no network connectivity (ad will not display)"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "errorCode"

    sget-object v3, Lcom/flurry/sdk/ba;->b:Lcom/flurry/sdk/ba;

    invoke-virtual {v3}, Lcom/flurry/sdk/ba;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/flurry/sdk/bb;->g:Lcom/flurry/sdk/bb;

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v4}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/flurry/sdk/ba;->e:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto/16 :goto_0

    :cond_9
    iget v1, v0, Lcom/flurry/sdk/co;->f:I

    if-ne v1, v5, :cond_a

    sget-object v0, Lcom/flurry/sdk/ba;->e:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto/16 :goto_0

    :cond_a
    sget-object v1, Lcom/flurry/sdk/cq;->a:Lcom/flurry/sdk/cq;

    iget-object v2, v0, Lcom/flurry/sdk/co;->a:Lcom/flurry/sdk/cq;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/cq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v0, Lcom/flurry/sdk/ba;->v:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto/16 :goto_0

    :cond_b
    sget-object v1, Lcom/flurry/sdk/bc;->a:Lcom/flurry/sdk/bc;

    invoke-virtual {v4}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/bc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/flurry/sdk/bc;->b:Lcom/flurry/sdk/bc;

    invoke-virtual {v4}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/bc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v0, Lcom/flurry/sdk/ba;->v:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/flurry/sdk/fd;->b()Lcom/flurry/sdk/dc;

    move-result-object v1

    iget-object v0, v0, Lcom/flurry/sdk/co;->v:Lcom/flurry/sdk/dc;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/flurry/sdk/ba;->s:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->u()V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/v$8;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/v$8;-><init>(Lcom/flurry/sdk/v;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private I()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/lt;->a()V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/v;->a(J)V

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->v()V

    sget-object v0, Lcom/flurry/sdk/bc;->a:Lcom/flurry/sdk/bc;

    iget-object v1, p0, Lcom/flurry/sdk/v;->i:Lcom/flurry/sdk/au;

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/flurry/sdk/gx;->a(Landroid/content/Context;Lcom/flurry/sdk/t;)V

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->q()Lcom/flurry/sdk/hg;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->f()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/flurry/sdk/hg;->a(Landroid/content/Context;Lcom/flurry/sdk/s;)Lcom/flurry/sdk/hf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/hf;->a()V

    goto :goto_0
.end method

.method private J()Z
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x0

    invoke-static {}, Lcom/flurry/sdk/lr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device is locked: banner will NOT rotate for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/v;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No banner holder: banner will NOT rotate for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private K()V
    .locals 6

    iget-boolean v0, p0, Lcom/flurry/sdk/v;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bb;->v:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/bb;->v:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->l()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bb;->v:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private L()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/v;->j:Z

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bb;->v:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/v;J)J
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/v;->l:J

    return-wide p1
.end method

.method private a(J)V
    .locals 5

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduled banner rotation for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/flurry/sdk/v;->r:J

    iput-wide p1, p0, Lcom/flurry/sdk/v;->s:J

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/v;->L()V

    return-void
.end method

.method private a(Z)V
    .locals 4

    const/4 v3, 0x3

    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session Id not created yet. Delaying the fetch until session is created."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/v;->k:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->d()V

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    const-string v0, "VerifyPackageLog"

    const-string v1, "nextAdUnit() cacheSize is empty"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    iput-object p0, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching ad now for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/v;->H()V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/v;->I()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/flurry/sdk/v;->C()V

    invoke-direct {p0}, Lcom/flurry/sdk/v;->E()V

    invoke-direct {p0}, Lcom/flurry/sdk/v;->G()V

    iput-boolean v0, p0, Lcom/flurry/sdk/v;->j:Z

    iput-boolean v0, p0, Lcom/flurry/sdk/v;->k:Z

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->e()Lcom/flurry/sdk/w;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/w;->a(Ljava/lang/String;Lcom/flurry/sdk/v;)Z

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/s;)V

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/v$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/v$4;-><init>(Lcom/flurry/sdk/v;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/flurry/sdk/v;->g:Lcom/flurry/sdk/dq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/v;->g:Lcom/flurry/sdk/dq;

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->a()V

    :cond_1
    return-void
.end method

.method public a(Landroid/widget/RelativeLayout;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/v;->p:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/flurry/sdk/au;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/v;->h:Lcom/flurry/sdk/au;

    return-void
.end method

.method public a(Lcom/flurry/sdk/au;JZ)V
    .locals 2

    invoke-virtual {p1}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/bc;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bc;->a:Lcom/flurry/sdk/bc;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->y()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->y()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/flurry/sdk/v;->a(J)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/v;->A()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p4}, Lcom/flurry/sdk/v;->a(Z)V

    goto :goto_1
.end method

.method protected a(Lcom/flurry/sdk/d;)V
    .locals 5

    sget-object v0, Lcom/flurry/sdk/d$a;->c:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting ad request from EnsureCacheNotEmpty size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/y;Lcom/flurry/sdk/au;)V

    :cond_1
    sget-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/v$a;->a:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/flurry/sdk/v$a;->b:Lcom/flurry/sdk/v$a;

    iput-object v0, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/flurry/sdk/v;->q:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/v$a;->d:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/v$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/v$7;-><init>(Lcom/flurry/sdk/v;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    :cond_4
    sget-object v0, Lcom/flurry/sdk/d$a;->g:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/flurry/sdk/v;->L()V

    :cond_5
    return-void

    :cond_6
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/v$a;->c:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/v$a;->d:Lcom/flurry/sdk/v$a;

    iput-object v0, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->b()V

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Lcom/flurry/sdk/dr;
    .locals 4

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/fd;->b()Lcom/flurry/sdk/dc;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->m()Lcom/flurry/sdk/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/z;->a(Ljava/lang/String;Lcom/flurry/sdk/dc;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z$a;->a()Lcom/flurry/sdk/dr;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/v;->C()V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-direct {p0}, Lcom/flurry/sdk/v;->B()V

    iget-wide v0, p0, Lcom/flurry/sdk/v;->r:J

    iput-wide v0, p0, Lcom/flurry/sdk/v;->s:J

    invoke-direct {p0}, Lcom/flurry/sdk/v;->K()V

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/v;->b:I

    return v0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/v;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->a()V

    return-void
.end method

.method public g()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/v;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/v;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/flurry/sdk/dq;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/v;->g:Lcom/flurry/sdk/dq;

    return-object v0
.end method

.method public j()Lcom/flurry/sdk/y;
    .locals 4

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/fd;->b()Lcom/flurry/sdk/dc;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->m()Lcom/flurry/sdk/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/z;->a(Ljava/lang/String;Lcom/flurry/sdk/dc;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z$a;->b()Lcom/flurry/sdk/y;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/bc;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bc;->a:Lcom/flurry/sdk/bc;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l()Lcom/flurry/sdk/au;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/v;->i:Lcom/flurry/sdk/au;

    return-object v0
.end method

.method public m()Lcom/flurry/sdk/e;
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/j;->d()Lcom/flurry/sdk/e;

    move-result-object v0

    return-object v0
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/v;->g:Lcom/flurry/sdk/dq;

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->c()V

    return-void
.end method

.method public o()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/v;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    instance-of v2, v1, Lcom/flurry/sdk/gt;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/flurry/sdk/gt;

    invoke-virtual {v1}, Lcom/flurry/sdk/gt;->onActivityDestroy()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->g()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/v;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public p()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/v$a;->b:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

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

.method public q()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/v;->q:Z

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/v$a;->a:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    sget-object v0, Lcom/flurry/sdk/v$a;->b:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/v$a;->c:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/v$a;->d:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    sget-object v0, Lcom/flurry/sdk/v$a;->a:Lcom/flurry/sdk/v$a;

    iput-object v0, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public r()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/v$a;->a:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/v$a;->d:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/flurry/sdk/ba;->r:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    sget-object v0, Lcom/flurry/sdk/v$a;->b:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/v$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/v$5;-><init>(Lcom/flurry/sdk/v;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/v$a;->c:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public s()Z
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/sdk/v;->q:Z

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/flurry/sdk/v$a;->a:Lcom/flurry/sdk/v$a;

    iget-object v3, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->i()Lcom/flurry/sdk/dq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dr;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    sget-object v2, Lcom/flurry/sdk/v$a;->b:Lcom/flurry/sdk/v$a;

    iget-object v3, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/v$6;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/v$6;-><init>(Lcom/flurry/sdk/v;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/flurry/sdk/v$a;->c:Lcom/flurry/sdk/v$a;

    iget-object v2, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/flurry/sdk/v$a;->d:Lcom/flurry/sdk/v$a;

    iget-object v2, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->i()Lcom/flurry/sdk/dq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dr;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected t()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-wide v0, p0, Lcom/flurry/sdk/v;->r:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/flurry/sdk/v;->s:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/flurry/sdk/v;->l:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/v;->s:J

    iget-wide v0, p0, Lcom/flurry/sdk/v;->s:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/flurry/sdk/v;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rotating banner for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V

    :cond_0
    iget-wide v0, p0, Lcom/flurry/sdk/v;->r:J

    iput-wide v0, p0, Lcom/flurry/sdk/v;->s:J

    :cond_1
    return-void
.end method

.method protected u()V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/lt;->b()V

    iget-object v0, p0, Lcom/flurry/sdk/v;->h:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/v;->h:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/v;->a:Ljava/lang/String;

    const-string v2, "Precaching optional for ad, copying assets before display"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/v;->h:Lcom/flurry/sdk/au;

    invoke-virtual {v0, p0, v1}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;)Z

    :cond_0
    return-void
.end method

.method protected v()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/v;->h:Lcom/flurry/sdk/au;

    iput-object v0, p0, Lcom/flurry/sdk/v;->i:Lcom/flurry/sdk/au;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/v;->h:Lcom/flurry/sdk/au;

    return-void
.end method

.method protected w()V
    .locals 3

    iget-boolean v0, p0, Lcom/flurry/sdk/v;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->b()Lcom/flurry/sdk/dr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/v;->j()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/v;->k:Z

    :cond_0
    return-void
.end method

.method public x()Z
    .locals 2

    sget-object v0, Lcom/flurry/sdk/v$a;->a:Lcom/flurry/sdk/v$a;

    iget-object v1, p0, Lcom/flurry/sdk/v;->f:Lcom/flurry/sdk/v$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/v;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->w()Z

    move-result v0

    goto :goto_0
.end method

.method public y()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/v;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected z()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/v;->j:Z

    iput-boolean v0, p0, Lcom/flurry/sdk/v;->k:Z

    return-void
.end method
