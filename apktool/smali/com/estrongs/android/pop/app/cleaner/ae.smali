.class Lcom/estrongs/android/pop/app/cleaner/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cleaner/aj;

.field final synthetic b:Lcom/estrongs/android/pop/app/cleaner/ab;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/ae;->b:Lcom/estrongs/android/pop/app/cleaner/ab;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cleaner/ae;->a:Lcom/estrongs/android/pop/app/cleaner/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ae;->a:Lcom/estrongs/android/pop/app/cleaner/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->g()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ae;->b:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/cleaner/ab;->a(Lcom/estrongs/android/pop/app/cleaner/ab;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ae;->b:Lcom/estrongs/android/pop/app/cleaner/ab;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ae;->a:Lcom/estrongs/android/pop/app/cleaner/aj;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;Z)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ae;->b:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(Lcom/estrongs/android/pop/app/cleaner/ab;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->p()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ae;->a:Lcom/estrongs/android/pop/app/cleaner/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->d:Lcom/estrongs/android/pop/app/cleaner/aj;

    :goto_1
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ae;->b:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->d(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->d:Lcom/estrongs/android/pop/app/cleaner/aj;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ae;->b:Lcom/estrongs/android/pop/app/cleaner/ab;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ae;->a:Lcom/estrongs/android/pop/app/cleaner/aj;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/ab;->d(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V

    goto :goto_0
.end method
