.class Lcom/estrongs/android/ui/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/d/a;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/design/widget/ch;

.field final synthetic d:Lcom/estrongs/android/ui/d/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/d/c;Lcom/estrongs/android/ui/d/a;Landroid/view/View;Landroid/support/design/widget/ch;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/d/e;->d:Lcom/estrongs/android/ui/d/c;

    iput-object p2, p0, Lcom/estrongs/android/ui/d/e;->a:Lcom/estrongs/android/ui/d/a;

    iput-object p3, p0, Lcom/estrongs/android/ui/d/e;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/estrongs/android/ui/d/e;->c:Landroid/support/design/widget/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/d/e;->d:Lcom/estrongs/android/ui/d/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/c;->b()V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/e;->b:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/d/f;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/d/f;-><init>(Lcom/estrongs/android/ui/d/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/d/e;->d:Lcom/estrongs/android/ui/d/c;

    iget-object v0, v0, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/d/e;->c:Landroid/support/design/widget/ch;

    invoke-virtual {v1}, Landroid/support/design/widget/ch;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/a;->a(Lcom/estrongs/android/ui/d/a;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/d/e;->d:Lcom/estrongs/android/ui/d/c;

    iget-object v0, v0, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/d/e;->d:Lcom/estrongs/android/ui/d/c;

    iget-object v1, v1, Lcom/estrongs/android/ui/d/c;->e:Lcom/estrongs/android/ui/d/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/d/a;->d(Lcom/estrongs/android/ui/d/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/d/a;->a(I)V

    return-void
.end method
