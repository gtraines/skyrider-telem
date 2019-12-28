.class public Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;
.super Ljava/lang/Object;
.source "ReliableCommandSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendingRequest"
.end annotation


# instance fields
.field cmd:Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

.field finishCallback:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;

.field must:Z


# direct methods
.method private constructor <init>(Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;ZLapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->cmd:Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

    .line 138
    iput-boolean p2, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->must:Z

    .line 139
    iput-object p3, p0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;->finishCallback:Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;

    return-void
.end method

.method public static newMustSendRequest(Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;)Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;
    .locals 2

    .line 143
    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;-><init>(Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;ZLapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;)V

    return-object v0
.end method

.method public static newNormalSendRequest(Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;)Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;
    .locals 2

    .line 147
    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$SendingRequest;-><init>(Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;ZLapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;)V

    return-object v0
.end method
