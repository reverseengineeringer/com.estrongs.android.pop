.class public Lcom/estrongs/android/ui/a/f;
.super Landroid/widget/BaseAdapter;


# instance fields
.field protected a:I

.field private b:Landroid/content/Context;

.field private c:I

.field private d:[Landroid/graphics/drawable/Drawable;

.field private e:[Ljava/lang/String;

.field private f:Lcom/estrongs/android/ui/theme/al;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/estrongs/android/ui/a/f;->c:I

    iput v3, p0, Lcom/estrongs/android/ui/a/f;->a:I

    iput-object p1, p0, Lcom/estrongs/android/ui/a/f;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/f;->f:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/a/f;->getCount()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/estrongs/android/ui/a/f;->d:[Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->d:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/f;->f:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f0202f1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->d:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->f:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202f2

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->d:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->f:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202f3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->d:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->f:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202f4

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->d:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->f:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202f5

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->d:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->f:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202f6

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->d:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->f:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202ee

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->d:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->f:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202ef

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->d:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->f:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f0202f0

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/f;->e:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->B()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/a/f;->a:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/a/f;->a:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->B()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/a/f;->a:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/a/f;->a:I

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/a/f;->c:I

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

    const/high16 v3, 0x40800000    # 4.0f

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/f;->b:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/estrongs/android/ui/a/f;->d:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/a/f;->b:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/a/f;->b:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    const v0, 0x7f0a00cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/f;->e:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/estrongs/android/ui/a/f;->a:I

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
