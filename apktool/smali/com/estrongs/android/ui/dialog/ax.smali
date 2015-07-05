.class Lcom/estrongs/android/ui/dialog/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ap;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/au;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/au;Lcom/estrongs/android/ui/dialog/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ax;->a:Lcom/estrongs/android/ui/dialog/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    const/4 v7, 0x1

    const v6, 0x7f08002d

    const v5, 0x7f080012

    const/4 v4, 0x6

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->a(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f0201d4

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->b(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    const v1, 0x7f0a00b2

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/au;->a(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->c(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->d(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f0201d5

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->e(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f080039

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->f(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f0201d4

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->g(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    const v1, 0x7f0a00ae

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/au;->b(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->h(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    const v1, 0x7f0a00af

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/au;->c(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->i(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    const v1, 0x7f0a00b6

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/au;->d(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->j(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    const v1, 0x7f0a00b7

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/au;->e(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->k(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->d:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->l(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f0201d5

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->m(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f080039

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    const v1, 0x7f0a00b2

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/au;->f(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->n(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->o(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f0201d5

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->p(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f080039

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->q(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f0201d4

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/au;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->r(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    const v1, 0x7f0a00ae

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/au;->g(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->s(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    const v1, 0x7f0a00af

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/au;->h(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->t(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    const v1, 0x7f0a00b6

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/au;->i(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->u(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    const v1, 0x7f0a00b7

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/au;->j(Lcom/estrongs/android/ui/dialog/au;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ax;->b:Lcom/estrongs/android/ui/dialog/au;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/au;->v(Lcom/estrongs/android/ui/dialog/au;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method
