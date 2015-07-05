.class Lcom/estrongs/android/view/af;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/af;->a:Lcom/estrongs/android/view/ac;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/estrongs/fs/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/af;->a:Lcom/estrongs/android/view/ac;

    iget-object v0, v0, Lcom/estrongs/android/view/ac;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/af;->a:Lcom/estrongs/android/view/ac;

    iget-object v0, v0, Lcom/estrongs/android/view/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/af;->a(I)Lcom/estrongs/fs/h;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/af;->a:Lcom/estrongs/android/view/ac;

    iget-object v0, v0, Lcom/estrongs/android/view/ac;->ag:Landroid/view/LayoutInflater;

    const v1, 0x7f030061

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f020038

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a011d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/af;->a:Lcom/estrongs/android/view/ac;

    iget-object v1, v1, Lcom/estrongs/android/view/ac;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    invoke-static {v1}, Lcom/estrongs/android/d/f;->d(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/d/f;->c(Lcom/estrongs/fs/h;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lcom/estrongs/android/d/f;->a(Lcom/estrongs/fs/h;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/d/f;->e(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a001e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/af;->a:Lcom/estrongs/android/view/ac;

    iget-object v1, v1, Lcom/estrongs/android/view/ac;->ad:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/af;->a:Lcom/estrongs/android/view/ac;

    iget-object v1, v1, Lcom/estrongs/android/view/ac;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/view/ag;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/view/ag;-><init>(Lcom/estrongs/android/view/af;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/view/af;->a:Lcom/estrongs/android/view/ac;

    iget-object v3, v3, Lcom/estrongs/android/view/ac;->f:Lcom/estrongs/android/d/k;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/view/af;->a:Lcom/estrongs/android/view/ac;

    invoke-static {v3}, Lcom/estrongs/android/view/ac;->a(Lcom/estrongs/android/view/ac;)V

    :cond_2
    iget-object v3, p0, Lcom/estrongs/android/view/af;->a:Lcom/estrongs/android/view/ac;

    iget-object v3, v3, Lcom/estrongs/android/view/ac;->f:Lcom/estrongs/android/d/k;

    invoke-virtual {v3, p1, v1, v0}, Lcom/estrongs/android/d/k;->a(ILcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/view/af;->a:Lcom/estrongs/android/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ac;->e()V

    return-void
.end method
