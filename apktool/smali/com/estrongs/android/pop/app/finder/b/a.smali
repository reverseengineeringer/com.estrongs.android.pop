.class public Lcom/estrongs/android/pop/app/finder/b/a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

.field private h:Lcom/estrongs/android/pop/app/finder/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/b/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/finder/b/a;->a()V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;I)V
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-ge v2, p2, :cond_0

    move v0, v1

    :goto_0
    sub-int v3, p2, v2

    if-ge v0, v3, :cond_0

    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/finder/b/a;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v5, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    iget v6, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    iget v7, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    iget v8, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/finder/b/a;Lcom/estrongs/android/pop/app/finder/data/FinderItemData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/finder/b/a;->a(Lcom/estrongs/android/pop/app/finder/data/FinderItemData;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/finder/data/FinderItemData;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->h:Lcom/estrongs/android/pop/app/finder/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->g:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a(Lcom/estrongs/android/pop/app/finder/data/FinderItemData;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->h:Lcom/estrongs/android/pop/app/finder/a/b;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/b/a;->g:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    iget v2, p0, Lcom/estrongs/android/pop/app/finder/b/a;->f:I

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/app/finder/a/b;->a(Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;I)V

    :cond_0
    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/finder/data/FinderItemData;Landroid/widget/LinearLayout;)V
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->a:Landroid/content/Context;

    const v1, 0x7f0300bf

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e03c9

    invoke-static {v1, v0}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/finder/b/a;->a(Lcom/estrongs/android/pop/app/finder/data/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v3, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    iget v4, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    iget v5, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    iget v6, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Lcom/estrongs/android/pop/app/finder/b/b;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/pop/app/finder/b/b;-><init>(Lcom/estrongs/android/pop/app/finder/b/a;Lcom/estrongs/android/pop/app/finder/data/FinderItemData;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatCheckBox;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    invoke-virtual {p2, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Ljava/util/Collection;ILcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderItemData;",
            ">;I",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;

    rem-int v4, v2, p2

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/estrongs/android/pop/app/finder/b/a;->a:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_0
    sget-object v6, Lcom/estrongs/android/pop/app/finder/b/e;->a:[I

    invoke-virtual {p3}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/finder/b/a;->b(Lcom/estrongs/android/pop/app/finder/data/FinderItemData;Landroid/widget/LinearLayout;)V

    :goto_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_1

    invoke-direct {p0, v1, p2}, Lcom/estrongs/android/pop/app/finder/b/a;->a(Landroid/widget/LinearLayout;I)V

    :cond_1
    if-eqz v4, :cond_2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v6, -0x2

    invoke-direct {v0, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/finder/b/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/finder/b/a;->a(Lcom/estrongs/android/pop/app/finder/data/FinderItemData;Landroid/widget/LinearLayout;)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/finder/b/a;->b(Lcom/estrongs/android/pop/app/finder/data/FinderItemData;Landroid/widget/LinearLayout;)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/finder/b/a;->b(Lcom/estrongs/android/pop/app/finder/data/FinderItemData;Landroid/widget/LinearLayout;)V

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/finder/b/a;->c(Lcom/estrongs/android/pop/app/finder/data/FinderItemData;Landroid/widget/LinearLayout;)V

    goto :goto_2

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Lcom/estrongs/android/pop/app/finder/data/FinderItemData;Landroid/widget/LinearLayout;)V
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->a:Landroid/content/Context;

    const v1, 0x7f0300c0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e03ca

    invoke-static {v1, v0}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/finder/b/a;->a(Lcom/estrongs/android/pop/app/finder/data/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v3, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    iget v4, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    iget v5, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    iget v6, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Lcom/estrongs/android/pop/app/finder/b/c;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/pop/app/finder/b/c;-><init>(Lcom/estrongs/android/pop/app/finder/b/a;Lcom/estrongs/android/pop/app/finder/data/FinderItemData;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p2, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private c(Lcom/estrongs/android/pop/app/finder/data/FinderItemData;Landroid/widget/LinearLayout;)V
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->a:Landroid/content/Context;

    const v1, 0x7f0300be

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0e03c7

    invoke-static {v2, v0}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    const v1, 0x7f0e03c6

    invoke-static {v2, v1}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v1, 0x7f0e03c8

    invoke-static {v2, v1}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/finder/b/a;->a(Lcom/estrongs/android/pop/app/finder/data/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v3, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    iget v4, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    iget v5, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    iget v6, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Lcom/estrongs/android/pop/app/finder/b/d;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/pop/app/finder/b/d;-><init>(Lcom/estrongs/android/pop/app/finder/b/a;Lcom/estrongs/android/pop/app/finder/data/FinderItemData;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatCheckBox;->setClickable(Z)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    invoke-virtual {p2, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/estrongs/android/pop/app/finder/data/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Lcom/estrongs/android/pop/app/finder/data/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/app/finder/data/a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/estrongs/android/pop/app/finder/data/a;->a:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/finder/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->itemView:Landroid/view/View;

    const v1, 0x7f0e03cb

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->itemView:Landroid/view/View;

    const v1, 0x7f0e03cc

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/finder/b/a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->d:I

    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/finder/b/a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->e:I

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/finder/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/b/a;->h:Lcom/estrongs/android/pop/app/finder/a/b;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;I)V
    .locals 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/b/a;->g:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;

    iput p2, p0, Lcom/estrongs/android/pop/app/finder/b/a;->f:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/finder/b/a;->a(Lcom/estrongs/android/pop/app/finder/data/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->a()Ljava/util/Collection;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->c:I

    iget-object v2, p1, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->d:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    invoke-direct {p0, v0, v1, v2}, Lcom/estrongs/android/pop/app/finder/b/a;->a(Ljava/util/Collection;ILcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;)V

    return-void
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/b/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method
