.class public final Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/WidgetsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageItemInfoCache"
.end annotation


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->mMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getOrCreate(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/model/data/PackageItemInfo;
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/nothing/launcher/widgets/c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nothing/launcher/widgets/b;

    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mWidgetCategory:I

    iget-object v3, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    move-object v4, p1

    check-cast v4, Lcom/nothing/launcher/widgets/c;

    invoke-virtual {v4}, Lcom/nothing/launcher/widgets/c;->a()Lcom/nothing/launcher/widgets/a;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nothing/launcher/widgets/b;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;Lcom/nothing/launcher/widgets/a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mWidgetCategory:I

    iget-object v3, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_0
    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->mMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/launcher3/model/data/PackageItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;->mMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
