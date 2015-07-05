.class final Lcom/estrongs/android/pop/utils/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/estrongs/fs/h;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Lcom/estrongs/a/a/p;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;ZZLcom/estrongs/a/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/be;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/be;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/be;->c:Lcom/estrongs/fs/h;

    iput-boolean p4, p0, Lcom/estrongs/android/pop/utils/be;->d:Z

    iput-boolean p5, p0, Lcom/estrongs/android/pop/utils/be;->e:Z

    iput-object p6, p0, Lcom/estrongs/android/pop/utils/be;->f:Lcom/estrongs/a/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/be;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/be;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/be;->c:Lcom/estrongs/fs/h;

    iget-boolean v3, p0, Lcom/estrongs/android/pop/utils/be;->d:Z

    iget-boolean v4, p0, Lcom/estrongs/android/pop/utils/be;->e:Z

    iget-object v5, p0, Lcom/estrongs/android/pop/utils/be;->f:Lcom/estrongs/a/a/p;

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;ZZLcom/estrongs/a/a/p;)V

    return-void
.end method
