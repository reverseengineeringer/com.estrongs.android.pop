.class Lcom/estrongs/android/pop/app/messagebox/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/messagebox/l;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/estrongs/android/pop/app/messagebox/v;

.field final synthetic c:Lcom/estrongs/android/pop/app/messagebox/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/messagebox/s;Landroid/view/View;Lcom/estrongs/android/pop/app/messagebox/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/t;->c:Lcom/estrongs/android/pop/app/messagebox/s;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/messagebox/t;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/messagebox/t;->b:Lcom/estrongs/android/pop/app/messagebox/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/messagebox/f;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/t;->c:Lcom/estrongs/android/pop/app/messagebox/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->g(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/t;->c:Lcom/estrongs/android/pop/app/messagebox/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/t;->c:Lcom/estrongs/android/pop/app/messagebox/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/t;->c:Lcom/estrongs/android/pop/app/messagebox/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/t;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/messagebox/t;->b:Lcom/estrongs/android/pop/app/messagebox/v;

    iget v2, v2, Lcom/estrongs/android/pop/app/messagebox/v;->g:I

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public b(Lcom/estrongs/android/pop/app/messagebox/f;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/t;->c:Lcom/estrongs/android/pop/app/messagebox/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;)V

    return-void
.end method

.method public c(Lcom/estrongs/android/pop/app/messagebox/f;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/t;->c:Lcom/estrongs/android/pop/app/messagebox/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/t;->b:Lcom/estrongs/android/pop/app/messagebox/v;

    iget v1, v1, Lcom/estrongs/android/pop/app/messagebox/v;->g:I

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/t;->c:Lcom/estrongs/android/pop/app/messagebox/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;Z)Z

    return-void
.end method

.method public d(Lcom/estrongs/android/pop/app/messagebox/f;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/t;->c:Lcom/estrongs/android/pop/app/messagebox/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;Z)Z

    return-void
.end method
