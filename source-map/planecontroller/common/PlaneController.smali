.class public Lapp/panchip_weinikang/planecontroller/common/PlaneController;
.super Ljava/lang/Object;
.source "PlaneController.java"

# interfaces
.implements Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$AckRecvListener;
.implements Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$CmdRecvListener;
.implements Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;
.implements Lapp/panchip_weinikang/planecontroller/common/VideoController$VideoCtrlCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;
    }
.end annotation


# static fields
.field private static final DEBUG_SHOW_SINGLE_LOG:Z = true

.field private static final DEBUG_SHOW_WHOLE_LOG:Z = false

.field private static final WAIT_TIMEOUT:J = 0x1388L


# instance fields
.field private commandSender:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

.field private context:Landroid/content/Context;

.field private controlEnable:Z

.field private controlTask:Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;

.field private controlUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

.field private fpvVersion:Ljava/lang/String;

.field private handshakeCountDownTimer:Landroid/os/CountDownTimer;

.field private handshakeTimeout:Z

.field private photoBtn:Landroid/view/View;

.field private planeReady:Z

.field private planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

.field private udpRecvSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

.field private udpSendSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

.field private videoBtn:Landroid/view/View;

.field private videoController:Lapp/panchip_weinikang/planecontroller/common/VideoController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v6, Lapp/panchip_weinikang/planecontroller/common/PlaneController$1;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lapp/panchip_weinikang/planecontroller/common/PlaneController$1;-><init>(Lapp/panchip_weinikang/planecontroller/common/PlaneController;JJ)V

    iput-object v6, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->handshakeCountDownTimer:Landroid/os/CountDownTimer;

    .line 57
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->context:Landroid/content/Context;

    .line 59
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f07007b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->photoBtn:Landroid/view/View;

    const v1, 0x7f0700da

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->videoBtn:Landroid/view/View;

    .line 62
    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-direct {v0, p1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    .line 63
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-virtual {v0, p0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->setControlListener(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;)V

    .line 64
    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-direct {v0, p1}, Lapp/panchip_weinikang/planecontroller/common/VideoController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->videoController:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    .line 65
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->videoController:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-virtual {v0, p0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->setVideoCtrlCallback(Lapp/panchip_weinikang/planecontroller/common/VideoController$VideoCtrlCallback;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "PVTM UDP"

    .line 68
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    .line 69
    new-instance v1, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-direct {v1, v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;-><init>(Landroid/net/wifi/WifiManager$MulticastLock;)V

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->udpRecvSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    .line 70
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->udpRecvSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->videoController:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-virtual {v0, v1}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->setJpegRecvListener(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$JpegRecvListener;)V

    .line 71
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->udpRecvSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-virtual {v0, p0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->setCmdRecvListener(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$CmdRecvListener;)V

    .line 72
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->udpRecvSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->receive()V

    .line 74
    new-instance v0, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    invoke-direct {v0, p1}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->udpSendSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    .line 75
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->udpSendSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->start()V

    .line 77
    new-instance p1, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->udpSendSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    const/4 v1, 0x5

    invoke-direct {p1, v1, v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;-><init>(ILapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;)V

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->commandSender:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    .line 78
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->udpRecvSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->commandSender:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-virtual {p1, v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->setAckRecvListener(Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$AckRecvListener;)V

    .line 79
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->commandSender:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->start()V

    .line 81
    new-instance p1, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-direct {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;-><init>()V

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    .line 82
    new-instance p1, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;

    invoke-direct {p1, p0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;-><init>(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)V

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlTask:Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;

    .line 83
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlTask:Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->start()V

    return-void
.end method

.method static synthetic access$000(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    return-object p0
.end method

.method static synthetic access$202(Lapp/panchip_weinikang/planecontroller/common/PlaneController;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->handshakeTimeout:Z

    return p1
.end method

.method static synthetic access$302(Lapp/panchip_weinikang/planecontroller/common/PlaneController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->fpvVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeReady:Z

    return p0
.end method

.method static synthetic access$402(Lapp/panchip_weinikang/planecontroller/common/PlaneController;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeReady:Z

    return p1
.end method

.method static synthetic access$500(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Lapp/panchip_weinikang/planecontroller/common/VideoController;
    .locals 0

    .line 20
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->videoController:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    return-object p0
.end method

.method static synthetic access$600(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;
    .locals 0

    .line 20
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    return-object p0
.end method

.method static synthetic access$700(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;
    .locals 0

    .line 20
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->udpSendSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    return-object p0
.end method

.method static synthetic access$800(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->photoBtn:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->videoBtn:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getFpvVersion()Ljava/lang/String;
    .locals 1

    .line 152
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeReady:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->fpvVersion:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handshake()V
    .locals 3

    .line 116
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeReady:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->commandSender:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->newHandshakeCmd()Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

    move-result-object v1

    new-instance v2, Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;

    invoke-direct {v2, p0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;-><init>(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)V

    invoke-static {v1, v2}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->newMustSendRequest(Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;)Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->commitCommand(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;)Z

    .line 143
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->showWaitingPop()V

    :cond_0
    return-void
.end method

.method public isPlaneReady()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeReady:Z

    return v0
.end method

.method public onAckReceived([BI)V
    .locals 4

    const/4 v0, 0x0

    .line 232
    aget-byte v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 233
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->handshakeTimeout:Z

    if-nez v0, :cond_3

    .line 234
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->handshakeCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 235
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lapp/panchip_weinikang/planecontroller/common/PlaneController$3;

    invoke-direct {v1, p0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController$3;-><init>(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    const/16 v1, 0x14

    const/16 v2, 0x13

    if-ne p2, v1, :cond_0

    .line 243
    new-instance p2, Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p2, p1, v0, v2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->fpvVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    if-ne p2, v1, :cond_2

    .line 245
    new-instance p2, Ljava/lang/String;

    const/4 v1, 0x2

    const-string v3, "ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {p2, p1, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->fpvVersion:Ljava/lang/String;

    .line 246
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    .line 247
    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->setFPS(I)V

    goto :goto_0

    :cond_1
    const-string p1, "OLD"

    .line 250
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->fpvVersion:Ljava/lang/String;

    .line 251
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeReady:Z

    .line 252
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->videoController:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->activate()V

    .line 253
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->videoResume()V

    :cond_3
    return-void
.end method

.method public onAction(I)V
    .locals 3

    const-string v0, "action"

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 410
    :pswitch_0
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->selfRotate()V

    goto :goto_0

    .line 407
    :pswitch_1
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->flipOnce()V

    goto :goto_0

    .line 404
    :pswitch_2
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->flipOneKeyAdjust()V

    goto :goto_0

    .line 401
    :pswitch_3
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->flipOneKeyStop()V

    goto :goto_0

    .line 398
    :pswitch_4
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->flipOneKeyLand()V

    goto :goto_0

    .line 395
    :pswitch_5
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->flipOneKeyTakeOff()V

    goto :goto_0

    .line 392
    :pswitch_6
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->flipOneKeyPreTurn()V

    goto :goto_0

    .line 389
    :pswitch_7
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->flipOneKeyReturn()V

    goto :goto_0

    .line 386
    :pswitch_8
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->flipOneKeyFlip()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAltHoldModeChange(I)V
    .locals 3

    const-string v0, "althold mode change"

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {v0, p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->setAltHold(I)V

    return-void
.end method

.method public onCameraReverseChange(Z)V
    .locals 1

    .line 304
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->videoController:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-virtual {v0, p1}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->reversedCamera(Z)V

    return-void
.end method

.method public onCmdReceived([BI)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 263
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->context:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$4;

    invoke-direct {v0, p0, p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneController$4;-><init>(Lapp/panchip_weinikang/planecontroller/common/PlaneController;[B)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDirectionPanelChange([F)V
    .locals 4

    const/4 v0, 0x0

    .line 309
    aget v0, p1, v0

    const/high16 v1, 0x43000000    # 128.0f

    mul-float v0, v0, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v2, 0x1

    .line 310
    aget p1, p1, v2

    mul-float p1, p1, v1

    sub-float/2addr v1, p1

    float-to-int p1, v1

    .line 311
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    const/16 v2, 0xff

    if-gt v0, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/16 v3, 0xff

    :goto_0
    invoke-virtual {v1, v3}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->setRoll(I)V

    .line 312
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    if-gt p1, v2, :cond_1

    move v2, p1

    :cond_1
    invoke-virtual {v1, v2}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->setPitch(I)V

    const-string v1, "roll"

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "pitch"

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHeadlessModeChange(I)V
    .locals 3

    const-string v0, "headless mode change"

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {v0, p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->setHeadless(I)V

    return-void
.end method

.method public onLightCtrlChange(I)V
    .locals 3

    const-string v0, "light ctrl change"

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {v0, p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->setLightON(I)V

    return-void
.end method

.method public onPitchTrimChange(I)V
    .locals 3

    const-string v0, "pitch trim change"

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {v0, p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->setPitchTrim(I)V

    return-void
.end method

.method public onRollTrimChange(I)V
    .locals 3

    const-string v0, "roll trim change"

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {v0, p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->setRollTrim(I)V

    return-void
.end method

.method public onSpeedChange(I)V
    .locals 3

    const-string v0, "speed change"

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {v0, p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->setSpeed(I)V

    return-void
.end method

.method public onTakePhoto()Z
    .locals 2

    const-string v0, "action"

    const-string v1, "take photo"

    .line 418
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->videoController:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->takePhoto()Z

    move-result v0

    return v0
.end method

.method public onTakeVideo()Z
    .locals 2

    const-string v0, "action"

    const-string v1, "take video"

    .line 425
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->videoController:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->takeVideo()Z

    move-result v0

    return v0
.end method

.method public onThrottlePanelChange([F)V
    .locals 4

    const/4 v0, 0x0

    .line 321
    aget v0, p1, v0

    const/high16 v1, 0x43000000    # 128.0f

    mul-float v0, v0, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v2, 0x1

    .line 322
    aget p1, p1, v2

    mul-float p1, p1, v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 323
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    const/16 v2, 0xff

    if-gt v0, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/16 v3, 0xff

    :goto_0
    invoke-virtual {v1, v3}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->setYaw(I)V

    .line 324
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    if-gt p1, v2, :cond_1

    move v2, p1

    :cond_1
    invoke-virtual {v1, v2}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->setThrottle(I)V

    const-string v1, "yaw"

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "throttle"

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoCtrlChange(Z)V
    .locals 4

    .line 285
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeReady:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "control task"

    const-string v1, "restart"

    .line 287
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlEnable:Z

    .line 289
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlTask:Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->restart()V

    goto :goto_0

    :cond_0
    const-string p1, "control task"

    const-string v1, "pause"

    .line 291
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 292
    iput-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlEnable:Z

    .line 293
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlTask:Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;

    invoke-virtual {v1}, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->pause()V

    .line 294
    new-instance v1, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;

    invoke-direct {v1}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;-><init>()V

    const/4 v2, 0x4

    .line 295
    invoke-virtual {v1, v2}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->setType(B)Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;

    move-result-object v2

    new-array v0, v0, [B

    const/4 v3, -0x1

    aput-byte v3, v0, p1

    .line 296
    invoke-virtual {v2, v0}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->setPayload([B)Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;

    .line 297
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->commandSender:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-virtual {v1}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->create()Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->newMustSendRequest(Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;)Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->commitCommand(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onYawTrimChange(I)V
    .locals 3

    const-string v0, "yaw trim change"

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeStatus:Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    invoke-virtual {v0, p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->setYawTrim(I)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 96
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->onPause()V

    .line 97
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->videoController:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->pause()V

    .line 98
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->udpRecvSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->pause()V

    .line 99
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlEnable:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlTask:Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 87
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->onResume()V

    .line 88
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->videoController:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->resume()V

    .line 89
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->udpRecvSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->resume()V

    .line 90
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->planeReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlEnable:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlTask:Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->restart()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 105
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->handshakeCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 106
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->commandSender:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->stop()V

    .line 107
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlTask:Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->kill()V

    .line 108
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlTask:Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->restart()V

    .line 109
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->udpRecvSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket;->close()V

    .line 110
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->videoController:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->stop()V

    .line 111
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->udpSendSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->close()V

    .line 112
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->controlUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->onDestroy()V

    return-void
.end method

.method public videoPause()V
    .locals 3

    const-string v0, "video control callback"

    const-string v1, "video pause"

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;

    invoke-direct {v0}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;-><init>()V

    const/4 v1, 0x1

    .line 223
    invoke-virtual {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->setType(B)Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;

    move-result-object v1

    sget-object v2, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->CMD_DISABLE_CAMERA:[B

    .line 224
    invoke-virtual {v1, v2}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->setPayload([B)Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;

    .line 225
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->commandSender:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->create()Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->newNormalSendRequest(Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;)Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->commitCommand(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;)Z

    return-void
.end method

.method public videoResume()V
    .locals 3

    const-string v0, "video control callback"

    const-string v1, "video resume"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;

    invoke-direct {v0}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;-><init>()V

    const/4 v1, 0x1

    .line 214
    invoke-virtual {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->setType(B)Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;

    move-result-object v1

    sget-object v2, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->CMD_ENABLE_CAMERA:[B

    .line 215
    invoke-virtual {v1, v2}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->setPayload([B)Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;

    .line 216
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->commandSender:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->create()Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->newMustSendRequest(Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;)Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->commitCommand(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;)Z

    return-void
.end method
