.class public Lcom/estrongs/android/ui/adapter/b;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/adapter/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:[Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    iput v7, p0, Lcom/estrongs/android/ui/adapter/b;->d:I

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/b;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->c:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/adapter/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/b;->c:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v6

    const v4, 0x7f02029f

    const-string v5, "box"

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/estrongs/android/ui/adapter/c;-><init>(Lcom/estrongs/android/ui/adapter/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/adapter/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/b;->c:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v2, v2, v3

    const v3, 0x7f0202a8

    const-string v5, "sugarsync"

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/estrongs/android/ui/adapter/c;-><init>(Lcom/estrongs/android/ui/adapter/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/adapter/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/b;->c:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v4

    const v4, 0x7f0202a0

    const-string v5, "dropbox"

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/estrongs/android/ui/adapter/c;-><init>(Lcom/estrongs/android/ui/adapter/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/adapter/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/b;->c:[Ljava/lang/String;

    aget-object v2, v2, v3

    const v3, 0x7f0202a7

    const-string v4, "onedrive"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/estrongs/android/ui/adapter/c;-><init>(Lcom/estrongs/android/ui/adapter/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/adapter/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/b;->c:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v7

    const v4, 0x7f0202a2

    const-string v5, "gdrive"

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/estrongs/android/ui/adapter/c;-><init>(Lcom/estrongs/android/ui/adapter/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/adapter/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/b;->c:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v2, v2, v3

    const v3, 0x7f0202a6

    const-string v5, "s3"

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/estrongs/android/ui/adapter/c;-><init>(Lcom/estrongs/android/ui/adapter/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/adapter/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/b;->c:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v4

    const v4, 0x7f0202aa

    const-string v5, "yandex"

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/estrongs/android/ui/adapter/c;-><init>(Lcom/estrongs/android/ui/adapter/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/adapter/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/b;->c:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v2, v2, v3

    const v3, 0x7f0202a5

    const-string v5, "megacloud"

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/estrongs/android/ui/adapter/c;-><init>(Lcom/estrongs/android/ui/adapter/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/adapter/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/b;->c:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v4

    const v4, 0x7f0202a3

    const-string v5, "kuaipan"

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/estrongs/android/ui/adapter/c;-><init>(Lcom/estrongs/android/ui/adapter/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/adapter/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/b;->c:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v2, v2, v3

    const v3, 0x7f0202a9

    const-string v5, "vdisk"

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/estrongs/android/ui/adapter/c;-><init>(Lcom/estrongs/android/ui/adapter/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/adapter/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/b;->c:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v4

    const v4, 0x7f02029e

    const-string v5, "pcs"

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/estrongs/android/ui/adapter/c;-><init>(Lcom/estrongs/android/ui/adapter/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/adapter/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/b;->c:[Ljava/lang/String;

    aget-object v2, v2, v3

    const v3, 0x7f0202a4

    const-string v4, "mediafire"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/estrongs/android/ui/adapter/c;-><init>(Lcom/estrongs/android/ui/adapter/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/am;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "megacloud"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/adapter/b;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v0, "cloud_mega"

    invoke-static {v0, v6}, Lcom/estrongs/android/i/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "megacloud"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/adapter/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "TW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vdisk"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/adapter/b;->a(Ljava/lang/String;)V

    const-string v0, "kuaipan"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/adapter/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/adapter/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/c;->a(Lcom/estrongs/android/ui/adapter/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/adapter/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/c;->b(Lcom/estrongs/android/ui/adapter/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/adapter/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/c;->c(Lcom/estrongs/android/ui/adapter/c;)I

    move-result v0

    return v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/adapter/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/c;->a(Lcom/estrongs/android/ui/adapter/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0e03ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/adapter/b;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0e0400

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0105

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/adapter/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
