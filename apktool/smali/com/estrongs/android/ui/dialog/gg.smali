.class Lcom/estrongs/android/ui/dialog/gg;
.super Lcom/estrongs/android/view/gf;


# instance fields
.field a:Landroid/widget/Button;

.field b:Lcom/estrongs/android/ui/dialog/gk;

.field final synthetic c:Lcom/estrongs/android/ui/dialog/gd;

.field private d:I

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/dialog/gd;Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gg;->c:Lcom/estrongs/android/ui/dialog/gd;

    invoke-direct {p0, p2}, Lcom/estrongs/android/view/gf;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/dialog/gg;->d:I

    new-instance v0, Lcom/estrongs/android/ui/dialog/gi;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/gi;-><init>(Lcom/estrongs/android/ui/dialog/gg;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gg;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/dialog/gg;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/gg;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/dialog/gg;->d:I

    return p1
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f03013b

    return v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/dialog/gk;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gg;->ag:Landroid/app/Activity;

    iget v2, p0, Lcom/estrongs/android/ui/dialog/gg;->d:I

    new-instance v3, Lcom/estrongs/android/ui/dialog/gh;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/gh;-><init>(Lcom/estrongs/android/ui/dialog/gg;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/gk;-><init>(Landroid/content/Context;ILcom/estrongs/android/ui/dialog/gm;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gg;->b:Lcom/estrongs/android/ui/dialog/gk;

    const v0, 0x7f0e054e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/gg;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gg;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gg;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gg;->b:Lcom/estrongs/android/ui/dialog/gk;

    iget v2, p0, Lcom/estrongs/android/ui/dialog/gg;->d:I

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/gk;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gg;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gg;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0e054f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/gg;->b(I)Landroid/view/View;

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

    iget v0, p0, Lcom/estrongs/android/ui/dialog/gg;->d:I

    return v0
.end method
