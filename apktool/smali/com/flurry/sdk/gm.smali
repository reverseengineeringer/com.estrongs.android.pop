.class Lcom/flurry/sdk/gm;
.super Lcom/flurry/sdk/gp;


# static fields
.field private static E:Ljava/lang/String;

.field private static final H:I

.field private static final b:Ljava/lang/String;

.field private static c:I


# instance fields
.field private A:F

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/da;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/flurry/sdk/fh;

.field private I:Z

.field private J:Z

.field a:Landroid/widget/FrameLayout$LayoutParams;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/flurry/sdk/gp$a;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/content/Context;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/ImageView;

.field private w:I

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/gm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gm;->b:Ljava/lang/String;

    const/16 v0, 0x3c

    sput v0, Lcom/flurry/sdk/gm;->c:I

    const-string v0, "Sponsored"

    sput-object v0, Lcom/flurry/sdk/gm;->E:Ljava/lang/String;

    const/16 v0, 0x32

    invoke-static {v0}, Lcom/flurry/sdk/lr;->b(I)I

    move-result v0

    sput v0, Lcom/flurry/sdk/gm;->H:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/gp$a;Ljava/util/List;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/gp$a;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/da;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gp;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/flurry/sdk/gm;->w:I

    iput v2, p0, Lcom/flurry/sdk/gm;->x:I

    iput v1, p0, Lcom/flurry/sdk/gm;->y:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/flurry/sdk/gm;->z:F

    const/high16 v0, 0x418c0000    # 17.5f

    iput v0, p0, Lcom/flurry/sdk/gm;->A:F

    iput-boolean v2, p0, Lcom/flurry/sdk/gm;->B:Z

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->a:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    iput-object p2, p0, Lcom/flurry/sdk/gm;->e:Lcom/flurry/sdk/gp$a;

    new-instance v0, Lcom/flurry/sdk/fh;

    invoke-direct {v0}, Lcom/flurry/sdk/fh;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->G:Lcom/flurry/sdk/fh;

    iput-object p3, p0, Lcom/flurry/sdk/gm;->F:Ljava/util/List;

    iput p4, p0, Lcom/flurry/sdk/gm;->y:I

    iput-boolean p5, p0, Lcom/flurry/sdk/gm;->B:Z

    const-string v0, "headline"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gm;->C:Ljava/lang/String;

    const-string v0, "source"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gm;->D:Ljava/lang/String;

    invoke-static {p1}, Lcom/flurry/sdk/ez;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/gm;->I:Z

    invoke-direct {p0}, Lcom/flurry/sdk/gm;->k()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gm;)Lcom/flurry/sdk/gp$a;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gm;->e:Lcom/flurry/sdk/gp$a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/gm;->F:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gm;->F:Ljava/util/List;

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

.method private a(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/gm;->l()V

    invoke-direct {p0}, Lcom/flurry/sdk/gm;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gm;->b(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gm;->J:Z

    goto :goto_0
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->r:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gm;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->r:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->r:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/flurry/sdk/gm;->b(Landroid/widget/RelativeLayout;)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->r:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/flurry/sdk/gm;->a(Landroid/widget/RelativeLayout;)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->r:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/flurry/sdk/gm;->c(Landroid/widget/RelativeLayout;)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->r:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/flurry/sdk/gm;->d(Landroid/widget/RelativeLayout;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/gm;->B:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/gm;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/widget/RelativeLayout;)V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/flurry/sdk/gm;->m()V

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/flurry/sdk/gm;->c:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/gm;->B:Z

    return p1
.end method

.method private b(Landroid/widget/LinearLayout;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/16 v7, 0xa

    const/4 v6, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->o:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/flurry/sdk/gm;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x50

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/flurry/sdk/gm;->c:I

    invoke-virtual {v1, v2, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/sdk/gm;->v:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/flurry/sdk/gm;->v:Landroid/widget/ImageView;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v2, Lcom/flurry/sdk/fg;->q:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/flurry/sdk/gm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/flurry/sdk/gm;->G:Lcom/flurry/sdk/fh;

    iget-object v4, p0, Lcom/flurry/sdk/gm;->v:Landroid/widget/ImageView;

    iget v5, p0, Lcom/flurry/sdk/gm;->y:I

    invoke-virtual {v3, v4, v5, v2}, Lcom/flurry/sdk/fh;->a(Landroid/widget/ImageView;ILjava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/flurry/sdk/gm;->o:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/flurry/sdk/gm;->v:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flurry/sdk/gm;->t:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/flurry/sdk/gm;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v7, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/flurry/sdk/gm;->t:Landroid/widget/TextView;

    sget-object v4, Lcom/flurry/sdk/gm;->E:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/flurry/sdk/gm;->t:Landroid/widget/TextView;

    iget v4, p0, Lcom/flurry/sdk/gm;->z:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/flurry/sdk/gm;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/flurry/sdk/gm;->o:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gm;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xf

    invoke-virtual {v0, v6, v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/flurry/sdk/gm;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->p:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/flurry/sdk/gm;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/flurry/sdk/gm;->c:I

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/sdk/gm;->s:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flurry/sdk/gm;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v7, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/flurry/sdk/gm;->s:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/flurry/sdk/gm;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/flurry/sdk/gm;->s:Landroid/widget/TextView;

    iget v3, p0, Lcom/flurry/sdk/gm;->A:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/flurry/sdk/gm;->s:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v2, p0, Lcom/flurry/sdk/gm;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/flurry/sdk/gm;->p:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/flurry/sdk/gm;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/flurry/sdk/gm;->u:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flurry/sdk/gm;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v7, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/flurry/sdk/gm;->u:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/flurry/sdk/gm;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/flurry/sdk/gm;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/flurry/sdk/gm;->u:Landroid/widget/TextView;

    iget v3, p0, Lcom/flurry/sdk/gm;->z:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/flurry/sdk/gm;->p:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/flurry/sdk/gm;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v10}, Lcom/flurry/sdk/gm;->c(I)V

    return-void
.end method

.method private b(Landroid/widget/RelativeLayout;)V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/flurry/sdk/gm;->n()V

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/flurry/sdk/gm;->c:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private c(I)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/flurry/sdk/gm;->I:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    sget v1, Lcom/flurry/sdk/gm;->H:I

    sget v2, Lcom/flurry/sdk/gm;->H:I

    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    sget v1, Lcom/flurry/sdk/gm;->H:I

    sget v2, Lcom/flurry/sdk/gm;->H:I

    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    sget v1, Lcom/flurry/sdk/gm;->H:I

    sget v2, Lcom/flurry/sdk/gm;->H:I

    sget v3, Lcom/flurry/sdk/gm;->H:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    sget v1, Lcom/flurry/sdk/gm;->H:I

    sget v2, Lcom/flurry/sdk/gm;->H:I

    sget v3, Lcom/flurry/sdk/gm;->H:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method private c(Landroid/widget/LinearLayout;)V
    .locals 11

    const/4 v7, 0x1

    const/4 v10, -0x1

    const/16 v9, 0xa

    const/4 v6, -0x2

    const/4 v8, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->q:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/flurry/sdk/gm;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flurry/sdk/gm;->p:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/flurry/sdk/gm;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/flurry/sdk/gm;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v4, 0x3

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget v4, Lcom/flurry/sdk/gm;->c:I

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flurry/sdk/gm;->s:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/flurry/sdk/gm;->s:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v9, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/flurry/sdk/gm;->s:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/flurry/sdk/gm;->C:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/flurry/sdk/gm;->s:Landroid/widget/TextView;

    iget v5, p0, Lcom/flurry/sdk/gm;->A:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/flurry/sdk/gm;->s:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v4, p0, Lcom/flurry/sdk/gm;->s:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/flurry/sdk/gm;->p:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/flurry/sdk/gm;->s:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flurry/sdk/gm;->u:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/flurry/sdk/gm;->u:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v9, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/flurry/sdk/gm;->u:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/flurry/sdk/gm;->D:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/flurry/sdk/gm;->u:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/flurry/sdk/gm;->u:Landroid/widget/TextView;

    iget v5, p0, Lcom/flurry/sdk/gm;->z:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/flurry/sdk/gm;->p:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/flurry/sdk/gm;->u:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->q:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gm;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/gm;->o:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x5

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x50

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/flurry/sdk/gm;->c:I

    invoke-virtual {v3, v4, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flurry/sdk/gm;->v:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/flurry/sdk/gm;->v:Landroid/widget/ImageView;

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v4, Lcom/flurry/sdk/fg;->q:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/flurry/sdk/gm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/flurry/sdk/gm;->G:Lcom/flurry/sdk/fh;

    iget-object v6, p0, Lcom/flurry/sdk/gm;->v:Landroid/widget/ImageView;

    iget v7, p0, Lcom/flurry/sdk/gm;->y:I

    invoke-virtual {v5, v6, v7, v4}, Lcom/flurry/sdk/fh;->a(Landroid/widget/ImageView;ILjava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/flurry/sdk/gm;->o:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/flurry/sdk/gm;->v:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flurry/sdk/gm;->t:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/flurry/sdk/gm;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v8, v9, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/flurry/sdk/gm;->t:Landroid/widget/TextView;

    sget-object v4, Lcom/flurry/sdk/gm;->E:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/flurry/sdk/gm;->t:Landroid/widget/TextView;

    iget v4, p0, Lcom/flurry/sdk/gm;->z:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/flurry/sdk/gm;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/flurry/sdk/gm;->o:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/flurry/sdk/gm;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/flurry/sdk/gm;->q:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/flurry/sdk/gm;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gm;->c(I)V

    return-void
.end method

.method private c(Landroid/widget/RelativeLayout;)V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/flurry/sdk/gm;->o()V

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private d(Landroid/widget/RelativeLayout;)V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/flurry/sdk/gm;->p()V

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private j()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/gm;->J:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gm;->a(Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/gm;->d:Landroid/widget/LinearLayout;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/gm;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gm;->b(I)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    new-instance v0, Lcom/flurry/sdk/hc;

    invoke-direct {v0}, Lcom/flurry/sdk/hc;-><init>()V

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->x()V

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->m()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/gm;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->n()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/gm;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->p()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/gm;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/flurry/sdk/hc;->q()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/gm;->i:Landroid/graphics/Bitmap;

    return-void
.end method

.method private l()V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/gm;->n()V

    invoke-direct {p0}, Lcom/flurry/sdk/gm;->m()V

    invoke-direct {p0}, Lcom/flurry/sdk/gm;->o()V

    invoke-direct {p0}, Lcom/flurry/sdk/gm;->p()V

    return-void
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/gm$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gm$1;-><init>(Lcom/flurry/sdk/gm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private n()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/gm$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gm$2;-><init>(Lcom/flurry/sdk/gm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private o()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/gm$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gm$3;-><init>(Lcom/flurry/sdk/gm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private p()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    new-instance v1, Lcom/flurry/sdk/gm$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/gm$4;-><init>(Lcom/flurry/sdk/gm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private q()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gm;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/flurry/sdk/gm;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->d:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gm;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private r()I
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(FF)V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/gm;->w:I

    iput p2, p0, Lcom/flurry/sdk/gm;->x:I

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->j:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gm;->n:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gm;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gm;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/gm;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/gm;->q()V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->d:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gm;->a(Landroid/widget/LinearLayout;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/gm;->d:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gm;->c(Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->requestLayout()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gm;->d:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gm;->b(Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/flurry/sdk/gm;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gm;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->requestLayout()V

    goto :goto_0
.end method

.method public b(II)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->k:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->l:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gm;->m:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/flurry/sdk/gp;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .locals 3

    const/4 v0, -0x1

    invoke-super {p0, p1}, Lcom/flurry/sdk/gp;->setAnchorView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gm;->removeAllViews()V

    invoke-direct {p0}, Lcom/flurry/sdk/gm;->j()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/flurry/sdk/gm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Lcom/flurry/sdk/gp;->show()V

    return-void
.end method

.method public show(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/flurry/sdk/gp;->show(I)V

    return-void
.end method
