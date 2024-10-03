.class public final Lb3/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;II)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    :cond_1
    const/4 p0, 0x0

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v0, v2, :cond_2

    if-ne v1, p1, :cond_2

    if-ne v0, p2, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public static final b(Landroid/view/View;[I)V
    .locals 2

    const-string v0, "targetCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lb3/m;->d(Landroid/view/View;[I[IILjava/lang/Object;)V

    return-void
.end method

.method public static final c(Landroid/view/View;[I[I)V
    .locals 8

    const-string v0, "targetCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetSpan"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type com.android.launcher3.celllayout.CellLayoutLayoutParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-boolean v6, v5, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v5}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v5

    if-eq v6, v5, :cond_1

    :cond_0
    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    move-object v6, p0

    check-cast v6, Lcom/android/launcher3/dragndrop/DraggableView;

    invoke-interface {v6}, Lcom/android/launcher3/dragndrop/DraggableView;->getViewType()I

    move-result v6

    if-nez v6, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    move v7, v2

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    if-eqz v7, :cond_4

    const/16 v7, -0x64

    invoke-static {v3, v7}, Lb3/m;->h(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v5, :cond_4

    if-eqz v6, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    if-eqz v3, :cond_5

    move-object v3, p0

    goto :goto_4

    :cond_5
    move-object v3, v0

    :goto_4
    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    aput v0, p2, v1

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    aput v0, p2, v2

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    aput v0, p1, v1

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    aput p0, p1, v2

    sget-object v0, Ln5/t;->a:Ln5/t;

    :cond_6
    if-nez v0, :cond_7

    aput v2, p2, v1

    aput v2, p2, v2

    :cond_7
    return-void
.end method

.method public static synthetic d(Landroid/view/View;[I[IILjava/lang/Object;)V
    .locals 0

    const/4 p4, 0x2

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    new-array p2, p4, [I

    :cond_0
    invoke-static {p0, p1, p2}, Lb3/m;->c(Landroid/view/View;[I[I)V

    return-void
.end method

.method public static final e(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final f(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final g(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    :cond_1
    const/4 p0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v3, v1, :cond_2

    move v3, p0

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move p0, v2

    :goto_2
    return p0
.end method

.method public static final h(Lcom/android/launcher3/model/data/ItemInfo;I)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final i(Lcom/android/launcher3/model/data/ItemInfo;I)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final j(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/nothing/launcher/card/s;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final k(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    return-void
.end method

.method public static final l(Lcom/android/launcher3/model/data/ItemInfo;ILcom/android/launcher3/model/data/ItemInfo;)Lv3/d;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lv3/d;

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v2

    invoke-static {p0}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    move-object v1, v0

    move v9, p1

    move-object v10, p2

    invoke-direct/range {v1 .. v12}, Lv3/d;-><init>(ZZZLjava/lang/String;Landroid/content/pm/LauncherActivityInfo;Landroid/content/ComponentName;Landroid/os/UserHandle;ILjava/lang/Object;ILkotlin/jvm/internal/i;)V

    return-object v0
.end method
