.class public Lcom/duapps/ad/entity/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duapps/ad/entity/a/c;


# static fields
.field private static final a:Ljava/lang/String;

.field private static f:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/duapps/ad/entity/f;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View;

.field private e:Lcom/duapps/ad/entity/AdData;

.field private g:Lcom/duapps/ad/entity/g;

.field private h:Lcom/duapps/ad/stats/c;

.field private i:Lcom/duapps/ad/d;

.field private j:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/duapps/ad/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/entity/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/duapps/ad/entity/f;->f:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;Lcom/duapps/ad/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    iput-object p1, p0, Lcom/duapps/ad/entity/f;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/duapps/ad/entity/f;->i:Lcom/duapps/ad/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/entity/f;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/entity/f;)Lcom/duapps/ad/d;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->i:Lcom/duapps/ad/d;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/entity/f;Lcom/duapps/ad/stats/c;)Lcom/duapps/ad/stats/c;
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/entity/f;->h:Lcom/duapps/ad/stats/c;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/duapps/ad/entity/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/List;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/duapps/ad/entity/f;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/duapps/ad/entity/f;)Lcom/duapps/ad/stats/c;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->h:Lcom/duapps/ad/stats/c;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->g:Lcom/duapps/ad/entity/g;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->g:Lcom/duapps/ad/entity/g;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/duapps/ad/entity/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/duapps/ad/entity/f;)Z
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/entity/f;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/duapps/ad/entity/f;)Lcom/duapps/ad/entity/AdData;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    return-object v0
.end method

.method static synthetic f(Lcom/duapps/ad/entity/f;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/duapps/ad/entity/f;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->j:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private p()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/duapps/ad/entity/f;->a(Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/entity/f;->a(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide a view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid set of clickable views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/duapps/ad/entity/f;->b()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/duapps/ad/entity/f;->a:Ljava/lang/String;

    const-string v1, "Ad not loaded"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/duapps/ad/entity/f;->d:Landroid/view/View;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/duapps/ad/entity/f;->a:Ljava/lang/String;

    const-string v1, "Native Ad was already registered with a View, Auto unregistering and proceeding"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/duapps/ad/entity/f;->c()V

    :cond_4
    sget-object v0, Lcom/duapps/ad/entity/f;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/duapps/ad/entity/f;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/duapps/ad/entity/f;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/f;

    invoke-virtual {v0}, Lcom/duapps/ad/entity/f;->c()V

    :cond_5
    new-instance v0, Lcom/duapps/ad/entity/g;

    invoke-direct {v0, p0}, Lcom/duapps/ad/entity/g;-><init>(Lcom/duapps/ad/entity/f;)V

    iput-object v0, p0, Lcom/duapps/ad/entity/f;->g:Lcom/duapps/ad/entity/g;

    iput-object p1, p0, Lcom/duapps/ad/entity/f;->d:Landroid/view/View;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/duapps/ad/entity/f;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/duapps/ad/entity/f;->f:Ljava/util/WeakHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->b:Landroid/content/Context;

    new-instance v1, Lcom/duapps/ad/stats/p;

    iget-object v2, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    invoke-direct {v1, v2}, Lcom/duapps/ad/stats/p;-><init>(Lcom/duapps/ad/entity/AdData;)V

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/u;->h(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->E:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->E:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    invoke-static {v0}, Lcom/duapps/ad/stats/u;->b(Lcom/duapps/ad/entity/AdData;)V

    :cond_7
    return-void
.end method

.method public a(Lcom/duapps/ad/d;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/entity/f;->i:Lcom/duapps/ad/d;

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/entity/f;->d:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/duapps/ad/entity/f;->f:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/duapps/ad/entity/f;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/duapps/ad/entity/f;->f:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/duapps/ad/entity/f;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View not regitered with this NativeAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lcom/duapps/ad/entity/f;->f:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/duapps/ad/entity/f;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/duapps/ad/entity/f;->p()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duapps/ad/entity/f;->d:Landroid/view/View;

    goto :goto_0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/entity/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->s:Ljava/lang/String;

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/entity/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/entity/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->A:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/entity/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/entity/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public j()F
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/entity/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    iget v0, v0, Lcom/duapps/ad/entity/AdData;->k:F

    goto :goto_0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/entity/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/duapps/ad/entity/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v1, v1, Lcom/duapps/ad/entity/AdData;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/entity/f;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v1, v1, Lcom/duapps/ad/entity/AdData;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
