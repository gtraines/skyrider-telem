.class public Lapp/panchip_weinikang/planecontroller/customview/SquareLayout;
.super Landroid/widget/RelativeLayout;
.source "SquareLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {v0, p1}, Lapp/panchip_weinikang/planecontroller/customview/SquareLayout;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Lapp/panchip_weinikang/planecontroller/customview/SquareLayout;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lapp/panchip_weinikang/planecontroller/customview/SquareLayout;->setMeasuredDimension(II)V

    .line 31
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/customview/SquareLayout;->getMeasuredWidth()I

    move-result p1

    .line 32
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/customview/SquareLayout;->getMeasuredHeight()I

    const/high16 p2, 0x40000000    # 2.0f

    .line 34
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 35
    invoke-super {p0, p1, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
