.class Lcom/estrongs/android/ui/dialog/iv;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/is;

.field private b:Landroid/content/Context;

.field private c:[Lcom/estrongs/android/ui/dialog/ix;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/dialog/is;Landroid/content/Context;[Lcom/estrongs/android/ui/dialog/ix;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/iv;->a:Lcom/estrongs/android/ui/dialog/is;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/iv;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/iv;)[Lcom/estrongs/android/ui/dialog/ix;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    return-object v0
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x3

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/ix;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/ix;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/ix;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b()[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/estrongs/android/ui/dialog/ix;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v2, 0x3

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_3

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/estrongs/android/ui/dialog/ix;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v4, v0, 0x3

    iget-object v5, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/estrongs/android/ui/dialog/ix;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/estrongs/android/ui/dialog/ix;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/estrongs/android/ui/dialog/ix;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    array-length v0, v0

    goto :goto_0
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

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/iv;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03016f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0e05f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ix;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e05fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/iv;->c:[Lcom/estrongs/android/ui/dialog/ix;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ix;->c:Ljava/lang/String;

    const-string v2, "ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0e05fb

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    :goto_0
    new-instance v1, Lcom/estrongs/android/ui/dialog/iw;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/iw;-><init>(Lcom/estrongs/android/ui/dialog/iv;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-object p2

    :cond_1
    const v1, 0x7f0e05fc

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method
