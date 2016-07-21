.class public Lcom/estrongs/android/pop/app/unlock/UnLockCardView;
.super Landroid/widget/LinearLayout;


# instance fields
.field public a:Lcom/estrongs/android/pop/app/unlock/g;

.field private b:Lcom/estrongs/android/pop/app/unlock/RoundedImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/unlock/UnLockCardView;)Lcom/estrongs/android/pop/app/unlock/RoundedImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->b:Lcom/estrongs/android/pop/app/unlock/RoundedImageView;

    return-object v0
.end method

.method private a()V
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03019d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e067a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/unlock/RoundedImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->b:Lcom/estrongs/android/pop/app/unlock/RoundedImageView;

    const v0, 0x7f0e067b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->c:Landroid/widget/TextView;

    const v0, 0x7f0e067c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->d:Landroid/widget/TextView;

    const v0, 0x7f0e067d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->e:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/k/d;)V
    .locals 9

    invoke-virtual {p1}, Lcom/estrongs/android/k/d;->b()Lcom/estrongs/android/k/f;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "card_title"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "card_icon"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "card_msg"

    invoke-virtual {v0, v3}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "card_result"

    invoke-virtual {v0, v4}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "card_button"

    invoke-virtual {v0, v5}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "show_result"

    invoke-virtual {v0, v6}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->b:Lcom/estrongs/android/pop/app/unlock/RoundedImageView;

    const v7, 0x7f02005b

    new-instance v8, Lcom/estrongs/android/pop/app/unlock/d;

    invoke-direct {v8, p0}, Lcom/estrongs/android/pop/app/unlock/d;-><init>(Lcom/estrongs/android/pop/app/unlock/UnLockCardView;)V

    invoke-static {v6, v2, v7, v8}, Lcom/estrongs/android/b/a/c;->a(Landroid/widget/ImageView;Ljava/lang/String;ILcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->e:Landroid/widget/TextView;

    const v1, 0x7f0806fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/estrongs/android/pop/app/unlock/e;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/app/unlock/e;-><init>(Lcom/estrongs/android/pop/app/unlock/UnLockCardView;Lcom/estrongs/android/k/d;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "unlockedc"

    const-string v2, "show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/unlock/f;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/unlock/f;-><init>(Lcom/estrongs/android/pop/app/unlock/UnLockCardView;)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/app/unlock/s;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
