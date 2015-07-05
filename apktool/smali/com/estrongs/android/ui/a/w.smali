.class public Lcom/estrongs/android/ui/a/w;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/a/w;->b:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/a/w;->a:Landroid/content/Context;

    invoke-static {}, Lcom/estrongs/android/ui/guesture/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/guesture/b;->b()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/a/w;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/w;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/gesture/Gesture;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/w;->a:Landroid/content/Context;

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/w;->a:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v1

    const v2, 0x59009ae2

    invoke-static {p1, v0, v0, v1, v2}, Lcom/estrongs/android/ui/guesture/d;->a(Landroid/gesture/Gesture;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/guesture/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/a/w;->b:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/a/w;->notifyDataSetChanged()V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/a/w;->b:Z

    return v0
.end method

.method public getCount()I
    .locals 2

    invoke-static {}, Lcom/estrongs/android/ui/guesture/b;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/a/w;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/w;->a(I)Ljava/lang/String;

    move-result-object v0

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

    iget-object v0, p0, Lcom/estrongs/android/ui/a/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/w;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/guesture/b;->c(Ljava/lang/String;)Landroid/gesture/Gesture;

    move-result-object v2

    const v0, 0x7f0a0288

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/a/w;->a(Landroid/gesture/Gesture;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f0a0010

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/a/w;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/estrongs/android/ui/guesture/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0289

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/a/x;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/a/x;-><init>(Lcom/estrongs/android/ui/a/w;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a028a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/a/y;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/a/y;-><init>(Lcom/estrongs/android/ui/a/w;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
