.class Lcom/estrongs/android/pop/app/cleaner/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cleaner/aj;

.field final synthetic b:Lcom/estrongs/android/pop/app/cleaner/ab;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/ad;->b:Lcom/estrongs/android/pop/app/cleaner/ab;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cleaner/ad;->a:Lcom/estrongs/android/pop/app/cleaner/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ad;->a:Lcom/estrongs/android/pop/app/cleaner/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ad;->b:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/cleaner/h;)I

    move-result v1

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ad;->b:Lcom/estrongs/android/pop/app/cleaner/ab;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ad;->a:Lcom/estrongs/android/pop/app/cleaner/aj;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ad;->b:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(Lcom/estrongs/android/pop/app/cleaner/ab;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->g()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ad;->b:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->a(Lcom/estrongs/android/pop/app/cleaner/ab;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ad;->b:Lcom/estrongs/android/pop/app/cleaner/ab;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ad;->a:Lcom/estrongs/android/pop/app/cleaner/aj;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ad;->b:Lcom/estrongs/android/pop/app/cleaner/ab;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ad;->a:Lcom/estrongs/android/pop/app/cleaner/aj;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/ab;->c(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V

    goto :goto_1
.end method
