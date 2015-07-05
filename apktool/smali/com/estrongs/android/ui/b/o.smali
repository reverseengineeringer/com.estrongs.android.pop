.class Lcom/estrongs/android/ui/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/n;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/b/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/o;->b:Lcom/estrongs/android/ui/b/n;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/b/ap;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/o;->b:Lcom/estrongs/android/ui/b/n;

    iget-object v1, v1, Lcom/estrongs/android/ui/b/n;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/o;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/b/o;->b:Lcom/estrongs/android/ui/b/n;

    iget-object v3, v3, Lcom/estrongs/android/ui/b/n;->b:Lcom/estrongs/android/ui/b/l;

    invoke-static {v3}, Lcom/estrongs/android/ui/b/l;->b(Lcom/estrongs/android/ui/b/l;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, p3, v2, v3}, Lcom/estrongs/fs/b/ap;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ap;->execute()V

    :cond_0
    return-void
.end method
