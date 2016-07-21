.class Lcom/estrongs/android/b/a/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/estrongs/android/b/a/a;

.field f:I

.field final synthetic g:Lcom/estrongs/android/b/a/b/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/b/a/b/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/estrongs/android/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/b/a/b/j;->g:Lcom/estrongs/android/b/a/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/b/a/b/j;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/estrongs/android/b/a/b/j;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/estrongs/android/b/a/b/j;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/b/a/b/j;->d:Ljava/lang/String;

    iput p5, p0, Lcom/estrongs/android/b/a/b/j;->f:I

    iput-object p7, p0, Lcom/estrongs/android/b/a/b/j;->e:Lcom/estrongs/android/b/a/a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/j;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/j;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/j;->b:Landroid/content/Context;

    const v1, 0x7f0803ca

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/b/a/b/j;->g:Lcom/estrongs/android/b/a/b/g;

    iget-object v1, p0, Lcom/estrongs/android/b/a/b/j;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/b/a/b/g;->a(Lcom/estrongs/android/b/a/b/g;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/j;->g:Lcom/estrongs/android/b/a/b/g;

    iget-object v1, p0, Lcom/estrongs/android/b/a/b/j;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/b/a/b/j;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/b/a/b/g;->a(Lcom/estrongs/android/b/a/b/g;Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/b/a/b/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "C_recom_click"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "clean"

    const-string v2, "C_recom_click"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/estrongs/android/b/a/b/j;->f:I

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/j;->g:Lcom/estrongs/android/b/a/b/g;

    iget-object v1, p0, Lcom/estrongs/android/b/a/b/j;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/b/a/b/j;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/b/a/b/j;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/b/a/b/j;->e:Lcom/estrongs/android/b/a/a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/estrongs/android/b/a/b/g;->a(Lcom/estrongs/android/b/a/b/g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/b/a/a;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/b/a/b/j;->c:Ljava/lang/String;

    const-string v1, "market://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/j;->g:Lcom/estrongs/android/b/a/b/g;

    iget-object v1, p0, Lcom/estrongs/android/b/a/b/j;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/b/a/b/j;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/b/a/b/j;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/b/a/b/j;->e:Lcom/estrongs/android/b/a/a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/estrongs/android/b/a/b/g;->a(Lcom/estrongs/android/b/a/b/g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/b/a/a;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/b/a/b/j;->g:Lcom/estrongs/android/b/a/b/g;

    iget-object v1, p0, Lcom/estrongs/android/b/a/b/j;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/b/a/b/j;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/b/a/b/j;->e:Lcom/estrongs/android/b/a/a;

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/b/a/b/g;->a(Lcom/estrongs/android/b/a/b/g;Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/b/a/a;)V

    goto :goto_1
.end method
