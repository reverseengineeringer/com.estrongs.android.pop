.class public Lcom/estrongs/bluetooth/b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/f;


# instance fields
.field private a:Landroid/bluetooth/BluetoothServerSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothServerSocket;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/bluetooth/b;->a:Landroid/bluetooth/BluetoothServerSocket;

    return-void
.end method


# virtual methods
.method public a()Lb/a/a/e;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/bluetooth/b;->a:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    new-instance v1, Lcom/estrongs/bluetooth/a;

    invoke-direct {v1, v0}, Lcom/estrongs/bluetooth/a;-><init>(Landroid/bluetooth/BluetoothSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    throw v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/bluetooth/b;->a:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    return-void
.end method
