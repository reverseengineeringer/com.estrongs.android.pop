.class public Lcom/estrongs/android/pop/app/RecommItemImageViewer;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field protected a:Lcom/estrongs/android/widget/RealViewSwitcher;

.field protected b:Landroid/view/ViewGroup$LayoutParams;

.field private c:Lcom/estrongs/android/pop/view/utils/v;

.field private d:I

.field private e:I

.field private f:Landroid/os/Handler;

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->g:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->h:Landroid/util/SparseArray;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->b:Landroid/view/ViewGroup$LayoutParams;

    new-instance v0, Lcom/estrongs/android/pop/app/le;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/le;-><init>(Lcom/estrongs/android/pop/app/RecommItemImageViewer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/RecommItemImageViewer;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->i:I

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/RecommItemImageViewer;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->i:I

    return p1
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->c:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->c:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->c:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->c:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/RecommItemImageViewer;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->h:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/estrongs/android/util/aa;

    iget-object v0, p1, Lcom/estrongs/android/util/aa;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->c:Lcom/estrongs/android/pop/view/utils/v;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/pop/view/utils/n;->d(Lcom/estrongs/android/pop/view/utils/v;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->c:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->o:[Lcom/estrongs/android/util/aa;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    return-void
.end method

.method public finish()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->finish()V

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/os/Handler;)Landroid/os/Handler;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0xf

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->d:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->e:I

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->d()[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->d:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->c:Lcom/estrongs/android/pop/view/utils/v;

    iget v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->e:I

    iput v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->i:I

    const v0, 0x7f030169

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->setContentView(I)V

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->f:Landroid/os/Handler;

    const v0, 0x7f0e05f4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->c:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    new-instance v3, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lt v1, v6, :cond_0

    const/4 v5, 0x6

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->i:I

    if-ne v1, v4, :cond_1

    const v4, 0x7f02015d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v4, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->h:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const v4, 0x7f02015e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0e0440

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/RealViewSwitcher;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->a:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->a:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(Z)V

    new-instance v0, Lcom/estrongs/android/pop/app/ld;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ld;-><init>(Lcom/estrongs/android/pop/app/RecommItemImageViewer;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->a:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->setOnScreenSwitchListener(Lcom/estrongs/android/widget/bd;)V

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->c:Lcom/estrongs/android/pop/view/utils/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge v2, v0, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->c:Lcom/estrongs/android/pop/view/utils/v;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/utils/n;->d(Lcom/estrongs/android/pop/view/utils/v;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v0, :cond_3

    const v0, 0x7f02033f

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->a:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->a:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->i:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->setCurrentScreen(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->a:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->removeAllViews()V

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/os/Handler;)Landroid/os/Handler;

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x15

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->i:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->a:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->i:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x16

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->i:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->a:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->a:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget v1, p0, Lcom/estrongs/android/pop/app/RecommItemImageViewer;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(I)V

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
