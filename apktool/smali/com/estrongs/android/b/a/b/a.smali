.class public Lcom/estrongs/android/b/a/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/b/a/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "Clean_function_sdanalyze_click_pv"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "clean"

    const-string v2, "Clean_function_sdanalyze_click_pv"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/b/a/b/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/b/a/b/a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 3

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030060

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "function"

    return-object v0
.end method

.method public a(Landroid/view/View;Lcom/estrongs/android/b/a/a;Landroid/content/Context;ILcom/estrongs/android/pop/app/cleaner/i;)V
    .locals 12

    const v0, 0x7f0e0076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0e0073

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0e0077

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e0256

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0e00cc

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    instance-of v5, p2, Lcom/estrongs/android/b/a/a/c;

    if-eqz v5, :cond_2

    move-object v5, p2

    check-cast v5, Lcom/estrongs/android/b/a/a/c;

    invoke-virtual {v5}, Lcom/estrongs/android/b/a/a/c;->o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/estrongs/android/b/a/a/c;->u()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/estrongs/android/b/a/a/c;->w()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/estrongs/android/b/a/a/c;->v()Ljava/lang/String;

    move-result-object v6

    check-cast p2, Lcom/estrongs/android/b/a/a/c;

    invoke-virtual {p2}, Lcom/estrongs/android/b/a/a/c;->s()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    invoke-virtual {v5}, Lcom/estrongs/android/b/a/a/c;->t()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v5}, Lcom/estrongs/android/b/a/a/c;->t()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    new-instance v11, Lcom/estrongs/android/b/a/b/b;

    invoke-direct {v11, p0, v0, v1}, Lcom/estrongs/android/b/a/b/b;-><init>(Lcom/estrongs/android/b/a/b/a;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {v10, v11}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v5}, Lcom/estrongs/android/b/a/a/c;->t()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_0
    move-object v0, v6

    move-object v1, v7

    move-object v5, v8

    move-object v6, v9

    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/estrongs/android/b/a/b/c;

    invoke-direct {v1, p0, v0, p3}, Lcom/estrongs/android/b/a/b/c;-><init>(Lcom/estrongs/android/b/a/b/a;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    check-cast p2, Lcom/estrongs/android/b/a/p;

    const-string v5, "title"

    invoke-virtual {p2, v5}, Lcom/estrongs/android/b/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "description"

    invoke-virtual {p2, v5}, Lcom/estrongs/android/b/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "button"

    invoke-virtual {p2, v5}, Lcom/estrongs/android/b/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "action"

    invoke-virtual {p2, v5}, Lcom/estrongs/android/b/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "icon"

    invoke-virtual {p2, v9}, Lcom/estrongs/android/b/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "image"

    invoke-virtual {p2, v10}, Lcom/estrongs/android/b/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0200f8

    invoke-static {v0, v9, v11}, Lcom/estrongs/android/b/a/c;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    if-eqz v1, :cond_4

    if-eqz v10, :cond_3

    const v0, 0x7f0200f7

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0200f7

    invoke-static {v1, v10, v0}, Lcom/estrongs/android/b/a/c;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v0, v5

    move-object v1, v6

    move-object v5, v7

    move-object v6, v8

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_4
    move-object v0, v5

    move-object v1, v6

    move-object v5, v7

    move-object v6, v8

    goto :goto_1
.end method
