.class public Lcom/estrongs/android/ui/a/e;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:[Landroid/graphics/drawable/Drawable;

.field private d:Lcom/estrongs/android/ui/theme/al;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/estrongs/android/ui/a/e;->b:I

    iput-object p1, p0, Lcom/estrongs/android/ui/a/e;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/e;->d:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/a/e;->getCount()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/estrongs/android/ui/a/e;->c:[Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/e;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/a/e;->d:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202dd

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/e;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/ui/a/e;->d:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202e3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/e;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/estrongs/android/ui/a/e;->d:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202df

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/e;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/estrongs/android/ui/a/e;->d:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202e1

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/e;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/estrongs/android/ui/a/e;->d:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202de

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/e;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/estrongs/android/ui/a/e;->d:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202e4

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/e;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/estrongs/android/ui/a/e;->d:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202e0

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/e;->c:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/estrongs/android/ui/a/e;->d:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202e2

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/estrongs/android/view/aw;->N()I

    move-result v1

    invoke-virtual {v2}, Lcom/estrongs/android/view/aw;->M()I

    move-result v0

    invoke-virtual {v2}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/view/utils/ac;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v2}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/view/utils/ad;

    move-result-object v0

    iget v1, v0, Lcom/estrongs/android/pop/view/utils/ad;->d:I

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/ad;->c:I

    :cond_0
    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/ui/a/e;->e:I

    :goto_1
    return-void

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/a/e;->e:I

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/a/e;->e:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/a/e;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/a/e;->b:I

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
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x40c00000    # 6.0f

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0a003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/e;->c:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/a/e;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/a/e;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    const v0, 0x7f0a00cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget v0, p0, Lcom/estrongs/android/ui/a/e;->e:I

    if-ne p1, v0, :cond_1

    const v0, 0x7f0201d3

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-object p2

    :cond_1
    const v0, 0x7f0201d6

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
