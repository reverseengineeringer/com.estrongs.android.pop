.class final Lcom/estrongs/android/pop/utils/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/z;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/z;->a:Landroid/content/Context;

    invoke-static {}, Lcom/estrongs/android/pop/utils/w;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pname"

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
