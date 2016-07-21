.class public Lcom/estrongs/android/pop/app/unlock/q;
.super Lcom/estrongs/android/ui/dialog/ci;


# instance fields
.field private a:Lcom/estrongs/android/pop/app/unlock/a;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/unlock/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/estrongs/android/pop/app/unlock/q;->a:Lcom/estrongs/android/pop/app/unlock/a;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/unlock/q;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/unlock/q;->c()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/unlock/q;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03019e

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/unlock/q;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->a:Lcom/estrongs/android/pop/app/unlock/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/unlock/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/unlock/q;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e067e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0e067f

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e0687

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/unlock/q;->i:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0680

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/unlock/q;->b:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0682

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/unlock/q;->c:Landroid/widget/LinearLayout;

    const v2, 0x7f0e0681

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/unlock/q;->f:Landroid/widget/TextView;

    const v2, 0x7f0e0683

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/unlock/q;->e:Landroid/widget/ImageView;

    const v2, 0x7f0e0684

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/unlock/q;->g:Landroid/widget/TextView;

    const v2, 0x7f0e0685

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/unlock/q;->h:Landroid/widget/TextView;

    const v2, 0x7f0e0686

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/unlock/q;->d:Landroid/widget/Button;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/unlock/q;->a:Lcom/estrongs/android/pop/app/unlock/a;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/unlock/a;->c:Ljava/lang/String;

    const v3, 0x7f0200f7

    invoke-static {v0, v2, v3, v4}, Lcom/estrongs/android/b/a/c;->a(Landroid/widget/ImageView;Ljava/lang/String;ILcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->a:Lcom/estrongs/android/pop/app/unlock/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/unlock/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/q;->a:Lcom/estrongs/android/pop/app/unlock/a;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/unlock/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->d:Landroid/widget/Button;

    const v1, 0x7f080073

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/unlock/q;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->d:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/pop/app/unlock/r;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/unlock/r;-><init>(Lcom/estrongs/android/pop/app/unlock/q;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lcom/duapps/ad/b;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/duapps/ad/b;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->f:Landroid/widget/TextView;

    const v1, 0x7f0806f8

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/unlock/q;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/unlock/q;->a()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->f:Landroid/widget/TextView;

    const v1, 0x7f08038a

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/unlock/q;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/duapps/ad/c;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->e:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/duapps/ad/c;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02005b

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/b/a/c;->a(Landroid/widget/ImageView;Ljava/lang/String;ILcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/duapps/ad/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/duapps/ad/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->d:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/duapps/ad/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/q;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/duapps/ad/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/duapps/ad/f;)V
    .locals 1

    invoke-virtual {p1}, Lcom/duapps/ad/f;->l()Lcom/duapps/ad/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/unlock/q;->a(Lcom/duapps/ad/c;)V

    return-void
.end method
