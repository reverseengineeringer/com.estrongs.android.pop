.class Lcom/google/android/gms/tagmanager/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/t;->a:Lcom/google/android/gms/tagmanager/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/t;->a:Lcom/google/android/gms/tagmanager/q;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/q;->b()V

    :cond_0
    return-void
.end method
