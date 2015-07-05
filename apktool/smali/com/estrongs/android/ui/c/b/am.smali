.class Lcom/estrongs/android/ui/c/b/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/estrongs/android/ui/c/b/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/u;Ljava/util/List;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/am;->d:Lcom/estrongs/android/ui/c/b/u;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/b/am;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/estrongs/android/ui/c/b/am;->b:Z

    iput-object p4, p0, Lcom/estrongs/android/ui/c/b/am;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/am;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/c/b/am;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/am;->d:Lcom/estrongs/android/ui/c/b/u;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/u;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/am;->d:Lcom/estrongs/android/ui/c/b/u;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/u;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/am;->d:Lcom/estrongs/android/ui/c/b/u;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/u;->l()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/am;->d:Lcom/estrongs/android/ui/c/b/u;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/u;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/am;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/am;->d:Lcom/estrongs/android/ui/c/b/u;

    iget-object v2, v2, Lcom/estrongs/android/ui/c/b/u;->f:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
