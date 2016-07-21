.class public Lcom/estrongs/android/ui/c/c/b;
.super Lcom/estrongs/android/ui/c/c/a;


# instance fields
.field b:Landroid/widget/LinearLayout;

.field c:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

.field d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0300df

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/c/c/a;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0e0414

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/c/b;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/b;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/b;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v0, 0x7f0e0413

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/c/b;->c:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    const v0, 0x7f0e0415

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/c/b;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/b;->c:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/c/b;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->setSwitcher(Landroid/view/View;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/b;->c:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/b;->c:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/b;->c:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->setShowViews(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/b;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/b;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/ui/c/c/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/c/c;-><init>(Lcom/estrongs/android/ui/c/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/b;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
