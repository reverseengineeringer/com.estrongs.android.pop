.class public Lcom/estrongs/android/pop/app/analysis/viewholders/v;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/view/View;

.field private g:Landroid/content/Context;

.field private h:Lcom/estrongs/android/ui/dialog/ci;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->g:Landroid/content/Context;

    const v0, 0x7f0e016c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->a:Landroid/widget/ImageView;

    const v0, 0x7f0e016d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->b:Landroid/widget/ImageView;

    const v0, 0x7f0e016e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->c:Landroid/widget/TextView;

    const v0, 0x7f0e016f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->f:Landroid/view/View;

    const v0, 0x7f0e0170

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->d:Landroid/widget/TextView;

    const v0, 0x7f0e0171

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->e:Landroid/widget/TextView;

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/analysis/b/aj;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->h:Lcom/estrongs/android/ui/dialog/ci;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/dialog/ci;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->h:Lcom/estrongs/android/ui/dialog/ci;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->h:Lcom/estrongs/android/ui/dialog/ci;

    const v1, 0x7f0800e5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->h:Lcom/estrongs/android/ui/dialog/ci;

    const v1, 0x7f03008f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setContentView(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->h:Lcom/estrongs/android/ui/dialog/ci;

    const v1, 0x7f0e02b4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->h:Lcom/estrongs/android/ui/dialog/ci;

    const v1, 0x7f0e02ba

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->h:Lcom/estrongs/android/ui/dialog/ci;

    const v1, 0x7f0e02b8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->h:Lcom/estrongs/android/ui/dialog/ci;

    const v1, 0x7f0e02b6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->h:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->hideAllButtons()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->i:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/analysis/b/aj;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->l:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/analysis/b/aj;->d:Lcom/estrongs/android/pop/app/analysis/n;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/analysis/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->k:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/analysis/b/aj;->d:Lcom/estrongs/android/pop/app/analysis/n;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/analysis/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->j:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/analysis/b/aj;->d:Lcom/estrongs/android/pop/app/analysis/n;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/analysis/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->h:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/viewholders/v;Lcom/estrongs/android/pop/app/analysis/b/aj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->a(Lcom/estrongs/android/pop/app/analysis/b/aj;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/analysis/b/aj;Z)V
    .locals 2

    iget-object v0, p1, Lcom/estrongs/android/pop/app/analysis/b/aj;->d:Lcom/estrongs/android/pop/app/analysis/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/analysis/b/aj;->d:Lcom/estrongs/android/pop/app/analysis/n;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/analysis/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->a:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/analysis/b/aj;->d:Lcom/estrongs/android/pop/app/analysis/n;

    iget v1, v1, Lcom/estrongs/android/pop/app/analysis/n;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/analysis/b/aj;->d:Lcom/estrongs/android/pop/app/analysis/n;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/analysis/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->b:Landroid/widget/ImageView;

    const v1, 0x7f0201f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->f:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/viewholders/w;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/w;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/v;Lcom/estrongs/android/pop/app/analysis/b/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/analysis/b/aj;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->a:Landroid/widget/ImageView;

    const v1, 0x7f02021b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/v;->b:Landroid/widget/ImageView;

    const v1, 0x7f02021c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
