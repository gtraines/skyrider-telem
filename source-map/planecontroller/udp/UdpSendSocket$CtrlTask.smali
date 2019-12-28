.class Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;
.super Ljava/lang/Thread;
.source "UdpSendSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CtrlTask"
.end annotation


# instance fields
.field private cmdQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;",
            ">;"
        }
    .end annotation
.end field

.field private running:Z

.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 66
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->cmdQueue:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method addCmd(Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->cmdQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public kill()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->running:Z

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->running:Z

    .line 79
    :goto_0
    iget-boolean v1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->running:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->cmdQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    return-void

    .line 81
    :cond_1
    :goto_1
    :try_start_0
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->cmdQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 84
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 87
    :cond_2
    :goto_2
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->cmdQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

    .line 88
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    invoke-static {v2}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->access$000(Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    invoke-static {v2}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->access$000(Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v0, :cond_3

    const-string v1, "udp"

    const-string v2, "not wifi"

    .line 89
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v1}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->getBytes()[B

    move-result-object v3

    .line 93
    new-instance v1, Ljava/net/DatagramPacket;

    const/4 v4, 0x0

    array-length v5, v3

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    invoke-static {v2}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->access$100(Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;)Ljava/net/InetAddress;

    move-result-object v6

    const/16 v7, 0x138c

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 94
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    invoke-static {v2}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->access$200(Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;)Ljava/net/DatagramSocket;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 99
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket$CtrlTask;->cmdQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
