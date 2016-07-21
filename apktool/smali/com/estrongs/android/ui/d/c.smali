.class Lcom/estrongs/android/ui/d/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageView;

.field final synthetic e:Lcom/estrongs/android/ui/d/a;

.field private f:Lcom/estrongs/android/ui/d/h;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/d/a;Landroid/support/design/widget/ch;Lcom/estrongs/android/ui/d/h;)V
    .locals 3

    iput-object p1, p0, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/estrongs/android/ui/d/c;->f:Lcom/estrongs/android/ui/d/h;

    invoke-virtual {p2}, Landroid/support/design/widget/ch;->b()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e04cd

    invoke-static {v1, v0}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/d/c;->a:Landroid/view/View;

    const v0, 0x7f0e04ce

    invoke-static {v1, v0}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/d/c;->b:Landroid/widget/ImageView;

    const v0, 0x7f0e04cf

    invoke-static {v1, v0}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/d/c;->c:Landroid/widget/TextView;

    const v0, 0x7f0e04d0

    invoke-static {v1, v0}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/d/c;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/estrongs/android/ui/d/d;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/ui/d/d;-><init>(Lcom/estrongs/android/ui/d/c;Lcom/estrongs/android/ui/d/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/d/e;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/estrongs/android/ui/d/e;-><init>(Lcom/estrongs/android/ui/d/c;Lcom/estrongs/android/ui/d/a;Landroid/view/View;Landroid/support/design/widget/ch;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Landroid/support/design/widget/ch;->a(Ljava/lang/Object;)Landroid/support/design/widget/ch;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->f:Lcom/estrongs/android/ui/d/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/d/a;->c(Lcom/estrongs/android/ui/d/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/d/h;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/d/c;->f:Lcom/estrongs/android/ui/d/h;

    iget-object v2, p0, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    invoke-static {v2}, Lcom/estrongs/android/ui/d/a;->c(Lcom/estrongs/android/ui/d/a;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/d/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/d/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->b:Landroid/widget/ImageView;

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v0, v2}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->f:Lcom/estrongs/android/ui/d/h;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#home_page#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/d/a;->c(Lcom/estrongs/android/ui/d/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/d/c;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    invoke-static {v2}, Lcom/estrongs/android/ui/d/a;->c(Lcom/estrongs/android/ui/d/a;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d005b

    invoke-static {v2, v0, v3}, Lcom/estrongs/android/util/bl;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->f:Lcom/estrongs/android/ui/d/h;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#home_page#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->a:Landroid/view/View;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/d/a;->e(Lcom/estrongs/android/ui/d/a;)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/d/a;->c(Lcom/estrongs/android/ui/d/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/estrongs/android/ui/d/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->a:Landroid/view/View;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/d/a;->f(Lcom/estrongs/android/ui/d/a;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    invoke-static {v2}, Lcom/estrongs/android/ui/d/a;->f(Lcom/estrongs/android/ui/d/a;)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/d/a;->c(Lcom/estrongs/android/ui/d/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/estrongs/android/ui/d/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/c;->b:Landroid/widget/ImageView;

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v0, v1}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    return-void
.end method
