.class Lcom/estrongs/android/ui/e/ji;
.super Lcom/estrongs/android/ui/dialog/ci;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    const v0, 0x7f080381

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/ji;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/ji;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03017f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0e0086

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->az()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v1, 0x7f0e02c1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f08014a

    invoke-virtual {p1, v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/e/ji;->setContentView(Landroid/view/View;)V

    new-instance v1, Lcom/estrongs/android/ui/e/jj;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/e/jj;-><init>(Lcom/estrongs/android/ui/e/ji;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080226

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/ji;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/e/jk;

    invoke-direct {v2, p0, v0, v3, p1}, Lcom/estrongs/android/ui/e/jk;-><init>(Lcom/estrongs/android/ui/e/ji;Landroid/widget/CheckBox;ZLcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/android/ui/e/ji;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f080221

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/ji;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/jl;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/jl;-><init>(Lcom/estrongs/android/ui/e/ji;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/e/ji;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-void
.end method
