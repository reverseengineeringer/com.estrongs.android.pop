.class Lcom/estrongs/android/pop/app/cleaner/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/app/cleaner/aj;

.field final synthetic c:Lcom/estrongs/android/cleaner/h;

.field final synthetic d:Lcom/estrongs/android/pop/app/cleaner/ab;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/ab;ZLcom/estrongs/android/pop/app/cleaner/aj;Lcom/estrongs/android/cleaner/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/af;->d:Lcom/estrongs/android/pop/app/cleaner/ab;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/cleaner/af;->a:Z

    iput-object p3, p0, Lcom/estrongs/android/pop/app/cleaner/af;->b:Lcom/estrongs/android/pop/app/cleaner/aj;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/cleaner/af;->c:Lcom/estrongs/android/cleaner/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/af;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/af;->d:Lcom/estrongs/android/pop/app/cleaner/ab;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/af;->b:Lcom/estrongs/android/pop/app/cleaner/aj;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/ab;->c(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/af;->d:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(Lcom/estrongs/android/pop/app/cleaner/ab;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/af;->c:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->p()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/af;->b:Lcom/estrongs/android/pop/app/cleaner/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->d:Lcom/estrongs/android/pop/app/cleaner/aj;

    :goto_1
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/af;->d:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->d(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->d:Lcom/estrongs/android/pop/app/cleaner/aj;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/af;->d:Lcom/estrongs/android/pop/app/cleaner/ab;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/af;->b:Lcom/estrongs/android/pop/app/cleaner/aj;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/ab;->d(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V

    goto :goto_0
.end method
