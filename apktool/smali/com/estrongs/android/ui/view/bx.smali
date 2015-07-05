.class public Lcom/estrongs/android/ui/view/bx;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/estrongs/android/pop/view/utils/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/RecommendListView;

.field private b:[Lcom/estrongs/android/pop/view/utils/v;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/view/RecommendListView;Landroid/content/Context;I[Lcom/estrongs/android/pop/view/utils/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/bx;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/estrongs/android/ui/view/bx;->b:[Lcom/estrongs/android/pop/view/utils/v;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const v7, 0x7f080012

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bx;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->c(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bx;->b:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v5, v0, p1

    if-eqz v5, :cond_1

    const v0, 0x7f0a0382

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a037c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bx;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/RecommendListView;->d(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/pop/view/utils/n;->d(Lcom/estrongs/android/pop/view/utils/v;)Landroid/graphics/Bitmap;

    move-result-object v2

    const v1, 0x7f0a0375

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-nez v2, :cond_2

    const v2, 0x7f02008f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const v1, 0x7f0a0379

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a037a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0377

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0385

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/estrongs/android/ui/view/bx;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v6, p2, v5}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;Landroid/view/View;Lcom/estrongs/android/pop/view/utils/v;)V

    iget-object v5, p0, Lcom/estrongs/android/ui/view/bx;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v5}, Lcom/estrongs/android/ui/view/RecommendListView;->e(Lcom/estrongs/android/ui/view/RecommendListView;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f0a0374

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f020040

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/estrongs/android/ui/view/bx;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v5}, Lcom/estrongs/android/ui/view/RecommendListView;->f(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bx;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/RecommendListView;->f(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bx;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/RecommendListView;->f(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bx;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/RecommendListView;->f(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bx;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->b(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p2

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/estrongs/android/ui/view/bx;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v5}, Lcom/estrongs/android/ui/view/RecommendListView;->f(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bx;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/RecommendListView;->f(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bx;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/RecommendListView;->f(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bx;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/RecommendListView;->f(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
