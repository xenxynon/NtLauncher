.class public final Lcom/nothing/cardwidget/pedometer/WalkingData;
.super Lcom/nothing/cardwidget/pedometer/PedometerData;
.source "SourceFile"


# instance fields
.field private currentProgress:I

.field private isAnimateValid:Z

.field private isJustWalking:Z

.field private refreshProgress:Z

.field private walkingPercent:I


# direct methods
.method public constructor <init>(IZZIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardwidget/pedometer/PedometerData;-><init>()V

    iput p1, p0, Lcom/nothing/cardwidget/pedometer/WalkingData;->walkingPercent:I

    iput-boolean p2, p0, Lcom/nothing/cardwidget/pedometer/WalkingData;->refreshProgress:Z

    iput-boolean p3, p0, Lcom/nothing/cardwidget/pedometer/WalkingData;->isJustWalking:Z

    iput p4, p0, Lcom/nothing/cardwidget/pedometer/WalkingData;->currentProgress:I

    iput-boolean p5, p0, Lcom/nothing/cardwidget/pedometer/WalkingData;->isAnimateValid:Z

    return-void
.end method

.method public synthetic constructor <init>(IZZIZILkotlin/jvm/internal/i;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x1

    :cond_3
    move v6, p5

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardwidget/pedometer/WalkingData;-><init>(IZZIZ)V

    return-void
.end method


# virtual methods
.method public final getCurrentProgress()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/WalkingData;->currentProgress:I

    return p0
.end method

.method public final getRefreshProgress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/pedometer/WalkingData;->refreshProgress:Z

    return p0
.end method

.method public final getWalkingPercent()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/WalkingData;->walkingPercent:I

    return p0
.end method

.method public final isAnimateValid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/pedometer/WalkingData;->isAnimateValid:Z

    return p0
.end method

.method public final isJustWalking()Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardwidget/pedometer/WalkingData;->isJustWalking:Z

    return p0
.end method

.method public final setAnimateValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/pedometer/WalkingData;->isAnimateValid:Z

    return-void
.end method

.method public final setCurrentProgress(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/pedometer/WalkingData;->currentProgress:I

    return-void
.end method

.method public final setJustWalking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/pedometer/WalkingData;->isJustWalking:Z

    return-void
.end method

.method public final setRefreshProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardwidget/pedometer/WalkingData;->refreshProgress:Z

    return-void
.end method

.method public final setWalkingPercent(I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/pedometer/WalkingData;->walkingPercent:I

    return-void
.end method
