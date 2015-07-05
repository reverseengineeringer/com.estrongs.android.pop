.class public Lcom/estrongs/bluetooth/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/e;


# instance fields
.field private a:Landroid/bluetooth/BluetoothSocket;

.field private b:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/bluetooth/a;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/bluetooth/a;->b:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/bluetooth/a;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/io/DataInputStream;
    .locals 2

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/a;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/bluetooth/a;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/io/DataOutputStream;
    .locals 2

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/a;->c()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/bluetooth/a;->a:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/bluetooth/a;->a:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    :cond_0
    return-void
.end method
