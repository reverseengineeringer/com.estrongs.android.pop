.class Lcom/estrongs/android/view/cw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/af;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cw;->a:Lcom/estrongs/android/view/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZI)V
    .locals 5

    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cw;->a:Lcom/estrongs/android/view/cq;

    iget-object v1, p0, Lcom/estrongs/android/view/cw;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v1}, Lcom/estrongs/android/view/cq;->a(Lcom/estrongs/android/view/cq;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/cw;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v2}, Lcom/estrongs/android/view/cq;->d(Lcom/estrongs/android/view/cq;)Lcom/estrongs/android/view/dd;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/cq;->a(Lcom/estrongs/android/view/cq;I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/am;->J(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/estrongs/android/util/am;->I(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/estrongs/android/util/am;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/estrongs/android/util/am;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/cw;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v0}, Lcom/estrongs/android/view/cq;->a(Lcom/estrongs/android/view/cq;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    if-eqz v1, :cond_4

    const-string v3, "ftp://"

    iget-object v4, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v4}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    invoke-static {p1}, Lcom/estrongs/android/util/am;->H(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "smb://"

    iget-object v4, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v4}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-static {p1}, Lcom/estrongs/android/util/am;->aw(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "net://"

    iget-object v4, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v4}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_6
    iget-object v3, p0, Lcom/estrongs/android/view/cw;->a:Lcom/estrongs/android/view/cq;

    iget-object v4, p0, Lcom/estrongs/android/view/cw;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v4}, Lcom/estrongs/android/view/cq;->a(Lcom/estrongs/android/view/cq;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v3, v0}, Lcom/estrongs/android/view/cq;->a(Lcom/estrongs/android/view/cq;I)V

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method
