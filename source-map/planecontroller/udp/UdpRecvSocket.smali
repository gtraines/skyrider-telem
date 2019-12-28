.class public Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;
.super Ljava/lang/Object;
.source "UdpRecvSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$CmdRecvListener;,
        Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$AckRecvListener;,
        Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;
    }
.end annotation


# static fields
.field public static final DATA_TYPE_ACK:I = 0x2

.field public static final DATA_TYPE_CMD:I = 0x4

.field public static final DATA_TYPE_JPEG:I = 0x1


# instance fields
.field private ackRecvListener:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$AckRecvListener;

.field private cmdRecvListener:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$CmdRecvListener;

.field private jpegFactory:Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;

.field private jpegRecvListener:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;

.field private lockIsHeldBeforePause:Z

.field private multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private packet:Ljava/net/DatagramPacket;

.field private packetCnt:I

.field private packetLoss:I

.field private running:Z

.field private socket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager$MulticastLock;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->packetCnt:I

    .line 48
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->packetLoss:I

    .line 50
    new-instance p1, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;

    invoke-direct {p1}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;-><init>()V

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->jpegFactory:Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;

    .line 51
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->jpegFactory:Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;

    new-instance v0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$1;

    invoke-direct {v0, p0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$1;-><init>(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)V

    invoke-virtual {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->setCallback(Lapp/panchip_weinikang/planecontroller/common/JPEGFactory$JPEGCallback;)V

    return-void
.end method

.method static synthetic access$000(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->jpegRecvListener:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;

    return-object p0
.end method

.method static synthetic access$100(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramSocket;
    .locals 0

    .line 15
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->socket:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic access$102(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .locals 0

    .line 15
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->socket:Ljava/net/DatagramSocket;

    return-object p1
.end method

.method static synthetic access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramPacket;
    .locals 0

    .line 15
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->packet:Ljava/net/DatagramPacket;

    return-object p0
.end method

.method static synthetic access$202(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;Ljava/net/DatagramPacket;)Ljava/net/DatagramPacket;
    .locals 0

    .line 15
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->packet:Ljava/net/DatagramPacket;

    return-object p1
.end method

.method static synthetic access$300(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->running:Z

    return p0
.end method

.method static synthetic access$400(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 0

    .line 15
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    return-object p0
.end method

.method static synthetic access$500(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)I
    .locals 0

    .line 15
    iget p0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->packetCnt:I

    return p0
.end method

.method static synthetic access$508(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)I
    .locals 2

    .line 15
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->packetCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->packetCnt:I

    return v0
.end method

.method static synthetic access$600(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)I
    .locals 0

    .line 15
    iget p0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->packetLoss:I

    return p0
.end method

.method static synthetic access$608(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)I
    .locals 2

    .line 15
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->packetLoss:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->packetLoss:I

    return v0
.end method

.method static synthetic access$700(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;
    .locals 0

    .line 15
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->jpegFactory:Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;

    return-object p0
.end method

.method static synthetic access$800(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$AckRecvListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->ackRecvListener:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$AckRecvListener;

    return-object p0
.end method

.method static synthetic access$900(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$CmdRecvListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->cmdRecvListener:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$CmdRecvListener;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->running:Z

    .line 169
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    const-string v0, "multicastLock"

    const-string v1, "release at close"

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->socket:Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 175
    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->socket:Ljava/net/DatagramSocket;

    .line 177
    :cond_1
    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->ackRecvListener:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$AckRecvListener;

    .line 178
    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->jpegRecvListener:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;

    .line 179
    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->cmdRecvListener:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$CmdRecvListener;

    .line 180
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->jpegFactory:Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->close()V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 152
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->lockIsHeldBeforePause:Z

    const-string v0, "multicastLock"

    const-string v1, "release at pause"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->lockIsHeldBeforePause:Z

    :goto_0
    return-void
.end method

.method public receive()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->running:Z

    .line 74
    new-instance v0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;

    invoke-direct {v0, p0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;-><init>(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)V

    .line 148
    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->start()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 162
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->lockIsHeldBeforePause:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    :cond_0
    return-void
.end method

.method public setAckRecvListener(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$AckRecvListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->ackRecvListener:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$AckRecvListener;

    return-void
.end method

.method public setCmdRecvListener(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$CmdRecvListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->cmdRecvListener:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$CmdRecvListener;

    return-void
.end method

.method public setJpegRecvListener(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->jpegRecvListener:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;

    return-void
.end method
