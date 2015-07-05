.class public Lcom/estrongs/android/ui/view/bn;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Landroid/view/WindowManager$LayoutParams;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/bn;->a:Landroid/view/WindowManager;

    new-instance v0, Lcom/estrongs/android/ui/view/bo;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/view/bo;-><init>(Lcom/estrongs/android/ui/view/bn;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/bn;->d:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    if-nez p2, :cond_0

    if-eqz p3, :cond_6

    :cond_0
    const v0, 0x7f030070

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/bn;->c:Landroid/view/View;

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->c:Landroid/view/View;

    const v1, 0x7f0a0234

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->c:Landroid/view/View;

    const v1, 0x7f0a0236

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->c:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/view/bp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/view/bp;-><init>(Lcom/estrongs/android/ui/view/bn;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->c:Landroid/view/View;

    const/16 v1, 0x80

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bn;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bn;->c:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/bn;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->b:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->b:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->c:Landroid/view/View;

    const v1, 0x7f0a0239

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/bn;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->e:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->c:Landroid/view/View;

    const v1, 0x7f0a023b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/bn;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->f:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-nez p4, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->c:Landroid/view/View;

    const v1, 0x7f0a0235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void

    :cond_6
    const v0, 0x7f030071

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/bn;->g:Z

    return v0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/bn;->d()V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bn;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bn;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/bn;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bn;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bn;->d:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/bn;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
