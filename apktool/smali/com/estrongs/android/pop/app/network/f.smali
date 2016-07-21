.class Lcom/estrongs/android/pop/app/network/f;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/network/f;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/f;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->b(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)Lcom/estrongs/android/l/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/l/k;->e()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Lcom/estrongs/android/pop/app/network/i;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/f;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/network/i;-><init>(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;Lcom/estrongs/android/pop/app/network/a;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/f;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-static {v1, p2, v0}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;Landroid/view/View;Lcom/estrongs/android/pop/app/network/i;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/network/f;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->b(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)Lcom/estrongs/android/l/k;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/estrongs/android/l/k;->a(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/estrongs/android/pop/app/network/i;->b:Landroid/widget/TextView;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v3, v2, v5

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/estrongs/android/pop/app/network/i;->c:Landroid/widget/TextView;

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/network/f;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    const v4, 0x7f0805a9

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aget-object v2, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/estrongs/android/pop/app/network/i;->a:Landroid/widget/ImageView;

    const v3, 0x7f02017b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/network/f;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->b(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)Lcom/estrongs/android/l/k;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/estrongs/android/l/k;->b(I)Lcom/estrongs/android/l/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/l/m;->e()I

    move-result v3

    if-ne v3, v5, :cond_2

    iget-object v0, v0, Lcom/estrongs/android/pop/app/network/i;->a:Landroid/widget/ImageView;

    const v2, 0x7f020176

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    return-object v1

    :cond_1
    iget-object v2, v0, Lcom/estrongs/android/pop/app/network/i;->a:Landroid/widget/ImageView;

    const v3, 0x7f02017a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/estrongs/android/l/m;->e()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v0, v0, Lcom/estrongs/android/pop/app/network/i;->a:Landroid/widget/ImageView;

    const v2, 0x7f020177

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/estrongs/android/l/m;->e()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    iget-object v0, v0, Lcom/estrongs/android/pop/app/network/i;->a:Landroid/widget/ImageView;

    const v2, 0x7f020178

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lcom/estrongs/android/pop/app/network/i;->a:Landroid/widget/ImageView;

    const v2, 0x7f020175

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method
