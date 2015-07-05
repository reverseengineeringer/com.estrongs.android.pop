.class Lcom/estrongs/android/ui/dialog/gd;
.super Lcom/estrongs/android/view/ea;


# instance fields
.field a:Landroid/widget/Button;

.field b:Lcom/estrongs/android/ui/dialog/gh;

.field final synthetic c:Lcom/estrongs/android/ui/dialog/ga;

.field private d:I

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/dialog/ga;Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gd;->c:Lcom/estrongs/android/ui/dialog/ga;

    invoke-direct {p0, p2}, Lcom/estrongs/android/view/ea;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/dialog/gd;->d:I

    new-instance v0, Lcom/estrongs/android/ui/dialog/gf;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/gf;-><init>(Lcom/estrongs/android/ui/dialog/gd;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gd;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/dialog/gd;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/gd;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/dialog/gd;->d:I

    return p1
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f0300a4

    return v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/dialog/gh;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gd;->ad:Landroid/app/Activity;

    iget v2, p0, Lcom/estrongs/android/ui/dialog/gd;->d:I

    new-instance v3, Lcom/estrongs/android/ui/dialog/ge;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/ge;-><init>(Lcom/estrongs/android/ui/dialog/gd;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/gh;-><init>(Landroid/content/Context;ILcom/estrongs/android/ui/dialog/gj;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gd;->b:Lcom/estrongs/android/ui/dialog/gh;

    const v0, 0x7f0a02fd

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/gd;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gd;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gd;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gd;->b:Lcom/estrongs/android/ui/dialog/gh;

    iget v2, p0, Lcom/estrongs/android/ui/dialog/gd;->d:I

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/gh;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gd;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gd;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0a02fe

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/gd;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/dialog/gd;->d:I

    return v0
.end method
