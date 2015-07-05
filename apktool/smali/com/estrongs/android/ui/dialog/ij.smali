.class public Lcom/estrongs/android/ui/dialog/ij;
.super Lcom/estrongs/android/ui/dialog/cg;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/estrongs/android/ui/dialog/im;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300c7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ij;->setContentView(Landroid/view/View;)V

    const v2, 0x7f0b01e6

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/ij;->setTitle(I)V

    const v2, 0x7f0a0388

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ij;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ij;->a:Landroid/widget/ListView;

    const v2, 0x7f0201d6

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(I)V

    invoke-static {}, Lcom/estrongs/fs/impl/local/l;->l()[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    div-int/lit8 v0, v0, 0x3

    new-array v3, v0, [Lcom/estrongs/android/ui/dialog/io;

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x2

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ro"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/estrongs/android/ui/dialog/io;

    mul-int/lit8 v5, v0, 0x3

    aget-object v5, v2, v5

    mul-int/lit8 v6, v0, 0x3

    add-int/lit8 v6, v6, 0x1

    aget-object v6, v2, v6

    const-string v7, "ro"

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/estrongs/android/ui/dialog/io;-><init>(Lcom/estrongs/android/ui/dialog/ij;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/estrongs/android/ui/dialog/io;

    mul-int/lit8 v5, v0, 0x3

    aget-object v5, v2, v5

    mul-int/lit8 v6, v0, 0x3

    add-int/lit8 v6, v6, 0x1

    aget-object v6, v2, v6

    const-string v7, "rw"

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/estrongs/android/ui/dialog/io;-><init>(Lcom/estrongs/android/ui/dialog/ij;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/estrongs/android/ui/dialog/im;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ij;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v3}, Lcom/estrongs/android/ui/dialog/im;-><init>(Lcom/estrongs/android/ui/dialog/ij;Landroid/content/Context;[Lcom/estrongs/android/ui/dialog/io;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ij;->b:Lcom/estrongs/android/ui/dialog/im;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ij;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ij;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ij;->a:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ij;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ij;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ij;->b:Lcom/estrongs/android/ui/dialog/im;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0b000b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ik;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/ik;-><init>(Lcom/estrongs/android/ui/dialog/ij;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ij;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b000c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/il;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/il;-><init>(Lcom/estrongs/android/ui/dialog/ij;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/ij;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ij;)Lcom/estrongs/android/ui/dialog/im;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ij;->b:Lcom/estrongs/android/ui/dialog/im;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->a(Z)V

    invoke-static {p0, v1}, Lcom/estrongs/fs/impl/local/l;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Root_Try"

    const-string v3, "Root_Try"

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/a/b;->c()V

    return v0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/ad;->a(Z)V

    goto :goto_0
.end method
