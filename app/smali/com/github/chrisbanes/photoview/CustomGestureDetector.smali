.class Lcom/github/chrisbanes/photoview/CustomGestureDetector;
.super Ljava/lang/Object;
.source "CustomGestureDetector.java"


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mActivePointerIndex:I

.field private final mDetector:Landroid/view/ScaleGestureDetector;

.field private mIsDragging:Z

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mListener:Lcom/github/chrisbanes/photoview/OnGestureListener;

.field private final mMinimumVelocity:F

.field private final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/github/chrisbanes/photoview/OnGestureListener;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerId:I

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerIndex:I

    .line 45
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mMinimumVelocity:F

    .line 47
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mTouchSlop:F

    .line 49
    iput-object p2, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mListener:Lcom/github/chrisbanes/photoview/OnGestureListener;

    .line 50
    new-instance p2, Lcom/github/chrisbanes/photoview/CustomGestureDetector$1;

    invoke-direct {p2, p0}, Lcom/github/chrisbanes/photoview/CustomGestureDetector$1;-><init>(Lcom/github/chrisbanes/photoview/CustomGestureDetector;)V

    .line 74
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/github/chrisbanes/photoview/CustomGestureDetector;)Lcom/github/chrisbanes/photoview/OnGestureListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mListener:Lcom/github/chrisbanes/photoview/OnGestureListener;

    return-object p0
.end method

.method private getActiveX(Landroid/view/MotionEvent;)F
    .locals 1

    .line 79
    :try_start_0
    iget v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 81
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method private getActiveY(Landroid/view/MotionEvent;)F
    .locals 1

    .line 87
    :try_start_0
    iget v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 89
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 148
    :pswitch_0
    iput v3, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 150
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 151
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 152
    iput-object v1, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_2

    .line 127
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    .line 128
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v1

    .line 129
    iget v5, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchX:F

    sub-float v5, v0, v5

    iget v6, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchY:F

    sub-float v6, v1, v6

    .line 131
    iget-boolean v7, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mIsDragging:Z

    if-nez v7, :cond_1

    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    .line 134
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iget v9, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mTouchSlop:F

    float-to-double v9, v9

    cmpl-double v11, v7, v9

    if-ltz v11, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iput-boolean v7, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mIsDragging:Z

    .line 137
    :cond_1
    iget-boolean v7, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mIsDragging:Z

    if-eqz v7, :cond_6

    .line 138
    iget-object v7, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mListener:Lcom/github/chrisbanes/photoview/OnGestureListener;

    invoke-interface {v7, v5, v6}, Lcom/github/chrisbanes/photoview/OnGestureListener;->onDrag(FF)V

    .line 139
    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchX:F

    .line 140
    iput v1, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchY:F

    .line 142
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 143
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 156
    :pswitch_2
    iput v3, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 157
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 159
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchX:F

    .line 160
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchY:F

    .line 163
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 164
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 166
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v5, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 167
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    .line 171
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mMinimumVelocity:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    .line 172
    iget-object v6, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mListener:Lcom/github/chrisbanes/photoview/OnGestureListener;

    iget v7, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchX:F

    iget v8, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchY:F

    neg-float v0, v0

    neg-float v5, v5

    invoke-interface {v6, v7, v8, v0, v5}, Lcom/github/chrisbanes/photoview/OnGestureListener;->onFling(FFFF)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 180
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 181
    iput-object v1, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2

    .line 115
    :pswitch_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 117
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 118
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 122
    :cond_3
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchX:F

    .line 123
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchY:F

    .line 124
    iput-boolean v4, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mIsDragging:Z

    goto :goto_2

    .line 185
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/Util;->getPointerIndex(I)I

    move-result v0

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 187
    iget v5, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerId:I

    if-ne v1, v5, :cond_6

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 191
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchX:F

    .line 193
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mLastTouchY:F

    .line 198
    :cond_6
    :goto_2
    iget v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerId:I

    if-eq v0, v3, :cond_7

    iget v4, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 199
    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    iput p1, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mActivePointerIndex:I

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isDragging()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mIsDragging:Z

    return v0
.end method

.method public isScaling()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 104
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/CustomGestureDetector;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method
