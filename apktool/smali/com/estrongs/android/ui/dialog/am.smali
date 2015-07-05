.class Lcom/estrongs/android/ui/dialog/am;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/dialog/an;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field e:I

.field final synthetic f:Lcom/estrongs/android/ui/dialog/ae;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ae;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/am;->f:Lcom/estrongs/android/ui/dialog/ae;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v1, p0, Lcom/estrongs/android/ui/dialog/am;->b:I

    iput v1, p0, Lcom/estrongs/android/ui/dialog/am;->c:I

    iput v0, p0, Lcom/estrongs/android/ui/dialog/am;->d:I

    iput v0, p0, Lcom/estrongs/android/ui/dialog/am;->e:I

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/am;->a:Ljava/util/List;

    iget v1, p0, Lcom/estrongs/android/ui/dialog/am;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/dialog/an;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/an;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/dialog/am;->b:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/am;->notifyDataSetChanged()V

    return-void
.end method

.method protected a(Ljava/util/List;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/dialog/an;",
            ">;III)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/am;->a:Ljava/util/List;

    iput p2, p0, Lcom/estrongs/android/ui/dialog/am;->d:I

    iput p3, p0, Lcom/estrongs/android/ui/dialog/am;->e:I

    iput p4, p0, Lcom/estrongs/android/ui/dialog/am;->b:I

    iput p4, p0, Lcom/estrongs/android/ui/dialog/am;->c:I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/am;->f:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ae;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/am;->f:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/ae;->e:Landroid/widget/CheckBox;

    if-eqz p4, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/am;->f:Lcom/estrongs/android/ui/dialog/ae;

    invoke-virtual {v0, p4}, Lcom/estrongs/android/ui/dialog/ae;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/am;->notifyDataSetChanged()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Z
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/dialog/am;->c:I

    iget v1, p0, Lcom/estrongs/android/ui/dialog/am;->b:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/am;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/am;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/dialog/am;->d:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_2

    iget v0, p0, Lcom/estrongs/android/ui/dialog/am;->d:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/am;->f:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ae;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v2, Lcom/estrongs/android/ui/dialog/ao;

    invoke-direct {v2, v3}, Lcom/estrongs/android/ui/dialog/ao;-><init>(Lcom/estrongs/android/ui/dialog/af;)V

    const v0, 0x7f0a0067

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/estrongs/android/ui/dialog/ao;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a0063

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/estrongs/android/ui/dialog/ao;->b:Landroid/widget/TextView;

    iget-object v0, v2, Lcom/estrongs/android/ui/dialog/ao;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/am;->f:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/ae;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v3

    const v4, 0x7f080012

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0068

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/estrongs/android/ui/dialog/ao;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a0069

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/estrongs/android/ui/dialog/ao;->c:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/am;->f:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v4, v4, Lcom/estrongs/android/ui/dialog/ae;->d:Landroid/content/Context;

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v4, v5}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/am;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/dialog/an;

    if-nez v0, :cond_3

    iget-object v0, v2, Lcom/estrongs/android/ui/dialog/ao;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v2, Lcom/estrongs/android/ui/dialog/ao;->b:Landroid/widget/TextView;

    const v1, 0x7f0b046b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_2
    iget-object v1, v2, Lcom/estrongs/android/ui/dialog/ao;->d:Landroid/widget/ImageView;

    iget v0, p0, Lcom/estrongs/android/ui/dialog/am;->b:I

    if-ne v0, p1, :cond_5

    const v0, 0x7f0201d7

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/am;->f:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ae;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000c

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/dialog/ao;

    move-object v2, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/am;->f:Lcom/estrongs/android/ui/dialog/ae;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ae;->a(Lcom/estrongs/android/ui/dialog/ae;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, v0, Lcom/estrongs/android/ui/dialog/an;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    :try_start_0
    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/am;->f:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/ae;->c:Landroid/content/pm/PackageManager;

    iget-object v4, v0, Lcom/estrongs/android/ui/dialog/an;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/am;->f:Lcom/estrongs/android/ui/dialog/ae;

    invoke-static {v3}, Lcom/estrongs/android/ui/dialog/ae;->a(Lcom/estrongs/android/ui/dialog/ae;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v0, Lcom/estrongs/android/ui/dialog/an;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_4
    iget-object v3, v2, Lcom/estrongs/android/ui/dialog/ao;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, v2, Lcom/estrongs/android/ui/dialog/ao;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v2, Lcom/estrongs/android/ui/dialog/ao;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/an;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/estrongs/android/ui/dialog/am;->d:I

    if-ne p1, v0, :cond_0

    iget-object v0, v2, Lcom/estrongs/android/ui/dialog/ao;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/estrongs/android/ui/dialog/ao;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/am;->f:Lcom/estrongs/android/ui/dialog/ae;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ae;->d:Landroid/content/Context;

    const v3, 0x7f0b046e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/estrongs/android/ui/dialog/am;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    const v0, 0x7f0201d9

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
