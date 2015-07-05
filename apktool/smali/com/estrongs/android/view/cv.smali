.class Lcom/estrongs/android/view/cv;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cv;->a:Lcom/estrongs/android/view/cq;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/estrongs/android/view/dd;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cv;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v0}, Lcom/estrongs/android/view/cq;->a(Lcom/estrongs/android/view/cq;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    return-object v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cv;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v0}, Lcom/estrongs/android/view/cq;->a(Lcom/estrongs/android/view/cq;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/cv;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v0}, Lcom/estrongs/android/view/cq;->a(Lcom/estrongs/android/view/cq;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->aq()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a00fe

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/HeaderGridView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/HeaderGridView;->a(Z)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/cv;->a(I)Lcom/estrongs/android/view/dd;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cv;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v0}, Lcom/estrongs/android/view/cq;->a(Lcom/estrongs/android/view/cq;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cv;->a:Lcom/estrongs/android/view/cq;

    iget-object v0, v0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/cv;->a(I)Lcom/estrongs/android/view/dd;

    move-result-object v1

    const v0, 0x7f0a00cd

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/view/cv;->a:Lcom/estrongs/android/view/cq;

    iget-object v2, v2, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/estrongs/android/view/dd;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v3}, Lcom/estrongs/android/view/aw;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iput-object v0, v1, Lcom/estrongs/android/view/dd;->c:Landroid/widget/TextView;

    const v0, 0x7f0a00e1

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/cv;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v1}, Lcom/estrongs/android/view/cq;->b(Lcom/estrongs/android/view/cq;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object p3

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/cv;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v1}, Lcom/estrongs/android/view/cq;->c(Lcom/estrongs/android/view/cq;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
