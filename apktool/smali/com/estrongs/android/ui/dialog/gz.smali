.class public Lcom/estrongs/android/ui/dialog/gz;
.super Lcom/estrongs/android/ui/dialog/gu;


# instance fields
.field private n:Lcom/estrongs/android/ui/a/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/gu;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    const v4, 0x7f0a00cd

    const v3, 0x7f0a003d

    const v0, 0x7f0a011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/ui/dialog/gz;->b(Landroid/view/View;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f0200be

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b02d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/ui/dialog/gz;->b(Landroid/view/View;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f0200c0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gz;->n:Lcom/estrongs/android/ui/a/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/estrongs/android/ui/a/f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/hb;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/ui/dialog/hb;-><init>(Lcom/estrongs/android/ui/dialog/gz;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8

    const v7, 0x7f0a0122

    const v6, 0x7f0a011e

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const v1, 0x7f0a011d

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->d:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->d:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->d:Landroid/view/View;

    const v2, 0x7f0a0123

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->g:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/ha;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gz;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/ui/dialog/ha;-><init>(Lcom/estrongs/android/ui/dialog/gz;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->n:Lcom/estrongs/android/ui/a/f;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->n:Lcom/estrongs/android/ui/a/f;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/f;->a()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->e:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/gz;->a(Landroid/view/View;)V

    const v1, 0x7f0a0126

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->i:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->i:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->k:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/a/e;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gz;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/a/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->a:Lcom/estrongs/android/ui/a/e;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->j:Landroid/view/View;

    invoke-virtual {p0, v1, v4}, Lcom/estrongs/android/ui/dialog/gz;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->k:Landroid/view/View;

    invoke-virtual {p0, v1, v5}, Lcom/estrongs/android/ui/dialog/gz;->a(Landroid/view/View;I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/gz;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->ak()Z

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gz;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->am()Z

    move-result v2

    or-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gz;->i:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0124

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v5}, Lcom/estrongs/android/ui/dialog/gz;->a(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/gz;->a(I)V

    :cond_2
    return-void
.end method
