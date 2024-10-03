.class public Lcom/android/launcher3/folder/PreviewBackground;
.super Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;
.source "SourceFile"


# static fields
.field public static final COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/folder/PreviewBackground;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/folder/PreviewBackground;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHADOW_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/folder/PreviewBackground;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STROKE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/folder/PreviewBackground;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field basePreviewOffsetX:I

.field basePreviewOffsetY:I

.field public circleType:I

.field public isClipping:Z

.field public isCover:Z

.field private mBgColor:I

.field private mDotColor:I

.field private mDrawingDelegate:Lcom/android/launcher3/CellLayout;

.field private mInvalidateDelegate:Landroid/view/View;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field mScale:F

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private final mShaderMatrix:Landroid/graphics/Matrix;

.field private mShadowAlpha:I

.field private final mShadowPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field private mShadowShader:Landroid/graphics/RadialGradient;

.field private mStrokeAlpha:I

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field previewSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Ljava/lang/Integer;

    new-instance v1, Lcom/android/launcher3/folder/PreviewBackground$1;

    const-string v2, "strokeAlpha"

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/folder/PreviewBackground$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/android/launcher3/folder/PreviewBackground;->STROKE_ALPHA:Landroid/util/Property;

    new-instance v1, Lcom/android/launcher3/folder/PreviewBackground$2;

    const-string v2, "shadowAlpha"

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/folder/PreviewBackground$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/android/launcher3/folder/PreviewBackground;->SHADOW_ALPHA:Landroid/util/Property;

    new-instance v1, Lcom/android/launcher3/folder/PreviewBackground$7;

    const-class v2, Ljava/lang/Float;

    const-string v3, "scale"

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/folder/PreviewBackground$7;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/android/launcher3/folder/PreviewBackground;->SCALE:Landroid/util/Property;

    new-instance v1, Lcom/android/launcher3/folder/PreviewBackground$8;

    const-string v2, "color"

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/folder/PreviewBackground$8;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/android/launcher3/folder/PreviewBackground;->COLOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;-><init>()V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowShader:Landroid/graphics/RadialGradient;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShaderMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    iput-boolean v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->circleType:I

    iput-boolean v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->isCover:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/CellLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground;->lambda$animateToAccept$0(Lcom/android/launcher3/CellLayout;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/PreviewBackground;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/launcher3/folder/PreviewBackground;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeAlpha:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/PreviewBackground;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/launcher3/folder/PreviewBackground;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mShadowAlpha:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/launcher3/folder/PreviewBackground;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/folder/PreviewBackground;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mBgColor:I

    return p0
.end method

.method private animateScale(FLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/folder/PreviewBackground$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/folder/PreviewBackground$5;-><init>(Lcom/android/launcher3/folder/PreviewBackground;FF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground$6;-><init>(Lcom/android/launcher3/folder/PreviewBackground;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic b(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/CellLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground;->lambda$animateToRest$1(Lcom/android/launcher3/CellLayout;II)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/folder/PreviewBackground;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/PreviewBackground;->clearDrawingDelegate()V

    return-void
.end method

.method private clearDrawingDelegate()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/CellLayout;->removeDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void
.end method

.method private delegateDrawing(Lcom/android/launcher3/CellLayout;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eq v0, p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/CellLayout;->addDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    iput p2, p0, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellX:I

    iput p3, p0, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellY:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void
.end method

.method private synthetic lambda$animateToAccept$0(Lcom/android/launcher3/CellLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground;->delegateDrawing(Lcom/android/launcher3/CellLayout;II)V

    return-void
.end method

.method private synthetic lambda$animateToRest$1(Lcom/android/launcher3/CellLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/PreviewBackground;->delegateDrawing(Lcom/android/launcher3/CellLayout;II)V

    return-void
.end method


# virtual methods
.method public animateBackgroundStroke()V
    .locals 0

    return-void
.end method

.method public animateToAccept(Lcom/android/launcher3/CellLayout;IIII)V
    .locals 0

    const/4 p5, 0x1

    if-le p4, p5, :cond_0

    const p4, 0x3f866666    # 1.05f

    goto :goto_0

    :cond_0
    const p4, 0x3f99999a    # 1.2f

    :goto_0
    new-instance p5, Lcom/android/launcher3/folder/g0;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/android/launcher3/folder/g0;-><init>(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/CellLayout;II)V

    const/4 p1, 0x0

    invoke-direct {p0, p4, p5, p1}, Lcom/android/launcher3/folder/PreviewBackground;->animateScale(FLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public animateToRest()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    iget v1, p0, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellY:I

    new-instance v3, Lcom/android/launcher3/folder/h0;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/launcher3/folder/h0;-><init>(Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/CellLayout;II)V

    new-instance v0, Lcom/android/launcher3/folder/f0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/f0;-><init>(Lcom/android/launcher3/folder/PreviewBackground;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v3, v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateScale(FLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->circleType:I

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape;->getShape(I)Lcom/android/launcher3/graphics/IconShape;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/graphics/IconShape;->drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawShadow(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawBackgroundStroke(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public drawLeaveBehind(Landroid/graphics/Canvas;I)V
    .locals 7

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget p2, p0, Lcom/android/launcher3/folder/PreviewBackground;->circleType:I

    invoke-static {p2}, Lcom/android/launcher3/graphics/IconShape;->getShape(I)Lcom/android/launcher3/graphics/IconShape;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result p2

    int-to-float v3, p2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result p2

    int-to-float v4, p2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result p2

    int-to-float v5, p2

    iget-object v6, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/graphics/IconShape;->drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    return-void
.end method

.method public drawOverItem(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public drawShadow(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public drawUnderItem(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method drawingDelegated()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public fadeInBackgroundShadow()V
    .locals 0

    return-void
.end method

.method public getBgColor()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mBgColor:I

    return p0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    add-int v2, v1, p0

    add-int/2addr p0, v0

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getClipPath()Landroid/graphics/Path;
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->circleType:I

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShape;->getShape(I)Lcom/android/launcher3/graphics/IconShape;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/android/launcher3/graphics/IconShape;->addToPath(Landroid/graphics/Path;FFF)V

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public getCornerRadius()F
    .locals 2

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->circleType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x3e6b851f    # 0.23f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    return p0
.end method

.method public getDotColor()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDotColor:I

    return p0
.end method

.method getOffsetX()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method getOffsetY()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRadius()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method getScaleProgress(Z)F
    .locals 1

    iget p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    if-eqz p1, :cond_0

    const p1, 0x3f866666    # 1.05f

    goto :goto_0

    :cond_0
    const p1, 0x3f99999a    # 1.2f

    :goto_0
    sub-float/2addr p1, v0

    div-float/2addr p0, p1

    return p0
.end method

.method getScaledRadius()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDrawingDelegate:Lcom/android/launcher3/CellLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method public refreshBgColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mBgColor:I

    return-void
.end method

.method setInvalidateDelegate(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void
.end method

.method public setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V
    .locals 2

    iput-object p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object v0, Lcom/android/launcher3/R$styleable;->FolderIconPreview:[I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    const v0, 0x7f0403e8

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mDotColor:I

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeColor:I

    sget-object v0, Lz3/d;->a:Lz3/d;

    iget-boolean v1, p0, Lcom/android/launcher3/folder/PreviewBackground;->isCover:Z

    invoke-virtual {v0, p1, v1}, Lz3/d;->d(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->mBgColor:I

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p2

    iget p3, p2, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Point;->x:I

    if-le p4, p3, :cond_0

    invoke-virtual {p2}, Lj3/a;->h()I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    :cond_0
    iget p3, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    invoke-static {p3}, Lcom/android/launcher3/icons/IconNormalizer;->getNormalFolderSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    iput p4, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->folderIconOffsetYPx:I

    add-int/2addr p5, p2

    add-int/2addr p5, p3

    iput p5, p0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/launcher3/folder/PreviewBackground;->mStrokeWidth:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void
.end method
