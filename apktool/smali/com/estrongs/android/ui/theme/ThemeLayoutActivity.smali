.class public Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;
.super Lcom/estrongs/android/ui/base/HomeAsBackActivity;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/estrongs/android/ui/theme/at;

.field private h:Z

.field private i:I

.field private j:Lcom/estrongs/android/ui/theme/al;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->k:I

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->k:I

    return p1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->e()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->h()V

    return-void
.end method

.method private d()V
    .locals 4

    const/16 v3, 0x8

    const v0, 0x7f0e0668

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e066d

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->j:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/al;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->a(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->j:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/al;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->a(Landroid/view/View;)V

    :cond_1
    new-instance v1, Lcom/estrongs/android/ui/theme/ao;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/ao;-><init>(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;)V

    const v0, 0x7f0e066b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f0e066a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->a:Landroid/widget/ImageView;

    new-instance v2, Lcom/estrongs/android/ui/theme/ap;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/ap;-><init>(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e066c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0e066f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->e:Landroid/widget/ImageView;

    const v0, 0x7f0e066e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/ui/theme/aq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/aq;-><init>(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0670

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->f:Landroid/widget/TextView;

    return-void
.end method

.method private e()V
    .locals 5

    const v4, 0x7f0d0138

    const v3, 0x7f0d0137

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->k:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08069e

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f08069b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080226

    new-instance v2, Lcom/estrongs/android/ui/theme/as;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/as;-><init>(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    new-instance v2, Lcom/estrongs/android/ui/theme/ar;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/ar;-><init>(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->finish()V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->k:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->j:Lcom/estrongs/android/ui/theme/al;

    const-string v1, "new"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    const v0, 0x7f0806ae

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->d(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->j:Lcom/estrongs/android/ui/theme/al;

    const-string v1, "old"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->i:I

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->g:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->setResult(I)V

    goto :goto_1
.end method


# virtual methods
.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0806a3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->setTitle(I)V

    const v0, 0x7f030191

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "theme_data_index"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->i:I

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->g:Lcom/estrongs/android/ui/theme/at;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->g:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->g()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->finish()V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->i:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/theme/al;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->j:Lcom/estrongs/android/ui/theme/al;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->h:Z

    const-string v0, "new"

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->j:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v2, p0}, Lcom/estrongs/android/ui/theme/al;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->k:I

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->d()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->e()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->f()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->f()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
