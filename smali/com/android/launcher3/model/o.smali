.class public final synthetic Lcom/android/launcher3/model/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/o;->g:Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/o;->g:Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;

    check-cast p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->j(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method
