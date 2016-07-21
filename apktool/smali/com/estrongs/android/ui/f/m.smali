.class Lcom/estrongs/android/ui/f/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/f/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/f/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/l;->d(Lcom/estrongs/android/ui/f/l;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    invoke-static {v1}, Lcom/estrongs/android/ui/f/l;->a(Lcom/estrongs/android/ui/f/l;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    invoke-static {v1}, Lcom/estrongs/android/ui/f/l;->c(Lcom/estrongs/android/ui/f/l;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    iget-object v1, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    invoke-static {v1}, Lcom/estrongs/android/ui/f/l;->b(Lcom/estrongs/android/ui/f/l;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    invoke-static {v3}, Lcom/estrongs/android/ui/f/l;->a(Lcom/estrongs/android/ui/f/l;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/l;->e(Lcom/estrongs/android/ui/f/l;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/f/l;->a(Lcom/estrongs/android/ui/f/l;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/l;->d(Lcom/estrongs/android/ui/f/l;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    invoke-static {v1}, Lcom/estrongs/android/ui/f/l;->a(Lcom/estrongs/android/ui/f/l;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    invoke-static {v1}, Lcom/estrongs/android/ui/f/l;->c(Lcom/estrongs/android/ui/f/l;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    iget-object v1, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    invoke-static {v1}, Lcom/estrongs/android/ui/f/l;->f(Lcom/estrongs/android/ui/f/l;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    invoke-static {v3}, Lcom/estrongs/android/ui/f/l;->a(Lcom/estrongs/android/ui/f/l;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/l;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/m;->a:Lcom/estrongs/android/ui/f/l;

    invoke-static {v1}, Lcom/estrongs/android/ui/f/l;->a(Lcom/estrongs/android/ui/f/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/f/l;->a(Ljava/lang/String;)V

    return-void
.end method
