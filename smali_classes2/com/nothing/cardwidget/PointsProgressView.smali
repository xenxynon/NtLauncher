.class public final Lcom/nothing/cardwidget/PointsProgressView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardwidget/PointsProgressView$Companion;,
        Lcom/nothing/cardwidget/PointsProgressView$CircleData;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/cardwidget/PointsProgressView$Companion;

.field private static final DEFAULT_CIRCLE_DIAMETER:I = 0x7

.field private static final DEFAULT_COLUMN_COUNT:I = 0x14

.field private static final DEFAULT_MAX_PROGRESS:I = 0x64

.field private static final DEFAULT_PROGRESS_COLOR:Ljava/lang/String; = "#191C1E"

.field private static final DEFAULT_RAW_COUNT:I = 0x3

.field private static final DEFAULT_TRACK_COLOR:Ljava/lang/String; = "#C5C7C9"

.field private static final TAG:Ljava/lang/String; = "PointsProgressView"


# instance fields
.field private circleCountSize:Ljava/lang/Integer;

.field private circleDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nothing/cardwidget/PointsProgressView$CircleData;",
            ">;"
        }
    .end annotation
.end field

.field private columnCount:I

.field private maxProgress:I

.field private paintMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private progress:I

.field private progressColor:Ljava/lang/Integer;

.field private progressPaint:Landroid/graphics/Paint;

.field private progressPercentageColor:[I

.field private rawCount:I

.field private trackColor:Ljava/lang/Integer;

.field private trackPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardwidget/PointsProgressView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardwidget/PointsProgressView$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardwidget/PointsProgressView;->Companion:Lcom/nothing/cardwidget/PointsProgressView$Companion;

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

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardwidget/PointsProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardwidget/PointsProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x64

    iput p3, p0, Lcom/nothing/cardwidget/PointsProgressView;->maxProgress:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/nothing/cardwidget/PointsProgressView;->circleCountSize:Ljava/lang/Integer;

    sget-object v1, Lk2/a;->a:Lk2/a$a;

    const/4 v2, 0x6

    new-array v2, v2, [Ln5/k;

    const-string v3, "rawCount"

    invoke-virtual {v1, p1, v3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/nothing/cardwidget/R$attr;->rawCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "columnCount"

    invoke-virtual {v1, p1, v3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/nothing/cardwidget/R$attr;->columnCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "progress"

    invoke-virtual {v1, p1, v3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/nothing/cardwidget/R$attr;->progress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "maxProgress"

    invoke-virtual {v1, p1, v3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/nothing/cardwidget/R$attr;->maxProgress:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, "trackColor"

    invoke-virtual {v1, p1, v3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v5, Lcom/nothing/cardwidget/R$attr;->trackColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v2, v5

    const-string v3, "progressColor"

    invoke-virtual {v1, p1, v3}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v5, Lcom/nothing/cardwidget/R$attr;->progressColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v2, v5

    invoke-static {v2}, Lo5/d0;->h([Ln5/k;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lk2/a$a;->k(Landroid/util/AttributeSet;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget v5, Lcom/nothing/cardwidget/R$attr;->rawCount:I

    if-ne v3, v5, :cond_2

    if-eqz p2, :cond_1

    sget-object v3, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3, p1, p2, v2, v4}, Lk2/a$a;->i(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iput v2, p0, Lcom/nothing/cardwidget/PointsProgressView;->rawCount:I

    goto :goto_0

    :cond_2
    sget v5, Lcom/nothing/cardwidget/R$attr;->columnCount:I

    if-ne v3, v5, :cond_4

    const/16 v3, 0x14

    if-eqz p2, :cond_3

    sget-object v5, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v5, p1, p2, v2, v3}, Lk2/a$a;->i(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    :cond_3
    iput v3, p0, Lcom/nothing/cardwidget/PointsProgressView;->columnCount:I

    goto :goto_0

    :cond_4
    sget v5, Lcom/nothing/cardwidget/R$attr;->progress:I

    if-ne v3, v5, :cond_6

    if-eqz p2, :cond_5

    sget-object v3, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3, p1, p2, v2, v0}, Lk2/a$a;->i(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    iput v2, p0, Lcom/nothing/cardwidget/PointsProgressView;->progress:I

    goto :goto_0

    :cond_6
    sget v5, Lcom/nothing/cardwidget/R$attr;->maxProgress:I

    if-ne v3, v5, :cond_8

    if-eqz p2, :cond_7

    sget-object v3, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3, p1, p2, v2, p3}, Lk2/a$a;->i(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_3

    :cond_7
    move v2, p3

    :goto_3
    iput v2, p0, Lcom/nothing/cardwidget/PointsProgressView;->maxProgress:I

    goto/16 :goto_0

    :cond_8
    sget v5, Lcom/nothing/cardwidget/R$attr;->trackColor:I

    const/4 v6, 0x0

    if-ne v3, v5, :cond_a

    if-eqz p2, :cond_9

    sget-object v3, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3, p1, p2, v2}, Lk2/a$a;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_9
    iput-object v6, p0, Lcom/nothing/cardwidget/PointsProgressView;->trackColor:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_a
    sget v5, Lcom/nothing/cardwidget/R$attr;->progressColor:I

    if-ne v3, v5, :cond_0

    if-eqz p2, :cond_b

    sget-object v3, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3, p1, p2, v2}, Lk2/a$a;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_b
    iput-object v6, p0, Lcom/nothing/cardwidget/PointsProgressView;->progressColor:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_c
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
    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/cardwidget/PointsProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final dp2px(I)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private final initPaintMap()V
    .locals 8

    iget-object v0, p0, Lcom/nothing/cardwidget/PointsProgressView;->progressPercentageColor:[I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/nothing/cardwidget/PointsProgressView;->paintMap:Landroid/util/ArrayMap;

    invoke-direct {p0}, Lcom/nothing/cardwidget/PointsProgressView;->obtainProgressPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/nothing/cardwidget/PointsProgressView;->paintMap:Landroid/util/ArrayMap;

    invoke-direct {p0}, Lcom/nothing/cardwidget/PointsProgressView;->obtainProgressPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/nothing/cardwidget/PointsProgressView;->progressPercentageColor:[I

    if-eqz p0, :cond_2

    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-ge v1, v2, :cond_2

    mul-int/lit8 v4, v1, 0x2

    aget v5, p0, v4

    add-int/2addr v4, v3

    aget v4, p0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Paint;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private final obtainColor(I)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private final obtainCurrentPercentage()F
    .locals 2

    iget v0, p0, Lcom/nothing/cardwidget/PointsProgressView;->progress:I

    iget p0, p0, Lcom/nothing/cardwidget/PointsProgressView;->maxProgress:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    mul-float/2addr v0, v1

    int-to-float p0, p0

    div-float v1, v0, p0

    :goto_0
    return v1
.end method

.method private final obtainPaintByPercentage(FF)Landroid/graphics/Paint;
    .locals 8

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardwidget/PointsProgressView;->obtainTrackPaintPaint()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p2, p0, Lcom/nothing/cardwidget/PointsProgressView;->paintMap:Landroid/util/ArrayMap;

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/nothing/cardwidget/PointsProgressView;->initPaintMap()V

    :cond_1
    iget-object p2, p0, Lcom/nothing/cardwidget/PointsProgressView;->paintMap:Landroid/util/ArrayMap;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "it.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo5/j;->z(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    cmpl-float v6, p1, v6

    if-lez v6, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    if-eqz v6, :cond_2

    move v4, v2

    move-object v1, v5

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Paint;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/nothing/cardwidget/PointsProgressView;->obtainProgressPaint()Landroid/graphics/Paint;

    move-result-object p1

    :cond_7
    return-object p1
.end method

.method private final obtainProgressPaint()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/PointsProgressView;->progressPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nothing/cardwidget/PointsProgressView;->progressPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/nothing/cardwidget/PointsProgressView;->obtainProgressPaintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object p0, p0, Lcom/nothing/cardwidget/PointsProgressView;->progressPaint:Landroid/graphics/Paint;

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method private final obtainProgressPaintColor()I
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/PointsProgressView;->progressColor:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "#191C1E"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final obtainProgressPercentageByColumn(I)F
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/nothing/cardwidget/PointsProgressView;->columnCount:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private final obtainTrackPaintColor()I
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/PointsProgressView;->trackColor:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "#C5C7C9"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final obtainTrackPaintPaint()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/PointsProgressView;->trackPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nothing/cardwidget/PointsProgressView;->trackPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/nothing/cardwidget/PointsProgressView;->obtainTrackPaintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object p0, p0, Lcom/nothing/cardwidget/PointsProgressView;->trackPaint:Landroid/graphics/Paint;

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/nothing/cardwidget/PointsProgressView;->circleDataList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;

    invoke-virtual {v0}, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->getY()F

    move-result v2

    invoke-virtual {v0}, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->getRadius()F

    move-result v3

    invoke-virtual {v0}, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_1

    int-to-float p2, p1

    mul-float/2addr p2, v3

    iget v0, p0, Lcom/nothing/cardwidget/PointsProgressView;->columnCount:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget v0, p0, Lcom/nothing/cardwidget/PointsProgressView;->rawCount:I

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    int-to-float p1, p2

    mul-float/2addr p1, v3

    iget v0, p0, Lcom/nothing/cardwidget/PointsProgressView;->rawCount:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/nothing/cardwidget/PointsProgressView;->columnCount:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    :cond_2
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_3

    if-ne v1, v2, :cond_3

    iget p1, p0, Lcom/nothing/cardwidget/PointsProgressView;->columnCount:I

    mul-int/lit8 p1, p1, 0x7

    invoke-direct {p0, p1}, Lcom/nothing/cardwidget/PointsProgressView;->dp2px(I)I

    move-result p1

    iget p2, p0, Lcom/nothing/cardwidget/PointsProgressView;->rawCount:I

    mul-int/lit8 p2, p2, 0x7

    invoke-direct {p0, p2}, Lcom/nothing/cardwidget/PointsProgressView;->dp2px(I)I

    move-result p2

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 11

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/nothing/cardwidget/PointsProgressView;->rawCount:I

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    div-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget p4, p0, Lcom/nothing/cardwidget/PointsProgressView;->columnCount:I

    int-to-float p4, p4

    mul-float/2addr p4, p3

    div-float/2addr p2, p4

    invoke-static {p2, p1}, Le6/e;->d(FF)F

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float p4, p3, p4

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/nothing/cardwidget/PointsProgressView;->rawCount:I

    iget v2, p0, Lcom/nothing/cardwidget/PointsProgressView;->columnCount:I

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nothing/cardwidget/PointsProgressView;->circleDataList:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardwidget/PointsProgressView;->circleCountSize:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/nothing/cardwidget/PointsProgressView;->obtainCurrentPercentage()F

    move-result v0

    iget v1, p0, Lcom/nothing/cardwidget/PointsProgressView;->rawCount:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    iget v4, p0, Lcom/nothing/cardwidget/PointsProgressView;->columnCount:I

    move v5, v2

    :cond_0
    :goto_1
    if-ge v5, v4, :cond_1

    int-to-float v6, v5

    mul-float/2addr v6, p3

    add-float/2addr v6, p4

    int-to-float v7, v3

    mul-float/2addr v7, p3

    add-float/2addr v7, p4

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/nothing/cardwidget/PointsProgressView;->obtainProgressPercentageByColumn(I)F

    move-result v8

    invoke-direct {p0, v8, v0}, Lcom/nothing/cardwidget/PointsProgressView;->obtainPaintByPercentage(FF)Landroid/graphics/Paint;

    move-result-object v8

    iget-object v9, p0, Lcom/nothing/cardwidget/PointsProgressView;->circleDataList:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    new-instance v10, Lcom/nothing/cardwidget/PointsProgressView$CircleData;

    invoke-direct {v10, v6, v7, p4, v8}, Lcom/nothing/cardwidget/PointsProgressView$CircleData;-><init>(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pointDimaeter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", pointWidth:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", pointHeight:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", pointRadius:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", circleDataList.size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/nothing/cardwidget/PointsProgressView;->circleDataList:Ljava/util/ArrayList;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", currentPercentage:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PointsProgressView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setColumnCount(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/PointsProgressView;->columnCount:I

    return-void
.end method

.method public final setMaxProgress(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/PointsProgressView;->maxProgress:I

    return-void
.end method

.method public final setPercentageColor(II)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nothing/cardwidget/PointsProgressView;->progressPercentageColor:[I

    const/4 p0, 0x0

    aput p1, v0, p0

    const/4 p0, 0x1

    aput p2, v0, p0

    return-void
.end method

.method public final varargs setPercentageColors([I)V
    .locals 4

    const-string v0, "percentageColors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/nothing/cardwidget/PointsProgressView;->progressPercentageColor:[I

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_1

    mul-int/lit8 v2, p0, 0x2

    aget v3, p1, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    aget v3, p1, v2

    aput v3, v1, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/PointsProgressView;->progress:I

    return-void
.end method

.method public final setProgressColor(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/PointsProgressView;->progressColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setRawCount(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/PointsProgressView;->rawCount:I

    return-void
.end method

.method public final setTrackColor(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardwidget/PointsProgressView;->trackColor:Ljava/lang/Integer;

    return-void
.end method
