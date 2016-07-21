.class public final Lcom/estrongs/android/pop/app/am;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/DefaultWindowSetting;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/pop/app/am;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/am;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/am;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/am;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/am;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/am;->c:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/am;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/am;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/am;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030045

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/ao;

    invoke-direct {v3, v1}, Lcom/estrongs/android/pop/app/ao;-><init>(Lcom/estrongs/android/pop/app/aj;)V

    const v0, 0x7f0e0076

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/estrongs/android/pop/app/ao;->a:Landroid/widget/ImageView;

    const v0, 0x7f0e01a0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/estrongs/android/pop/app/ao;->b:Landroid/widget/TextView;

    const v0, 0x7f0e01a1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/estrongs/android/pop/app/ao;->c:Landroid/widget/ImageView;

    iget-object v0, v3, Lcom/estrongs/android/pop/app/ao;->c:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/am;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02038a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/am;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "#home_page#"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/am;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "#home#"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, v3, Lcom/estrongs/android/pop/app/ao;->c:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    iget-object v0, v3, Lcom/estrongs/android/pop/app/ao;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/am;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, v3, Lcom/estrongs/android/pop/app/ao;->c:Landroid/widget/ImageView;

    new-instance v5, Lcom/estrongs/android/pop/app/an;

    invoke-direct {v5, p0, v0}, Lcom/estrongs/android/pop/app/an;-><init>(Lcom/estrongs/android/pop/app/am;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/am;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-static {v4}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/am;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->b(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/am;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->b(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v4, v3, Lcom/estrongs/android/pop/app/ao;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/am;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/DefaultWindowSetting;->c(Lcom/estrongs/android/pop/app/DefaultWindowSetting;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/ao;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_3
    iget-object v1, v3, Lcom/estrongs/android/pop/app/ao;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/am;->a:Lcom/estrongs/android/pop/app/DefaultWindowSetting;

    invoke-static {v4, v0}, Lcom/estrongs/android/util/bc;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
