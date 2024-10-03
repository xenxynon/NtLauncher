.class public final Lq4/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)I
    .locals 4

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v1

    invoke-virtual {v1}, Lo3/b;->u()Z

    move-result v1

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0}, Lo3/b;->C()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    instance-of v3, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->isPredictedItem()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move v2, p0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    and-int/lit8 p1, p1, -0x2

    :cond_2
    return p1
.end method
