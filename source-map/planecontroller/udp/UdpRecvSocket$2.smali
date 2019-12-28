.class Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;
.super Ljava/lang/Thread;
.source "UdpRecvSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->receive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 79
    :try_start_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    new-instance v1, Ljava/net/DatagramSocket;

    const/16 v2, 0x138a

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(I)V

    invoke-static {v0, v1}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$102(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    .line 80
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$100(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramSocket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    const/16 v0, 0x5be

    .line 81
    new-array v0, v0, [B

    .line 82
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v0

    invoke-direct {v3, v0, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-static {v2, v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$202(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;Ljava/net/DatagramPacket;)Ljava/net/DatagramPacket;

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 83
    :cond_0
    :goto_0
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$300(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 84
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$400(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$400(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 86
    :cond_1
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$100(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramSocket;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$100(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 87
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$100(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramSocket;

    move-result-object v3

    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v4}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramPacket;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 90
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$400(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$400(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 92
    :cond_2
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$508(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)I

    .line 93
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramPacket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    .line 94
    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v4}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramPacket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    .line 95
    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    if-ne v5, v1, :cond_6

    add-int/lit8 v5, v4, 0x1

    .line 98
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x3

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x4

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x5

    .line 99
    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v4, v4, 0x6

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v6

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    sub-int v4, v5, v2

    if-le v4, v1, :cond_5

    .line 105
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$608(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)I

    .line 106
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$600(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v4}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$500(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 108
    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v4}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$000(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 109
    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v4}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$000(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;

    move-result-object v4

    invoke-interface {v4, v2, v5, v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;->onPacketLoss(IIF)V

    :cond_4
    const-string v4, "UDP Socket"

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packet loss. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " loss rate: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v2}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$700(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;

    move-result-object v2

    invoke-virtual {v2}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->reset()V

    :goto_1
    move v2, v5

    goto/16 :goto_0

    .line 118
    :cond_5
    :goto_2
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v2}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$700(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;

    move-result-object v2

    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v4}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramPacket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    iget-object v6, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v6}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramPacket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v6

    add-int/lit8 v6, v6, 0x7

    iget-object v7, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v7}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramPacket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    invoke-virtual {v2, v4, v6, v7, v3}, Lapp/panchip_weinikang/planecontroller/common/JPEGFactory;->processRawData([BIII)V

    goto :goto_1

    :cond_6
    const/4 v4, 0x2

    if-ne v5, v4, :cond_7

    .line 120
    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v4}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$800(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$AckRecvListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v4}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramPacket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    sub-int/2addr v4, v1

    new-array v4, v4, [B

    .line 122
    iget-object v5, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v5}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramPacket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v3, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$800(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$AckRecvListener;

    move-result-object v3

    iget-object v5, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v5}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramPacket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v3, v4, v5}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$AckRecvListener;->onAckReceived([BI)V

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x4

    if-ne v5, v4, :cond_0

    const-string v4, "ctrl cmd"

    const-string v5, "recv"

    .line 126
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v4}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$900(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$CmdRecvListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 128
    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v4}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramPacket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    sub-int/2addr v4, v1

    new-array v4, v4, [B

    .line 129
    iget-object v5, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v5}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramPacket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v3, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$900(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$CmdRecvListener;

    move-result-object v3

    iget-object v5, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v5}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramPacket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v3, v4, v5}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$CmdRecvListener;->onCmdReceived([BI)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 139
    :cond_8
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$400(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 140
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$400(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    const-string v0, "multicastLock"

    const-string v1, "release at finally"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_9
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$100(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramSocket;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 137
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$400(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 140
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$400(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    const-string v0, "multicastLock"

    const-string v1, "release at finally"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_a
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$100(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramSocket;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_3

    :catch_1
    move-exception v0

    .line 135
    :try_start_2
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$400(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 140
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$400(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    const-string v0, "multicastLock"

    const-string v1, "release at finally"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_b
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$100(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramSocket;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 144
    :goto_3
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$100(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    :cond_c
    return-void

    .line 139
    :goto_4
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$400(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 140
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$400(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    const-string v1, "multicastLock"

    const-string v2, "release at finally"

    .line 141
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_d
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$100(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramSocket;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 144
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$2;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$100(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_e
    throw v0
.end method
