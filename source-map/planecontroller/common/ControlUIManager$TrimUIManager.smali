.class Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;
.super Ljava/lang/Object;
.source "ControlUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrimUIManager"
.end annotation


# static fields
.field static final PITCH:I = 0x2

.field static final ROLL:I = 0x1

.field static final YAW:I


# instance fields
.field centerX:I

.field centerY:I

.field cursor:Landroid/view/View;

.field cursorHeight:I

.field cursorWidth:I

.field step:F

.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

.field type:I


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Landroid/view/View;I)V
    .locals 2

    .line 684
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    iput p3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->type:I

    .line 688
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 v0, 0x2

    div-int/2addr p1, v0

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->centerX:I

    .line 689
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->centerY:I

    const/high16 p1, 0x42800000    # 64.0f

    if-ne p3, v0, :cond_0

    const p3, 0x7f07007f

    .line 692
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursor:Landroid/view/View;

    const p3, 0x7f070082

    .line 693
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f07007e

    .line 694
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 695
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursor:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    div-float/2addr p2, p1

    iput p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->step:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    const p3, 0x7f070094

    .line 697
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursor:Landroid/view/View;

    const p3, 0x7f070095

    .line 698
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f070098

    .line 699
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 700
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursor:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    div-float/2addr p2, p1

    iput p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->step:F

    goto :goto_0

    :cond_1
    const p3, 0x7f0700e2

    .line 702
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursor:Landroid/view/View;

    const p3, 0x7f0700e3

    .line 703
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f0700e6

    .line 704
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 705
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursor:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    div-float/2addr p2, p1

    iput p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->step:F

    .line 707
    :goto_0
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursorHeight:I

    .line 708
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v0

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursorWidth:I

    return-void
.end method


# virtual methods
.method invalidate(I)V
    .locals 6

    .line 712
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 713
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursor:Landroid/view/View;

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->centerX:I

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursorWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->centerY:I

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->step:F

    int-to-float p1, p1

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursorHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->centerX:I

    iget v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursorWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->centerY:I

    iget v5, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->step:F

    mul-float v5, v5, p1

    float-to-int p1, v5

    add-int/2addr v4, p1

    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursorHeight:I

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursor:Landroid/view/View;

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->centerX:I

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->step:F

    int-to-float p1, p1

    mul-float v2, v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursorWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->centerY:I

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursorHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->centerX:I

    iget v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->step:F

    mul-float v4, v4, p1

    float-to-int p1, v4

    add-int/2addr v3, p1

    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursorWidth:I

    add-int/2addr v3, p1

    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->centerY:I

    iget v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->cursorHeight:I

    add-int/2addr p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method
