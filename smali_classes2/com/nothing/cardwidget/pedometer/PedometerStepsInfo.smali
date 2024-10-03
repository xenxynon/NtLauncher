.class public final Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final date:J
    .annotation runtime Lm1/c;
        value = "date"
    .end annotation
.end field

.field private final steps:I
    .annotation runtime Lm1/c;
        value = "steps"
    .end annotation
.end field

.field private final target:I
    .annotation runtime Lm1/c;
        value = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->date:J

    iput p3, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->steps:I

    iput p4, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->target:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;JIIILjava/lang/Object;)Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->date:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p3, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->steps:I

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget p4, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->target:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->copy(JII)Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->date:J

    return-wide v0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->steps:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->target:I

    return p0
.end method

.method public final copy(JII)Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;
    .locals 0

    new-instance p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;-><init>(JII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;

    iget-wide v3, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->date:J

    iget-wide v5, p1, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->date:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->steps:I

    iget v3, p1, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->steps:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->target:I

    iget p1, p1, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->target:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->date:J

    return-wide v0
.end method

.method public final getSteps()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->steps:I

    return p0
.end method

.method public final getTarget()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->target:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->date:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->steps:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->target:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PedometerStepsInfo(date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->date:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", steps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->steps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/PedometerStepsInfo;->target:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
