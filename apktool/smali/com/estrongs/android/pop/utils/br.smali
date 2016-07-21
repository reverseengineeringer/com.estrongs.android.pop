.class final Lcom/estrongs/android/pop/utils/br;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/q;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/estrongs/fs/h;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/br;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/br;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/br;->c:Lcom/estrongs/fs/h;

    iput-boolean p4, p0, Lcom/estrongs/android/pop/utils/br;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/br;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/br;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/br;->c:Lcom/estrongs/fs/h;

    iget-boolean v3, p0, Lcom/estrongs/android/pop/utils/br;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/utils/ao;->b(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    :cond_0
    return-void
.end method
