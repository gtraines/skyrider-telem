.class Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;
.super Ljava/lang/Object;
.source "VideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/panchip_weinikang/planecontroller/common/VideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderTask"
.end annotation


# instance fields
.field bmp:Landroid/graphics/Bitmap;

.field decimalFormat:Ljava/text/DecimalFormat;

.field fps:F

.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;


# direct methods
.method private constructor <init>(Lapp/panchip_weinikang/planecontroller/common/VideoController;)V
    .locals 1

    .line 345
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;->this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, ".00"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;->decimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method synthetic constructor <init>(Lapp/panchip_weinikang/planecontroller/common/VideoController;Lapp/panchip_weinikang/planecontroller/common/VideoController$1;)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;-><init>(Lapp/panchip_weinikang/planecontroller/common/VideoController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 354
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;->this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->access$600(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;->decimalFormat:Ljava/text/DecimalFormat;

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;->fps:F

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setBmp(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;->bmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method setFps(F)V
    .locals 0

    .line 361
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$RenderTask;->fps:F

    return-void
.end method
