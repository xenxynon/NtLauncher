.class public final Lcom/nothing/cardwidget/pedometer/Rectangle;
.super Lcom/nothing/cardwidget/pedometer/Shape;
.source "SourceFile"


# instance fields
.field private final bottom:F

.field private final left:F

.field private final right:F

.field private final top:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct {p0, p5, p6}, Lcom/nothing/cardwidget/pedometer/Shape;-><init>(FF)V

    iput p1, p0, Lcom/nothing/cardwidget/pedometer/Rectangle;->left:F

    iput p2, p0, Lcom/nothing/cardwidget/pedometer/Rectangle;->top:F

    iput p3, p0, Lcom/nothing/cardwidget/pedometer/Rectangle;->right:F

    iput p4, p0, Lcom/nothing/cardwidget/pedometer/Rectangle;->bottom:F

    return-void
.end method


# virtual methods
.method public final getBottom()F
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/Rectangle;->bottom:F

    return p0
.end method

.method public final getLeft()F
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/Rectangle;->left:F

    return p0
.end method

.method public final getRight()F
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/Rectangle;->right:F

    return p0
.end method

.method public final getTop()F
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/pedometer/Rectangle;->top:F

    return p0
.end method
