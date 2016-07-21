.class public Lcom/estrongs/android/ui/g/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/estrongs/android/ui/g/c;

.field private c:Lcom/estrongs/android/ui/dialog/ci;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/os/Handler;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/ui/g/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/g/h;->l:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/g/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/g/h;->b:Lcom/estrongs/android/ui/g/c;

    new-instance v0, Lcom/estrongs/android/ui/g/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/g/i;-><init>(Lcom/estrongs/android/ui/g/h;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/g/h;->k:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/estrongs/android/ui/g/h;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/g/h;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/g/h;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/g/h;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->i:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private c()V
    .locals 5

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e02e9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/g/h;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e0108

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/g/h;->d:Landroid/widget/TextView;

    const v0, 0x7f0e0076

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/ui/g/h;->b:Lcom/estrongs/android/ui/g/c;

    iget-object v3, p0, Lcom/estrongs/android/ui/g/h;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/g/c;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    const v0, 0x7f0e0077

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/g/h;->b:Lcom/estrongs/android/ui/g/c;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/g/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e02d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/g/h;->b:Lcom/estrongs/android/ui/g/c;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/g/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e02e8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/g/h;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->h:Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/ui/g/j;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/g/j;-><init>(Lcom/estrongs/android/ui/g/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0209

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/g/h;->f:Landroid/widget/TextView;

    const v0, 0x7f0e02ea

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/g/h;->g:Landroid/widget/TextView;

    const v0, 0x7f0e01ed

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/g/h;->i:Landroid/widget/ProgressBar;

    const v0, 0x7f0e0086

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/ui/g/h;->j:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->b:Lcom/estrongs/android/ui/g/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v2, p0, Lcom/estrongs/android/ui/g/h;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0805ca

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/g/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/g/l;-><init>(Lcom/estrongs/android/ui/g/h;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    new-instance v2, Lcom/estrongs/android/ui/g/k;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/g/k;-><init>(Lcom/estrongs/android/ui/g/h;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/g/h;->c:Lcom/estrongs/android/ui/dialog/ci;

    return-void

    :cond_1
    const v2, 0x7f020187

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private d()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->b:Lcom/estrongs/android/ui/g/c;

    iget-object v1, p0, Lcom/estrongs/android/ui/g/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/ui/g/h;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/g/c;->a(Landroid/content/Context;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->h:Landroid/widget/Button;

    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/g/h;->l:Z

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/g/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/g/h;->e()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/g/h;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->a:Landroid/content/Context;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->b:Lcom/estrongs/android/ui/g/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/c;->h()V

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->h:Landroid/widget/Button;

    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/g/h;->l:Z

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/g/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/g/h;->l:Z

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/g/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/g/h;->d()V

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/ui/g/h;)Lcom/estrongs/android/ui/g/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->b:Lcom/estrongs/android/ui/g/c;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/g/h;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->j:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/h;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void
.end method
