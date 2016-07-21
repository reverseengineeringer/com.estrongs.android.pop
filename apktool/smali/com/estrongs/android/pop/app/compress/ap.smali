.class Lcom/estrongs/android/pop/app/compress/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ap;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0e01a7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ap;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aj;->j(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ap;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aj;->k(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0e01a6

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ap;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aj;->j(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ap;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aj;->k(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0e01a5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ap;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aj;->j(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ap;->a:Lcom/estrongs/android/pop/app/compress/aj;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/aj;->k(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
