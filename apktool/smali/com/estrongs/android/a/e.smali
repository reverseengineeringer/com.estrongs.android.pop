.class public Lcom/estrongs/android/a/e;
.super Lcom/estrongs/android/ui/dialog/cg;


# instance fields
.field private a:Landroid/view/View;

.field private b:Z

.field private c:Lcom/estrongs/android/a/h;

.field private d:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/a/h;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/estrongs/android/a/e;->b:Z

    iput-object v3, p0, Lcom/estrongs/android/a/e;->c:Lcom/estrongs/android/a/h;

    iput-object p2, p0, Lcom/estrongs/android/a/e;->c:Lcom/estrongs/android/a/h;

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030053

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/a/e;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/a/e;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/a/e;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/a/e;->a:Landroid/view/View;

    const v1, 0x7f0a01b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/a/e;->d:Landroid/widget/CheckBox;

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/e;->d:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0b0049

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/a/f;

    invoke-direct {v1, p0}, Lcom/estrongs/android/a/f;-><init>(Lcom/estrongs/android/a/e;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/a/e;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b03ac

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/a/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/a/g;-><init>(Lcom/estrongs/android/a/e;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/a/e;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/estrongs/android/a/e;->setCancelable(Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/a/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/a/e;->b:Z

    return p1
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/a/e;->c:Lcom/estrongs/android/a/h;

    iget-boolean v1, p0, Lcom/estrongs/android/a/e;->b:Z

    iget-object v2, p0, Lcom/estrongs/android/a/e;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/a/h;->a(ZZ)V

    return-void
.end method
