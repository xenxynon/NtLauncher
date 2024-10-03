.class public final Lf3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf3/h;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x9

    new-array v0, v0, [Lf3/h;

    new-instance v1, Lf3/h;

    const-string v2, "smileysAndEmotionsCategory"

    const v3, 0x7f08026b

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lf3/h;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lf3/h;

    const-string v2, "peopleCategory"

    const v3, 0x7f08026e

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lf3/h;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lf3/h;

    const-string v2, "animalsAndNatureCategory"

    const v3, 0x7f08026c

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lf3/h;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lf3/h;

    const-string v2, "foodAndDrinkCategory"

    const v3, 0x7f08026a

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lf3/h;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lf3/h;

    const-string v2, "travelAndPlacesCategory"

    const v3, 0x7f080270

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lf3/h;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lf3/h;

    const-string v2, "ActivitiesAndEventsCategory"

    const v3, 0x7f080268

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lf3/h;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lf3/h;

    const-string v2, "ObjectsCategory"

    const v3, 0x7f08026d

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lf3/h;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lf3/h;

    const-string v2, "SymbolsCategory"

    const v3, 0x7f08026f

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lf3/h;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    new-instance v1, Lf3/h;

    const-string v2, "FlagsCategory"

    const v3, 0x7f080269

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lf3/h;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    invoke-static {v0}, Lo5/j;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
