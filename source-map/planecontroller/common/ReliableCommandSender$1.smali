.class Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;
.super Ljava/lang/Object;
.source "ReliableCommandSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 57
    :cond_0
    :goto_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$000(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59
    :try_start_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$100(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$100(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :try_start_1
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$100(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Ljava/util/Queue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 62
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 64
    :cond_1
    :goto_1
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$100(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    invoke-static {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$202(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;)Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    .line 65
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$200(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$302(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;I)I

    .line 69
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$402(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;[B)[B

    .line 70
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$502(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;I)I

    .line 71
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$602(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 73
    :goto_2
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$200(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    move-result-object v0

    iget-boolean v0, v0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->must:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$300(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_5

    :cond_3
    const-string v0, "send cmd"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v2}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$200(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    move-result-object v2

    iget-object v2, v2, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->cmd:Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

    iget-byte v2, v2, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;->type:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$700(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    move-result-object v0

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$200(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    move-result-object v1

    iget-object v1, v1, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->cmd:Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

    invoke-virtual {v0, v1}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->submitCmd(Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;)V

    .line 76
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$800(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    :try_start_3
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$800(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 78
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    :try_start_4
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$000(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 81
    :cond_4
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$600(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    :cond_5
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$200(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    move-result-object v0

    iget-object v0, v0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->finishCallback:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$200(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    move-result-object v0

    iget-object v0, v0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->finishCallback:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$600(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v2}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$400(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)[B

    move-result-object v2

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$500(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;->onFinishSending(Z[BI)V

    goto/16 :goto_0

    .line 83
    :cond_6
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;->access$308(Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    .line 78
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    return-void
.end method
