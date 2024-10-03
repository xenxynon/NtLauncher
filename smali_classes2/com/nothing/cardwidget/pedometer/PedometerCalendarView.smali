.class public final Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/pedometer/PedometerCalendarView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/pedometer/PedometerCalendarView$Companion;

.field public static final KEY_MONTH_STEPS_LIST:Ljava/lang/String; = "month_steps_list"

.field private static final RECTANGLES_LIMIT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PedometerCalendarView"


# instance fields
.field private final WEEKLY_BOTTOM_MARGIN:F

.field private final X_INITIAL_MARGIN:I

.field private final X_MARGIN:F

.field private final circleRadius:F

.field private currentDayColor:I

.field private final dotRadius:F

.field private dotShapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nothing/cardwidget/pedometer/Shape;",
            ">;"
        }
    .end annotation
.end field

.field private fixRadio:F

.field private goalNotReachedColor:I

.field private goalReachedColor:I

.field private lastItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final rectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nothing/cardwidget/pedometer/Shape;",
            ">;"
        }
    .end annotation
.end field

.field private final shapePaint:Landroid/graphics/Paint;

.field private weeklyDesColor:I

.field private weeklyDesPaint:Landroid/text/TextPaint;

.field private final weeklyDesTextSize:F

.field private weeklySimpleHead:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->Companion:Lcom/nothing/cardwidget/pedometer/PedometerCalendarView$Companion;

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

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x40400000    # 3.0f

    iput p2, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->circleRadius:F

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->dotRadius:F

    const/4 p2, -0x1

    iput p2, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->goalNotReachedColor:I

    iput p2, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->goalReachedColor:I

    iput p2, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->currentDayColor:I

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p3, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->shapePaint:Landroid/graphics/Paint;

    iput p2, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->weeklyDesColor:I

    const/high16 p2, 0x41300000    # 11.0f

    iput p2, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->weeklyDesTextSize:F

    const-string v0, "M"

    const-string v1, "T"

    const-string v2, "W"

    const-string v3, "T"

    const-string v4, "F"

    const-string v5, "S"

    const-string v6, "S"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->weeklySimpleHead:[Ljava/lang/String;

    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    iput-object p3, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->weeklyDesPaint:Landroid/text/TextPaint;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->rectangles:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->dotShapes:Ljava/util/List;

    const/16 p1, 0x14

    iput p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->X_INITIAL_MARGIN:I

    const/high16 p1, 0x41b00000    # 22.0f

    iput p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->X_MARGIN:F

    const/high16 p1, 0x41800000    # 16.0f

    iput p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->WEEKLY_BOTTOM_MARGIN:F

    invoke-static {}, Lcom/nothing/cardwidget/pedometer/UtilsKt;->getShortWeekdays()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->setWeeklyStr([Ljava/lang/String;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final addRectangleShape(ILcom/nothing/cardwidget/pedometer/Shape;)V
    .locals 10

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    iget-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->dotShapes:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nothing/cardwidget/pedometer/Shape;

    iget-object v3, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->dotShapes:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nothing/cardwidget/pedometer/Shape;

    instance-of v3, v1, Lcom/nothing/cardwidget/pedometer/GoalReachShape;

    if-eqz v3, :cond_2

    instance-of v3, p1, Lcom/nothing/cardwidget/pedometer/GoalReachShape;

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->getMonthOneDayWeek(I)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/nothing/cardwidget/pedometer/UtilsKt;->isRtl(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotX()F

    move-result v2

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotX()F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotX()F

    move-result v2

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotX()F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->circleRadius:F

    iget v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->fixRadio:F

    mul-float/2addr v0, v2

    new-instance v9, Lcom/nothing/cardwidget/pedometer/Rectangle;

    invoke-virtual {v1}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotX()F

    move-result v3

    invoke-virtual {v1}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotY()F

    move-result v2

    sub-float/2addr v2, v0

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v0

    sub-float v5, v2, v4

    invoke-virtual {p1}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotX()F

    move-result p1

    invoke-virtual {v1}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotY()F

    move-result v1

    add-float/2addr v1, v0

    add-float v6, v1, v4

    invoke-virtual {p2}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotX()F

    move-result v7

    invoke-virtual {p2}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotY()F

    move-result v8

    move-object v2, v9

    move v4, v5

    move v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/nothing/cardwidget/pedometer/Rectangle;-><init>(FFFFFF)V

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->rectangles:Ljava/util/List;

    invoke-interface {p0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private final findFirstDayIndex(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;",
            ">;)I"
        }
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;

    invoke-virtual {p0}, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->getDate()J

    move-result-wide p0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method private final getMonthOneDayWeek(I)I
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const-string v0, "getInstance()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    if-gez p0, :cond_0

    const/4 p0, 0x6

    :cond_0
    return p0
.end method

.method private final initMonthShape()V
    .locals 9

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->dotShapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->getMonthOneDayWeek(I)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-int/2addr v0, v2

    move v4, v3

    :goto_1
    if-ge v2, v0, :cond_5

    const/4 v5, 0x7

    if-lt v2, v5, :cond_1

    rem-int/lit8 v5, v2, 0x7

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_3

    :cond_2
    if-nez v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "context"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/nothing/cardwidget/pedometer/UtilsKt;->isRtl(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->X_MARGIN:F

    neg-float v6, v6

    int-to-float v5, v5

    mul-float/2addr v6, v5

    const/16 v5, 0x96

    goto :goto_4

    :cond_4
    iget v6, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->X_MARGIN:F

    int-to-float v5, v5

    mul-float/2addr v6, v5

    iget v5, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->X_INITIAL_MARGIN:I

    :goto_4
    int-to-float v5, v5

    add-float/2addr v6, v5

    iget v5, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->fixRadio:F

    mul-float/2addr v6, v5

    iget v5, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->X_MARGIN:F

    int-to-float v7, v4

    mul-float/2addr v7, v5

    add-float/2addr v7, v5

    iget v5, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->fixRadio:F

    mul-float/2addr v7, v5

    iget-object v5, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->dotShapes:Ljava/util/List;

    new-instance v8, Lcom/nothing/cardwidget/pedometer/Dot;

    invoke-direct {v8, v6, v7}, Lcom/nothing/cardwidget/pedometer/Dot;-><init>(FF)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private final maybeUpdateShapes(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->lastItemInfos:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->lastItemInfos:Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->lastItemInfos:Ljava/util/List;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :cond_4
    :goto_3
    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    iput-object p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->lastItemInfos:Ljava/util/List;

    invoke-direct {p0}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->initMonthShape()V

    invoke-direct {p0}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->updateStepsMonthShape()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string p0, "PedometerCalendarView"

    const-string p1, "PedometerCalendarView onDataChanged parse json failure~"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return-void
.end method

.method private final setWeeklyStr([Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    array-length v2, p1

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    :goto_1
    if-nez v1, :cond_8

    array-length v1, p1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    goto :goto_3

    :cond_3
    array-length v1, p1

    const-string v2, ""

    move-object v3, v2

    move v2, v0

    :goto_2
    if-ge v0, v1, :cond_6

    aget-object v4, p1, v0

    add-int/lit8 v5, v2, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_4

    move-object v3, v4

    :cond_4
    iget-object v6, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->weeklySimpleHead:[Ljava/lang/String;

    aput-object v4, v6, v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v2, v5

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nothing/cardwidget/pedometer/UtilsKt;->isRtl(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->weeklySimpleHead:[Ljava/lang/String;

    invoke-static {p0}, Lo5/c;->v([Ljava/lang/Object;)V

    :cond_7
    return-void

    :cond_8
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setWeeklyStr si error, weeklyStr is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PedometerCalendarView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final updateStepsMonthShape()V
    .locals 9

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->lastItemInfos:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->findFirstDayIndex(Ljava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->dotShapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->rectangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->lastItemInfos:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_2

    invoke-static {}, Lo5/j;->m()V

    :cond_2
    check-cast v3, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;

    iget-object v5, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->dotShapes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    if-gez v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->dotShapes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nothing/cardwidget/pedometer/Shape;

    invoke-virtual {v3}, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->getSteps()I

    move-result v6

    invoke-virtual {v3}, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->getTarget()I

    move-result v3

    const/4 v7, 0x1

    if-lt v6, v3, :cond_4

    move v3, v7

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    iget-object v6, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->lastItemInfos:Ljava/util/List;

    invoke-static {v6}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v7

    if-ne v2, v6, :cond_5

    iget-object v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->dotShapes:Ljava/util/List;

    new-instance v3, Lcom/nothing/cardwidget/pedometer/CurrentDayShape;

    invoke-virtual {v5}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotX()F

    move-result v7

    invoke-virtual {v5}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotY()F

    move-result v5

    invoke-direct {v3, v7, v5}, Lcom/nothing/cardwidget/pedometer/CurrentDayShape;-><init>(FF)V

    invoke-interface {v2, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->dotShapes:Ljava/util/List;

    new-instance v6, Lcom/nothing/cardwidget/pedometer/GoalNotReachShape;

    invoke-virtual {v5}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotX()F

    move-result v7

    invoke-virtual {v5}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotY()F

    move-result v5

    invoke-direct {v6, v7, v5}, Lcom/nothing/cardwidget/pedometer/GoalNotReachShape;-><init>(FF)V

    invoke-interface {v3, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->dotShapes:Ljava/util/List;

    new-instance v6, Lcom/nothing/cardwidget/pedometer/GoalReachShape;

    invoke-virtual {v5}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotX()F

    move-result v7

    invoke-virtual {v5}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotY()F

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/nothing/cardwidget/pedometer/GoalReachShape;-><init>(FF)V

    invoke-interface {v3, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2, v5}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->addRectangleShape(ILcom/nothing/cardwidget/pedometer/Shape;)V

    :cond_7
    :goto_2
    move v2, v4

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->dotShapes:Ljava/util/List;

    iget-object p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->rectangles:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final getCurrentDayColor()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->currentDayColor:I

    return p0
.end method

.method public final getGoalNotReachedColor()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->goalNotReachedColor:I

    return p0
.end method

.method public final getGoalReachedColor()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->goalReachedColor:I

    return p0
.end method

.method public final getWeeklyDesColor()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->weeklyDesColor:I

    return p0
.end method

.method public final onDataChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "monthStepsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->maybeUpdateShapes(Ljava/util/List;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->dotShapes:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nothing/cardwidget/pedometer/Shape;

    instance-of v2, v1, Lcom/nothing/cardwidget/pedometer/Rectangle;

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotX()F

    move-result v2

    invoke-virtual {v1}, Lcom/nothing/cardwidget/pedometer/Shape;->getPivotY()F

    move-result v3

    instance-of v4, v1, Lcom/nothing/cardwidget/pedometer/Dot;

    if-nez v4, :cond_0

    iget v4, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->circleRadius:F

    goto :goto_1

    :cond_0
    iget v4, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->dotRadius:F

    :goto_1
    iget v5, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->fixRadio:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->shapePaint:Landroid/graphics/Paint;

    instance-of v6, v1, Lcom/nothing/cardwidget/pedometer/CurrentDayShape;

    if-eqz v6, :cond_1

    iget v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->currentDayColor:I

    goto :goto_2

    :cond_1
    instance-of v1, v1, Lcom/nothing/cardwidget/pedometer/GoalReachShape;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->goalReachedColor:I

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->goalNotReachedColor:I

    :goto_2
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->shapePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->goalReachedColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    check-cast v1, Lcom/nothing/cardwidget/pedometer/Rectangle;

    invoke-virtual {v1}, Lcom/nothing/cardwidget/pedometer/Rectangle;->getLeft()F

    move-result v3

    invoke-virtual {v1}, Lcom/nothing/cardwidget/pedometer/Rectangle;->getTop()F

    move-result v4

    invoke-virtual {v1}, Lcom/nothing/cardwidget/pedometer/Rectangle;->getRight()F

    move-result v5

    invoke-virtual {v1}, Lcom/nothing/cardwidget/pedometer/Rectangle;->getBottom()F

    move-result v6

    iget-object v7, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->shapePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->weeklyDesPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->goalReachedColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x7

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->weeklyDesPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->weeklySimpleHead:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->X_MARGIN:F

    int-to-float v3, v0

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->X_INITIAL_MARGIN:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->fixRadio:F

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->WEEKLY_BOTTOM_MARGIN:F

    iget v4, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->fixRadio:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->weeklySimpleHead:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->weeklyDesPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final setCurrentDayColor(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->currentDayColor:I

    return-void
.end method

.method public final setFixRatio(F)V
    .locals 1

    iput p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->fixRadio:F

    iget-object v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->weeklyDesPaint:Landroid/text/TextPaint;

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->weeklyDesTextSize:F

    mul-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public final setGoalNotReachedColor(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->goalNotReachedColor:I

    return-void
.end method

.method public final setGoalReachedColor(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->goalReachedColor:I

    return-void
.end method

.method public final setWeeklyDesColor(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerCalendarView;->weeklyDesColor:I

    return-void
.end method
