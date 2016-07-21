.class public Lcom/flurry/sdk/gf;
.super Lcom/flurry/sdk/ge;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Ljava/lang/Boolean;

.field private C:Ljava/lang/Boolean;

.field private D:Lcom/flurry/sdk/gt$a;

.field private d:Z

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/content/Context;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/ProgressBar;

.field private m:Lcom/flurry/sdk/s;

.field private n:Lcom/flurry/sdk/fh;

.field private o:Ljava/lang/String;

.field private p:Lcom/flurry/sdk/jl;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/gf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gf;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/ge;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    iput-boolean v1, p0, Lcom/flurry/sdk/gf;->d:Z

    iput-boolean v1, p0, Lcom/flurry/sdk/gf;->t:Z

    iput-boolean v1, p0, Lcom/flurry/sdk/gf;->u:Z

    iput-boolean v1, p0, Lcom/flurry/sdk/gf;->v:Z

    iput-boolean v1, p0, Lcom/flurry/sdk/gf;->w:Z

    iput-boolean v1, p0, Lcom/flurry/sdk/gf;->x:Z

    iput-boolean v1, p0, Lcom/flurry/sdk/gf;->y:Z

    iput-boolean v1, p0, Lcom/flurry/sdk/gf;->z:Z

    iput-boolean v1, p0, Lcom/flurry/sdk/gf;->A:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gf;->B:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gf;->C:Ljava/lang/Boolean;

    new-instance v0, Lcom/flurry/sdk/gf$5;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gf$5;-><init>(Lcom/flurry/sdk/gf;)V

    iput-object v0, p0, Lcom/flurry/sdk/gf;->D:Lcom/flurry/sdk/gt$a;

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    if-nez v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/go;

    sget-object v2, Lcom/flurry/sdk/ge$a;->a:Lcom/flurry/sdk/ge$a;

    invoke-interface {p2}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {p2}, Lcom/flurry/sdk/s;->e()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/go;-><init>(Landroid/content/Context;Lcom/flurry/sdk/ge$a;Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/go;->a(Lcom/flurry/sdk/go$a;)V

    :cond_0
    new-instance v0, Lcom/flurry/sdk/fh;

    invoke-direct {v0}, Lcom/flurry/sdk/fh;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/gf;->n:Lcom/flurry/sdk/fh;

    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gf;->p:Lcom/flurry/sdk/jl;

    iput-object p2, p0, Lcom/flurry/sdk/gf;->m:Lcom/flurry/sdk/s;

    iput-object p1, p0, Lcom/flurry/sdk/gf;->j:Landroid/content/Context;

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->getServerParamInfo()V

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->G()V

    sget-object v0, Lcom/flurry/sdk/fg;->o:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gf;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gf;->q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->I()V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->initLayout()V

    return-void
.end method

.method private C()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gf;->w:Z

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->J()V

    return-void
.end method

.method private D()V
    .locals 2

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->F()V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->g:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private E()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gf;->l:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gf;->l:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private F()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gf;->l:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gf;->l:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private G()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/flurry/sdk/gf;->p:Lcom/flurry/sdk/jl;

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gf;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gf;->p:Lcom/flurry/sdk/jl;

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->d()Lcom/flurry/sdk/jl$a;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/jl$a;->c:Lcom/flurry/sdk/jl$a;

    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/flurry/sdk/gf;->d:Z

    invoke-virtual {p0, v2}, Lcom/flurry/sdk/gf;->setAutoPlay(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gf;->C:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/gf;->p:Lcom/flurry/sdk/jl;

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->d()Lcom/flurry/sdk/jl$a;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/jl$a;->d:Lcom/flurry/sdk/jl$a;

    if-ne v0, v1, :cond_2

    iput-boolean v2, p0, Lcom/flurry/sdk/gf;->d:Z

    invoke-virtual {p0, v2}, Lcom/flurry/sdk/gf;->setAutoPlay(Z)V

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/flurry/sdk/gf;->d:Z

    invoke-virtual {p0, v3}, Lcom/flurry/sdk/gf;->setAutoPlay(Z)V

    goto :goto_0
.end method

.method private H()V
    .locals 2

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gf;->l:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->E()V

    return-void
.end method

.method private I()V
    .locals 1

    new-instance v0, Lcom/flurry/sdk/hc;

    invoke-direct {v0}, Lcom/flurry/sdk/hc;-><init>()V

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->x()V

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gf;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method private J()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/gk;->g(Z)V

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->a(I)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gk;)V

    iput-boolean v2, p0, Lcom/flurry/sdk/gf;->w:Z

    iput-boolean v2, p0, Lcom/flurry/sdk/gf;->y:Z

    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->y:Z

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gf;->a(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->o()V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->F()V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->requestLayout()V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/widget/FrameLayout;)V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gf;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gf;->g:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/flurry/sdk/gf;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->g:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gf;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/gf$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gf$2;-><init>(Lcom/flurry/sdk/gf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->D()V

    iget-object v1, p0, Lcom/flurry/sdk/gf;->g:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/widget/RelativeLayout;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v2, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/flurry/sdk/gf;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gf;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/flurry/sdk/gf;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/flurry/sdk/gf;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gf;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/gf;->h:Landroid/widget/Button;

    new-instance v1, Lcom/flurry/sdk/gf$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gf$3;-><init>(Lcom/flurry/sdk/gf;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gf;->h:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gf;->h:Landroid/widget/Button;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/gf;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/gf;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->J()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_2

    const/high16 v1, 0x10800000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/gf;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/gf;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/sdk/gf;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gf;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private b(Landroid/widget/FrameLayout;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0xc8

    invoke-static {v2}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v2

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gf;->j:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/gf;->k:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gf;->k:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gf;->r:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gf;->n:Lcom/flurry/sdk/fh;

    iget-object v2, p0, Lcom/flurry/sdk/gf;->k:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/flurry/sdk/gf;->m:Lcom/flurry/sdk/s;

    invoke-interface {v3}, Lcom/flurry/sdk/s;->e()I

    move-result v3

    iget-object v4, p0, Lcom/flurry/sdk/gf;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/flurry/sdk/fh;->a(Landroid/view/View;ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/gf;->k:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gf;->k:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/flurry/sdk/gf;->a(Landroid/widget/RelativeLayout;)V

    iget-object v1, p0, Lcom/flurry/sdk/gf;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/gf;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/gf;->A:Z

    return p1
.end method

.method static synthetic c(Lcom/flurry/sdk/gf;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gf;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/gf;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/gf;->z:Z

    return p1
.end method

.method static synthetic d(Lcom/flurry/sdk/gf;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gf;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/gf;->m:Lcom/flurry/sdk/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gf;->m:Lcom/flurry/sdk/s;

    invoke-interface {v0}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/da;

    iget-object v2, v0, Lcom/flurry/sdk/da;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/flurry/sdk/da;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/gf;->m:Lcom/flurry/sdk/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gf;->m:Lcom/flurry/sdk/s;

    invoke-interface {v0}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/da;

    iget-object v2, v0, Lcom/flurry/sdk/da;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/flurry/sdk/da;->f:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/flurry/sdk/gf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->x:Z

    return v0
.end method

.method static synthetic f(Lcom/flurry/sdk/gf;)Lcom/flurry/sdk/s;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gf;->m:Lcom/flurry/sdk/s;

    return-object v0
.end method

.method static synthetic g(Lcom/flurry/sdk/gf;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->D()V

    return-void
.end method

.method private getServerParamInfo()V
    .locals 2

    sget-object v0, Lcom/flurry/sdk/fg;->n:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gf;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "autoplayWifi"

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/gf;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/gf;->B:Ljava/lang/Boolean;

    const-string v1, "autoplayCell"

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/gf;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gf;->C:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ge$a;I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/flurry/sdk/ge$a;->b:Lcom/flurry/sdk/ge$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ge$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->u()V

    iput-boolean v1, p0, Lcom/flurry/sdk/gf;->u:Z

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->d()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->d()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/gf;->s:I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/flurry/sdk/gf;->j:Landroid/content/Context;

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ad_object_legacy"

    iget-object v2, p0, Lcom/flurry/sdk/gf;->m:Lcom/flurry/sdk/s;

    instance-of v2, v2, Lcom/flurry/sdk/v;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "ad_object_id"

    iget-object v2, p0, Lcom/flurry/sdk/gf;->m:Lcom/flurry/sdk/s;

    invoke-interface {v2}, Lcom/flurry/sdk/s;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "url"

    iget-object v2, p0, Lcom/flurry/sdk/gf;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "close_ad"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/flurry/sdk/gf;->j:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/flurry/sdk/gf;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/flurry/sdk/ge$a;->a:Lcom/flurry/sdk/ge$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ge$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->E()V

    iput-boolean v1, p0, Lcom/flurry/sdk/gf;->t:Z

    iput-boolean v3, p0, Lcom/flurry/sdk/gf;->u:Z

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/go;->a(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/go;->b(Z)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->h()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gf;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->suspend()V

    :cond_5
    invoke-direct {p0}, Lcom/flurry/sdk/gf;->C()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->G()V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->a()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/flurry/sdk/gf;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/flurry/sdk/gf;->y:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->m()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gf;->a(I)V

    :cond_0
    iget-boolean v1, p0, Lcom/flurry/sdk/gf;->v:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/flurry/sdk/gf;->z:Z

    if-eqz v1, :cond_5

    :cond_1
    iget-boolean v1, p0, Lcom/flurry/sdk/gf;->w:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->q()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->C()V

    iput-boolean v2, p0, Lcom/flurry/sdk/gf;->v:Z

    iput-boolean v2, p0, Lcom/flurry/sdk/gf;->z:Z

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/sdk/gf;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    invoke-direct {p0}, Lcom/flurry/sdk/gf;->F()V

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/flurry/sdk/gf;->t:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->q()Z

    move-result v1

    if-nez v1, :cond_6

    iput-boolean v2, p0, Lcom/flurry/sdk/gf;->t:Z

    iget-object v1, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gf;->a(I)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->d()V

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/flurry/sdk/gf;->x:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->u()V

    goto :goto_0

    :cond_7
    iget-boolean v1, p0, Lcom/flurry/sdk/gf;->A:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gf;->a(I)V

    iput-boolean v2, p0, Lcom/flurry/sdk/gf;->A:Z

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->y:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->g()V

    :cond_9
    iget-object v0, p0, Lcom/flurry/sdk/gf;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->J()V

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gf;->w:Z

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->o()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->w:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->t:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->v:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->h()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->getVideoPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->u()V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gf;->a(I)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->u()V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->D()V

    :goto_1
    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->p()V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->requestLayout()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->o()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;FF)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/ge;->a(Ljava/lang/String;FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gf;->w:Z

    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/gf$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gf$1;-><init>(Lcom/flurry/sdk/gf;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->s()V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->y()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/flurry/sdk/ge;->b()V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/go;->b(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gf;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video Completed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->h()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "doNotRemoveAssets"

    const-string v3, "true"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/flurry/sdk/bb;->j:Lcom/flurry/sdk/bb;

    invoke-virtual {p0, v2, v1}, Lcom/flurry/sdk/gf;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/gf;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BeaconTest: Video completed event fired, adObj: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v5}, Lcom/flurry/sdk/gk;->g(Z)V

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->a(I)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gk;)V

    iput-boolean v5, p0, Lcom/flurry/sdk/gf;->w:Z

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->t()V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->i()V

    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/gf;->J()V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gf;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gf;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->t:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->u:Z

    return v0
.end method

.method public g()V
    .locals 2

    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->u:Z

    if-eqz v0, :cond_0

    const-string v0, "Testing"

    const-string v1, "Showing controller now..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->show()V

    goto :goto_0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gf;->o:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->d:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->y:Z

    return v0
.end method

.method public initLayout()V
    .locals 9

    const/4 v6, 0x0

    const/4 v2, -0x2

    const/16 v8, 0x8

    const/4 v5, -0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/flurry/sdk/gf;->j:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/sdk/gf;->f:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/flurry/sdk/gf;->f:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v4}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/flurry/sdk/gf;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flurry/sdk/gf;->i:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/flurry/sdk/gf;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/flurry/sdk/gf;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v3, Lcom/flurry/sdk/fg;->l:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/flurry/sdk/gf;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/flurry/sdk/gf;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/sdk/gf;->r:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/flurry/sdk/gf;->n:Lcom/flurry/sdk/fh;

    iget-object v4, p0, Lcom/flurry/sdk/gf;->i:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/flurry/sdk/gf;->m:Lcom/flurry/sdk/s;

    invoke-interface {v5}, Lcom/flurry/sdk/s;->e()I

    move-result v5

    iget-object v6, p0, Lcom/flurry/sdk/gf;->r:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/flurry/sdk/fh;->a(Landroid/widget/ImageView;ILjava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/flurry/sdk/gf;->f:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gf;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/flurry/sdk/gf;->f:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2}, Lcom/flurry/sdk/gf;->a(Landroid/widget/FrameLayout;)V

    iget-object v2, p0, Lcom/flurry/sdk/gf;->f:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2}, Lcom/flurry/sdk/gf;->b(Landroid/widget/FrameLayout;)V

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->H()V

    iget-boolean v2, p0, Lcom/flurry/sdk/gf;->d:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->q()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v2}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/flurry/sdk/gf;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/flurry/sdk/gf;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->o()V

    iget-object v2, p0, Lcom/flurry/sdk/gf;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/flurry/sdk/gf;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/gf;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gf;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->requestLayout()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->C()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->h()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->getVideoPosition()I

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/flurry/sdk/gf;->w:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->q()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v2}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/flurry/sdk/gf;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->D()V

    iget-object v2, p0, Lcom/flurry/sdk/gf;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/flurry/sdk/gf;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->h()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->getVideoPosition()I

    move-result v2

    if-lez v2, :cond_5

    iget-boolean v2, p0, Lcom/flurry/sdk/gf;->w:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/flurry/sdk/gf;->g:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/flurry/sdk/gf;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v2}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->D()V

    iget-object v2, p0, Lcom/flurry/sdk/gf;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/flurry/sdk/gf;->x:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->h()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->getVideoPosition()I

    move-result v2

    if-ltz v2, :cond_6

    iget-boolean v2, p0, Lcom/flurry/sdk/gf;->w:Z

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->J()V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/flurry/sdk/gf;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v2}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/flurry/sdk/gf;->D()V

    iget-object v2, p0, Lcom/flurry/sdk/gf;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/flurry/sdk/gf;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public j()V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->y:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/gf$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gf$4;-><init>(Lcom/flurry/sdk/gf;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->v:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->z:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/sdk/gf;->u:Z

    iput-boolean v2, p0, Lcom/flurry/sdk/gf;->v:Z

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->p()V

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gf;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->g()V

    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/gf;->C()V

    iput-boolean v1, p0, Lcom/flurry/sdk/gf;->v:Z

    iput-boolean v1, p0, Lcom/flurry/sdk/gf;->z:Z

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gf;->m:Lcom/flurry/sdk/s;

    invoke-interface {v0}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/au;->c(Z)V

    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gf;->g:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/flurry/sdk/gf;->u:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/flurry/sdk/ge;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gf;->requestLayout()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gf;->t:Z

    return-void
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gf;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gf;->o:Ljava/lang/String;

    return-void
.end method
