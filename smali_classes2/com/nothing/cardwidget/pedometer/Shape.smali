.class public Lcom/nothing/cardwidget/pedometer/Shape;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final pivotX:F

.field private final pivotY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nothing/cardwidget/pedometer/Shape;->pivotX:F

    iput p2, p0, Lcom/nothing/cardwidget/pedometer/Shape;->pivotY:F

    return-void
.end method


# virtual methods
.method public final getPivotX()F
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/Shape;->pivotX:F

    return p0
.end method

.method public final getPivotY()F
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/Shape;->pivotY:F

    return p0
.end method
