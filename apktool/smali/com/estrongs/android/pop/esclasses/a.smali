.class Lcom/estrongs/android/pop/esclasses/a;
.super Lcom/estrongs/android/pop/app/a;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/a;->a:Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/a;->a:Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->e()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/a;->a:Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/a;->a:Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->g()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/a;->a:Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->b(Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/a;->a:Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/a;->a:Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->b(Z)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/a;->a:Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->c:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/a;->a:Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->f()Z

    move-result v0

    return v0
.end method
