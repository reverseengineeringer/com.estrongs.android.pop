.class public Lcom/flurry/sdk/go;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/gp$a;
.implements Lcom/flurry/sdk/gp$b;
.implements Lcom/flurry/sdk/gq$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/sdk/go$a;

.field private c:Lcom/flurry/sdk/gq;

.field private d:Lcom/flurry/sdk/gp;

.field private e:Landroid/widget/RelativeLayout;

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/go;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/go;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/go;->g:Z

    invoke-direct {p0, p1}, Lcom/flurry/sdk/go;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/ge$a;Ljava/util/List;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/ge$a;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/da;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/go;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/go;->g:Z

    invoke-direct/range {p0 .. p5}, Lcom/flurry/sdk/go;->a(Landroid/content/Context;Lcom/flurry/sdk/ge$a;Ljava/util/List;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/go;)Lcom/flurry/sdk/gp;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v1, -0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/go;->e:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/flurry/sdk/gq;

    invoke-direct {v0, p1, p0}, Lcom/flurry/sdk/gq;-><init>(Landroid/content/Context;Lcom/flurry/sdk/gq$a;)V

    iput-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    new-instance v0, Lcom/flurry/sdk/gl;

    invoke-direct {v0, p1, p0}, Lcom/flurry/sdk/gl;-><init>(Landroid/content/Context;Lcom/flurry/sdk/gp$b;)V

    iput-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/sdk/go;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    iget-object v1, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gp;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    iget-object v1, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gq;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/flurry/sdk/ge$a;Ljava/util/List;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/ge$a;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/da;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v6, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/go;->e:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/flurry/sdk/gq;

    invoke-direct {v0, p1, p0}, Lcom/flurry/sdk/gq;-><init>(Landroid/content/Context;Lcom/flurry/sdk/gq$a;)V

    iput-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz p2, :cond_2

    sget-object v0, Lcom/flurry/sdk/ge$a;->a:Lcom/flurry/sdk/ge$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/ge$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/flurry/sdk/gn;

    invoke-direct {v0, p1, p0, p3, p4}, Lcom/flurry/sdk/gn;-><init>(Landroid/content/Context;Lcom/flurry/sdk/gp$b;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    :cond_2
    :goto_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/sdk/go;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/flurry/sdk/ge$a;->b:Lcom/flurry/sdk/ge$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/ge$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/flurry/sdk/gm;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/gm;-><init>(Landroid/content/Context;Lcom/flurry/sdk/gp$a;Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    iget-object v1, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gq;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/gq;->seekTo(I)V

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->start()V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    instance-of v0, v0, Lcom/flurry/sdk/gl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->show()V

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/go$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/go$3;-><init>(Lcom/flurry/sdk/go;II)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/net/Uri;I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/gq;->a(Landroid/net/Uri;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/flurry/sdk/go$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/flurry/sdk/go;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->show()V

    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/go$a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    iget-object v1, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gp;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    instance-of v0, v0, Lcom/flurry/sdk/gl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->show()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->hide()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;FF)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/flurry/sdk/go$a;->a(Ljava/lang/String;FF)V

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/go$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/flurry/sdk/go$2;-><init>(Lcom/flurry/sdk/go;FF)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/gq;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/flurry/sdk/go$a;->a(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/gq;->a(Z)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->f()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/flurry/sdk/gp;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/gq;->a(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/go$a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->i()V

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_2

    :cond_2
    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/go;->g:Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->pause()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/go$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/go$1;-><init>(Lcom/flurry/sdk/go;I)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/go;->c()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/go$a;->c(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->i()V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->g()V

    :cond_1
    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/go;->f:I

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->a()V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/go$a;->c(I)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->b()V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/go$a;->d(I)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->h()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/flurry/sdk/go;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error during videoview reset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/kg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public j()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public k()Lcom/flurry/sdk/gq;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->getOffsetStartTime()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->e()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    invoke-interface {v0}, Lcom/flurry/sdk/go$a;->z()V

    :cond_0
    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/go;->f:I

    return v0
.end method

.method public p()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/go;->f:I

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    invoke-interface {v0}, Lcom/flurry/sdk/go$a;->a()V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    invoke-interface {v0}, Lcom/flurry/sdk/go$a;->w()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    invoke-interface {v0}, Lcom/flurry/sdk/go$a;->b()V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->hide()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->c()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->b()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->requestLayout()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->show()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/go;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/go;->a(I)V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/go;->c()V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->hide()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->d()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->a()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->requestLayout()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->show()V

    return-void
.end method

.method public v()V
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/go;->w()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    invoke-interface {v0}, Lcom/flurry/sdk/go$a;->k()V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/go;->f()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->hide()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->e()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->h()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->requestLayout()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->show()V

    return-void
.end method

.method public x()V
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/go;->y()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->b:Lcom/flurry/sdk/go$a;

    invoke-interface {v0}, Lcom/flurry/sdk/go$a;->l()V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/go;->g()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->hide()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->g()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->f()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->requestLayout()V

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->show()V

    return-void
.end method

.method public z()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->i()V

    iput-object v1, p0, Lcom/flurry/sdk/go;->d:Lcom/flurry/sdk/gp;

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/flurry/sdk/go;->c:Lcom/flurry/sdk/gq;

    :cond_1
    return-void
.end method
