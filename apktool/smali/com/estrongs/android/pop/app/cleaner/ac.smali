.class Lcom/estrongs/android/pop/app/cleaner/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cleaner/ab;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/ac;->a:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/cleaner/aj;

    iget-boolean v1, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->f:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ac;->a:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->a(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ac;->a:Lcom/estrongs/android/pop/app/cleaner/ab;

    iget v0, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->a:I

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->notifyItemChanged(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ac;->a:Lcom/estrongs/android/pop/app/cleaner/ab;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/pop/app/cleaner/ab;->a(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ac;->a:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->a(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/cleaner/h;)V

    goto :goto_1
.end method
