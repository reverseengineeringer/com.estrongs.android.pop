.class Lcom/estrongs/android/ui/c/b/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/ui/c/a/h;

.field final synthetic c:Lcom/estrongs/android/ui/c/b/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/u;ZLcom/estrongs/android/ui/c/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/al;->c:Lcom/estrongs/android/ui/c/b/u;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/c/b/al;->a:Z

    iput-object p3, p0, Lcom/estrongs/android/ui/c/b/al;->b:Lcom/estrongs/android/ui/c/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/b/al;->a:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/al;->c:Lcom/estrongs/android/ui/c/b/u;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/al;->b:Lcom/estrongs/android/ui/c/a/h;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/c/a/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/c/b/u;->a(Lcom/estrongs/android/ui/c/b/u;Ljava/lang/String;Z)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/b/al;->a:Z

    if-eqz v0, :cond_1

    if-eq p2, v2, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/b/al;->a:Z

    if-nez v0, :cond_3

    if-nez p2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/al;->c:Lcom/estrongs/android/ui/c/b/u;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/al;->b:Lcom/estrongs/android/ui/c/a/h;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/c/a/h;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/c/b/u;->a(Lcom/estrongs/android/ui/c/b/u;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/al;->c:Lcom/estrongs/android/ui/c/b/u;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/u;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/al;->b:Lcom/estrongs/android/ui/c/a/h;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/c/a/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/al;->c:Lcom/estrongs/android/ui/c/b/u;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/u;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/al;->c:Lcom/estrongs/android/ui/c/b/u;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/u;->l()V

    goto :goto_0
.end method
