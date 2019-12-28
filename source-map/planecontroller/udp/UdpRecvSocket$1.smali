.class Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$1;
.super Ljava/lang/Object;
.source "UdpRecvSocket.java"

# interfaces
.implements Lapp/panchip_weinikang/planecontroller/common/JPEGFactory$JPEGCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;-><init>(Landroid/net/wifi/WifiManager$MulticastLock;)V
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

    .line 51
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$1;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public yield(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$1;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$000(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$1;->this$0:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->access$000(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;)Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;->onFrameReceived(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;)V

    :cond_0
    return-void
.end method
