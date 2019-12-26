.class public Lapp/panchip_weinikang/planecontroller/util/UIUtil;
.super Ljava/lang/Object;
.source "UIUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2pix(Landroid/content/Context;I)I
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getBitmapSrcRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 12
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 38
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-double v2, v0

    int-to-double v4, p0

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v6, v2, v4

    int-to-double v8, v1

    int-to-double v10, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v10

    cmpg-double p1, v6, v8

    const/4 v1, 0x0

    if-gez p1, :cond_0

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v8

    double-to-int p1, v2

    .line 43
    new-instance v2, Landroid/graphics/Rect;

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    invoke-direct {v2, v1, p0, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 45
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    double-to-int p1, v4

    .line 47
    new-instance v2, Landroid/graphics/Rect;

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    invoke-direct {v2, v0, v1, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public static getScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    const-string v0, "window"

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 31
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 32
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 33
    new-instance p0, Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static getScreenSize(Landroid/content/Context;)[I
    .locals 3

    const-string v0, "window"

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 24
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 25
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 p0, 0x2

    .line 26
    new-array p0, p0, [I

    iget v1, v0, Landroid/graphics/Point;->x:I

    const/4 v2, 0x0

    aput v1, p0, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v1, 0x1

    aput v0, p0, v1

    return-object p0
.end method

.method public static pix2dp(Landroid/content/Context;F)I
    .locals 0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method
