.class public final Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView$Companion;

.field private static final DESIGN_CIRCLE_WIDTH:I = 0x4

.field private static final DESIGN_DIVIDER_WIDTH:I = 0x4

.field private static final DESIGN_LEFT_GAP:I = 0x8

.field private static final DESIGN_RADIUS:I = 0x2

.field private static final DESIGN_TOTAL_DOTS_COUNTER:I = 0x14

.field private static final DESIGN_TOTAL_WIDTH:F = 172.0f

.field private static final INT_12:I = 0xc

.field private static final INT_8:I = 0x8


# instance fields
.field private hasInit:Z

.field private humanWidth:I

.field private isRtl:Z

.field private leftCircleColor:I

.field private progress:I

.field private rightDotColor:I

.field private final shapePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->Companion:Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->shapePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final init(III)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->hasInit:Z

    iput p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->humanWidth:I

    iput p2, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->leftCircleColor:I

    iput p3, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->rightDotColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->hasInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x432c0000    # 172.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->humanWidth:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    int-to-float v2, v2

    const/16 v4, 0x8

    int-to-float v5, v4

    mul-float v6, v5, v0

    add-float/2addr v2, v6

    iget-boolean v6, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->isRtl:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v2, v6, v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v3

    mul-float v8, v2, v7

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->progress:I

    int-to-float v8, v8

    mul-float/2addr v6, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v6, v8

    add-float/2addr v6, v2

    iget v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->humanWidth:I

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    sub-float v8, v6, v8

    div-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v6, v2

    div-float/2addr v8, v0

    div-float/2addr v6, v0

    const/16 v2, 0xc

    int-to-float v2, v2

    sub-float/2addr v8, v2

    div-float/2addr v8, v5

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v2, v8

    float-to-int v2, v2

    sub-float/2addr v6, v5

    div-float/2addr v6, v5

    float-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-int v5, v5

    iget-boolean v6, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->isRtl:Z

    if-eqz v6, :cond_2

    iget v8, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->rightDotColor:I

    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->leftCircleColor:I

    :goto_0
    if-eqz v6, :cond_3

    iget v9, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->leftCircleColor:I

    goto :goto_1

    :cond_3
    iget v9, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->rightDotColor:I

    :goto_1
    if-eqz v6, :cond_4

    div-float v10, v1, v7

    goto :goto_2

    :cond_4
    move v10, v1

    :goto_2
    if-eqz v6, :cond_5

    move v6, v1

    goto :goto_3

    :cond_5
    div-float v6, v1, v7

    :goto_3
    iget-object v7, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v7, 0x0

    if-ltz v2, :cond_6

    :goto_4
    add-int/lit8 v8, v7, 0x1

    mul-int v11, v4, v8

    add-int/2addr v11, v3

    int-to-float v11, v11

    mul-float/2addr v11, v0

    iget-object v12, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v1, v10, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eq v7, v2, :cond_6

    move v7, v8

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    :goto_5
    const/16 v2, 0x14

    if-ge v5, v2, :cond_7

    add-int/lit8 v5, v5, 0x1

    mul-int v2, v4, v5

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget-object v7, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_7
    return-void
.end method

.method public final refreshRtl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->isRtl:Z

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerWalkingBgView;->progress:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
