.class public final synthetic Lcom/android/launcher3/model/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/l;->g:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/l;->g:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    check-cast p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->m(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method
