.class public Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/search/SearchAlgorithm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/search/SearchAlgorithm<",
        "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
        ">;"
    }
.end annotation


# direct methods
.method public static getEmptyMessageAdapterItem(Ljava/lang/String;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .locals 2

    new-instance v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    new-instance v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v1}, Lcom/android/launcher3/model/data/AppInfo;-><init>()V

    iput-object p0, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    return-object v0
.end method
