.class public Lcom/estrongs/android/ui/view/bw;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Landroid/view/WindowManager$LayoutParams;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/content/Context;

.field private i:I

.field private j:Landroid/widget/PopupWindow$OnDismissListener;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/estrongs/android/ui/view/bw;->i:I

    iput-object p1, p0, Lcom/estrongs/android/ui/view/bw;->h:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/bw;->a:Landroid/view/WindowManager;

    new-instance v0, Lcom/estrongs/android/ui/view/bx;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/view/bx;-><init>(Lcom/estrongs/android/ui/view/bw;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/bw;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->d:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/ui/view/by;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/view/by;-><init>(Lcom/estrongs/android/ui/view/bw;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    if-nez p2, :cond_0

    if-eqz p3, :cond_6

    :cond_0
    const v0, 0x7f0300db

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/bw;->c:Landroid/view/View;

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->c:Landroid/view/View;

    const v1, 0x7f0e0404

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->c:Landroid/view/View;

    const v1, 0x7f0e0406

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x80

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/bw;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->b:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->b:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->c:Landroid/view/View;

    const v1, 0x7f0e0409

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/bw;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->f:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->c:Landroid/view/View;

    const v1, 0x7f0e040b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/bw;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->g:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-nez p4, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->c:Landroid/view/View;

    const v1, 0x7f0e0405

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void

    :cond_6
    const v0, 0x7f0300dc

    goto :goto_0
.end method

.method private e()V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bw;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/bw;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->e:Landroid/widget/TextView;

    const v1, 0x7f080341

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->e:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->e:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->h:Landroid/content/Context;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bw;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bw;->e:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/bw;->k:Z

    return v0
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    iget v0, p0, Lcom/estrongs/android/ui/view/bw;->i:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/estrongs/android/ui/view/bw;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/view/bw;->i:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/estrongs/android/ui/view/bw;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/view/bw;->i:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bw;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bw;->c:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/view/bw;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/view/bw;->i:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/bw;->d()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public c()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/view/bw;->e()V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bw;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bw;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/bw;->k:Z
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
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bw;->d:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/bw;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->j:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bw;->j:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
