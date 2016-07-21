.class public Lcom/estrongs/android/pop/app/messagebox/y;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/app/Activity;

.field private d:Lcom/estrongs/android/pop/app/messagebox/o;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/y;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/y;->b:Landroid/app/ProgressDialog;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/y;->c:Landroid/app/Activity;

    new-instance v0, Lcom/estrongs/android/pop/app/messagebox/o;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/messagebox/o;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/y;->d:Lcom/estrongs/android/pop/app/messagebox/o;

    return-void
.end method
