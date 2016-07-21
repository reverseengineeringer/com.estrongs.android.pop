.class Lcom/estrongs/android/ui/dialog/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ar;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/aw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/aw;Lcom/estrongs/android/ui/dialog/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/az;->a:Lcom/estrongs/android/ui/dialog/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    const/4 v7, 0x1

    const v6, 0x7f0d0106

    const v5, 0x7f0d0105

    const/4 v4, 0x6

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->a(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f02031b

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->b(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0108

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    const v1, 0x7f0e0220

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/aw;->a(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->c(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->d(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f02031c

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->e(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0107

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->f(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f02031b

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->g(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0108

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    const v1, 0x7f0e021c

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/aw;->b(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->h(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    const v1, 0x7f0e021d

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/aw;->c(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->i(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    const v1, 0x7f0e0224

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/aw;->d(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->j(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    const v1, 0x7f0e0225

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/aw;->e(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->k(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->d:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->l(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f02031c

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->m(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0107

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    const v1, 0x7f0e0220

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/aw;->f(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->n(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->o(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f02031c

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->p(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0107

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->q(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f02031b

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/aw;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->r(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0108

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    const v1, 0x7f0e021c

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/aw;->g(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->s(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    const v1, 0x7f0e021d

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/aw;->h(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->t(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    const v1, 0x7f0e0224

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/aw;->i(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->u(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    const v1, 0x7f0e0225

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/aw;->j(Lcom/estrongs/android/ui/dialog/aw;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/az;->b:Lcom/estrongs/android/ui/dialog/aw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/aw;->v(Lcom/estrongs/android/ui/dialog/aw;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method
