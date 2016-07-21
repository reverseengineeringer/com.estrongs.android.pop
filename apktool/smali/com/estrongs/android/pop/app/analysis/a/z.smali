.class public Lcom/estrongs/android/pop/app/analysis/a/z;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/a/aa;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/z;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/z;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/a/z;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/z;->a:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/a/aa;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/a/aa;

    const-string v1, "pic://"

    const v3, 0x7f02023a

    const v4, 0x7f0800e6

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/estrongs/android/pop/app/analysis/a/aa;-><init>(Lcom/estrongs/android/pop/app/analysis/a/z;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/a/aa;

    const-string v1, "music://"

    const v3, 0x7f02023d

    const v4, 0x7f0800de

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/estrongs/android/pop/app/analysis/a/aa;-><init>(Lcom/estrongs/android/pop/app/analysis/a/z;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/a/aa;

    const-string v1, "video://"

    const v3, 0x7f020243

    const v4, 0x7f0800ef

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/estrongs/android/pop/app/analysis/a/aa;-><init>(Lcom/estrongs/android/pop/app/analysis/a/z;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/a/aa;

    const-string v1, "book://"

    const v3, 0x7f020235

    const v4, 0x7f0800d0

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/estrongs/android/pop/app/analysis/a/aa;-><init>(Lcom/estrongs/android/pop/app/analysis/a/z;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/a/aa;

    const-string v1, "app://"

    const v3, 0x7f02022e

    const v4, 0x7f0800cc

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/estrongs/android/pop/app/analysis/a/aa;-><init>(Lcom/estrongs/android/pop/app/analysis/a/z;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v1, 0x7f0800d8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v5, 0x7f0800d4

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/estrongs/android/pop/app/analysis/a/aa;

    const v6, 0x7f02023f

    invoke-direct {v5, p0, v0, v6, v1}, Lcom/estrongs/android/pop/app/analysis/a/aa;-><init>(Lcom/estrongs/android/pop/app/analysis/a/z;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/a/aa;

    const-string v1, "/"

    const v3, 0x7f0201cd

    const v4, 0x7f0800ca

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/estrongs/android/pop/app/analysis/a/aa;-><init>(Lcom/estrongs/android/pop/app/analysis/a/z;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/z;->a:Ljava/util/List;

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
    .locals 4

    if-nez p2, :cond_0

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/a/ab;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/analysis/a/ab;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/z;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030034

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0e00ca

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/pop/app/analysis/a/ab;->a:Landroid/widget/ImageView;

    const v0, 0x7f0e0129

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/pop/app/analysis/a/ab;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v1, Lcom/estrongs/android/pop/app/analysis/a/ab;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/z;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/aa;

    iget v0, v0, Lcom/estrongs/android/pop/app/analysis/a/aa;->b:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lcom/estrongs/android/pop/app/analysis/a/ab;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/z;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/aa;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/a/aa;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/a/ab;

    move-object v1, v0

    goto :goto_0
.end method
