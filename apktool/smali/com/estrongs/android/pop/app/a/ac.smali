.class Lcom/estrongs/android/pop/app/a/ac;
.super Lcom/estrongs/android/ui/dialog/cg;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/e;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/a/e;Landroid/content/Context;)V
    .locals 7

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/ac;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-direct {p0, p2}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b006f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/a/ac;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/a/ac;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a00a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-static {p2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ay()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, 0x7f0a00bb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b03ee

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/a/ac;->setContentView(Landroid/view/View;)V

    new-instance v0, Lcom/estrongs/android/pop/app/a/ad;

    invoke-direct {v0, p0, p1, v3}, Lcom/estrongs/android/pop/app/a/ad;-><init>(Lcom/estrongs/android/pop/app/a/ac;Lcom/estrongs/android/pop/app/a/e;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/a/ac;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/estrongs/android/pop/app/a/ae;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/a/ae;-><init>(Lcom/estrongs/android/pop/app/a/ac;Lcom/estrongs/android/pop/app/a/e;Landroid/widget/CheckBox;ZLandroid/content/Context;)V

    invoke-virtual {p0, v6, v0}, Lcom/estrongs/android/pop/app/a/ac;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/a/ac;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/a/af;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/a/af;-><init>(Lcom/estrongs/android/pop/app/a/ac;Lcom/estrongs/android/pop/app/a/e;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/a/ac;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-void
.end method
