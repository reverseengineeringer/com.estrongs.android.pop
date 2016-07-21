.class public Lcom/estrongs/android/ui/c/c/d;
.super Lcom/estrongs/android/ui/c/c/a;


# instance fields
.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0300e1

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/c/c/a;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0e041b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/c/d;->b:Landroid/widget/TextView;

    const v0, 0x7f0e041c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/c/d;->c:Landroid/widget/TextView;

    const v0, 0x7f0e041a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/c/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0201f5

    const v3, 0x7f0d0055

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/estrongs/android/ui/c/c/e;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/c/c/e;-><init>(Lcom/estrongs/android/ui/c/c/d;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/d;->c(Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/estrongs/android/pop/app/messagebox/ah;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/d;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/messagebox/ah;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/d;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/messagebox/ah;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
