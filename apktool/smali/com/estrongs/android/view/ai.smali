.class Lcom/estrongs/android/view/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/d/m;

.field final synthetic b:Lcom/estrongs/android/view/ah;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ah;Lcom/estrongs/android/d/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ai;->b:Lcom/estrongs/android/view/ah;

    iput-object p2, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/d/m;

    iget-object v0, v0, Lcom/estrongs/android/d/m;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/d/m;

    iget-object v1, v1, Lcom/estrongs/android/d/m;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/d/m;

    iget-boolean v0, v0, Lcom/estrongs/android/d/m;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/d/m;

    iget-object v0, v0, Lcom/estrongs/android/d/m;->c:Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/android/d/f;->f(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ai;->a:Lcom/estrongs/android/d/m;

    iget-object v1, v1, Lcom/estrongs/android/d/m;->e:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/d/f;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method
