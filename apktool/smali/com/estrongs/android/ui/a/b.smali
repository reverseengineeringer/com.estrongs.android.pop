.class public Lcom/estrongs/android/ui/a/b;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:[Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    iput v6, p0, Lcom/estrongs/android/ui/a/b;->d:I

    iput-object p1, p0, Lcom/estrongs/android/ui/a/b;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/b;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/a/c;

    iget-object v3, p0, Lcom/estrongs/android/ui/a/b;->c:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v0, v3, v0

    const v3, 0x7f020172

    const-string v5, "box"

    invoke-direct {v2, p0, v0, v3, v5}, Lcom/estrongs/android/ui/a/c;-><init>(Lcom/estrongs/android/ui/a/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/b;->c:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v4

    const v4, 0x7f02017c

    const-string v5, "sugarsync"

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/estrongs/android/ui/a/c;-><init>(Lcom/estrongs/android/ui/a/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/b;->c:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v2, v2, v3

    const v3, 0x7f020173

    const-string v5, "dropbox"

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/estrongs/android/ui/a/c;-><init>(Lcom/estrongs/android/ui/a/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/b;->c:[Ljava/lang/String;

    aget-object v2, v2, v4

    const v3, 0x7f02017b

    const-string v4, "onedrive"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/estrongs/android/ui/a/c;-><init>(Lcom/estrongs/android/ui/a/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/b;->c:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v6

    const v4, 0x7f020175

    const-string v5, "gdrive"

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/estrongs/android/ui/a/c;-><init>(Lcom/estrongs/android/ui/a/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/b;->c:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v2, v2, v3

    const v3, 0x7f02017a

    const-string v5, "s3"

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/estrongs/android/ui/a/c;-><init>(Lcom/estrongs/android/ui/a/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/b;->c:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v4

    const v4, 0x7f02017e

    const-string v5, "yandex"

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/estrongs/android/ui/a/c;-><init>(Lcom/estrongs/android/ui/a/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/b;->c:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v2, v2, v3

    const v3, 0x7f020177

    const-string v5, "kuaipan"

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/estrongs/android/ui/a/c;-><init>(Lcom/estrongs/android/ui/a/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/b;->c:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v4

    const v4, 0x7f020176

    const-string v5, "kanbox"

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/estrongs/android/ui/a/c;-><init>(Lcom/estrongs/android/ui/a/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/b;->c:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v2, v2, v3

    const v3, 0x7f02017d

    const-string v5, "vdisk"

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/estrongs/android/ui/a/c;-><init>(Lcom/estrongs/android/ui/a/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/b;->c:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v4

    const v4, 0x7f020171

    const-string v5, "pcs"

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/estrongs/android/ui/a/c;-><init>(Lcom/estrongs/android/ui/a/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/a/c;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/b;->c:[Ljava/lang/String;

    aget-object v2, v2, v3

    const v3, 0x7f020178

    const-string v4, "mediafire"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/estrongs/android/ui/a/c;-><init>(Lcom/estrongs/android/ui/a/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/aj;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "TW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vdisk"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/a/b;->a(Ljava/lang/String;)V

    const-string v0, "kanbox"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/a/b;->a(Ljava/lang/String;)V

    const-string v0, "kuaipan"

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/c;->a(Lcom/estrongs/android/ui/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/c;->b(Lcom/estrongs/android/ui/a/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/c;->c(Lcom/estrongs/android/ui/a/c;)I

    move-result v0

    return v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/c;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/c;->a(Lcom/estrongs/android/ui/a/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->a:Ljava/util/List;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0a022f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/b;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a0230

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
