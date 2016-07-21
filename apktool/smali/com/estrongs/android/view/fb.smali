.class Lcom/estrongs/android/view/fb;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/eu;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/eu;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/fb;->a:Lcom/estrongs/android/view/eu;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/estrongs/android/view/fj;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/fb;->a:Lcom/estrongs/android/view/eu;

    invoke-static {v0}, Lcom/estrongs/android/view/eu;->a(Lcom/estrongs/android/view/eu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    return-object v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/fb;->a:Lcom/estrongs/android/view/eu;

    invoke-static {v0}, Lcom/estrongs/android/view/eu;->a(Lcom/estrongs/android/view/eu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/estrongs/android/view/fb;->a:Lcom/estrongs/android/view/eu;

    invoke-static {v0}, Lcom/estrongs/android/view/eu;->a(Lcom/estrongs/android/view/eu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v2, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/view/fb;->a:Lcom/estrongs/android/view/eu;

    iget-object v0, v0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/estrongs/android/view/fb;->a:Lcom/estrongs/android/view/eu;

    iget-object v0, v0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    invoke-static {v0, v5}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {v4, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/estrongs/android/view/cr;->aE()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-virtual {v1, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Lcom/estrongs/android/view/cr;->d()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/view/fb;->a:Lcom/estrongs/android/view/eu;

    iget-object v2, v2, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/estrongs/android/view/fb;->a:Lcom/estrongs/android/view/eu;

    iget-object v2, v2, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/fb;->a(I)Lcom/estrongs/android/view/fj;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/fb;->a:Lcom/estrongs/android/view/eu;

    invoke-static {v0}, Lcom/estrongs/android/view/eu;->a(Lcom/estrongs/android/view/eu;)Ljava/util/ArrayList;

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
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fb;->a:Lcom/estrongs/android/view/eu;

    iget-object v0, v0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030131

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/fb;->a(I)Lcom/estrongs/android/view/fj;

    move-result-object v2

    const v0, 0x7f0e0259

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0506

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/estrongs/android/view/fj;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v3}, Lcom/estrongs/android/view/cr;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iput-object v1, v2, Lcom/estrongs/android/view/fj;->c:Landroid/widget/TextView;

    const v0, 0x7f0e0260

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/estrongs/android/view/fj;->d:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/view/fb;->a:Lcom/estrongs/android/view/eu;

    invoke-static {v3}, Lcom/estrongs/android/view/eu;->b(Lcom/estrongs/android/view/eu;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v2, v2, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v2}, Lcom/estrongs/android/view/cr;->d()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object p3

    :cond_2
    iget-object v3, p0, Lcom/estrongs/android/view/fb;->a:Lcom/estrongs/android/view/eu;

    invoke-static {v3}, Lcom/estrongs/android/view/eu;->c(Lcom/estrongs/android/view/eu;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
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
