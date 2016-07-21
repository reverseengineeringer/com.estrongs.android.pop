.class public Lcom/flurry/sdk/gc;
.super Lcom/flurry/sdk/ge;


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:I


# instance fields
.field private e:Z

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/content/Context;

.field private l:Lcom/flurry/sdk/fh;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Lcom/flurry/sdk/s;

.field private p:Landroid/widget/ProgressBar;

.field private q:Landroid/view/GestureDetector;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/gc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gc;->c:Ljava/lang/String;

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/gc;->d:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/ge;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    iput-boolean v7, p0, Lcom/flurry/sdk/gc;->e:Z

    iput-boolean v7, p0, Lcom/flurry/sdk/gc;->t:Z

    iput-boolean v7, p0, Lcom/flurry/sdk/gc;->u:Z

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v6

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    if-nez v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/go;

    sget-object v2, Lcom/flurry/sdk/ge$a;->b:Lcom/flurry/sdk/ge$a;

    invoke-interface {p2}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {p2}, Lcom/flurry/sdk/s;->e()I

    move-result v4

    invoke-virtual {v6}, Lcom/flurry/sdk/gk;->m()Z

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/go;-><init>(Landroid/content/Context;Lcom/flurry/sdk/ge$a;Ljava/util/List;IZ)V

    iput-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/go;->a(Lcom/flurry/sdk/go$a;)V

    :cond_0
    iput-object p2, p0, Lcom/flurry/sdk/gc;->o:Lcom/flurry/sdk/s;

    iput-object p1, p0, Lcom/flurry/sdk/gc;->k:Landroid/content/Context;

    iput-boolean v8, p0, Lcom/flurry/sdk/gc;->e:Z

    new-instance v0, Lcom/flurry/sdk/fh;

    invoke-direct {v0}, Lcom/flurry/sdk/fh;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/gc;->l:Lcom/flurry/sdk/fh;

    iget-boolean v0, p0, Lcom/flurry/sdk/gc;->e:Z

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gc;->setAutoPlay(Z)V

    invoke-virtual {v6}, Lcom/flurry/sdk/gk;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0, v8}, Lcom/flurry/sdk/go;->b(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/flurry/sdk/gp;->setVisibility(I)V

    :goto_0
    sget-object v0, Lcom/flurry/sdk/fg;->o:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gc;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/gc;->G()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->hide()V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gp;->setVisibility(I)V

    goto :goto_0
.end method

.method private C()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gc;->u:Z

    iget-object v0, p0, Lcom/flurry/sdk/gc;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/gp;->setVisibility(I)V

    invoke-direct {p0}, Lcom/flurry/sdk/gc;->F()V

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->requestLayout()V

    return-void
.end method

.method private D()V
    .locals 2

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gc;->p:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/flurry/sdk/gc;->E()V

    return-void
.end method

.method private E()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gc;->p:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gc;->p:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private F()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gc;->p:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gc;->p:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private G()V
    .locals 1

    new-instance v0, Lcom/flurry/sdk/hc;

    invoke-direct {v0}, Lcom/flurry/sdk/hc;-><init>()V

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->x()V

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->l()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gc;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method private H()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->b()V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->c()V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->requestLayout()V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->show()V

    return-void
.end method

.method private I()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->d()V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->a()V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->requestLayout()V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->show()V

    return-void
.end method

.method private J()V
    .locals 3

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/flurry/sdk/gc;->k:Landroid/content/Context;

    new-instance v2, Lcom/flurry/sdk/gc$6;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/gc$6;-><init>(Lcom/flurry/sdk/gc;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/flurry/sdk/gc;->q:Landroid/view/GestureDetector;

    return-void
.end method

.method private a(Landroid/widget/FrameLayout;)V
    .locals 5

    const/16 v4, 0xa

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gc;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/gc;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gc;->m:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->m:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/flurry/sdk/gc;->a(Landroid/widget/RelativeLayout;)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->m:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/flurry/sdk/gc;->b(Landroid/widget/RelativeLayout;)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/widget/RelativeLayout;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x5

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/flurry/sdk/gc;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gc;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/flurry/sdk/gc;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/flurry/sdk/gc;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->h:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v1, 0x50

    invoke-static {v1}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v1

    const/16 v2, 0x28

    invoke-static {v2}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gc;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/gc;->h:Landroid/widget/Button;

    new-instance v1, Lcom/flurry/sdk/gc$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gc$3;-><init>(Lcom/flurry/sdk/gc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->h:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->h:Landroid/widget/Button;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/gc;->h:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/gc;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gc;->C()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/gc;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gc;->q:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private b(Landroid/widget/FrameLayout;)V
    .locals 5

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x2bc

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sget-object v1, Lcom/flurry/sdk/fg;->l:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/flurry/sdk/gc;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/flurry/sdk/gc;->k:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/sdk/gc;->n:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/flurry/sdk/gc;->l:Lcom/flurry/sdk/fh;

    iget-object v3, p0, Lcom/flurry/sdk/gc;->n:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gc;->o:Lcom/flurry/sdk/s;

    invoke-interface {v4}, Lcom/flurry/sdk/s;->e()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/flurry/sdk/fh;->a(Landroid/view/View;ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/gc;->n:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->n:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->n:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/flurry/sdk/gc;->c(Landroid/widget/RelativeLayout;)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b(Landroid/widget/RelativeLayout;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gc;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gc;->j:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/flurry/sdk/gc;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->j:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gc;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->j:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/gc$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gc$4;-><init>(Lcom/flurry/sdk/gc;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->h:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->j:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/gc;)Lcom/flurry/sdk/s;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gc;->o:Lcom/flurry/sdk/s;

    return-object v0
.end method

.method private c(Landroid/widget/RelativeLayout;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v2, 0x5

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/flurry/sdk/gc;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gc;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/flurry/sdk/gc;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/flurry/sdk/gc;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->i:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v1, 0x5a

    invoke-static {v1}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v1

    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gc;->i:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/gc;->i:Landroid/widget/Button;

    new-instance v1, Lcom/flurry/sdk/gc$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gc$5;-><init>(Lcom/flurry/sdk/gc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->i:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->i:Landroid/widget/Button;

    sget v2, Lcom/flurry/sdk/gc;->d:I

    sget v3, Lcom/flurry/sdk/gc;->d:I

    sget v4, Lcom/flurry/sdk/gc;->d:I

    sget v5, Lcom/flurry/sdk/gc;->d:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->i:Landroid/widget/Button;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/gc;->i:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/flurry/sdk/gc;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gc;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/gc;->o:Lcom/flurry/sdk/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gc;->o:Lcom/flurry/sdk/s;

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


# virtual methods
.method public a(Lcom/flurry/sdk/ge$a;I)V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->u()V

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->d()I

    move-result v1

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->h()Z

    move-result v2

    if-nez v2, :cond_2

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gc;->o:Lcom/flurry/sdk/s;

    check-cast v0, Lcom/flurry/sdk/x;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x;->a(I)V

    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/gc;->o:Lcom/flurry/sdk/s;

    invoke-interface {v0}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->c(Z)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->v()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gc;->o:Lcom/flurry/sdk/s;

    check-cast v0, Lcom/flurry/sdk/x;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/x;->a(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->h()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->a()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/flurry/sdk/gc;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gc;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/flurry/sdk/gc;->t:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gc;->a(I)V

    invoke-direct {p0}, Lcom/flurry/sdk/gc;->H()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/flurry/sdk/gc;->F()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/flurry/sdk/gc;->u:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/gc;->C()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;FF)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/ge;->a(Ljava/lang/String;FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gc;->u:Z

    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/gc$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gc$1;-><init>(Lcom/flurry/sdk/gc;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->y()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/flurry/sdk/ge;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    sget-object v0, Lcom/flurry/sdk/gc;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video Completed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->h()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/gq;->suspend()V

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->a(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "doNotRemoveAssets"

    const-string v3, "true"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/flurry/sdk/bb;->j:Lcom/flurry/sdk/bb;

    invoke-virtual {p0, v2, v1}, Lcom/flurry/sdk/gc;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    sget-object v1, Lcom/flurry/sdk/gc;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeaconTest: Video completed event fired, adObj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v4}, Lcom/flurry/sdk/gk;->g(Z)V

    iput-boolean v4, p0, Lcom/flurry/sdk/gc;->u:Z

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->i()V

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->t()V

    iget-object v0, p0, Lcom/flurry/sdk/gc;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/flurry/sdk/gc;->C()V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->f()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->g()V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->show()V

    return-void
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gc;->r:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gc;->e:Z

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initLayout()V
    .locals 6

    const/16 v3, 0xd

    const/4 v2, -0x2

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gc;->k:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flurry/sdk/gc;->g:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v4, p0, Lcom/flurry/sdk/gc;->g:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v5}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/flurry/sdk/gc;->g:Landroid/widget/FrameLayout;

    invoke-direct {p0, v3}, Lcom/flurry/sdk/gc;->b(Landroid/widget/FrameLayout;)V

    iget-object v3, p0, Lcom/flurry/sdk/gc;->g:Landroid/widget/FrameLayout;

    invoke-direct {p0, v3}, Lcom/flurry/sdk/gc;->a(Landroid/widget/FrameLayout;)V

    invoke-direct {p0}, Lcom/flurry/sdk/gc;->D()V

    iget-object v3, p0, Lcom/flurry/sdk/gc;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3, v2}, Lcom/flurry/sdk/gc;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/flurry/sdk/gc;->p:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2, v1}, Lcom/flurry/sdk/gc;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/flurry/sdk/gc;->J()V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->g:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/flurry/sdk/gc$2;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/gc$2;-><init>(Lcom/flurry/sdk/gc;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gp;->hide()V

    invoke-direct {p0}, Lcom/flurry/sdk/gc;->C()V

    :cond_0
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gc;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->requestLayout()V

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->j(Z)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gk;)V

    return-void
.end method

.method public l()V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->j(Z)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gk;)V

    return-void
.end method

.method public m()V
    .locals 2

    const-string v0, "Testing"

    const-string v1, "Resize clicked switch to stream mode."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/flurry/sdk/gc;->o:Lcom/flurry/sdk/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gc;->o:Lcom/flurry/sdk/s;

    instance-of v0, v0, Lcom/flurry/sdk/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gc;->o:Lcom/flurry/sdk/s;

    check-cast v0, Lcom/flurry/sdk/x;

    invoke-virtual {v0}, Lcom/flurry/sdk/x;->I()Lcom/flurry/sdk/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ge;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gc;->t:Z

    sget-object v0, Lcom/flurry/sdk/ge$a;->a:Lcom/flurry/sdk/ge$a;

    iget-object v1, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gc;->a(Lcom/flurry/sdk/ge$a;I)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public onActivityPause()V
    .locals 0

    invoke-super {p0}, Lcom/flurry/sdk/ge;->onActivityPause()V

    return-void
.end method

.method public onActivityResume()V
    .locals 0

    invoke-super {p0}, Lcom/flurry/sdk/ge;->onActivityResume()V

    return-void
.end method

.method public onBackKey()Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gc;->o:Lcom/flurry/sdk/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gc;->o:Lcom/flurry/sdk/s;

    instance-of v0, v0, Lcom/flurry/sdk/x;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->m()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const/16 v7, 0x11

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x5

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/flurry/sdk/ge;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gc;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/flurry/sdk/gc;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->h()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/flurry/sdk/gp;->b(I)V

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/gc;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    :goto_0
    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/sdk/gc;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/flurry/sdk/gc;->I()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x2bc

    invoke-direct {v1, v5, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/flurry/sdk/gc;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/flurry/sdk/gc;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->h()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->b()Lcom/flurry/sdk/gp;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/gp;->b(I)V

    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/gc;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/gc;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/flurry/sdk/gc;->H()V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/flurry/sdk/ge;->onDetachedFromWindow()V

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gc;->r:Ljava/lang/String;

    return-void
.end method
