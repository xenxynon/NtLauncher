.class public final Lcom/nothing/cardwidget/PointsProgressView$CircleData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/PointsProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CircleData"
.end annotation


# instance fields
.field private final paint:Landroid/graphics/Paint;

.field private final radius:F

.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(FFFLandroid/graphics/Paint;)V
    .locals 1

    const-string v0, "paint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->x:F

    iput p2, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->y:F

    iput p3, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->radius:F

    iput-object p4, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nothing/cardwidget/PointsProgressView$CircleData;FFFLandroid/graphics/Paint;ILjava/lang/Object;)Lcom/nothing/cardwidget/PointsProgressView$CircleData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->x:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->y:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->radius:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->paint:Landroid/graphics/Paint;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->copy(FFFLandroid/graphics/Paint;)Lcom/nothing/cardwidget/PointsProgressView$CircleData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->x:F

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->y:F

    return p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->radius:F

    return p0
.end method

.method public final component4()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final copy(FFFLandroid/graphics/Paint;)Lcom/nothing/cardwidget/PointsProgressView$CircleData;
    .locals 0

    const-string p0, "paint"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/cardwidget/PointsProgressView$CircleData;-><init>(FFFLandroid/graphics/Paint;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nothing/cardwidget/PointsProgressView$CircleData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nothing/cardwidget/PointsProgressView$CircleData;

    iget v1, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->radius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->radius:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->paint:Landroid/graphics/Paint;

    iget-object p1, p1, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->paint:Landroid/graphics/Paint;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getRadius()F
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->radius:F

    return p0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->x:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->y:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->x:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->y:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->radius:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CircleData(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", paint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/nothing/cardwidget/PointsProgressView$CircleData;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
