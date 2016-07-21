.class Lcom/estrongs/android/pop/app/analysis/viewholders/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/estrongs/android/b/a/a;

.field e:I

.field final synthetic f:Lcom/estrongs/android/pop/app/analysis/viewholders/ae;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/viewholders/ae;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/estrongs/android/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->f:Lcom/estrongs/android/pop/app/analysis/viewholders/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->c:Ljava/lang/String;

    iput p4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->e:I

    iput-object p6, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->d:Lcom/estrongs/android/b/a/a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->a:Landroid/content/Context;

    const v1, 0x7f0803ca

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->f:Lcom/estrongs/android/pop/app/analysis/viewholders/ae;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/ae;->a(Lcom/estrongs/android/pop/app/analysis/viewholders/ae;Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->d:Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "A_sd_recom_click"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v0, "recommend_card"

    const-string v2, "A_sd_recom_click"

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->f:Lcom/estrongs/android/pop/app/analysis/viewholders/ae;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/af;->d:Lcom/estrongs/android/b/a/a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/estrongs/android/pop/app/analysis/viewholders/ae;->a(Lcom/estrongs/android/pop/app/analysis/viewholders/ae;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/b/a/a;)V

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "A_app_recom_click"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v0, "recommend_card"

    const-string v2, "A_app_recom_click"

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
