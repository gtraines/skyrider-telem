.class public Lapp/panchip_weinikang/planecontroller/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field private static blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private static rs:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    sput-object p0, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->rs:Landroid/renderscript/RenderScript;

    .line 17
    sget-object p0, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->rs:Landroid/renderscript/RenderScript;

    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->rs:Landroid/renderscript/RenderScript;

    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p0

    sput-object p0, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    return-void
.end method

.method public static release()V
    .locals 2

    .line 21
    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->rs:Landroid/renderscript/RenderScript;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->rs:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 23
    sput-object v1, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->rs:Landroid/renderscript/RenderScript;

    .line 26
    :cond_0
    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 28
    sput-object v1, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    :cond_1
    return-void
.end method

.method public static smooth(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 2

    .line 33
    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 36
    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->rs:Landroid/renderscript/RenderScript;

    invoke-static {v0, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p0

    .line 37
    sget-object v0, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->rs:Landroid/renderscript/RenderScript;

    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 39
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v1, p0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 40
    sget-object v1, Lapp/panchip_weinikang/planecontroller/util/ImageUtil;->blurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 42
    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 44
    invoke-virtual {p0}, Landroid/renderscript/Allocation;->destroy()V

    .line 45
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    return-object p1
.end method
