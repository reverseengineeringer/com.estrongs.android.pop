.class public Lcom/estrongs/android/widget/HeaderFooterGridView;
.super Landroid/widget/GridView;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/widget/ah;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/widget/ah;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->d:I

    invoke-direct {p0}, Lcom/estrongs/android/widget/HeaderFooterGridView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->d:I

    invoke-direct {p0}, Lcom/estrongs/android/widget/HeaderFooterGridView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method public getFooterViewCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNumColumns()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->d:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    iget v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->c:I

    iput v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->d:I

    :cond_0
    iget v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->d:I

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->d:I

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderFooterGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/estrongs/android/widget/ai;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/estrongs/android/widget/ai;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderFooterGridView;->getNumColumns()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ai;->a(I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/HeaderFooterGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/estrongs/android/widget/ai;

    iget-object v1, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/estrongs/android/widget/ai;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/HeaderFooterGridView;->getNumColumns()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ai;->a(I)V

    :cond_1
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setClipChildren(Z)V
    .locals 0

    return-void
.end method

.method public setNumColumns(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    iput p1, p0, Lcom/estrongs/android/widget/HeaderFooterGridView;->c:I

    return-void
.end method
