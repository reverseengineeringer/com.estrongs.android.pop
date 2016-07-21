.class public Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;
.super Lcom/estrongs/android/pop/esclasses/ESResourceActivity;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:I

.field private j:I

.field private k:Lcom/estrongs/android/ui/theme/at;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->j:I

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->j:I

    return p1
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->k:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->i:I

    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->i:I

    iput v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->j:I

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->k:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->a()Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/theme/av;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/av;-><init>(Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;)V

    const v0, 0x7f0e066b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f0e066a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->a:Landroid/widget/ImageView;

    new-instance v3, Lcom/estrongs/android/ui/theme/aw;

    invoke-direct {v3, p0, v1}, Lcom/estrongs/android/ui/theme/aw;-><init>(Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;Lcom/estrongs/android/ui/theme/al;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e066c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0e066f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->f:Landroid/widget/ImageView;

    const v0, 0x7f0e066e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->e:Landroid/widget/ImageView;

    new-instance v2, Lcom/estrongs/android/ui/theme/ax;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/ui/theme/ax;-><init>(Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;Lcom/estrongs/android/ui/theme/al;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0670

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0e0667

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/theme/ay;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/ay;-><init>(Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->b()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 5

    const v4, 0x7f0d0138

    const v3, 0x7f0d0137

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->j:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->j:I

    iget v1, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->i:I

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->setResult(I)V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030195

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->k:Lcom/estrongs/android/ui/theme/at;

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
