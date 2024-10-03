.class public final Lcom/nothing/launcher/widgets/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nothing/launcher/widgets/l;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nothing/launcher/widgets/l;

    new-instance v1, Lcom/nothing/launcher/widgets/l;

    const-string v2, "com.nothing.hearthstone"

    const/4 v3, 0x0

    const-string v4, "Clock"

    const v5, 0x7f080389

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/nothing/launcher/widgets/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/nothing/launcher/widgets/l;

    const-string v4, "com.nothing.weather"

    const/4 v5, 0x1

    const-string v6, "Weather"

    const v7, 0x7f08038d

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/nothing/launcher/widgets/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/nothing/launcher/widgets/l;

    const-string v4, "QuickLooK"

    const v6, 0x7f08038b

    invoke-direct {v1, v2, v5, v4, v6}, Lcom/nothing/launcher/widgets/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/nothing/launcher/widgets/l;

    const-string v2, "com.nothing.smartcenter"

    const-string v4, "NothingX"

    const v6, 0x7f08038a

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/nothing/launcher/widgets/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/nothing/launcher/widgets/l;

    const-string v2, "com.android.systemui"

    const-string v3, "QuickSettings"

    const v4, 0x7f08038c

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/nothing/launcher/widgets/l;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lo5/j;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
