.class public Lcom/estrongs/android/ui/adapter/d;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:[Ljava/lang/String;

.field private c:[I

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/d;->a:Landroid/content/Context;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "Flickr"

    aput-object v1, v0, v3

    const-string v1, "Instagram"

    aput-object v1, v0, v4

    const-string v1, "Facebook"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/d;->b:[Ljava/lang/String;

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/d;->c:[I

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "Flickr"

    aput-object v1, v0, v3

    const-string v1, "Instagram"

    aput-object v1, v0, v4

    const-string v1, "Facebook"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/d;->d:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02009a
        0x7f02009b
        0x7f020099
    .end array-data
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/d;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/d;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/d;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/d;->b:[Ljava/lang/String;

    array-length v0, v0

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

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/d;->a:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/d;->c:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0e0400

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/d;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
