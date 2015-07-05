.class Lcom/estrongs/android/pop/app/compress/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/t;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/estrongs/android/pop/app/compress/ag;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/compress/ag;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ah;->b:Lcom/estrongs/android/pop/app/compress/ag;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/ah;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/view/e;)V
    .locals 12

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ah;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/view/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/estrongs/android/view/e;->g()V

    new-instance v0, Lcom/estrongs/android/pop/app/compress/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ah;->b:Lcom/estrongs/android/pop/app/compress/ag;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ag;->a:Lcom/estrongs/android/pop/app/compress/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ah;->b:Lcom/estrongs/android/pop/app/compress/ag;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ag;->a:Lcom/estrongs/android/pop/app/compress/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->i(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ah;->b:Lcom/estrongs/android/pop/app/compress/ag;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ag;->a:Lcom/estrongs/android/pop/app/compress/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->j(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ah;->b:Lcom/estrongs/android/pop/app/compress/ag;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ag;->a:Lcom/estrongs/android/pop/app/compress/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->p(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ah;->b:Lcom/estrongs/android/pop/app/compress/ag;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ag;->a:Lcom/estrongs/android/pop/app/compress/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->t(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ah;->b:Lcom/estrongs/android/pop/app/compress/ag;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ag;->a:Lcom/estrongs/android/pop/app/compress/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->r(Lcom/estrongs/android/pop/app/compress/l;)Ljava/util/List;

    move-result-object v7

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ah;->b:Lcom/estrongs/android/pop/app/compress/ag;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ag;->a:Lcom/estrongs/android/pop/app/compress/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->k(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v8

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ah;->b:Lcom/estrongs/android/pop/app/compress/ag;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ag;->a:Lcom/estrongs/android/pop/app/compress/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->u(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v9

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ah;->b:Lcom/estrongs/android/pop/app/compress/ag;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ag;->a:Lcom/estrongs/android/pop/app/compress/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->o(Lcom/estrongs/android/pop/app/compress/l;)I

    move-result v10

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ah;->b:Lcom/estrongs/android/pop/app/compress/ag;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ag;->a:Lcom/estrongs/android/pop/app/compress/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->v(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v11

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/estrongs/android/pop/app/compress/l;-><init>(Lcom/estrongs/android/view/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZILandroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ah;->b:Lcom/estrongs/android/pop/app/compress/ag;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ag;->a:Lcom/estrongs/android/pop/app/compress/ae;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->q(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/pop/app/compress/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/av;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/l;->b()V

    return-void
.end method
