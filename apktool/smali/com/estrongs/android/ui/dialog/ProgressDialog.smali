.class public Lcom/estrongs/android/ui/dialog/ProgressDialog;
.super Lcom/estrongs/android/ui/dialog/cg;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->c:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/estrongs/android/ui/dialog/ProgressDialog;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/dialog/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/dialog/ProgressDialog;
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->a(Z)V

    invoke-virtual {v0, p4}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, p5}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->show()V

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030041

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->d:Landroid/view/View;

    sget-object v0, Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;->horizontal:Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->e:Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->b()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private b()V
    .locals 5

    const v4, 0x7f0a0142

    const v3, 0x7f0a0141

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->e:Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;

    sget-object v1, Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;->roll:Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->d:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->b:Landroid/widget/TextView;

    const v0, 0x7f0a008f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->a:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->e:Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;

    sget-object v1, Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;->horizontal:Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->a:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->c:Z

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->d:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->e:Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->e:Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;

    sget-object v1, Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;->roll:Lcom/estrongs/android/ui/dialog/ProgressDialog$ProgressStyle;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->c:Z

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->b()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->c:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->b()V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ProgressDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
