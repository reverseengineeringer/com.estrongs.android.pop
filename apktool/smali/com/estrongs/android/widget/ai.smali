.class Lcom/estrongs/android/widget/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/widget/ah;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/widget/ah;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field private final d:Landroid/database/DataSetObservable;

.field private final e:Landroid/widget/ListAdapter;

.field private f:I

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/widget/ah;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/widget/ah;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/widget/ai;->d:Landroid/database/DataSetObservable;

    iput v0, p0, Lcom/estrongs/android/widget/ai;->f:I

    iput-object p3, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    instance-of v1, p3, Landroid/widget/Filterable;

    iput-boolean v1, p0, Lcom/estrongs/android/widget/ai;->g:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "headerViewInfos cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "footerViewInfos cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/estrongs/android/widget/ai;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/estrongs/android/widget/ai;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/widget/ai;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/estrongs/android/widget/ai;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/widget/ai;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/estrongs/android/widget/ai;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/widget/ai;->c:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/widget/ah;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/ah;

    iget-boolean v0, v0, Lcom/estrongs/android/widget/ah;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of columns must be 1 or more"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/widget/ai;->f:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/estrongs/android/widget/ai;->f:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->c()V

    :cond_1
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/estrongs/android/widget/ai;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->d:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public getCount()I
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/widget/ai;->f:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->a()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/widget/ai;->f:I

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->b()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/widget/ai;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :goto_1
    return v0

    :cond_0
    iget v1, p0, Lcom/estrongs/android/widget/ai;->f:I

    sub-int v0, v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->a()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/widget/ai;->f:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->b()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/widget/ai;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/widget/ai;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->a()I

    move-result v0

    iget v2, p0, Lcom/estrongs/android/widget/ai;->f:I

    mul-int/2addr v2, v0

    if-ge p1, v2, :cond_1

    iget v0, p0, Lcom/estrongs/android/widget/ai;->f:I

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/estrongs/android/widget/ai;->f:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/ah;

    iget-object v0, v0, Lcom/estrongs/android/widget/ah;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_2

    sub-int v0, p1, v2

    iget-object v3, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v3, p0, Lcom/estrongs/android/widget/ai;->f:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    if-ge p1, v3, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/estrongs/android/widget/ai;->f:I

    sub-int v0, v3, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->b()I

    move-result v1

    iget v3, p0, Lcom/estrongs/android/widget/ai;->f:I

    mul-int/2addr v1, v3

    iget-object v3, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    add-int/2addr v1, v3

    if-ge p1, v1, :cond_5

    iget v1, p0, Lcom/estrongs/android/widget/ai;->f:I

    rem-int v1, p1, v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/widget/ai;->b:Ljava/util/ArrayList;

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v0, v2, v0

    iget v2, p0, Lcom/estrongs/android/widget/ai;->f:I

    div-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/ah;

    iget-object v0, v0, Lcom/estrongs/android/widget/ah;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->a()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/widget/ai;->f:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->a()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/widget/ai;->f:I

    mul-int/2addr v1, v2

    if-ge p1, v1, :cond_1

    iget v2, p0, Lcom/estrongs/android/widget/ai;->f:I

    rem-int v2, p1, v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_3

    if-lt p1, v1, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/2addr v2, v1

    iget v3, p0, Lcom/estrongs/android/widget/ai;->f:I

    iget-object v4, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    iget v5, p0, Lcom/estrongs/android/widget/ai;->f:I

    rem-int/2addr v4, v5

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_3

    sub-int v2, p1, v1

    iget-object v3, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    iget v2, p0, Lcom/estrongs/android/widget/ai;->f:I

    if-eq v2, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    add-int/lit8 v1, v3, -0x1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->b()I

    move-result v2

    iget v3, p0, Lcom/estrongs/android/widget/ai;->f:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->a()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/widget/ai;->f:I

    mul-int/2addr v1, v2

    if-ge p1, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/estrongs/android/widget/ai;->f:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/ah;

    iget-object v0, v0, Lcom/estrongs/android/widget/ah;->a:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/estrongs/android/widget/ai;->f:I

    rem-int v1, p1, v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/2addr v2, v1

    if-ge p1, v2, :cond_3

    sub-int v2, p1, v1

    iget-object v3, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1, v2, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iget v3, p0, Lcom/estrongs/android/widget/ai;->f:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_4

    :goto_1
    iget-object v2, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/estrongs/android/widget/ai;->f:I

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->b()I

    move-result v2

    iget v3, p0, Lcom/estrongs/android/widget/ai;->f:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_6

    iget-object v2, p0, Lcom/estrongs/android/widget/ai;->b:Ljava/util/ArrayList;

    sub-int v1, p1, v1

    iget-object v3, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int v0, v1, v0

    iget v1, p0, Lcom/estrongs/android/widget/ai;->f:I

    div-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/ah;

    iget-object v0, v0, Lcom/estrongs/android/widget/ah;->a:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/estrongs/android/widget/ai;->f:I

    rem-int v1, p1, v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->a()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->b()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->a()I

    move-result v0

    iget v3, p0, Lcom/estrongs/android/widget/ai;->f:I

    mul-int/2addr v3, v0

    if-ge p1, v3, :cond_1

    iget v0, p0, Lcom/estrongs/android/widget/ai;->f:I

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->a:Ljava/util/ArrayList;

    iget v3, p0, Lcom/estrongs/android/widget/ai;->f:I

    div-int v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/ah;

    iget-boolean v0, v0, Lcom/estrongs/android/widget/ah;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/2addr v0, v3

    if-ge p1, v0, :cond_2

    sub-int v0, p1, v3

    iget-object v4, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v4, p0, Lcom/estrongs/android/widget/ai;->f:I

    rem-int/2addr v0, v4

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    iget-object v4, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    if-ge p1, v4, :cond_4

    move v0, v2

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/estrongs/android/widget/ai;->f:I

    sub-int v0, v4, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/estrongs/android/widget/ai;->b()I

    move-result v4

    iget v5, p0, Lcom/estrongs/android/widget/ai;->f:I

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, v0

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_6

    iget v4, p0, Lcom/estrongs/android/widget/ai;->f:I

    rem-int v4, p1, v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/estrongs/android/widget/ai;->b:Ljava/util/ArrayList;

    sub-int v3, p1, v3

    iget-object v5, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    sub-int/2addr v3, v5

    sub-int v0, v3, v0

    iget v3, p0, Lcom/estrongs/android/widget/ai;->f:I

    div-int/2addr v0, v3

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/ah;

    iget-boolean v0, v0, Lcom/estrongs/android/widget/ah;->c:Z

    if-eqz v0, :cond_5

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->d:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->d:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ai;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method
