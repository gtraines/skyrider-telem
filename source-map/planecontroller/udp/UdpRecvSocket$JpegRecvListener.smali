.class public interface abstract Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;
.super Ljava/lang/Object;
.source "UdpRecvSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JpegRecvListener"
.end annotation


# virtual methods
.method public abstract onFrameReceived(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;)V
.end method

.method public abstract onPacketLoss(IIF)V
.end method
