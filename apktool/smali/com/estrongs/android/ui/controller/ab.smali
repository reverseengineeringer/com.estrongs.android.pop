.class Lcom/estrongs/android/ui/controller/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/ab;->a:Lcom/estrongs/android/ui/controller/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ab;->a:Lcom/estrongs/android/ui/controller/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->h(Lcom/estrongs/android/ui/controller/h;)Landroid/support/v7/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/ab;->a:Lcom/estrongs/android/ui/controller/aa;

    iget-object v1, v1, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v1}, Lcom/estrongs/android/ui/controller/h;->g(Lcom/estrongs/android/ui/controller/h;)Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ab;->a:Lcom/estrongs/android/ui/controller/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->h(Lcom/estrongs/android/ui/controller/h;)Landroid/support/v7/widget/SearchView;

    move-result-object v0

    const v1, 0x7f0e0096

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ab;->a:Lcom/estrongs/android/ui/controller/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->h(Lcom/estrongs/android/ui/controller/h;)Landroid/support/v7/widget/SearchView;

    move-result-object v0

    const v1, 0x7f0e0098

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/ab;->a:Lcom/estrongs/android/ui/controller/aa;

    iget-object v1, v1, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    const v2, 0x7f020015

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/controller/h;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/ab;->a:Lcom/estrongs/android/ui/controller/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->e(Lcom/estrongs/android/ui/controller/h;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "mCollapseButtonView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/ab;->a:Lcom/estrongs/android/ui/controller/aa;

    iget-object v1, v1, Lcom/estrongs/android/ui/controller/aa;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v1}, Lcom/estrongs/android/ui/controller/h;->e(Lcom/estrongs/android/ui/controller/h;)Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f020440

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
