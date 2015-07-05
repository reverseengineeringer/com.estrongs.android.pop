.class Lcom/estrongs/io/archive/sevenzip/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/io/archive/sevenzip/j;


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/sevenzip/j;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v1, v1, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v1, v1, Lcom/estrongs/io/archive/sevenzip/h;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v2, v2, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v2, v2, Lcom/estrongs/io/archive/sevenzip/h;->d:Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v3, v3, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v3, v3, Lcom/estrongs/io/archive/sevenzip/h;->e:Ljava/io/File;

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v4, v4, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v4, v4, Lcom/estrongs/io/archive/sevenzip/h;->h:Landroid/os/ConditionVariable;

    iget-object v5, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v5, v5, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v5, v5, Lcom/estrongs/io/archive/sevenzip/h;->i:[Z

    iget-object v6, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v6, v6, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v6, v6, Lcom/estrongs/io/archive/sevenzip/h;->j:Ljava/lang/Runnable;

    iget-object v7, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v7, v7, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-boolean v7, v7, Lcom/estrongs/io/archive/sevenzip/h;->k:Z

    iget-object v8, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v8, v8, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v8, v8, Lcom/estrongs/io/archive/sevenzip/h;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/estrongs/io/archive/sevenzip/f;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/os/ConditionVariable;[ZLjava/lang/Runnable;ZLjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->i:[Z

    aput-boolean v1, v0, v1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v1, v1, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v1, v1, Lcom/estrongs/io/archive/sevenzip/h;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/io/archive/sevenzip/f;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-boolean v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v1, v1, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v1, v1, Lcom/estrongs/io/archive/sevenzip/h;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v2, v2, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v2, v2, Lcom/estrongs/io/archive/sevenzip/h;->d:Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v3, v3, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v3, v3, Lcom/estrongs/io/archive/sevenzip/h;->e:Ljava/io/File;

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v4, v4, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v4, v4, Lcom/estrongs/io/archive/sevenzip/h;->h:Landroid/os/ConditionVariable;

    iget-object v5, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v5, v5, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v5, v5, Lcom/estrongs/io/archive/sevenzip/h;->i:[Z

    iget-object v6, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v6, v6, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v6, v6, Lcom/estrongs/io/archive/sevenzip/h;->j:Ljava/lang/Runnable;

    iget-object v7, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v7, v7, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-boolean v7, v7, Lcom/estrongs/io/archive/sevenzip/h;->k:Z

    iget-object v8, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v8, v8, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v8, v8, Lcom/estrongs/io/archive/sevenzip/h;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/estrongs/io/archive/sevenzip/f;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Landroid/os/ConditionVariable;[ZLjava/lang/Runnable;ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->i:[Z

    aput-boolean v1, v0, v1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-boolean v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/m;->a:Lcom/estrongs/io/archive/sevenzip/j;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_0
.end method
