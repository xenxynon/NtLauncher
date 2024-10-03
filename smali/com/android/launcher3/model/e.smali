.class public final synthetic Lcom/android/launcher3/model/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/e;->a:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/e;->a:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->k(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
