.class public Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;
.super Ljava/lang/Object;
.source "CtrlCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field payload:[B

.field type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;
    .locals 4

    .line 69
    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

    iget-byte v1, p0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->type:B

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->payload:[B

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;-><init>(B[BLapp/panchip_weinikang/planecontroller/common/CtrlCommand$1;)V

    return-object v0
.end method

.method public setPayload([B)Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;
    .locals 0

    .line 64
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->payload:[B

    return-object p0
.end method

.method public setType(B)Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;
    .locals 0

    .line 59
    iput-byte p1, p0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->type:B

    return-object p0
.end method
