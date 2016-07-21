.class Lcom/estrongs/android/pop/app/cleaner/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cleaner/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/aa;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/aa;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/v;->i(Lcom/estrongs/android/pop/app/cleaner/v;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/aa;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    new-instance v2, Lcom/estrongs/android/pop/app/cleaner/b;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cleaner/aa;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/cleaner/v;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-direct {v2, v3, v0}, Lcom/estrongs/android/pop/app/cleaner/b;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/cleaner/v;->a(Lcom/estrongs/android/pop/app/cleaner/v;Lcom/estrongs/android/pop/app/cleaner/b;)Lcom/estrongs/android/pop/app/cleaner/b;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/aa;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/v;->f(Lcom/estrongs/android/pop/app/cleaner/v;)Lcom/estrongs/android/pop/app/cleaner/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/aa;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v1}, Lcom/estrongs/android/view/w;->v()Lcom/estrongs/android/cleaner/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/cleaner/a;->c()J

    move-result-wide v2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/aa;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/view/w;->c(J)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/aa;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/cleaner/v;->i(Lcom/estrongs/android/pop/app/cleaner/v;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v4, p0, Lcom/estrongs/android/pop/app/cleaner/aa;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/cleaner/v;->j(Lcom/estrongs/android/pop/app/cleaner/v;)Lcom/estrongs/android/pop/app/cleaner/b;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/aa;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/cleaner/v;->j(Lcom/estrongs/android/pop/app/cleaner/v;)Lcom/estrongs/android/pop/app/cleaner/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/cleaner/b;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/aa;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->x()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/aa;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/v;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ai;->b(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/aa;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/v;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ai;->c(J)V

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "C_scanresult_click"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "clean"

    const-string v2, "C_scanresult_click"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
