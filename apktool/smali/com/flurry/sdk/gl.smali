.class public Lcom/flurry/sdk/gl;
.super Lcom/flurry/sdk/gp;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private e:Landroid/widget/RelativeLayout;

.field private f:Lcom/flurry/sdk/gp$b;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/ImageButton;

.field private j:Lcom/flurry/sdk/hh;

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/gl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/gl;->b:I

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/gl;->c:I

    const/16 v0, 0x23

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/gl;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/gp$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gp;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/flurry/sdk/gl;->k:I

    iput v0, p0, Lcom/flurry/sdk/gl;->l:I

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/gl;->a(Landroid/content/Context;Lcom/flurry/sdk/gp$b;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gl;)Lcom/flurry/sdk/gp$b;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gl;->f:Lcom/flurry/sdk/gp$b;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update initLayout Video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/flurry/sdk/hc;

    invoke-direct {v0}, Lcom/flurry/sdk/hc;-><init>()V

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->x()V

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/flurry/sdk/gl;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gl;->b(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->j()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/flurry/sdk/gl;->b(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/gl;->c(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v3, -0x2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gl;->h:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/flurry/sdk/gl;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gl;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gl;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/gl;->h:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gl;->h:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/gl$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gl$2;-><init>(Lcom/flurry/sdk/gl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v1, Lcom/flurry/sdk/gl;->c:I

    sget v2, Lcom/flurry/sdk/gl;->c:I

    sget v3, Lcom/flurry/sdk/gl;->c:I

    sget v4, Lcom/flurry/sdk/gl;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gl;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/gl;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/flurry/sdk/gp$b;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/flurry/sdk/gl;->f:Lcom/flurry/sdk/gp$b;

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gl;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/flurry/sdk/gl$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gl$1;-><init>(Lcom/flurry/sdk/gl;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/gl;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gl;->g:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    const/4 v3, -0x2

    new-instance v0, Lcom/flurry/sdk/hh;

    sget v1, Lcom/flurry/sdk/gl;->d:I

    sget v2, Lcom/flurry/sdk/gl;->d:I

    invoke-direct {v0, p1, v1, v2}, Lcom/flurry/sdk/hh;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/flurry/sdk/gl;->j:Lcom/flurry/sdk/hh;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v1, Lcom/flurry/sdk/gl;->b:I

    sget v2, Lcom/flurry/sdk/gl;->b:I

    sget v3, Lcom/flurry/sdk/gl;->b:I

    sget v4, Lcom/flurry/sdk/gl;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/flurry/sdk/gl;->j:Lcom/flurry/sdk/hh;

    invoke-virtual {v1}, Lcom/flurry/sdk/hh;->a()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gl;->j:Lcom/flurry/sdk/hh;

    invoke-virtual {v2}, Lcom/flurry/sdk/hh;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v2, -0x2

    const/4 v5, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gl;->i:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/flurry/sdk/gl;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gl;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gl;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/flurry/sdk/gl;->i:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/gl$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gl$3;-><init>(Lcom/flurry/sdk/gl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v1, Lcom/flurry/sdk/gl;->b:I

    sget v2, Lcom/flurry/sdk/gl;->b:I

    sget v3, Lcom/flurry/sdk/gl;->b:I

    sget v4, Lcom/flurry/sdk/gl;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/flurry/sdk/gl;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gl;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private c(I)V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    const-string v2, "Layout is null in updateControlVisibility."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gl;->setCloseButtonVisibility(I)V

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gl;->setTimerVisibility(I)V

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gl;->setPlayButtonVisibility(I)V

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gl;->setMoreInfoButtonVisibility(I)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v2, -0x2

    const/4 v5, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gl;->g:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/flurry/sdk/gl;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gl;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gl;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/flurry/sdk/gl;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/gl$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gl$4;-><init>(Lcom/flurry/sdk/gl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v1, Lcom/flurry/sdk/gl;->b:I

    sget v2, Lcom/flurry/sdk/gl;->b:I

    sget v3, Lcom/flurry/sdk/gl;->b:I

    sget v4, Lcom/flurry/sdk/gl;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/flurry/sdk/gl;->g:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/flurry/sdk/gl;->show(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gl;->g:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getHeightDimensions()I
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/lr;->c()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private getWidthDimensions()I
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/lr;->c()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private setCloseButtonVisibility(I)V
    .locals 2

    const/4 v1, 0x0

    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gl;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gl;->h:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private setMoreInfoButtonVisibility(I)V
    .locals 2

    const/4 v1, 0x0

    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gl;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gl;->i:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private setPlayButtonVisibility(I)V
    .locals 2

    const/4 v1, 0x0

    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gl;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gl;->g:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private setTimerVisibility(I)V
    .locals 2

    const/4 v1, 0x0

    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gl;->j:Lcom/flurry/sdk/hh;

    invoke-virtual {v0}, Lcom/flurry/sdk/hh;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gl;->j:Lcom/flurry/sdk/hh;

    invoke-virtual {v0}, Lcom/flurry/sdk/hh;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(FF)V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/gl;->j:Lcom/flurry/sdk/hh;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    const-string v2, "Cannot update timer. View is null."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    float-to-int v0, p2

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/flurry/sdk/gl;->k:I

    float-to-int v0, p1

    div-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/flurry/sdk/gl;->k:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/sdk/gl;->j:Lcom/flurry/sdk/hh;

    float-to-int v2, p1

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/hh;->b(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gl;->j:Lcom/flurry/sdk/hh;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/hh;->a(I)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 4

    iget v0, p0, Lcom/flurry/sdk/gl;->l:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update UI with visible flag: \n CloseButton: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \n Play Button: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit8 v3, p1, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \n MoreInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit8 v3, p1, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \n Timer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/flurry/sdk/gl;->l:I

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gl;->c(I)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(II)V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    const-string v2, "Layout is null in screenSizeChanged."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/flurry/sdk/gl;->l:I

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gl;->c(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v1, 0x5

    sget-object v4, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    const-string v5, "Override dispatchKeyEvent"

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    :goto_0
    const/16 v4, 0x4f

    if-eq v3, v4, :cond_0

    const/16 v4, 0x55

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_0

    const/16 v4, 0x7e

    if-eq v3, v4, :cond_0

    const/16 v4, 0x56

    if-eq v3, v4, :cond_0

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/16 v4, 0x19

    if-eq v3, v4, :cond_3

    const/16 v4, 0x18

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa4

    if-eq v3, v4, :cond_3

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_4

    :cond_3
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/gl;->show(I)V

    invoke-super {p0, p1}, Lcom/flurry/sdk/gp;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/flurry/sdk/gl;->f:Lcom/flurry/sdk/gp$b;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->j()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/flurry/sdk/gl;->f:Lcom/flurry/sdk/gp$b;

    invoke-interface {v1}, Lcom/flurry/sdk/gp$b;->q()V

    :cond_5
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/gl;->show(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v2}, Lcom/flurry/sdk/gl;->show(I)V

    invoke-super {p0, p1}, Lcom/flurry/sdk/gp;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    const-string v2, "Reset video view."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gl;->a(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gl;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/flurry/sdk/gp;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/flurry/sdk/gl;->l:I

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gl;->c(I)V

    return-void
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/flurry/sdk/gp;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    const-string v2, "Layout is null in setAnchorView."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gl;->removeAllViews()V

    iget-object v0, p0, Lcom/flurry/sdk/gl;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gl;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/flurry/sdk/gp;->show(I)V

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    const-string v2, "Show called."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public show(I)V
    .locals 3

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/gl;->a:Ljava/lang/String;

    const-string v2, "Override show(0)."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/flurry/sdk/gp;->show(I)V

    return-void
.end method
