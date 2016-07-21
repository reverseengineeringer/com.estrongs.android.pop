.class Lcom/estrongs/android/pop/app/analysis/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/unlock/y;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/b;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/b;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->notifyDataSetChanged()V

    return-void
.end method
