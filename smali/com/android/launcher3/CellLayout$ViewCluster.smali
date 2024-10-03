.class Lcom/android/launcher3/CellLayout$ViewCluster;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCluster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;
    }
.end annotation


# instance fields
.field final bottomEdge:[I

.field final boundingRect:Landroid/graphics/Rect;

.field boundingRectDirty:Z

.field final comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

.field final config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

.field dirtyEdges:I

.field final leftEdge:[I

.field final rightEdge:[I

.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field final topEdge:[I

.field final views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v0, p1, Lcom/android/launcher3/CellLayout;->mCountY:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    iget p1, p1, Lcom/android/launcher3/CellLayout;->mCountX:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    new-instance p1, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    invoke-direct {p1, p0}, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;-><init>(Lcom/android/launcher3/CellLayout$ViewCluster;)V

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    return-void
.end method

.method computeEdge(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_b

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/16 v3, 0x8

    if-eq p1, v3, :cond_0

    goto :goto_5

    :cond_0
    iget v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_1
    iget v5, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v6, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_a

    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aget v6, v5, v4

    if-le v3, v6, :cond_1

    aput v3, v5, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_2
    iget v5, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v6, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_a

    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aget v6, v5, v4

    if-le v3, v6, :cond_3

    aput v3, v5, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_3
    iget v5, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v6, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_a

    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aget v6, v5, v4

    if-lt v3, v6, :cond_5

    aget v6, v5, v4

    if-gez v6, :cond_6

    :cond_5
    aput v3, v5, v4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    iget v3, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_4
    iget v5, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v6, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_a

    iget-object v5, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aget v6, v5, v4

    if-lt v3, v6, :cond_8

    aget v6, v5, v4

    if-gez v6, :cond_9

    :cond_8
    aput v3, v5, v4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public getBoundingRect()Landroid/graphics/Rect;
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRectDirty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method isViewTouchingEdge(Landroid/view/View;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/CellAndSpan;

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iget v1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-ltz v1, :cond_b

    iget v1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-gez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    and-int/2addr v1, p2

    if-ne v1, p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/launcher3/CellLayout$ViewCluster;->computeEdge(I)V

    iget v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    not-int v2, p2

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    :cond_1
    const/4 v1, 0x1

    if-eq p2, v1, :cond_8

    const/4 v2, 0x2

    if-eq p2, v2, :cond_6

    const/4 v2, 0x4

    if-eq p2, v2, :cond_4

    const/16 v2, 0x8

    if-eq p2, v2, :cond_2

    goto :goto_4

    :cond_2
    iget p2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_0
    iget v2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_a

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aget v2, v2, p2

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-ne v2, v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    iget p2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_1
    iget v2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_a

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aget v2, v2, p2

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-ne v2, v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    iget p2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_2
    iget v2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_a

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aget v2, v2, p2

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, p1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v3, v4

    if-ne v2, v3, :cond_7

    return v1

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_8
    iget p2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_3
    iget v2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_a

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aget v2, v2, p2

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, p1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v3, v4

    if-ne v2, v3, :cond_9

    return v1

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    return v0

    :cond_b
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isViewTouchingEdge -> cs="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CellLayout"

    invoke-static {p1, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method resetEdges()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    iget v2, v2, Lcom/android/launcher3/CellLayout;->mCountX:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->topEdge:[I

    aput v3, v2, v1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->bottomEdge:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->this$0:Lcom/android/launcher3/CellLayout;

    iget v1, v1, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->leftEdge:[I

    aput v3, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->rightEdge:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->dirtyEdges:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->boundingRectDirty:Z

    return-void
.end method

.method shift(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    iget v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    add-int/2addr v2, p2

    goto :goto_1

    :cond_0
    iget v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/2addr v2, p2

    goto :goto_2

    :cond_1
    iget v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int/2addr v2, p2

    :goto_1
    iput v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    goto :goto_0

    :cond_2
    iget v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int/2addr v2, p2

    :goto_2
    iput v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout$ViewCluster;->resetEdges()V

    return-void
.end method

.method public sortConfigurationForEdgePush(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->comparator:Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;

    iput p1, v0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    iget-object p0, p0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object p0, p0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
