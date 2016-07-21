.class final Lcom/estrongs/android/pop/app/ea;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/pop/app/d/a;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Lcom/estrongs/android/pop/app/d/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ea;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ea;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/ea;->c:Lcom/estrongs/android/pop/app/d/a;

    iput-boolean p4, p0, Lcom/estrongs/android/pop/app/ea;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ea;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ea;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ea;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ea;->c:Lcom/estrongs/android/pop/app/d/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ea;->a:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/ea;->d:Z

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/ArrayList;Z)V

    return-void
.end method
