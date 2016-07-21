.class public final Lcom/google/android/gms/common/api/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/accounts/Account;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Lcom/google/android/gms/common/internal/x;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/content/Context;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Lcom/google/android/gms/common/api/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/support/v4/app/FragmentActivity;

.field private k:I

.field private l:I

.field private m:Lcom/google/android/gms/common/api/r;

.field private n:Landroid/os/Looper;

.field private o:Lcom/google/android/gms/common/b;

.field private p:Lcom/google/android/gms/common/api/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/g",
            "<+",
            "Lcom/google/android/gms/signin/f;",
            "Lcom/google/android/gms/signin/g;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/q;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/r;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/google/android/gms/signin/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->b:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/sp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/sp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->g:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/sp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/sp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->i:Ljava/util/Map;

    iput v1, p0, Lcom/google/android/gms/common/api/o;->k:I

    iput v1, p0, Lcom/google/android/gms/common/api/o;->l:I

    invoke-static {}, Lcom/google/android/gms/common/b;->a()Lcom/google/android/gms/common/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->o:Lcom/google/android/gms/common/b;

    sget-object v0, Lcom/google/android/gms/signin/b;->c:Lcom/google/android/gms/common/api/g;

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->p:Lcom/google/android/gms/common/api/g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->r:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/signin/i;

    invoke-direct {v0}, Lcom/google/android/gms/signin/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->s:Lcom/google/android/gms/signin/i;

    iput-object p1, p0, Lcom/google/android/gms/common/api/o;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->n:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/o;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/o;)Landroid/support/v4/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->j:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/api/bn;Lcom/google/android/gms/common/api/n;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/api/o;->k:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/o;->m:Lcom/google/android/gms/common/api/r;

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/gms/common/api/bn;->a(ILcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/r;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/o;Lcom/google/android/gms/common/api/bn;Lcom/google/android/gms/common/api/n;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/bn;Lcom/google/android/gms/common/api/n;)V

    return-void
.end method

.method private c()Lcom/google/android/gms/common/api/n;
    .locals 11

    new-instance v0, Lcom/google/android/gms/common/api/ay;

    iget-object v1, p0, Lcom/google/android/gms/common/api/o;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/o;->n:Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/o;->a()Lcom/google/android/gms/common/internal/w;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/o;->o:Lcom/google/android/gms/common/b;

    iget-object v5, p0, Lcom/google/android/gms/common/api/o;->p:Lcom/google/android/gms/common/api/g;

    iget-object v6, p0, Lcom/google/android/gms/common/api/o;->i:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/o;->q:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/google/android/gms/common/api/o;->r:Ljava/util/ArrayList;

    iget v9, p0, Lcom/google/android/gms/common/api/o;->k:I

    const/4 v10, -0x1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/common/api/ay;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/w;Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/api/g;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/o;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/google/android/gms/common/api/bn;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/common/api/bn;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/api/o;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/gms/common/api/p;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/common/api/p;-><init>(Lcom/google/android/gms/common/api/o;Lcom/google/android/gms/common/api/n;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/bn;Lcom/google/android/gms/common/api/n;)V

    goto :goto_0
.end method

.method private d()Lcom/google/android/gms/common/api/n;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->j:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/google/android/gms/common/api/bq;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/common/api/bq;

    move-result-object v11

    iget v0, p0, Lcom/google/android/gms/common/api/o;->l:I

    invoke-virtual {v11, v0}, Lcom/google/android/gms/common/api/bq;->a(I)Lcom/google/android/gms/common/api/n;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/ay;

    iget-object v1, p0, Lcom/google/android/gms/common/api/o;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/o;->n:Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/o;->a()Lcom/google/android/gms/common/internal/w;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/o;->o:Lcom/google/android/gms/common/b;

    iget-object v5, p0, Lcom/google/android/gms/common/api/o;->p:Lcom/google/android/gms/common/api/g;

    iget-object v6, p0, Lcom/google/android/gms/common/api/o;->i:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/o;->q:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/google/android/gms/common/api/o;->r:Ljava/util/ArrayList;

    const/4 v9, -0x1

    iget v10, p0, Lcom/google/android/gms/common/api/o;->l:I

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/common/api/ay;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/w;Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/api/g;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_0
    iget v1, p0, Lcom/google/android/gms/common/api/o;->l:I

    iget-object v2, p0, Lcom/google/android/gms/common/api/o;->m:Lcom/google/android/gms/common/api/r;

    invoke-virtual {v11, v1, v0, v2}, Lcom/google/android/gms/common/api/bq;->a(ILcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/r;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a",
            "<+",
            "Lcom/google/android/gms/common/api/e;",
            ">;)",
            "Lcom/google/android/gms/common/api/o;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->i:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/g;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/g;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/c;",
            ">(",
            "Lcom/google/android/gms/common/api/a",
            "<TO;>;TO;)",
            "Lcom/google/android/gms/common/api/o;"
        }
    .end annotation

    const-string v0, "Null options are not permitted for this Api"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/g;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/api/g;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Lcom/google/android/gms/common/internal/w;
    .locals 9

    new-instance v0, Lcom/google/android/gms/common/internal/w;

    iget-object v1, p0, Lcom/google/android/gms/common/api/o;->a:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/gms/common/api/o;->b:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gms/common/api/o;->g:Ljava/util/Map;

    iget v4, p0, Lcom/google/android/gms/common/api/o;->c:I

    iget-object v5, p0, Lcom/google/android/gms/common/api/o;->d:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/gms/common/api/o;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/common/api/o;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/common/api/o;->s:Lcom/google/android/gms/signin/i;

    invoke-virtual {v8}, Lcom/google/android/gms/signin/i;->a()Lcom/google/android/gms/signin/g;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/w;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/g;)V

    return-object v0
.end method

.method public b()Lcom/google/android/gms/common/api/n;
    .locals 11

    const/4 v9, -0x1

    iget-object v0, p0, Lcom/google/android/gms/common/api/o;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "must call addApi() to add at least one API"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/bn;->b(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/common/api/o;->k:I

    if-ltz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/o;->c()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/common/api/o;->l:I

    if-ltz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/o;->d()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/api/ay;

    iget-object v1, p0, Lcom/google/android/gms/common/api/o;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/o;->n:Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/o;->a()Lcom/google/android/gms/common/internal/w;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/o;->o:Lcom/google/android/gms/common/b;

    iget-object v5, p0, Lcom/google/android/gms/common/api/o;->p:Lcom/google/android/gms/common/api/g;

    iget-object v6, p0, Lcom/google/android/gms/common/api/o;->i:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/o;->q:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/google/android/gms/common/api/o;->r:Ljava/util/ArrayList;

    move v10, v9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/common/api/ay;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/w;Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/api/g;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_1
.end method
