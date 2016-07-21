.class Lcom/estrongs/android/pop/esclasses/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/d;->a:Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;Lcom/estrongs/android/pop/esclasses/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/esclasses/d;-><init>(Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/d;->a:Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;->b(Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/d;->a:Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;->getHeaderViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/esclasses/d;->a:Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;

    invoke-static {v1}, Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;->c(Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;)I

    move-result v1

    mul-int/2addr v0, v1

    sub-int v3, p3, v0

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sssssssssssss onItemClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/d;->a:Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;->b(Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/d;->a:Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;->d(Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/d;->a:Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;->getHeaderViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/esclasses/d;->a:Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;

    invoke-static {v1}, Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;->c(Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;)I

    move-result v1

    mul-int/2addr v0, v1

    sub-int v3, p3, v0

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sssssssssssss onItemLongClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/d;->a:Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;->d(Lcom/estrongs/android/pop/esclasses/CopyOfHeaderGridView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
