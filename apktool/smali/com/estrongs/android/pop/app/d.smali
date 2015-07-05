.class Lcom/estrongs/android/pop/app/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AppCheckUpdateList;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/d;->a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/d;->a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/d;->a:Lcom/estrongs/android/pop/app/AppCheckUpdateList;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AppCheckUpdateList;->a(Landroid/content/Context;)V

    return-void
.end method
