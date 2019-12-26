.class public Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;
.super Ljava/lang/Object;
.source "ReliableCommandSender.java"

# interfaces
.implements Lapp/panchip_weinikang/planecontroller/udp/UdpRecvSocket$AckRecvListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;,
        Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_CNT:I = 0x3


# instance fields
.field private ack:[B

.field private final ackLock:Ljava/lang/Object;

.field private ackReceived:Ljava/lang/Boolean;

.field private capacity:I

.field private currentRequest:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

.field private len:I

.field private final requestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private retryCnt:I

.field private running:Z

.field private sendSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;


# direct methods
.method public constructor <init>(ILapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->ackLock:Ljava/lang/Object;

    .line 36
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->capacity:I

    .line 37
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->requestQueue:Ljava/util/Queue;

    .line 38
    iput-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->sendSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    return-void
.end method

.method static synthetic access$000(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->running:Z

    return p0
.end method

.method static synthetic access$100(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Ljava/util/Queue;
    .locals 0

    .line 12
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->requestQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$200(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;
    .locals 0

    .line 12
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->currentRequest:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    return-object p0
.end method

.method static synthetic access$202(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;)Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;
    .locals 0

    .line 12
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->currentRequest:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    return-object p1
.end method

.method static synthetic access$300(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)I
    .locals 0

    .line 12
    iget p0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->retryCnt:I

    return p0
.end method

.method static synthetic access$302(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;I)I
    .locals 0

    .line 12
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->retryCnt:I

    return p1
.end method

.method static synthetic access$308(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)I
    .locals 2

    .line 12
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->retryCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->retryCnt:I

    return v0
.end method

.method static synthetic access$400(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)[B
    .locals 0

    .line 12
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->ack:[B

    return-object p0
.end method

.method static synthetic access$402(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;[B)[B
    .locals 0

    .line 12
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->ack:[B

    return-object p1
.end method

.method static synthetic access$500(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)I
    .locals 0

    .line 12
    iget p0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->len:I

    return p0
.end method

.method static synthetic access$502(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;I)I
    .locals 0

    .line 12
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->len:I

    return p1
.end method

.method static synthetic access$600(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Ljava/lang/Boolean;
    .locals 0

    .line 12
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->ackReceived:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$602(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 12
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->ackReceived:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$700(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;
    .locals 0

    .line 12
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->sendSocket:Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    return-object p0
.end method

.method static synthetic access$800(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Ljava/lang/Object;
    .locals 0

    .line 12
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->ackLock:Ljava/lang/Object;

    return-object p0
.end method

.method private isAckOfCurrentCommand([BI)Z
    .locals 5

    const/4 v0, 0x0

    if-lez p2, :cond_4

    .line 120
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->currentRequest:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    aget-byte v3, p1, v0

    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->currentRequest:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    iget-object v4, v4, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->cmd:Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

    iget-byte v4, v4, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->type:B

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_4

    if-le p2, v2, :cond_3

    .line 121
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->currentRequest:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    iget-object p2, p2, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->cmd:Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

    iget-byte p2, p2, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->type:B

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    .line 122
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->currentRequest:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    iget-object p2, p2, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->cmd:Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

    iget-object p2, p2, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->payload:[B

    array-length p2, p2

    if-lez p2, :cond_2

    aget-byte p1, p1, v2

    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->currentRequest:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    iget-object p2, p2, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->cmd:Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

    iget-object p2, p2, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->payload:[B

    aget-byte p2, p2, v0

    if-ne p1, p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    return v2

    :cond_4
    return v0
.end method


# virtual methods
.method public commitCommand(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;)Z
    .locals 3

    .line 42
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->requestQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->requestQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->capacity:I

    if-ge v1, v2, :cond_0

    .line 44
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->requestQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 45
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->requestQueue:Ljava/util/Queue;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    const/4 p1, 0x1

    .line 46
    monitor-exit v0

    return p1

    .line 48
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized onAckReceived([BI)V
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-direct {p0, p1, p2}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->isAckOfCurrentCommand([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 110
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->ackReceived:Ljava/lang/Boolean;

    .line 111
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->ack:[B

    .line 112
    iput p2, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->len:I

    .line 113
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->ackLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    :try_start_1
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->ackLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 115
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 108
    monitor-exit p0

    throw p1
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->running:Z

    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;

    invoke-direct {v1, p0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;-><init>(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 98
    :try_start_0
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->running:Z

    .line 99
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->requestQueue:Ljava/util/Queue;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 100
    :try_start_1
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->requestQueue:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 101
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    :try_start_2
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->ackLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 103
    :try_start_3
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->ackLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 104
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 104
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_1
    move-exception v1

    .line 101
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 97
    monitor-exit p0

    throw v0
.end method
