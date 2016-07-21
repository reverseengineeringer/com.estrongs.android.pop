.class Lcom/estrongs/android/ui/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/d/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/d/f;->a:Lcom/estrongs/android/ui/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/d/f;->a:Lcom/estrongs/android/ui/d/e;

    iget-object v0, v0, Lcom/estrongs/android/ui/d/e;->d:Lcom/estrongs/android/ui/d/c;

    iget-object v0, v0, Lcom/estrongs/android/ui/d/c;->b:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/f;->a:Lcom/estrongs/android/ui/d/e;

    iget-object v0, v0, Lcom/estrongs/android/ui/d/e;->d:Lcom/estrongs/android/ui/d/c;

    iget-object v0, v0, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/d/f;->a:Lcom/estrongs/android/ui/d/e;

    iget-object v1, v1, Lcom/estrongs/android/ui/d/e;->c:Landroid/support/design/widget/ch;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/a;->a(Lcom/estrongs/android/ui/d/a;Landroid/support/design/widget/ch;)V

    return-void
.end method
