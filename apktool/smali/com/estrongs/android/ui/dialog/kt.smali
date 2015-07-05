.class Lcom/estrongs/android/ui/dialog/kt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/estrongs/android/ui/dialog/ks;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ks;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kt;->d:Lcom/estrongs/android/ui/dialog/ks;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/kt;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/kt;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/estrongs/android/ui/dialog/kt;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kt;->d:Lcom/estrongs/android/ui/dialog/ks;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ks;->a(Lcom/estrongs/android/ui/dialog/ks;)Lcom/estrongs/android/ui/dialog/kv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kt;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kt;->d:Lcom/estrongs/android/ui/dialog/ks;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ks;->a(Lcom/estrongs/android/ui/dialog/ks;)Lcom/estrongs/android/ui/dialog/kv;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kt;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kt;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/estrongs/android/ui/dialog/kv;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kt;->d:Lcom/estrongs/android/ui/dialog/ks;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ks;->a(Lcom/estrongs/android/ui/dialog/ks;)Lcom/estrongs/android/ui/dialog/kv;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kt;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kt;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/estrongs/android/ui/dialog/kv;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
