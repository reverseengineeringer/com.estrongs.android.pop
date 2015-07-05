.class public Lcom/estrongs/android/ui/dialog/iw;
.super Lcom/estrongs/android/ui/dialog/cg;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/ui/dialog/iw;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a03b4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a03b5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p4, p5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p7, :cond_0

    const v0, 0x7f0a001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/dialog/iw;->setContentView(Landroid/view/View;)V

    if-nez p6, :cond_1

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/iw;->setTitle(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p6}, Lcom/estrongs/android/ui/dialog/iw;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
