.class public Lcom/estrongs/android/ui/adapter/dn;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:[Lcom/estrongs/android/util/bn;

.field b:[Lcom/estrongs/android/util/bn;

.field c:Lcom/estrongs/android/ui/theme/at;

.field d:Lcom/estrongs/android/pop/view/eh;

.field private e:Landroid/content/Context;

.field private f:Lcom/estrongs/android/ui/adapter/dp;

.field private g:Lcom/estrongs/android/ui/g/a;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/adapter/dn;->i:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/dn;->e:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/bm;->c()Lcom/estrongs/android/util/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/bm;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/bm;->c()Lcom/estrongs/android/util/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/bm;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/dn;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->c:Lcom/estrongs/android/ui/theme/at;

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/g/a;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->g:Lcom/estrongs/android/ui/g/a;

    new-instance v0, Lcom/estrongs/android/ui/adapter/dp;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/dn;->g:Lcom/estrongs/android/ui/g/a;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/adapter/dp;-><init>(Lcom/estrongs/android/ui/g/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->f:Lcom/estrongs/android/ui/adapter/dp;

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/dn;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(I)Lcom/estrongs/android/util/bn;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/dn;->b:[Lcom/estrongs/android/util/bn;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->b:[Lcom/estrongs/android/util/bn;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->b:[Lcom/estrongs/android/util/bn;

    aget-object v0, v0, p1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/estrongs/android/util/bn;->g:Z

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->b:[Lcom/estrongs/android/util/bn;

    array-length v0, v0

    :cond_1
    iget-boolean v2, p0, Lcom/estrongs/android/ui/adapter/dn;->h:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/estrongs/android/ui/adapter/dn;->i:Z

    if-eqz v2, :cond_3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->f:Lcom/estrongs/android/ui/adapter/dp;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/dn;->a:[Lcom/estrongs/android/util/bn;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/dn;->a:[Lcom/estrongs/android/util/bn;

    sub-int v0, p1, v0

    aget-object v0, v2, v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/estrongs/android/util/bn;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private a()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->g:Lcom/estrongs/android/ui/g/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->f:Lcom/estrongs/android/ui/adapter/dp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->f:Lcom/estrongs/android/ui/adapter/dp;

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/dn;->g:Lcom/estrongs/android/ui/g/a;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/adapter/dp;->a(Lcom/estrongs/android/ui/g/a;)Lcom/estrongs/android/ui/g/c;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/estrongs/android/ui/adapter/dn;->i:Z

    if-eq v0, v2, :cond_0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/adapter/dn;->i:Z

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/estrongs/android/ui/adapter/dn;->i:Z

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/adapter/dn;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/dn;->d()V

    return-void
.end method

.method private a(Lcom/estrongs/android/ui/g/c;)V
    .locals 2

    invoke-virtual {p1}, Lcom/estrongs/android/ui/g/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "action_recomm_pcs"

    invoke-virtual {p1}, Lcom/estrongs/android/ui/g/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/dn;->b()V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->e:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/g/c;->h(Landroid/content/Context;)V

    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/g/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/dn;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/estrongs/android/ui/g/h;-><init>(Landroid/content/Context;Lcom/estrongs/android/ui/g/c;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/h;->a()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/estrongs/android/ui/g/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/dn;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/estrongs/android/ui/g/h;-><init>(Landroid/content/Context;Lcom/estrongs/android/ui/g/c;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/h;->a()V

    goto :goto_0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/dn;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->a(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/pcs/c;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/dn;->e:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/c;-><init>(Landroid/content/Context;Z)V

    new-instance v1, Lcom/estrongs/android/ui/adapter/do;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/do;-><init>(Lcom/estrongs/android/ui/adapter/dn;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/c;->a(Lcom/estrongs/android/ui/pcs/q;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/c;->a()V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/util/bm;->c()Lcom/estrongs/android/util/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/bm;->e()[Lcom/estrongs/android/util/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->a:[Lcom/estrongs/android/util/bn;

    return-void
.end method

.method private d()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/estrongs/android/pop/z;->N:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/ap;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/view/eh;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/dn;->d:Lcom/estrongs/android/pop/view/eh;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/adapter/dn;->h:Z

    return-void
.end method

.method public a([Lcom/estrongs/android/util/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/dn;->b:[Lcom/estrongs/android/util/bn;

    return-void
.end method

.method public getCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/dn;->a:[Lcom/estrongs/android/util/bn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/dn;->a:[Lcom/estrongs/android/util/bn;

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/dn;->b:[Lcom/estrongs/android/util/bn;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/dn;->b:[Lcom/estrongs/android/util/bn;

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/estrongs/android/ui/adapter/dn;->h:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/estrongs/android/ui/adapter/dn;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v1

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
    .locals 11

    const/4 v10, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/16 v6, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300fc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0e0474

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0e0475

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e0476

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/adapter/dn;->a(I)Lcom/estrongs/android/util/bn;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    instance-of v3, v4, Lcom/estrongs/android/ui/adapter/dp;

    if-eqz v3, :cond_3

    move-object v3, v4

    check-cast v3, Lcom/estrongs/android/ui/adapter/dp;

    iget-object v5, p0, Lcom/estrongs/android/ui/adapter/dn;->g:Lcom/estrongs/android/ui/g/a;

    invoke-virtual {v3, v5}, Lcom/estrongs/android/ui/adapter/dp;->a(Lcom/estrongs/android/ui/g/a;)Lcom/estrongs/android/ui/g/c;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/estrongs/android/ui/adapter/dn;->e:Landroid/content/Context;

    invoke-virtual {v3, v5}, Lcom/estrongs/android/ui/g/c;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0200ac

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    check-cast v4, Lcom/estrongs/android/ui/adapter/dp;

    invoke-static {v4}, Lcom/estrongs/android/ui/adapter/dp;->a(Lcom/estrongs/android/ui/adapter/dp;)Lcom/estrongs/android/ui/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-boolean v3, v4, Lcom/estrongs/android/util/bn;->g:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/dn;->c:Lcom/estrongs/android/ui/theme/at;

    iget v5, v4, Lcom/estrongs/android/util/bn;->j:I

    invoke-virtual {v3, v5}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v4, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lcom/estrongs/android/util/bn;->i:Ljava/lang/String;

    iget-boolean v2, v4, Lcom/estrongs/android/util/bn;->h:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/dn;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->O()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (%s/%s)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v4, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aget-wide v4, v2, v8

    aget-wide v6, v2, v10

    sub-long/2addr v4, v6

    aget-wide v6, v2, v9

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aget-wide v4, v2, v8

    aget-wide v6, v2, v9

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v10

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget v3, v4, Lcom/estrongs/android/util/bn;->c:I

    if-ne v3, v9, :cond_7

    iget-object v3, v4, Lcom/estrongs/android/util/bn;->e:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    iget-object v3, v4, Lcom/estrongs/android/util/bn;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    iget-object v0, v4, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->e:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v2, v8, v8, v8, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const v0, 0x7f02031e

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, v4, Lcom/estrongs/android/util/bn;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->e:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v1, v8, v0, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_6
    const v3, 0x40032

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/h/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_7
    iget-object v3, v4, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/dn;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    iget-object v5, v4, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/h/f;->c(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v0, v4, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v0, v4, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f02031e

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v3, v4, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v4, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/estrongs/fs/w;->D:Lcom/estrongs/fs/w;

    invoke-virtual {v3}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/h/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_a
    sget-object v3, Lcom/estrongs/fs/w;->C:Lcom/estrongs/fs/w;

    invoke-virtual {v3}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/h/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_b
    iget-object v3, v4, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/h/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->ax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public notifyDataSetChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/dn;->c()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->g:Lcom/estrongs/android/ui/g/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/dn;->g:Lcom/estrongs/android/ui/g/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/g/a;->a(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/adapter/dn;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p3}, Lcom/estrongs/android/ui/adapter/dn;->a(I)Lcom/estrongs/android/util/bn;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v1, v2, Lcom/estrongs/android/ui/adapter/dp;

    if-eqz v1, :cond_3

    move-object v0, v2

    check-cast v0, Lcom/estrongs/android/ui/adapter/dp;

    move-object v1, v0

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/dn;->g:Lcom/estrongs/android/ui/g/a;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/adapter/dp;->a(Lcom/estrongs/android/ui/g/a;)Lcom/estrongs/android/ui/g/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/adapter/dn;->a(Lcom/estrongs/android/ui/g/c;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/dn;->f:Lcom/estrongs/android/ui/adapter/dp;

    iget-object v3, p0, Lcom/estrongs/android/ui/adapter/dn;->g:Lcom/estrongs/android/ui/g/a;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/adapter/dp;->b(Lcom/estrongs/android/ui/g/a;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/adapter/dn;->notifyDataSetChanged()V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/dn;->d:Lcom/estrongs/android/pop/view/eh;

    iget-object v3, v2, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Lcom/estrongs/android/pop/view/eh;->a(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/dn;->d:Lcom/estrongs/android/pop/view/eh;

    iget-object v2, v2, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/estrongs/android/pop/view/eh;->a(Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v1, v2, Lcom/estrongs/android/util/bn;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/estrongs/android/util/bn;->k:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/estrongs/android/util/bn;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/dn;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    iget-object v3, v2, Lcom/estrongs/android/util/bn;->k:Ljava/lang/String;

    iget-object v4, v2, Lcom/estrongs/android/util/bn;->l:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, p3}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
