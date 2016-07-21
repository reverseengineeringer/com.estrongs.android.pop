.class public Lcom/estrongs/android/b/a/a/d;
.super Lcom/estrongs/android/b/a/a;


# instance fields
.field r:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "junk"

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/b/a/a/d;->r:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/b/a/a/d;->a(I)V

    invoke-virtual {p0, p2}, Lcom/estrongs/android/b/a/a/d;->d(Z)V

    return-void
.end method
