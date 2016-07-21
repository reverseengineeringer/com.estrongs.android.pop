.class Lcom/estrongs/android/ui/controller/i;
.super Lcom/estrongs/android/ui/base/a;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f020401

    const/4 v5, 0x0

    const/4 v4, -0x1

    new-instance v1, Lcom/estrongs/android/ui/controller/j;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/controller/j;-><init>(Lcom/estrongs/android/ui/controller/i;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03015a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/view/ActionMode;->setCustomView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    const v0, 0x7f0e0246

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/controller/h;->a(Lcom/estrongs/android/ui/controller/h;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->c(Lcom/estrongs/android/ui/controller/h;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0e05c4

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/ui/controller/k;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/controller/k;-><init>(Lcom/estrongs/android/ui/controller/i;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e05c5

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v2, v2, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    const v3, 0x7f0203fd

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    const v2, 0x7f0e05bc

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/controller/h;->a(Lcom/estrongs/android/ui/controller/h;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->a(Lcom/estrongs/android/ui/controller/h;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/ui/controller/l;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/controller/l;-><init>(Lcom/estrongs/android/ui/controller/i;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e05bd

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v2, v2, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/estrongs/android/ui/theme/at;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    const v2, 0x7f0e05bf

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/controller/h;->b(Lcom/estrongs/android/ui/controller/h;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->b(Lcom/estrongs/android/ui/controller/h;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/ui/controller/m;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/controller/m;-><init>(Lcom/estrongs/android/ui/controller/i;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->b(Lcom/estrongs/android/ui/controller/h;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e05c0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v2, v2, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/estrongs/android/ui/theme/at;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0e05ba

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/ui/controller/n;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/controller/n;-><init>(Lcom/estrongs/android/ui/controller/i;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    const v0, 0x7f0e05c2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/controller/h;->a(Lcom/estrongs/android/ui/controller/h;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->d(Lcom/estrongs/android/ui/controller/h;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v2, v2, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    const v3, 0x7f0203ff

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->d(Lcom/estrongs/android/ui/controller/h;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    const v0, 0x7f0e0446

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/controller/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/controller/o;-><init>(Lcom/estrongs/android/ui/controller/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/controller/h;->a(Lcom/estrongs/android/ui/controller/h;Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->a(Lcom/estrongs/android/ui/controller/h;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->b(Lcom/estrongs/android/ui/controller/h;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    iget v0, v0, Lcom/estrongs/android/ui/controller/h;->j:I

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    iget v1, v1, Lcom/estrongs/android/ui/controller/h;->k:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->b(Lcom/estrongs/android/ui/controller/h;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->a(Lcom/estrongs/android/ui/controller/h;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->c(Lcom/estrongs/android/ui/controller/h;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    iget v2, v2, Lcom/estrongs/android/ui/controller/h;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    iget v2, v2, Lcom/estrongs/android/ui/controller/h;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->d(Lcom/estrongs/android/ui/controller/h;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_1
    return v4

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->b(Lcom/estrongs/android/ui/controller/h;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->a(Lcom/estrongs/android/ui/controller/h;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->d(Lcom/estrongs/android/ui/controller/h;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1
.end method
