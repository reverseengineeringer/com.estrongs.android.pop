.class public abstract Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:I

.field protected c:Lcom/duapps/ad/c;

.field protected d:Z

.field protected e:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field protected f:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field protected g:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/ImageView;

.field protected k:Z

.field private m:Lcom/dianxinos/lockscreen/ad/extra/d;

.field private final n:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->b:I

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->d:Z

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->k:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->b:I

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->d:Z

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->k:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/duapps/ad/c;Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->b:I

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->d:Z

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->k:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->n:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->d:Z

    invoke-virtual {p0, p1, p2}, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->a(Landroid/content/Context;Lcom/duapps/ad/c;)V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;)Lcom/dianxinos/lockscreen/ad/extra/d;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->m:Lcom/dianxinos/lockscreen/ad/extra/d;

    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/duapps/ad/c;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DuAdData is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(Landroid/content/Context;Lcom/duapps/ad/c;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->b(Landroid/content/Context;Lcom/duapps/ad/c;)V

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->c:Lcom/duapps/ad/c;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/j;->a(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->e:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-void
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method protected abstract b()V
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->c:Lcom/duapps/ad/c;

    invoke-virtual {v0, p0}, Lcom/duapps/ad/c;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->d()V

    return-void
.end method

.method protected d()V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->c:Lcom/duapps/ad/c;

    new-instance v1, Lcom/dianxinos/lockscreen/ad/extra/c;

    invoke-direct {v1, p0}, Lcom/dianxinos/lockscreen/ad/extra/c;-><init>(Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;)V

    invoke-virtual {v0, v1}, Lcom/duapps/ad/c;->a(Lcom/duapps/ad/d;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->e:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->stop()V

    return-void
.end method

.method public getCardType()I
    .locals 1

    iget v0, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->b:I

    return v0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->c:Lcom/duapps/ad/c;

    invoke-virtual {v0}, Lcom/duapps/ad/c;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->a(Landroid/view/View;)V

    return-void
.end method

.method public setDXClickListener(Lcom/dianxinos/lockscreen/ad/extra/d;)V
    .locals 2

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->m:Lcom/dianxinos/lockscreen/ad/extra/d;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
