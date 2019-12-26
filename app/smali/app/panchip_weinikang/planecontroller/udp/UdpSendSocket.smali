.class public Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;
.super Ljava/lang/Object;
.source "UdpSendSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;
    }
.end annotation


# static fields
.field private static final hostAddr:Ljava/lang/String; = "192.168.51.1"

.field private static final port:I = 0x138c


# instance fields
.field private address:Ljava/net/InetAddress;

.field private ctrlTask:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;

.field private networkInfo:Landroid/net/NetworkInfo;

.field private socket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 34
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->networkInfo:Landroid/net/NetworkInfo;

    .line 36
    :try_start_0
    new-instance p1, Ljava/net/DatagramSocket;

    invoke-direct {p1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->socket:Ljava/net/DatagramSocket;

    const-string p1, "192.168.51.1"

    .line 37
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->address:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/net/SocketException;->printStackTrace()V

    .line 43
    :goto_0
    new-instance p1, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;

    invoke-direct {p1, p0}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;-><init>(Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;)V

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->ctrlTask:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;

    .line 44
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->ctrlTask:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->start()V

    return-void
.end method

.method static synthetic access$000(Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;)Landroid/net/NetworkInfo;
    .locals 0

    .line 20
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->networkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method static synthetic access$100(Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;)Ljava/net/InetAddress;
    .locals 0

    .line 20
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->address:Ljava/net/InetAddress;

    return-object p0
.end method

.method static synthetic access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;)Ljava/net/DatagramSocket;
    .locals 0

    .line 20
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->socket:Ljava/net/DatagramSocket;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 53
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->ctrlTask:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->kill()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 48
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->ctrlTask:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->ctrlTask:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->start()V

    :cond_0
    return-void
.end method

.method public submitCmd(Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->ctrlTask:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;

    invoke-virtual {v0, p1}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->addCmd(Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;)V

    return-void
.end method
