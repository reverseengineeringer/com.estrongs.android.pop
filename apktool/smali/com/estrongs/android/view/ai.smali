.class Lcom/estrongs/android/view/ai;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/af;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/af;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/estrongs/fs/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    iget-object v0, v0, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    iget-object v0, v0, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/ai;->a(I)Lcom/estrongs/fs/h;

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

    iget-object v0, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    iget-object v0, v0, Lcom/estrongs/android/view/af;->aj:Landroid/view/LayoutInflater;

    const v1, 0x7f0300cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0200aa

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0e0107

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    iget-object v1, v1, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    invoke-static {v1}, Lcom/estrongs/android/h/f;->c(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/h/f;->b(Lcom/estrongs/fs/h;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/estrongs/android/h/a/e;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;)V

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e0108

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    invoke-static {v1}, Lcom/estrongs/android/view/af;->a(Lcom/estrongs/android/view/af;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    invoke-static {v1}, Lcom/estrongs/android/view/af;->a(Lcom/estrongs/android/view/af;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    iget-object v1, v1, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/view/aj;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/view/aj;-><init>(Lcom/estrongs/android/view/ai;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    invoke-static {v1}, Lcom/estrongs/android/view/af;->a(Lcom/estrongs/android/view/af;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d008e

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/view/af;

    invoke-virtual {v0}, Lcom/estrongs/android/view/af;->e()V

    return-void
.end method
