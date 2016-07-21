.class public Lcom/estrongs/android/ui/view/ci;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/RecommendListView;

.field private b:[Lcom/estrongs/android/pop/view/utils/v;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/view/RecommendListView;[Lcom/estrongs/android/pop/view/utils/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ci;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/ui/view/ci;->b:[Lcom/estrongs/android/pop/view/utils/v;

    return-void
.end method


# virtual methods
.method public a([Lcom/estrongs/android/pop/view/utils/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ci;->b:[Lcom/estrongs/android/pop/view/utils/v;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ci;->b:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ci;->b:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const v11, 0x7f0e01c7

    const/4 v10, 0x0

    const v9, 0x7f0e05ec

    const/16 v8, 0x8

    const v7, 0x7f0d0105

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ci;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->d(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03016a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ci;->b:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v5, v0, p1

    if-eqz v5, :cond_1

    const v0, 0x7f0e05f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ci;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/RecommendListView;->e(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/pop/view/utils/n;->e(Lcom/estrongs/android/pop/view/utils/v;)Landroid/graphics/Bitmap;

    move-result-object v2

    const v1, 0x7f0e05e5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-nez v2, :cond_2

    const v2, 0x7f020187

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const v1, 0x7f0e05e9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e05ea

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e05e7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0e05f5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/estrongs/android/ui/view/ci;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v6, p2, v5}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;Landroid/view/View;Lcom/estrongs/android/pop/view/utils/v;)V

    iget-object v5, p0, Lcom/estrongs/android/ui/view/ci;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v5}, Lcom/estrongs/android/ui/view/RecommendListView;->f(Lcom/estrongs/android/ui/view/RecommendListView;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f0e05e4

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f0200bc

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/estrongs/android/ui/view/ci;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v5}, Lcom/estrongs/android/ui/view/RecommendListView;->g(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ci;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/RecommendListView;->g(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ci;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/RecommendListView;->g(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ci;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/RecommendListView;->g(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ci;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Lcom/estrongs/android/ui/view/RecommendListView;)[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    aget-object v0, v0, p1

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ci;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->b(Lcom/estrongs/android/ui/view/RecommendListView;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p2

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/estrongs/android/ui/view/ci;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v5}, Lcom/estrongs/android/ui/view/RecommendListView;->g(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/android/ui/theme/at;->i()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ci;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/RecommendListView;->g(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->i()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ci;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/RecommendListView;->g(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->i()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ci;->a:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/RecommendListView;->g(Lcom/estrongs/android/ui/view/RecommendListView;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->i()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
