.class public Lcom/flurry/sdk/ey;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final h:I

.field private static final i:I

.field private static final j:I


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/flurry/sdk/et;

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/ey;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ey;->a:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/ey;->h:I

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/ey;->i:I

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/ey;->j:I

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/et;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/et;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/flurry/sdk/ey;->f:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/ey;->l:Z

    iput-object v1, p0, Lcom/flurry/sdk/ey;->m:Lcom/flurry/sdk/et;

    invoke-virtual {p1}, Lcom/flurry/sdk/et;->d()Lcom/flurry/sdk/et$a;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/et$a;->a:Lcom/flurry/sdk/et$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/et$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/ey;->l:Z

    iput-object p1, p0, Lcom/flurry/sdk/ey;->m:Lcom/flurry/sdk/et;

    iput-object p2, p0, Lcom/flurry/sdk/ey;->k:Ljava/util/List;

    invoke-direct {p0}, Lcom/flurry/sdk/ey;->d()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/flurry/sdk/ey;->i:I

    return v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ey;)Lcom/flurry/sdk/et;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ey;->m:Lcom/flurry/sdk/et;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ey;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ey;->p:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v3, -0x1

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1, v1}, Lcom/flurry/sdk/ey;->b(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iget-boolean v0, p0, Lcom/flurry/sdk/ey;->l:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/flurry/sdk/ey;->c(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/ey;->k:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lcom/flurry/sdk/ey;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/flurry/sdk/ey;->d(Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 9

    const/16 v8, 0xf

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v7, 0x24

    const/4 v6, 0x0

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v5}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x37

    invoke-static {v2}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/ey;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/flurry/sdk/ey;->b:Landroid/widget/ImageView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v7}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v2

    invoke-static {v7}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v2, Lcom/flurry/sdk/ey;->i:I

    sget v3, Lcom/flurry/sdk/ey;->i:I

    invoke-virtual {v1, v2, v6, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/flurry/sdk/ey;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/flurry/sdk/ei;->a()Lcom/flurry/sdk/ei;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/ey;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, p3, v2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/ey;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flurry/sdk/ey;->g:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/flurry/sdk/ey;->g:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/flurry/sdk/ey;->g:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/flurry/sdk/ey;->g:Landroid/widget/TextView;

    const-string v2, "#444444"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x64

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/flurry/sdk/ey;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/flurry/sdk/hc;->e()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget v2, Lcom/flurry/sdk/ey;->i:I

    sget v3, Lcom/flurry/sdk/ey;->i:I

    sget v4, Lcom/flurry/sdk/ey;->i:I

    sget v5, Lcom/flurry/sdk/ey;->i:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v7}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v3

    invoke-static {v7}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/flurry/sdk/ey;->i:I

    sget v4, Lcom/flurry/sdk/ey;->h:I

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/flurry/sdk/ey$4;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ey$4;-><init>(Lcom/flurry/sdk/ey;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ey;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ey;->e(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lcom/flurry/sdk/ey;->h:I

    return v0
.end method

.method static synthetic b(Lcom/flurry/sdk/ey;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ey;->r:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/ey;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ey;->q:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 11

    const/4 v10, 0x2

    const/high16 v9, 0x41880000    # 17.0f

    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "#36465d"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x32

    invoke-static {v2}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v2

    invoke-direct {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/flurry/sdk/eb;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v1, v10, v9}, Landroid/widget/Button;->setTextSize(IF)V

    sget v2, Lcom/flurry/sdk/ey;->j:I

    sget v3, Lcom/flurry/sdk/ey;->i:I

    sget v4, Lcom/flurry/sdk/ey;->i:I

    sget v5, Lcom/flurry/sdk/ey;->i:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/flurry/sdk/ey$2;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/ey$2;-><init>(Lcom/flurry/sdk/ey;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/flurry/sdk/ey;->i:I

    sget v3, Lcom/flurry/sdk/ey;->i:I

    invoke-virtual {v1, v7, v2, v7, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-static {}, Lcom/flurry/sdk/hc;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/flurry/sdk/eb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v1, v10, v9}, Landroid/widget/Button;->setTextSize(IF)V

    sget v2, Lcom/flurry/sdk/ey;->j:I

    sget v3, Lcom/flurry/sdk/ey;->i:I

    sget v4, Lcom/flurry/sdk/ey;->i:I

    sget v5, Lcom/flurry/sdk/ey;->i:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/flurry/sdk/ey$3;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ey$3;-><init>(Lcom/flurry/sdk/ey;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/ey;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ey;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/flurry/sdk/ey;->j:I

    return v0
.end method

.method private c(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/flurry/sdk/ey;->o:I

    div-int/lit8 v2, v2, 0x4

    invoke-direct {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/flurry/sdk/ey;->m:Lcom/flurry/sdk/et;

    check-cast v0, Lcom/flurry/sdk/es;

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/sdk/ey;->c:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/flurry/sdk/ey;->c:Landroid/widget/EditText;

    const/4 v3, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v2, p0, Lcom/flurry/sdk/ey;->c:Landroid/widget/EditText;

    const-string v3, "#444444"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v2, p0, Lcom/flurry/sdk/ey;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x40000000    # 2.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    sget v3, Lcom/flurry/sdk/ey;->h:I

    sget v4, Lcom/flurry/sdk/ey;->h:I

    sget v5, Lcom/flurry/sdk/ey;->h:I

    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/flurry/sdk/ey;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/flurry/sdk/ey;->p:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/flurry/sdk/es;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flurry/sdk/ey;->c:Landroid/widget/EditText;

    invoke-static {}, Lcom/flurry/sdk/eb;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    sget v4, Lcom/flurry/sdk/ey;->j:I

    sget v5, Lcom/flurry/sdk/ey;->i:I

    sget v6, Lcom/flurry/sdk/ey;->j:I

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/js;->g()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/flurry/sdk/eb$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/es;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lcom/flurry/sdk/eb$a;-><init>(Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/flurry/sdk/ey;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/flurry/sdk/es;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/flurry/sdk/ey;->c:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/flurry/sdk/ey;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/flurry/sdk/ey;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/ey;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/flurry/sdk/ey;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ey;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/lr;->c()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/flurry/sdk/ey;->n:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/flurry/sdk/ey;->o:I

    return-void
.end method

.method private d(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 11

    const/high16 v10, -0x1000000

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v8, -0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/flurry/sdk/ey;->m:Lcom/flurry/sdk/et;

    check-cast v0, Lcom/flurry/sdk/ev;

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/sdk/ey;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/flurry/sdk/ey;->d:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v9}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v2, p0, Lcom/flurry/sdk/ey;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v2, p0, Lcom/flurry/sdk/ey;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/flurry/sdk/ey;->d:Landroid/widget/EditText;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v2, p0, Lcom/flurry/sdk/ey;->d:Landroid/widget/EditText;

    sget v3, Lcom/flurry/sdk/ey;->i:I

    sget v4, Lcom/flurry/sdk/ey;->i:I

    sget v5, Lcom/flurry/sdk/ey;->i:I

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v2, p0, Lcom/flurry/sdk/ey;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/flurry/sdk/ev;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/flurry/sdk/ey;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/flurry/sdk/ev;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/flurry/sdk/ey;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v4

    invoke-direct {v3, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v9}, Landroid/widget/EditText;->setTextSize(IF)V

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setTextColor(I)V

    sget v3, Lcom/flurry/sdk/ey;->i:I

    sget v4, Lcom/flurry/sdk/ey;->i:I

    sget v5, Lcom/flurry/sdk/ey;->i:I

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setBackgroundColor(I)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    invoke-virtual {v0}, Lcom/flurry/sdk/ev;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLines(I)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/flurry/sdk/ey;->d:Landroid/widget/EditText;

    invoke-static {}, Lcom/flurry/sdk/eb;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/flurry/sdk/ey;->d:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/flurry/sdk/ey;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/flurry/sdk/ey;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ey;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private e(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 12

    const/16 v11, 0x24

    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v3, 0x0

    const/4 v8, -0x1

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "#36465d"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x32

    invoke-static {v2}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v2

    invoke-direct {v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setId(I)V

    invoke-static {}, Lcom/flurry/sdk/hc;->f()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    sget v2, Lcom/flurry/sdk/ey;->i:I

    sget v4, Lcom/flurry/sdk/ey;->i:I

    sget v5, Lcom/flurry/sdk/ey;->j:I

    sget v7, Lcom/flurry/sdk/ey;->i:I

    invoke-virtual {v1, v2, v4, v5, v7}, Landroid/widget/ImageButton;->setPadding(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v11}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v4

    invoke-static {v11}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/flurry/sdk/ey;->h:I

    sget v5, Lcom/flurry/sdk/ey;->h:I

    invoke-virtual {v2, v4, v3, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/flurry/sdk/ey$5;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/ey$5;-><init>(Lcom/flurry/sdk/ey;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lcom/flurry/sdk/eb;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x67

    invoke-virtual {v2, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/flurry/sdk/ey;->i:I

    sget v4, Lcom/flurry/sdk/ey;->i:I

    invoke-virtual {v1, v3, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-static {}, Lcom/flurry/sdk/hc;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/flurry/sdk/ey$6;

    iget-object v4, p0, Lcom/flurry/sdk/ey;->k:Ljava/util/List;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/ey$6;-><init>(Lcom/flurry/sdk/ey;Landroid/content/Context;ILjava/util/List;Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/flurry/sdk/ey;->o:I

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/flurry/sdk/ey$7;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ey$7;-><init>(Lcom/flurry/sdk/ey;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic f(Lcom/flurry/sdk/ey;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ey;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/flurry/sdk/ey;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ey;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/flurry/sdk/ey;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ey;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/flurry/sdk/ey;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ey;->b:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/flurry/sdk/hi;)V
    .locals 4

    const/4 v2, -0x2

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/ey;->e:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/flurry/sdk/ey;->e:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/ey;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/ey;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/flurry/sdk/ey;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/sdk/ey;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/flurry/sdk/ey;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/flurry/sdk/ey;->f:Landroid/widget/RelativeLayout;

    const-string v1, "#90000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/ey;->r:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/flurry/sdk/ey;->r:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/ey;->r:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/ey;->r:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/flurry/sdk/ey;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flurry/sdk/ey;->r:Landroid/app/Dialog;

    new-instance v1, Lcom/flurry/sdk/ey$1;

    invoke-direct {v1, p0, p2}, Lcom/flurry/sdk/ey$1;-><init>(Lcom/flurry/sdk/ey;Lcom/flurry/sdk/hi;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/flurry/sdk/ey;->r:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/flurry/sdk/ey;->r:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
