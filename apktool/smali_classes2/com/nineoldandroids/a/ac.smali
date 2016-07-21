.class public Lcom/nineoldandroids/a/ac;
.super Lcom/nineoldandroids/a/a;


# static fields
.field private static h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/nineoldandroids/a/ai;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/ac;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/ac;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final k:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/ac;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final l:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/ac;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final m:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/ac;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final n:Landroid/view/animation/Interpolator;

.field private static final o:Lcom/nineoldandroids/a/ab;

.field private static final p:Lcom/nineoldandroids/a/ab;

.field private static z:J


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/view/animation/Interpolator;

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/aj;",
            ">;"
        }
    .end annotation
.end field

.field b:J

.field c:J

.field d:I

.field e:Z

.field f:[Lcom/nineoldandroids/a/z;

.field g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nineoldandroids/a/z;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:I

.field private s:F

.field private t:Z

.field private u:J

.field private v:Z

.field private w:Z

.field private x:J

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/nineoldandroids/a/ac;->h:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/nineoldandroids/a/ad;

    invoke-direct {v0}, Lcom/nineoldandroids/a/ad;-><init>()V

    sput-object v0, Lcom/nineoldandroids/a/ac;->i:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/nineoldandroids/a/ae;

    invoke-direct {v0}, Lcom/nineoldandroids/a/ae;-><init>()V

    sput-object v0, Lcom/nineoldandroids/a/ac;->j:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/nineoldandroids/a/af;

    invoke-direct {v0}, Lcom/nineoldandroids/a/af;-><init>()V

    sput-object v0, Lcom/nineoldandroids/a/ac;->k:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/nineoldandroids/a/ag;

    invoke-direct {v0}, Lcom/nineoldandroids/a/ag;-><init>()V

    sput-object v0, Lcom/nineoldandroids/a/ac;->l:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/nineoldandroids/a/ah;

    invoke-direct {v0}, Lcom/nineoldandroids/a/ah;-><init>()V

    sput-object v0, Lcom/nineoldandroids/a/ac;->m:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/nineoldandroids/a/ac;->n:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/nineoldandroids/a/f;

    invoke-direct {v0}, Lcom/nineoldandroids/a/f;-><init>()V

    sput-object v0, Lcom/nineoldandroids/a/ac;->o:Lcom/nineoldandroids/a/ab;

    new-instance v0, Lcom/nineoldandroids/a/d;

    invoke-direct {v0}, Lcom/nineoldandroids/a/d;-><init>()V

    sput-object v0, Lcom/nineoldandroids/a/ac;->p:Lcom/nineoldandroids/a/ab;

    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/nineoldandroids/a/ac;->z:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/nineoldandroids/a/a;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nineoldandroids/a/ac;->c:J

    iput-boolean v2, p0, Lcom/nineoldandroids/a/ac;->q:Z

    iput v2, p0, Lcom/nineoldandroids/a/ac;->r:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nineoldandroids/a/ac;->s:F

    iput-boolean v2, p0, Lcom/nineoldandroids/a/ac;->t:Z

    iput v2, p0, Lcom/nineoldandroids/a/ac;->d:I

    iput-boolean v2, p0, Lcom/nineoldandroids/a/ac;->v:Z

    iput-boolean v2, p0, Lcom/nineoldandroids/a/ac;->w:Z

    iput-boolean v2, p0, Lcom/nineoldandroids/a/ac;->e:Z

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/nineoldandroids/a/ac;->x:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nineoldandroids/a/ac;->y:J

    iput v2, p0, Lcom/nineoldandroids/a/ac;->A:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/nineoldandroids/a/ac;->B:I

    sget-object v0, Lcom/nineoldandroids/a/ac;->n:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/nineoldandroids/a/ac;->C:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/a/ac;->D:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/nineoldandroids/a/ac;)J
    .locals 2

    iget-wide v0, p0, Lcom/nineoldandroids/a/ac;->y:J

    return-wide v0
.end method

.method static synthetic a(Lcom/nineoldandroids/a/ac;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nineoldandroids/a/ac;->v:Z

    return-void
.end method

.method private a(Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lcom/nineoldandroids/a/ac;->q:Z

    iput v3, p0, Lcom/nineoldandroids/a/ac;->r:I

    iput v3, p0, Lcom/nineoldandroids/a/ac;->d:I

    iput-boolean v2, p0, Lcom/nineoldandroids/a/ac;->w:Z

    iput-boolean v3, p0, Lcom/nineoldandroids/a/ac;->t:Z

    sget-object v0, Lcom/nineoldandroids/a/ac;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/nineoldandroids/a/ac;->y:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nineoldandroids/a/ac;->k()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/nineoldandroids/a/ac;->c(J)V

    iput v3, p0, Lcom/nineoldandroids/a/ac;->d:I

    iput-boolean v2, p0, Lcom/nineoldandroids/a/ac;->v:Z

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_3

    :cond_1
    sget-object v0, Lcom/nineoldandroids/a/ac;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/ai;

    if-nez v0, :cond_2

    new-instance v0, Lcom/nineoldandroids/a/ai;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nineoldandroids/a/ai;-><init>(Lcom/nineoldandroids/a/ai;)V

    sget-object v1, Lcom/nineoldandroids/a/ac;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, v3}, Lcom/nineoldandroids/a/ai;->sendEmptyMessage(I)Z

    return-void

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/b;

    invoke-interface {v1, p0}, Lcom/nineoldandroids/a/b;->a(Lcom/nineoldandroids/a/a;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private a(J)Z
    .locals 7

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/nineoldandroids/a/ac;->t:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/nineoldandroids/a/ac;->t:Z

    iput-wide p1, p0, Lcom/nineoldandroids/a/ac;->u:J

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/nineoldandroids/a/ac;->u:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lcom/nineoldandroids/a/ac;->y:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v4, p0, Lcom/nineoldandroids/a/ac;->y:J

    sub-long/2addr v2, v4

    sub-long v2, p1, v2

    iput-wide v2, p0, Lcom/nineoldandroids/a/ac;->b:J

    iput v0, p0, Lcom/nineoldandroids/a/ac;->d:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/nineoldandroids/a/ac;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nineoldandroids/a/ac;->a(J)Z

    move-result v0

    return v0
.end method

.method public static varargs b([F)Lcom/nineoldandroids/a/ac;
    .locals 1

    new-instance v0, Lcom/nineoldandroids/a/ac;

    invoke-direct {v0}, Lcom/nineoldandroids/a/ac;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nineoldandroids/a/ac;->a([F)V

    return-object v0
.end method

.method static synthetic b(Lcom/nineoldandroids/a/ac;)V
    .locals 0

    invoke-direct {p0}, Lcom/nineoldandroids/a/ac;->t()V

    return-void
.end method

.method static synthetic c(Lcom/nineoldandroids/a/ac;)V
    .locals 0

    invoke-direct {p0}, Lcom/nineoldandroids/a/ac;->i()V

    return-void
.end method

.method private i()V
    .locals 5

    const/4 v3, 0x0

    sget-object v0, Lcom/nineoldandroids/a/ac;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nineoldandroids/a/ac;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/nineoldandroids/a/ac;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput v3, p0, Lcom/nineoldandroids/a/ac;->d:I

    iget-boolean v0, p0, Lcom/nineoldandroids/a/ac;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_1

    :cond_0
    iput-boolean v3, p0, Lcom/nineoldandroids/a/ac;->v:Z

    iput-boolean v3, p0, Lcom/nineoldandroids/a/ac;->w:Z

    return-void

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/b;

    invoke-interface {v1, p0}, Lcom/nineoldandroids/a/b;->b(Lcom/nineoldandroids/a/a;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method static synthetic n()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/nineoldandroids/a/ac;->i:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic o()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/nineoldandroids/a/ac;->k:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic p()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/nineoldandroids/a/ac;->j:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic q()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/nineoldandroids/a/ac;->m:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic r()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/nineoldandroids/a/ac;->l:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic s()J
    .locals 2

    sget-wide v0, Lcom/nineoldandroids/a/ac;->z:J

    return-wide v0
.end method

.method private t()V
    .locals 4

    invoke-virtual {p0}, Lcom/nineoldandroids/a/ac;->h()V

    sget-object v0, Lcom/nineoldandroids/a/ac;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/nineoldandroids/a/ac;->y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/b;

    invoke-interface {v1, p0}, Lcom/nineoldandroids/a/b;->a(Lcom/nineoldandroids/a/a;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nineoldandroids/a/ac;->a(Z)V

    return-void
.end method

.method a(F)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nineoldandroids/a/ac;->C:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iput v2, p0, Lcom/nineoldandroids/a/ac;->s:F

    iget-object v1, p0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    array-length v3, v1

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/nineoldandroids/a/ac;->D:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nineoldandroids/a/ac;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_2

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Lcom/nineoldandroids/a/z;->a(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/aj;

    invoke-interface {v0, p0}, Lcom/nineoldandroids/a/aj;->a(Lcom/nineoldandroids/a/ac;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/nineoldandroids/a/ac;->C:Landroid/view/animation/Interpolator;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/a/ac;->C:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public a(Lcom/nineoldandroids/a/aj;)V
    .locals 1

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->D:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/a/ac;->D:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs a([F)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nineoldandroids/a/z;

    const-string v1, ""

    invoke-static {v1, p1}, Lcom/nineoldandroids/a/z;->a(Ljava/lang/String;[F)Lcom/nineoldandroids/a/z;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/a/ac;->a([Lcom/nineoldandroids/a/z;)V

    :goto_1
    iput-boolean v2, p0, Lcom/nineoldandroids/a/ac;->e:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/a/z;->a([F)V

    goto :goto_1
.end method

.method public varargs a([Lcom/nineoldandroids/a/z;)V
    .locals 6

    const/4 v1, 0x0

    array-length v2, p1

    iput-object p1, p0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/nineoldandroids/a/ac;->g:Ljava/util/HashMap;

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/nineoldandroids/a/ac;->e:Z

    return-void

    :cond_0
    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/nineoldandroids/a/ac;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/nineoldandroids/a/z;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(J)Lcom/nineoldandroids/a/ac;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Lcom/nineoldandroids/a/ac;->x:J

    return-object p0
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lcom/nineoldandroids/a/ac;->d:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/nineoldandroids/a/ac;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nineoldandroids/a/ac;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/nineoldandroids/a/ac;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/nineoldandroids/a/ac;->i()V

    :cond_2
    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/b;

    invoke-interface {v0, p0}, Lcom/nineoldandroids/a/b;->c(Lcom/nineoldandroids/a/a;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    sget-object v0, Lcom/nineoldandroids/a/ac;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/nineoldandroids/a/ac;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nineoldandroids/a/ac;->t:Z

    invoke-direct {p0}, Lcom/nineoldandroids/a/ac;->t()V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/nineoldandroids/a/ac;->A:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/nineoldandroids/a/ac;->A:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/a/ac;->a(F)V

    :goto_1
    invoke-direct {p0}, Lcom/nineoldandroids/a/ac;->i()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/nineoldandroids/a/ac;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nineoldandroids/a/ac;->h()V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/a/ac;->a(F)V

    goto :goto_1
.end method

.method public c(J)V
    .locals 5

    invoke-virtual {p0}, Lcom/nineoldandroids/a/ac;->h()V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/nineoldandroids/a/ac;->d:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iput-wide p1, p0, Lcom/nineoldandroids/a/ac;->c:J

    const/4 v2, 0x2

    iput v2, p0, Lcom/nineoldandroids/a/ac;->d:I

    :cond_0
    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/nineoldandroids/a/ac;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/nineoldandroids/a/ac;->d(J)Z

    return-void
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/nineoldandroids/a/ac;->d:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/nineoldandroids/a/ac;->v:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method d(J)Z
    .locals 11

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/nineoldandroids/a/ac;->d:I

    if-nez v0, :cond_0

    iput v2, p0, Lcom/nineoldandroids/a/ac;->d:I

    iget-wide v6, p0, Lcom/nineoldandroids/a/ac;->c:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    iput-wide p1, p0, Lcom/nineoldandroids/a/ac;->b:J

    :cond_0
    :goto_0
    iget v0, p0, Lcom/nineoldandroids/a/ac;->d:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    return v1

    :cond_1
    iget-wide v6, p0, Lcom/nineoldandroids/a/ac;->c:J

    sub-long v6, p1, v6

    iput-wide v6, p0, Lcom/nineoldandroids/a/ac;->b:J

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/nineoldandroids/a/ac;->c:J

    goto :goto_0

    :pswitch_0
    iget-wide v6, p0, Lcom/nineoldandroids/a/ac;->x:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_6

    iget-wide v6, p0, Lcom/nineoldandroids/a/ac;->b:J

    sub-long v6, p1, v6

    long-to-float v0, v6

    iget-wide v6, p0, Lcom/nineoldandroids/a/ac;->x:J

    long-to-float v3, v6

    div-float v3, v0, v3

    :goto_2
    cmpl-float v0, v3, v5

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/nineoldandroids/a/ac;->r:I

    iget v4, p0, Lcom/nineoldandroids/a/ac;->A:I

    if-lt v0, v4, :cond_2

    iget v0, p0, Lcom/nineoldandroids/a/ac;->A:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_9

    :cond_2
    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v1

    :goto_3
    if-lt v4, v6, :cond_7

    :cond_3
    iget v0, p0, Lcom/nineoldandroids/a/ac;->B:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    iget-boolean v0, p0, Lcom/nineoldandroids/a/ac;->q:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/nineoldandroids/a/ac;->q:Z

    :cond_4
    iget v0, p0, Lcom/nineoldandroids/a/ac;->r:I

    float-to-int v2, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nineoldandroids/a/ac;->r:I

    rem-float v0, v3, v5

    iget-wide v2, p0, Lcom/nineoldandroids/a/ac;->b:J

    iget-wide v6, p0, Lcom/nineoldandroids/a/ac;->x:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/nineoldandroids/a/ac;->b:J

    :goto_5
    iget-boolean v2, p0, Lcom/nineoldandroids/a/ac;->q:Z

    if-eqz v2, :cond_5

    sub-float v0, v5, v0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/nineoldandroids/a/ac;->a(F)V

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/b;

    invoke-interface {v0, p0}, Lcom/nineoldandroids/a/b;->d(Lcom/nineoldandroids/a/a;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v2

    goto :goto_5

    :cond_a
    move v0, v3

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nineoldandroids/a/ac;->w:Z

    return v0
.end method

.method public synthetic g()Lcom/nineoldandroids/a/a;
    .locals 1

    invoke-virtual {p0}, Lcom/nineoldandroids/a/ac;->j()Lcom/nineoldandroids/a/ac;

    move-result-object v0

    return-object v0
.end method

.method h()V
    .locals 3

    iget-boolean v0, p0, Lcom/nineoldandroids/a/ac;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/a/ac;->e:Z

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nineoldandroids/a/z;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public j()Lcom/nineoldandroids/a/ac;
    .locals 7

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/nineoldandroids/a/a;->g()Lcom/nineoldandroids/a/a;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/ac;

    iget-object v1, p0, Lcom/nineoldandroids/a/ac;->D:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/nineoldandroids/a/ac;->D:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/nineoldandroids/a/ac;->D:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_2

    :cond_0
    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/nineoldandroids/a/ac;->c:J

    iput-boolean v2, v0, Lcom/nineoldandroids/a/ac;->q:Z

    iput v2, v0, Lcom/nineoldandroids/a/ac;->r:I

    iput-boolean v2, v0, Lcom/nineoldandroids/a/ac;->e:Z

    iput v2, v0, Lcom/nineoldandroids/a/ac;->d:I

    iput-boolean v2, v0, Lcom/nineoldandroids/a/ac;->t:Z

    iget-object v3, p0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    if-eqz v3, :cond_1

    array-length v4, v3

    new-array v1, v4, [Lcom/nineoldandroids/a/z;

    iput-object v1, v0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v0, Lcom/nineoldandroids/a/ac;->g:Ljava/util/HashMap;

    move v1, v2

    :goto_1
    if-lt v1, v4, :cond_3

    :cond_1
    return-object v0

    :cond_2
    iget-object v6, v0, Lcom/nineoldandroids/a/ac;->D:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/aj;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_3
    aget-object v2, v3, v1

    invoke-virtual {v2}, Lcom/nineoldandroids/a/z;->a()Lcom/nineoldandroids/a/z;

    move-result-object v2

    iget-object v5, v0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    aput-object v2, v5, v1

    iget-object v5, v0, Lcom/nineoldandroids/a/ac;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/z;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public k()J
    .locals 4

    iget-boolean v0, p0, Lcom/nineoldandroids/a/ac;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nineoldandroids/a/ac;->d:I

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nineoldandroids/a/ac;->b:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public l()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/nineoldandroids/a/z;->d()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->D:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/a/ac;->D:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValueAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n    "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nineoldandroids/a/ac;->f:[Lcom/nineoldandroids/a/z;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nineoldandroids/a/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
